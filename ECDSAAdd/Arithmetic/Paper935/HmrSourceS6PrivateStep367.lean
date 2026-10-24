import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep365
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

private def s6Step367CompleteMoves : List (Wire × Wire) := [(869,343)]

private def s6Step367EarlyControlLog : HmrEarlyControlLog := ⟨[869, 898, 888, 908, 876],[858],[807],[805, 802, 843, 877, 792, 816],[]⟩

private def s6Step367FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [908], [], [886]],[[876], [888], [898], [892]],[[], [], [], []]⟩,[823],[906],[858],[807],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[858, 807, 805, 802]⟩

private def s6Step367CompleteLog : HmrEarlyStepLog := ⟨s6Step367FrontLog,s6Step367CompleteMoves,s6Step367EarlyControlLog⟩

private def s6Step367ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step367ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step367ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩

private def s6Step367ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886],775⟩

private def s6Step367FrontOut : WindowBank := ⟨s6Step367ExitFOut,s6Step367ExitGOut,s6Step367ExitFvOut,s6Step367ExitGvOut⟩

private def s6Step367CompleteOut : WindowBank := s6Step367FrontOut.repacked s6Step367CompleteMoves

private def s6Step367EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step367EarlyControlPositiveArena,[858],s6Step367EarlyControlEqualityArena,[807],⟨⟨823,false⟩,[⟨⟨858,false⟩,807⟩]⟩⟩

private def s6Step367EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,869⟩,⟨⟨772,false⟩,898⟩,⟨⟨771,false⟩,888⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,876⟩]⟩

private def s6Step367EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step367EarlyControlZeroArena,s6Step367EarlyControlZeroPlan,s6Step367EarlyControlClassPlan,s6Step367EarlyControlFlagArena,s6Step367EarlyControlFittedArena,s6Step367EarlyControlHistoryArena,s6Step367EarlyControlSigmaArena,s6Step367EarlyControlOutputArena,s6Step367EarlyControlLog⟩

private def s6Step367CounterWork : List Wire := [858, 807, 805, 802]

private theorem s6Step367Counter_bounded : s6Step367CounterWork.toFinset⊆arenaWires := by norm_num [s6Step367CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step367HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367CounterDuring : Arena := ⟨s6Step367HeadFvAfter.live∪s6Step367CounterWork.toFinset,Finset.union_subset s6Step367HeadFvAfter.bounded s6Step367Counter_bounded⟩

private def s6Step367EntryFFresh : List Wire := []

private def s6Step367EntryFvFresh : List Wire := []

private def s6Step367EntryGFresh : List Wire := [908]

private def s6Step367EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EntryGvFresh : List Wire := [886]

private def s6Step367ExitFExtra : List Wire := [343, 888]

private def s6Step367ExitGExtra : List Wire := [908, 876]

private def s6Step367ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<343) ∨ (344≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367ExitGvExtra : List Wire := [898]

private def s6Step367Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step367Add0_bounded : s6Step367Add0Work.toFinset⊆arenaWires := by
  have h : s6Step367Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step367Add0During : Arena := ⟨s6Step367Add0Arena.live∪s6Step367Add0Work.toFinset,Finset.union_subset s6Step367Add0Arena.bounded s6Step367Add0_bounded⟩

private def s6Step367Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step367Add1_bounded : s6Step367Add1Work.toFinset⊆arenaWires := by
  have h : s6Step367Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step367Add1During : Arena := ⟨s6Step367Add1Arena.live∪s6Step367Add1Work.toFinset,Finset.union_subset s6Step367Add1Arena.bounded s6Step367Add1_bounded⟩

private def s6Step367F4FlagArena : Arena := ⟨s6Step367HeadFvAfter.live∪{858},Finset.union_subset s6Step367HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step367F4Plan : HmrHybridF4Plan := ⟨s6Step367F4FlagArena,[858],s6Step367Add0Arena,[807],s6Step367Add0During,s6Step367Add0Work,s6Step367Add1During,s6Step367Add1Work⟩

private def s6Step367HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 888],795⟩

private def s6Step367HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step367HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908, 876],777⟩

private def s6Step367HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 898],775⟩

private def s6Step367FrontHead : WindowBank := ⟨s6Step367HeadFOut,s6Step367HeadGOut,s6Step367HeadFvOut,s6Step367HeadGvOut⟩

private def s6Step367EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step367EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step367EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908],777⟩

private def s6Step367EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886],775⟩

private def s6Step367FrontPair : WindowBank := ⟨s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut⟩

private def s6Step367FrontSigmaArena : Arena := ⟨s6Step367EntryGvAfter.live∪{823},Finset.union_subset s6Step367EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step367HeadFFresh : List Wire := [888]

private def s6Step367HeadFvFresh : List Wire := [892]

private def s6Step367HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367HeadGFresh : List Wire := [876]

private def s6Step367HeadGvFresh : List Wire := [898]

private def s6Step367FrontPlan : HmrSourceFront := ⟨s6Step367EntryGvAfter,s6Step367FrontPair,(growRow 795 s6Step367EntryFFresh ++ (growRow 777 s6Step367EntryGFresh ++ (growRow 776 s6Step367EntryFvFresh ++ (growRow 775 s6Step367EntryGvFresh ++ [])))),s6Step367FrontSigmaArena,[823],s6Step367HeadGBefore,[906],
  s6Step367HeadFvAfter,s6Step367FrontHead,(growRow 777 s6Step367HeadGFresh ++ (growRow 795 s6Step367HeadFFresh ++ (growRow 775 s6Step367HeadGvFresh ++ (growRow 776 s6Step367HeadFvFresh ++ [])))),s6Step367F4Plan,s6Step367CounterDuring,s6Step367CounterWork,s6Step367ExitGvAfter,s6Step367FrontOut,(shrinkRow 777 s6Step367ExitGExtra ++ (shrinkRow 795 s6Step367ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step367ExitGvExtra ++ []))))⟩

private def s6Step367CompletePlan : HmrEarlyStepPlan := ⟨s6Step367FrontPlan,s6Step367EarlyControlArena,s6Step367EarlyControlPlan,s6Step367CompleteMoves⟩

private theorem s6Step367Complete_apart : List.Disjoint (s6Step367CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [823, 906, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step367CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[823, 906, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step367Complete_owned : (s6Step367CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step367CompleteMoveArena : Arena := ⟨s6Step367ExitGvAfter.live∪{343},Finset.union_subset s6Step367ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step367Complete_repack : s6Step367ExitGvAfter.checkRepack s6Step367CompleteMoves=some s6Step367EarlyControlArena := by
  have owned : 869∈s6Step367ExitGvAfter.live := by norm_num [s6Step367ExitGvAfter,arenaWires]
  have reserve : s6Step367ExitGvAfter.reserve {343}=some s6Step367CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step367ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step367CompleteMoveArena.retireSet {869}=s6Step367EarlyControlArena := by
    unfold Arena.retireSet s6Step367EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step367CompleteMoveArena,s6Step367ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step367CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step367CompleteMoveArena.retireSet {869}).checkRepack []=some s6Step367EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step367EarlyControl_branchOwned : ([906] : List Wire).toFinset⊆s6Step367EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_branch : compileHmrBranchRetirement s6Step367EarlyControlSigmaArena 906=some s6Step367EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step367EarlyControl_branchOwned
  · ext q
    simp [s6Step367EarlyControlOutputArena,s6Step367EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step367EarlyControl_classEqualityBorrow : s6Step367EarlyControlPositiveArena.checkBorrow (([823, 858] : List Wire).length-1) s6Step367EarlyControlLog.classWork=some s6Step367EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step367EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step367EarlyControlEqualityArena,s6Step367EarlyControlPositiveArena,s6Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step367EarlyControl_classEqualityOwned : ([823, 858] : List Wire).toFinset⊆s6Step367EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_classEquality : compileHmrEqualityLog s6Step367EarlyControlPositiveArena [823, 858] 0 s6Step367EarlyControlLog.classWork=some (s6Step367EarlyControlEqualityArena,s6Step367EarlyControlLog.classWork,s6Step367EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step367EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step367EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step367EarlyControl_classOwned : ([769, 876, 823] : List Wire).toFinset⊆s6Step367EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_positiveBorrow : s6Step367EarlyControlZeroArena.checkBorrow (1) s6Step367EarlyControlLog.positiveWork=some s6Step367EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step367EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step367EarlyControlPositiveArena,s6Step367EarlyControlZeroArena,s6Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step367EarlyControl_class : compileHmrSourceClassLog s6Step367EarlyControlZeroArena false 769 s6Step367EarlyControlZeroPlan.top 0 823 s6Step367EarlyControlLog.positiveWork s6Step367EarlyControlLog.classWork=some s6Step367EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step367EarlyControlClassPlan s6Step367EarlyControlZeroArena false 769 s6Step367EarlyControlZeroPlan.top 0 823
  constructor
  · decide +kernel
  · exact s6Step367EarlyControl_classOwned
  · exact s6Step367EarlyControl_positiveBorrow
  · exact s6Step367EarlyControl_classEquality

private theorem s6Step367EarlyControl_entryRecordOwned : ([906, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_entrySigmaOwned : ([823, 254] : List Wire).toFinset⊆s6Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_fitBorrow : s6Step367EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step367EarlyControlLog.recordFresh=some s6Step367EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step367EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step367EarlyControlFittedArena,s6Step367EarlyControlFlagArena,s6Step367EarlyControlLog,arenaWires]

private theorem s6Step367EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step367EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_fit : compileHmrRecordGrowLog s6Step367EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step367EarlyControlLog.recordFresh=some s6Step367EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step367EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step367EarlyControl_fitBorrow

private theorem s6Step367EarlyControl_flagsBorrow : s6Step367EarlyControlEqualityArena.checkBorrow (6) s6Step367EarlyControlLog.flagWork=some s6Step367EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step367EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step367EarlyControlFlagArena,s6Step367EarlyControlEqualityArena,s6Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step367EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s6Step367EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_flags : compileHmrFlagsLog s6Step367EarlyControlClassPlan.equalityArena s6Step367EarlyControlClassPlan.equality.top 253 252 251 s6Step367EarlyControlLog.flagWork=some s6Step367EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step367EarlyControl_flagsOwned⟩
  · exact s6Step367EarlyControl_flagsBorrow

private theorem s6Step367EarlyControl_historyBorrow : s6Step367EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step367EarlyControlLog.recordFresh=some s6Step367EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step367EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step367EarlyControlHistoryArena,s6Step367EarlyControlArena,s6Step367EarlyControlLog,arenaWires]

private theorem s6Step367EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_history : compileHmrRecordGrowLog s6Step367EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step367EarlyControlLog.recordFresh=some s6Step367EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step367EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step367EarlyControl_historyBorrow

private theorem s6Step367EarlyControl_sigmaOwned : ([254, 823] : List Wire).toFinset⊆s6Step367EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_sigmaReleaseOwned : ([823] : List Wire).toFinset⊆s6Step367EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_sigmaRelease : s6Step367EarlyControlHistoryArena.release {823} (fun _ => false)=some s6Step367EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step367EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step367EarlyControlSigmaArena,s6Step367EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step367EarlyControl_sigma : compileHmrSigmaDropLog s6Step367EarlyControlHistoryArena false 0 0 254 823 []=some s6Step367EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step367EarlyControl_sigmaOwned⟩
  · exact s6Step367EarlyControl_sigmaRelease

private theorem s6Step367EarlyControl_zeroBorrow : s6Step367EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step367EarlyControlLog.zeroWork=some s6Step367EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step367EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step367EarlyControlZeroArena,s6Step367EarlyControlArena,s6Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step367EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step367EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EarlyControl_zero : compileHmrEqualityLog s6Step367EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step367EarlyControlLog.zeroWork=some (s6Step367EarlyControlZeroArena,s6Step367EarlyControlLog.zeroWork,s6Step367EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step367EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step367EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step367EarlyControl_logged : s6Step367EarlyControlPlan.Logged s6Step367EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 906 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step367EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step367EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step367EarlyControl_zero
  · exact s6Step367EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step367EarlyControl_flags
  · exact s6Step367EarlyControl_fit
  · exact s6Step367EarlyControl_history
  · exact s6Step367EarlyControl_sigma
  · exact s6Step367EarlyControl_branch

private theorem s6Step367EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step367EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 906 60 s6Step367EarlyControlLog=some s6Step367EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step367EarlyControlPlan s6Step367EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 906 60 s6Step367EarlyControl_logged

private def s6Step367EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step367EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step367EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩

private def s6Step367EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step367FrontBank : WindowBank := ⟨s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow⟩

private def s6Step367Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 888, 795]

private def s6Step367Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908, 876, 777]

private def s6Step367Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 776]

private def s6Step367Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 898, 775]

private theorem s6Step367Counter_apart : Disjoint s6Step367HeadFvAfter.live s6Step367CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step367HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367Counter_borrowed : s6Step367HeadFvAfter.checkBorrow 4 s6Step367CounterWork=some s6Step367CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step367HeadFvAfter s6Step367CounterDuring s6Step367CounterWork.toFinset s6Step367Counter_bounded s6Step367Counter_apart rfl

private theorem s6Step367Counter_owned : (823::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step367HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step367HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367Counter_checked : compileHmrCounterStepLog s6Step367HeadFvAfter true 823 [774, 773, 772, 771, 770, 769] s6Step367CounterWork=some s6Step367CounterDuring := by
  have owned : ∀q∈823::[774, 773, 772, 771, 770, 769],q∈s6Step367HeadFvAfter.live := fun q hq => s6Step367Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step367Counter_borrowed

private def s6Step367EntryFAfter : Arena := s6Step367EntryFBefore

private theorem s6Step367EntryBank_incomingDistinct : ([s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367EntryF_Incoming : rowsOwned s6Step367EntryFBefore [s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow] 0 s6Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367EntryBank_outgoingOwned : rowsOwned s6Step367EntryGvAfter [s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step367EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367EntryF_Outgoing : rowsOwned s6Step367EntryGvAfter [s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut] :=
  hmrRows_owned_drop s6Step367EntryGvAfter [s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut] 0 s6Step367EntryBank_outgoingOwned

private theorem s6Step367EntryF_distinct : (s6Step367EntryFRow.sign::s6Step367EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367EntryF_owned : (s6Step367EntryFRow.sign::s6Step367EntryFRow.payload).toFinset⊆s6Step367EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EntryF_reserved : s6Step367EntryFBefore.reserve s6Step367EntryFFresh.toFinset=some s6Step367EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367EntryFFresh,arenaWires]
  · norm_num [s6Step367EntryFBefore,s6Step367EntryFFresh,arenaWires]
  · simp only [s6Step367EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step367EntryF_checked : planRowResizeLog s6Step367EntryFBefore s6Step367EntryFRow 88 s6Step367EntryFFresh=
    some (s6Step367EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩,growRow 795 s6Step367EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step367EntryFBefore s6Step367EntryFAfter s6Step367EntryFRow 88 s6Step367EntryFFresh
    s6Step367EntryF_distinct s6Step367EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367EntryF_reserved
  have rowEq : WindowRow.mk (s6Step367EntryFRow.payload++s6Step367EntryFFresh) s6Step367EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step367EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367EntryFvAfter : Arena := s6Step367EntryGAfter

private def s6Step367EntryFvBefore : Arena := s6Step367EntryGAfter

private theorem s6Step367EntryFv_Incoming : rowsOwned s6Step367EntryFvBefore [s6Step367EntryFvRow,s6Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow] 2 s6Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367EntryFv_Outgoing : rowsOwned s6Step367EntryGvAfter [s6Step367EntryFvOut,s6Step367EntryGvOut] :=
  hmrRows_owned_drop s6Step367EntryGvAfter [s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut] 2 s6Step367EntryBank_outgoingOwned

private theorem s6Step367EntryFv_distinct : (s6Step367EntryFvRow.sign::s6Step367EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367EntryFv_owned : (s6Step367EntryFvRow.sign::s6Step367EntryFvRow.payload).toFinset⊆s6Step367EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EntryFv_reserved : s6Step367EntryFvBefore.reserve s6Step367EntryFvFresh.toFinset=some s6Step367EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367EntryFvFresh,arenaWires]
  · norm_num [s6Step367EntryFvBefore,s6Step367EntryGAfter,s6Step367EntryFvFresh,arenaWires]
  · simp only [s6Step367EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step367EntryFv_checked : planRowResizeLog s6Step367EntryFvBefore s6Step367EntryFvRow 199 s6Step367EntryFvFresh=
    some (s6Step367EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩,growRow 776 s6Step367EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step367EntryFvBefore s6Step367EntryFvAfter s6Step367EntryFvRow 199 s6Step367EntryFvFresh
    s6Step367EntryFv_distinct s6Step367EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step367EntryFvRow.payload++s6Step367EntryFvFresh) s6Step367EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step367EntryGBefore : Arena := s6Step367EntryFBefore

private theorem s6Step367EntryG_Incoming : rowsOwned s6Step367EntryGBefore [s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow] 1 s6Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367EntryG_Outgoing : rowsOwned s6Step367EntryGvAfter [s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut] :=
  hmrRows_owned_drop s6Step367EntryGvAfter [s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut] 1 s6Step367EntryBank_outgoingOwned

private theorem s6Step367EntryG_distinct : (s6Step367EntryGRow.sign::s6Step367EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367EntryG_owned : (s6Step367EntryGRow.sign::s6Step367EntryGRow.payload).toFinset⊆s6Step367EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EntryG_reserved : s6Step367EntryGBefore.reserve s6Step367EntryGFresh.toFinset=some s6Step367EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367EntryGFresh,arenaWires]
  · norm_num [s6Step367EntryGBefore,s6Step367EntryFBefore,s6Step367EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step367EntryGAfter,s6Step367EntryGBefore,s6Step367EntryFBefore,s6Step367EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367EntryG_checked : planRowResizeLog s6Step367EntryGBefore s6Step367EntryGRow 88 s6Step367EntryGFresh=
    some (s6Step367EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908],777⟩,growRow 777 s6Step367EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step367EntryGBefore s6Step367EntryGAfter s6Step367EntryGRow 88 s6Step367EntryGFresh
    s6Step367EntryG_distinct s6Step367EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367EntryG_reserved
  have rowEq : WindowRow.mk (s6Step367EntryGRow.payload++s6Step367EntryGFresh) s6Step367EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step367EntryGvBefore : Arena := s6Step367EntryGAfter

private theorem s6Step367EntryGv_Incoming : rowsOwned s6Step367EntryGvBefore [s6Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow] 3 s6Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367EntryGv_Outgoing : rowsOwned s6Step367EntryGvAfter [s6Step367EntryGvOut] :=
  hmrRows_owned_drop s6Step367EntryGvAfter [s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut] 3 s6Step367EntryBank_outgoingOwned

private theorem s6Step367EntryGv_distinct : (s6Step367EntryGvRow.sign::s6Step367EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367EntryGv_owned : (s6Step367EntryGvRow.sign::s6Step367EntryGvRow.payload).toFinset⊆s6Step367EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367EntryGv_reserved : s6Step367EntryGvBefore.reserve s6Step367EntryGvFresh.toFinset=some s6Step367EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367EntryGvFresh,arenaWires]
  · norm_num [s6Step367EntryGvBefore,s6Step367EntryGAfter,s6Step367EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step367EntryGvAfter,s6Step367EntryGvBefore,s6Step367EntryGAfter,s6Step367EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367EntryGv_checked : planRowResizeLog s6Step367EntryGvBefore s6Step367EntryGvRow 199 s6Step367EntryGvFresh=
    some (s6Step367EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886],775⟩,growRow 775 s6Step367EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step367EntryGvBefore s6Step367EntryGvAfter s6Step367EntryGvRow 199 s6Step367EntryGvFresh
    s6Step367EntryGv_distinct s6Step367EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step367EntryGvRow.payload++s6Step367EntryGvFresh) s6Step367EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step367EntryBank_rows : planWindowRowsLog s6Step367EntryFBefore [(s6Step367EntryFRow,88),(s6Step367EntryGRow,88),(s6Step367EntryFvRow,199),(s6Step367EntryGvRow,199)] [s6Step367EntryFFresh,s6Step367EntryGFresh,s6Step367EntryFvFresh,s6Step367EntryGvFresh]=
    some (s6Step367EntryGvAfter,[s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut],(growRow 795 s6Step367EntryFFresh ++ (growRow 777 s6Step367EntryGFresh ++ (growRow 776 s6Step367EntryFvFresh ++ (growRow 775 s6Step367EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step367EntryGvAfter [] []=some (s6Step367EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step367EntryGvBefore s6Step367EntryGvAfter s6Step367EntryGvAfter
    s6Step367EntryGvRow s6Step367EntryGvOut 199 s6Step367EntryGvFresh [] [] []
    (growRow 775 s6Step367EntryGvFresh) ([]) s6Step367EntryGv_Incoming s6Step367EntryGv_checked h4 s6Step367EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step367EntryFvBefore s6Step367EntryFvAfter s6Step367EntryGvAfter
    s6Step367EntryFvRow s6Step367EntryFvOut 199 s6Step367EntryFvFresh [(s6Step367EntryGvRow,199)] [s6Step367EntryGvFresh] [s6Step367EntryGvOut]
    (growRow 776 s6Step367EntryFvFresh) ((growRow 775 s6Step367EntryGvFresh ++ [])) s6Step367EntryFv_Incoming s6Step367EntryFv_checked h3 s6Step367EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step367EntryGBefore s6Step367EntryGAfter s6Step367EntryGvAfter
    s6Step367EntryGRow s6Step367EntryGOut 88 s6Step367EntryGFresh [(s6Step367EntryFvRow,199),(s6Step367EntryGvRow,199)] [s6Step367EntryFvFresh,s6Step367EntryGvFresh] [s6Step367EntryFvOut,s6Step367EntryGvOut]
    (growRow 777 s6Step367EntryGFresh) ((growRow 776 s6Step367EntryFvFresh ++ (growRow 775 s6Step367EntryGvFresh ++ []))) s6Step367EntryG_Incoming s6Step367EntryG_checked h2 s6Step367EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step367EntryFBefore s6Step367EntryFAfter s6Step367EntryGvAfter
    s6Step367EntryFRow s6Step367EntryFOut 88 s6Step367EntryFFresh [(s6Step367EntryGRow,88),(s6Step367EntryFvRow,199),(s6Step367EntryGvRow,199)] [s6Step367EntryGFresh,s6Step367EntryFvFresh,s6Step367EntryGvFresh] [s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut]
    (growRow 795 s6Step367EntryFFresh) ((growRow 777 s6Step367EntryGFresh ++ (growRow 776 s6Step367EntryFvFresh ++ (growRow 775 s6Step367EntryGvFresh ++ [])))) s6Step367EntryF_Incoming s6Step367EntryF_checked h1 s6Step367EntryF_Outgoing
  exact h0

private theorem s6Step367EntryBank_checked : compileHmrBankResizeLog .entry s6Step367EntryFBefore ⟨s6Step367EntryFRow,s6Step367EntryGRow,s6Step367EntryFvRow,s6Step367EntryGvRow⟩ ⟨88,88,199,199⟩ [s6Step367EntryFFresh,s6Step367EntryGFresh,s6Step367EntryFvFresh,s6Step367EntryGvFresh]=
    some (s6Step367EntryGvAfter,⟨s6Step367EntryFOut,s6Step367EntryGOut,s6Step367EntryFvOut,s6Step367EntryGvOut⟩,(growRow 795 s6Step367EntryFFresh ++ (growRow 777 s6Step367EntryGFresh ++ (growRow 776 s6Step367EntryFvFresh ++ (growRow 775 s6Step367EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step367EntryBank_rows]
  rfl

private def s6Step367ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<343) ∨ (344≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367ExitFBefore : Arena := s6Step367ExitGAfter

private def s6Step367ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 888],795⟩

private def s6Step367ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step367ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908, 876],777⟩

private def s6Step367ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 898],775⟩

private theorem s6Step367ExitBank_incomingDistinct : ([s6Step367ExitGRow,s6Step367ExitFRow,s6Step367ExitFvRow,s6Step367ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367ExitF_Incoming : rowsOwned s6Step367ExitFBefore [s6Step367ExitFRow,s6Step367ExitFvRow,s6Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367ExitGRow,s6Step367ExitFRow,s6Step367ExitFvRow,s6Step367ExitGvRow] 1 s6Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367ExitBank_outgoingOwned : rowsOwned s6Step367ExitGvAfter [s6Step367ExitGOut,s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step367ExitGvAfter (fun q => (0≤q ∧ q<343) ∨ (344≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367ExitF_Outgoing : rowsOwned s6Step367ExitGvAfter [s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut] :=
  hmrRows_owned_drop s6Step367ExitGvAfter [s6Step367ExitGOut,s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut] 1 s6Step367ExitBank_outgoingOwned

private theorem s6Step367ExitF_distinct : (s6Step367ExitFRow.sign::s6Step367ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367ExitF_owned : (s6Step367ExitFRow.sign::s6Step367ExitFRow.payload).toFinset⊆s6Step367ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367ExitF_retired : s6Step367ExitFBefore.retireSet s6Step367ExitFExtra.toFinset=s6Step367ExitFAfter := by
  unfold Arena.retireSet s6Step367ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step367ExitFBefore,s6Step367ExitGAfter,s6Step367ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step367ExitF_checked : planRowResizeLog s6Step367ExitFBefore s6Step367ExitFRow 87 []=
    some (s6Step367ExitFAfter,s6Step367ExitFOut,shrinkRow 795 s6Step367ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step367ExitFBefore s6Step367ExitFRow 87 s6Step367ExitF_distinct s6Step367ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step367ExitFRow.payload.take 87) s6Step367ExitFRow.sign=s6Step367ExitFOut := by decide +kernel
  have hi : s6Step367ExitFRow.payload.drop 87=s6Step367ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step367ExitF_retired] at result
  exact result

private def s6Step367ExitFvAfter : Arena := s6Step367ExitFAfter

private def s6Step367ExitFvBefore : Arena := s6Step367ExitFAfter

private theorem s6Step367ExitFv_Incoming : rowsOwned s6Step367ExitFvBefore [s6Step367ExitFvRow,s6Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367ExitGRow,s6Step367ExitFRow,s6Step367ExitFvRow,s6Step367ExitGvRow] 2 s6Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367ExitFvBefore (fun q => (0≤q ∧ q<343) ∨ (344≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367ExitFv_Outgoing : rowsOwned s6Step367ExitGvAfter [s6Step367ExitFvOut,s6Step367ExitGvOut] :=
  hmrRows_owned_drop s6Step367ExitGvAfter [s6Step367ExitGOut,s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut] 2 s6Step367ExitBank_outgoingOwned

private theorem s6Step367ExitFv_distinct : (s6Step367ExitFvRow.sign::s6Step367ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367ExitFv_owned : (s6Step367ExitFvRow.sign::s6Step367ExitFvRow.payload).toFinset⊆s6Step367ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367ExitFvBefore (fun q => (0≤q ∧ q<343) ∨ (344≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367ExitFv_reserved : s6Step367ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step367ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step367ExitFv_checked : planRowResizeLog s6Step367ExitFvBefore s6Step367ExitFvRow 200 []=
    some (s6Step367ExitFvAfter,s6Step367ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step367ExitFvBefore s6Step367ExitFvAfter s6Step367ExitFvRow 200 []
    s6Step367ExitFv_distinct s6Step367ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step367ExitFvRow.payload++[]) s6Step367ExitFvRow.sign=s6Step367ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step367ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step367ExitG_Incoming : rowsOwned s6Step367ExitGBefore [s6Step367ExitGRow,s6Step367ExitFRow,s6Step367ExitFvRow,s6Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367ExitGRow,s6Step367ExitFRow,s6Step367ExitFvRow,s6Step367ExitGvRow] 0 s6Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367ExitG_Outgoing : rowsOwned s6Step367ExitGvAfter [s6Step367ExitGOut,s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut] :=
  hmrRows_owned_drop s6Step367ExitGvAfter [s6Step367ExitGOut,s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut] 0 s6Step367ExitBank_outgoingOwned

private theorem s6Step367ExitG_distinct : (s6Step367ExitGRow.sign::s6Step367ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367ExitG_owned : (s6Step367ExitGRow.sign::s6Step367ExitGRow.payload).toFinset⊆s6Step367ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367ExitG_retired : s6Step367ExitGBefore.retireSet s6Step367ExitGExtra.toFinset=s6Step367ExitGAfter := by
  unfold Arena.retireSet s6Step367ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step367ExitGBefore,s6Step367ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step367ExitG_checked : planRowResizeLog s6Step367ExitGBefore s6Step367ExitGRow 87 []=
    some (s6Step367ExitGAfter,s6Step367ExitGOut,shrinkRow 777 s6Step367ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step367ExitGBefore s6Step367ExitGRow 87 s6Step367ExitG_distinct s6Step367ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step367ExitGRow.payload.take 87) s6Step367ExitGRow.sign=s6Step367ExitGOut := by decide +kernel
  have hi : s6Step367ExitGRow.payload.drop 87=s6Step367ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step367ExitG_retired] at result
  exact result

private def s6Step367ExitGvBefore : Arena := s6Step367ExitFAfter

private theorem s6Step367ExitGv_Incoming : rowsOwned s6Step367ExitGvBefore [s6Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367ExitGRow,s6Step367ExitFRow,s6Step367ExitFvRow,s6Step367ExitGvRow] 3 s6Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367ExitGvBefore (fun q => (0≤q ∧ q<343) ∨ (344≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367ExitGv_Outgoing : rowsOwned s6Step367ExitGvAfter [s6Step367ExitGvOut] :=
  hmrRows_owned_drop s6Step367ExitGvAfter [s6Step367ExitGOut,s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut] 3 s6Step367ExitBank_outgoingOwned

private theorem s6Step367ExitGv_distinct : (s6Step367ExitGvRow.sign::s6Step367ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367ExitGv_owned : (s6Step367ExitGvRow.sign::s6Step367ExitGvRow.payload).toFinset⊆s6Step367ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367ExitGvBefore (fun q => (0≤q ∧ q<343) ∨ (344≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367ExitGv_retired : s6Step367ExitGvBefore.retireSet s6Step367ExitGvExtra.toFinset=s6Step367ExitGvAfter := by
  unfold Arena.retireSet s6Step367ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step367ExitGvBefore,s6Step367ExitFAfter,s6Step367ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step367ExitGv_checked : planRowResizeLog s6Step367ExitGvBefore s6Step367ExitGvRow 199 []=
    some (s6Step367ExitGvAfter,s6Step367ExitGvOut,shrinkRow 775 s6Step367ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step367ExitGvBefore s6Step367ExitGvRow 199 s6Step367ExitGv_distinct s6Step367ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step367ExitGvRow.payload.take 199) s6Step367ExitGvRow.sign=s6Step367ExitGvOut := by decide +kernel
  have hi : s6Step367ExitGvRow.payload.drop 199=s6Step367ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step367ExitGv_retired] at result
  exact result

private theorem s6Step367ExitBank_rows : planWindowRowsLog s6Step367ExitGBefore [(s6Step367ExitGRow,87),(s6Step367ExitFRow,87),(s6Step367ExitFvRow,200),(s6Step367ExitGvRow,199)] [[],[],[],[]]=
    some (s6Step367ExitGvAfter,[s6Step367ExitGOut,s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut],(shrinkRow 777 s6Step367ExitGExtra ++ (shrinkRow 795 s6Step367ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step367ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step367ExitGvAfter [] []=some (s6Step367ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step367ExitGvBefore s6Step367ExitGvAfter s6Step367ExitGvAfter
    s6Step367ExitGvRow s6Step367ExitGvOut 199 [] [] [] []
    (shrinkRow 775 s6Step367ExitGvExtra) ([]) s6Step367ExitGv_Incoming s6Step367ExitGv_checked h4 s6Step367ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step367ExitFvBefore s6Step367ExitFvAfter s6Step367ExitGvAfter
    s6Step367ExitFvRow s6Step367ExitFvOut 200 [] [(s6Step367ExitGvRow,199)] [[]] [s6Step367ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step367ExitGvExtra ++ [])) s6Step367ExitFv_Incoming s6Step367ExitFv_checked h3 s6Step367ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step367ExitFBefore s6Step367ExitFAfter s6Step367ExitGvAfter
    s6Step367ExitFRow s6Step367ExitFOut 87 [] [(s6Step367ExitFvRow,200),(s6Step367ExitGvRow,199)] [[],[]] [s6Step367ExitFvOut,s6Step367ExitGvOut]
    (shrinkRow 795 s6Step367ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step367ExitGvExtra ++ []))) s6Step367ExitF_Incoming s6Step367ExitF_checked h2 s6Step367ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step367ExitGBefore s6Step367ExitGAfter s6Step367ExitGvAfter
    s6Step367ExitGRow s6Step367ExitGOut 87 [] [(s6Step367ExitFRow,87),(s6Step367ExitFvRow,200),(s6Step367ExitGvRow,199)] [[],[],[]] [s6Step367ExitFOut,s6Step367ExitFvOut,s6Step367ExitGvOut]
    (shrinkRow 777 s6Step367ExitGExtra) ((shrinkRow 795 s6Step367ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step367ExitGvExtra ++ [])))) s6Step367ExitG_Incoming s6Step367ExitG_checked h1 s6Step367ExitG_Outgoing
  exact h0

private theorem s6Step367ExitBank_checked : compileHmrBankResizeLog .exit s6Step367ExitGBefore ⟨s6Step367ExitFRow,s6Step367ExitGRow,s6Step367ExitFvRow,s6Step367ExitGvRow⟩ ⟨87,87,200,199⟩ [[],[],[],[]]=
    some (s6Step367ExitGvAfter,⟨s6Step367ExitFOut,s6Step367ExitGOut,s6Step367ExitFvOut,s6Step367ExitGvOut⟩,(shrinkRow 777 s6Step367ExitGExtra ++ (shrinkRow 795 s6Step367ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step367ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step367ExitBank_rows]
  rfl

private theorem s6Step367Add0_apart : Disjoint s6Step367Add0Arena.live s6Step367Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step367Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367Add0_card : s6Step367Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step367Add0_borrowed : s6Step367Add0Arena.checkBorrow (hmrHybridCount s6Step367Add0Arena s6Step367Add0B.length) s6Step367Add0Work=some s6Step367Add0During := by
  have len : s6Step367Add0Work.length=hmrHybridCount s6Step367Add0Arena s6Step367Add0B.length := by
    rw [hmrHybridCount,s6Step367Add0_card]
    decide +kernel
  have nd : s6Step367Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step367Add0Arena s6Step367Add0During s6Step367Add0Work.toFinset s6Step367Add0_bounded s6Step367Add0_apart rfl

private theorem s6Step367Add0_distinct : (858::906::807::(s6Step367Add0A++s6Step367Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367Add0_owned : (858::906::807::(s6Step367Add0A++s6Step367Add0B)).toFinset⊆s6Step367Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step367Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367Add0_checked : compileHmrHybridCinLog s6Step367Add0Arena 906 858 807 s6Step367Add0A s6Step367Add0B s6Step367Add0Work=some s6Step367Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step367Add0Arena s6Step367Add0During 906 858 807 s6Step367Add0A s6Step367Add0B s6Step367Add0Work
    (by decide +kernel) (by decide +kernel) s6Step367Add0_distinct
    (fun q hq => s6Step367Add0_owned (List.mem_toFinset.mpr hq)) s6Step367Add0_borrowed

private theorem s6Step367Add1_apart : Disjoint s6Step367Add1Arena.live s6Step367Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step367Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367Add1_card : s6Step367Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step367Add1_borrowed : s6Step367Add1Arena.checkBorrow (hmrHybridCount s6Step367Add1Arena s6Step367Add1B.length) s6Step367Add1Work=some s6Step367Add1During := by
  have len : s6Step367Add1Work.length=hmrHybridCount s6Step367Add1Arena s6Step367Add1B.length := by
    rw [hmrHybridCount,s6Step367Add1_card]
    decide +kernel
  have nd : s6Step367Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step367Add1Arena s6Step367Add1During s6Step367Add1Work.toFinset s6Step367Add1_bounded s6Step367Add1_apart rfl

private theorem s6Step367Add1_distinct : (858::906::807::(s6Step367Add1A++s6Step367Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367Add1_owned : (858::906::807::(s6Step367Add1A++s6Step367Add1B)).toFinset⊆s6Step367Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step367Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367Add1_checked : compileHmrHybridCinLog s6Step367Add1Arena 906 858 807 s6Step367Add1A s6Step367Add1B s6Step367Add1Work=some s6Step367Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step367Add1Arena s6Step367Add1During 906 858 807 s6Step367Add1A s6Step367Add1B s6Step367Add1Work
    (by decide +kernel) (by decide +kernel) s6Step367Add1_distinct
    (fun q hq => s6Step367Add1_owned (List.mem_toFinset.mpr hq)) s6Step367Add1_borrowed

private theorem s6Step367F4_apart : Disjoint (s6Step367Add0A++s6Step367Add0B).toFinset (s6Step367Add1A++s6Step367Add1B).toFinset := by
  have nd : ((s6Step367Add0A++s6Step367Add0B)++(s6Step367Add1A++s6Step367Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step367F4_carry : s6Step367F4FlagArena.checkBorrow 1 [807]=some s6Step367Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step367F4FlagArena,s6Step367HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step367F4FlagArena,s6Step367HeadFvAfter,s6Step367Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367F4_distinct : (823::906::858::807::((s6Step367Add0A++s6Step367Add1A)++(s6Step367Add0B++s6Step367Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367F4_flag : s6Step367HeadFvAfter.checkBorrow 1 [858]=some s6Step367F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step367HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step367F4_owned : (823::906::((s6Step367Add0A++s6Step367Add1A)++(s6Step367Add0B++s6Step367Add1B))).toFinset⊆s6Step367HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step367HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367F4_checked : compileHmrHybridF4Log s6Step367HeadFvAfter 823 906 s6Step367Add0A s6Step367Add0B s6Step367Add1A s6Step367Add1B [858] [807] s6Step367Add0Work s6Step367Add1Work=some s6Step367F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step367HeadFvAfter s6Step367F4FlagArena s6Step367Add0Arena s6Step367Add0During s6Step367Add1During 823 906
    s6Step367Add0A s6Step367Add0B s6Step367Add1A s6Step367Add1B [858] [807] s6Step367Add0Work s6Step367Add1Work
    (fun q hq => s6Step367F4_owned (List.mem_toFinset.mpr hq)) s6Step367F4_flag s6Step367F4_carry
    s6Step367F4_distinct s6Step367F4_apart s6Step367Add0_checked s6Step367Add1_checked

private theorem s6Step367Front_branch : s6Step367FrontSigmaArena.checkBorrow 1 [906]=some s6Step367HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step367FrontSigmaArena,s6Step367EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step367FrontSigmaArena,s6Step367EntryGvAfter,s6Step367HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367Front_entry : HmrFrontEntryValid s6Step367EntryFBefore s6Step367FrontBank 88 199 ⟨87,87,200,199⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step367FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step367EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step367EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step367FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step367Front_sigma : s6Step367EntryGvAfter.checkBorrow 1 [823]=some s6Step367FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step367EntryGvAfter,arenaWires]
  · rfl

private def s6Step367HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367HeadFBefore : Arena := s6Step367HeadGAfter

private def s6Step367HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step367HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step367HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908],777⟩

private def s6Step367HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886],775⟩

private theorem s6Step367HeadBank_incomingDistinct : ([s6Step367HeadGRow,s6Step367HeadFRow,s6Step367HeadGvRow,s6Step367HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367HeadF_Incoming : rowsOwned s6Step367HeadFBefore [s6Step367HeadFRow,s6Step367HeadGvRow,s6Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367HeadGRow,s6Step367HeadFRow,s6Step367HeadGvRow,s6Step367HeadFvRow] 1 s6Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367HeadBank_outgoingOwned : rowsOwned s6Step367HeadFvAfter [s6Step367HeadGOut,s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step367HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367HeadF_Outgoing : rowsOwned s6Step367HeadFvAfter [s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut] :=
  hmrRows_owned_drop s6Step367HeadFvAfter [s6Step367HeadGOut,s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut] 1 s6Step367HeadBank_outgoingOwned

private theorem s6Step367HeadF_distinct : (s6Step367HeadFRow.sign::s6Step367HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367HeadF_owned : (s6Step367HeadFRow.sign::s6Step367HeadFRow.payload).toFinset⊆s6Step367HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367HeadF_reserved : s6Step367HeadFBefore.reserve s6Step367HeadFFresh.toFinset=some s6Step367HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367HeadFFresh,arenaWires]
  · norm_num [s6Step367HeadFBefore,s6Step367HeadGAfter,s6Step367HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step367HeadFAfter,s6Step367HeadFBefore,s6Step367HeadGAfter,s6Step367HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367HeadF_checked : planRowResizeLog s6Step367HeadFBefore s6Step367HeadFRow 89 s6Step367HeadFFresh=
    some (s6Step367HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 888],795⟩,growRow 795 s6Step367HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step367HeadFBefore s6Step367HeadFAfter s6Step367HeadFRow 89 s6Step367HeadFFresh
    s6Step367HeadF_distinct s6Step367HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367HeadF_reserved
  have rowEq : WindowRow.mk (s6Step367HeadFRow.payload++s6Step367HeadFFresh) s6Step367HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 888],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step367HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step367HeadFvBefore : Arena := s6Step367HeadGvAfter

private theorem s6Step367HeadFv_Incoming : rowsOwned s6Step367HeadFvBefore [s6Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367HeadGRow,s6Step367HeadFRow,s6Step367HeadGvRow,s6Step367HeadFvRow] 3 s6Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367HeadFv_Outgoing : rowsOwned s6Step367HeadFvAfter [s6Step367HeadFvOut] :=
  hmrRows_owned_drop s6Step367HeadFvAfter [s6Step367HeadGOut,s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut] 3 s6Step367HeadBank_outgoingOwned

private theorem s6Step367HeadFv_distinct : (s6Step367HeadFvRow.sign::s6Step367HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367HeadFv_owned : (s6Step367HeadFvRow.sign::s6Step367HeadFvRow.payload).toFinset⊆s6Step367HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367HeadFv_reserved : s6Step367HeadFvBefore.reserve s6Step367HeadFvFresh.toFinset=some s6Step367HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367HeadFvFresh,arenaWires]
  · norm_num [s6Step367HeadFvBefore,s6Step367HeadGvAfter,s6Step367HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step367HeadFvAfter,s6Step367HeadFvBefore,s6Step367HeadGvAfter,s6Step367HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367HeadFv_checked : planRowResizeLog s6Step367HeadFvBefore s6Step367HeadFvRow 200 s6Step367HeadFvFresh=
    some (s6Step367HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩,growRow 776 s6Step367HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step367HeadFvBefore s6Step367HeadFvAfter s6Step367HeadFvRow 200 s6Step367HeadFvFresh
    s6Step367HeadFv_distinct s6Step367HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step367HeadFvRow.payload++s6Step367HeadFvFresh) s6Step367HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step367HeadG_Incoming : rowsOwned s6Step367HeadGBefore [s6Step367HeadGRow,s6Step367HeadFRow,s6Step367HeadGvRow,s6Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367HeadGRow,s6Step367HeadFRow,s6Step367HeadGvRow,s6Step367HeadFvRow] 0 s6Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367HeadG_Outgoing : rowsOwned s6Step367HeadFvAfter [s6Step367HeadGOut,s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut] :=
  hmrRows_owned_drop s6Step367HeadFvAfter [s6Step367HeadGOut,s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut] 0 s6Step367HeadBank_outgoingOwned

private theorem s6Step367HeadG_distinct : (s6Step367HeadGRow.sign::s6Step367HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367HeadG_owned : (s6Step367HeadGRow.sign::s6Step367HeadGRow.payload).toFinset⊆s6Step367HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367HeadG_reserved : s6Step367HeadGBefore.reserve s6Step367HeadGFresh.toFinset=some s6Step367HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367HeadGFresh,arenaWires]
  · norm_num [s6Step367HeadGBefore,s6Step367HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step367HeadGAfter,s6Step367HeadGBefore,s6Step367HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367HeadG_checked : planRowResizeLog s6Step367HeadGBefore s6Step367HeadGRow 89 s6Step367HeadGFresh=
    some (s6Step367HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908, 876],777⟩,growRow 777 s6Step367HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step367HeadGBefore s6Step367HeadGAfter s6Step367HeadGRow 89 s6Step367HeadGFresh
    s6Step367HeadG_distinct s6Step367HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367HeadG_reserved
  have rowEq : WindowRow.mk (s6Step367HeadGRow.payload++s6Step367HeadGFresh) s6Step367HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 908, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step367HeadGvBefore : Arena := s6Step367HeadFAfter

private theorem s6Step367HeadGv_Incoming : rowsOwned s6Step367HeadGvBefore [s6Step367HeadGvRow,s6Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step367HeadGRow,s6Step367HeadFRow,s6Step367HeadGvRow,s6Step367HeadFvRow] 2 s6Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step367HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step367HeadGv_Outgoing : rowsOwned s6Step367HeadFvAfter [s6Step367HeadGvOut,s6Step367HeadFvOut] :=
  hmrRows_owned_drop s6Step367HeadFvAfter [s6Step367HeadGOut,s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut] 2 s6Step367HeadBank_outgoingOwned

private theorem s6Step367HeadGv_distinct : (s6Step367HeadGvRow.sign::s6Step367HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step367HeadGv_owned : (s6Step367HeadGvRow.sign::s6Step367HeadGvRow.payload).toFinset⊆s6Step367HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step367HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step367HeadGv_reserved : s6Step367HeadGvBefore.reserve s6Step367HeadGvFresh.toFinset=some s6Step367HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step367HeadGvFresh,arenaWires]
  · norm_num [s6Step367HeadGvBefore,s6Step367HeadFAfter,s6Step367HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step367HeadGvAfter,s6Step367HeadGvBefore,s6Step367HeadFAfter,s6Step367HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step367HeadGv_checked : planRowResizeLog s6Step367HeadGvBefore s6Step367HeadGvRow 200 s6Step367HeadGvFresh=
    some (s6Step367HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 898],775⟩,growRow 775 s6Step367HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step367HeadGvBefore s6Step367HeadGvAfter s6Step367HeadGvRow 200 s6Step367HeadGvFresh
    s6Step367HeadGv_distinct s6Step367HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step367HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step367HeadGvRow.payload++s6Step367HeadGvFresh) s6Step367HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step367HeadBank_rows : planWindowRowsLog s6Step367HeadGBefore [(s6Step367HeadGRow,89),(s6Step367HeadFRow,89),(s6Step367HeadGvRow,200),(s6Step367HeadFvRow,200)] [s6Step367HeadGFresh,s6Step367HeadFFresh,s6Step367HeadGvFresh,s6Step367HeadFvFresh]=
    some (s6Step367HeadFvAfter,[s6Step367HeadGOut,s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut],(growRow 777 s6Step367HeadGFresh ++ (growRow 795 s6Step367HeadFFresh ++ (growRow 775 s6Step367HeadGvFresh ++ (growRow 776 s6Step367HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step367HeadFvAfter [] []=some (s6Step367HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step367HeadFvBefore s6Step367HeadFvAfter s6Step367HeadFvAfter
    s6Step367HeadFvRow s6Step367HeadFvOut 200 s6Step367HeadFvFresh [] [] []
    (growRow 776 s6Step367HeadFvFresh) ([]) s6Step367HeadFv_Incoming s6Step367HeadFv_checked h4 s6Step367HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step367HeadGvBefore s6Step367HeadGvAfter s6Step367HeadFvAfter
    s6Step367HeadGvRow s6Step367HeadGvOut 200 s6Step367HeadGvFresh [(s6Step367HeadFvRow,200)] [s6Step367HeadFvFresh] [s6Step367HeadFvOut]
    (growRow 775 s6Step367HeadGvFresh) ((growRow 776 s6Step367HeadFvFresh ++ [])) s6Step367HeadGv_Incoming s6Step367HeadGv_checked h3 s6Step367HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step367HeadFBefore s6Step367HeadFAfter s6Step367HeadFvAfter
    s6Step367HeadFRow s6Step367HeadFOut 89 s6Step367HeadFFresh [(s6Step367HeadGvRow,200),(s6Step367HeadFvRow,200)] [s6Step367HeadGvFresh,s6Step367HeadFvFresh] [s6Step367HeadGvOut,s6Step367HeadFvOut]
    (growRow 795 s6Step367HeadFFresh) ((growRow 775 s6Step367HeadGvFresh ++ (growRow 776 s6Step367HeadFvFresh ++ []))) s6Step367HeadF_Incoming s6Step367HeadF_checked h2 s6Step367HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step367HeadGBefore s6Step367HeadGAfter s6Step367HeadFvAfter
    s6Step367HeadGRow s6Step367HeadGOut 89 s6Step367HeadGFresh [(s6Step367HeadFRow,89),(s6Step367HeadGvRow,200),(s6Step367HeadFvRow,200)] [s6Step367HeadFFresh,s6Step367HeadGvFresh,s6Step367HeadFvFresh] [s6Step367HeadFOut,s6Step367HeadGvOut,s6Step367HeadFvOut]
    (growRow 777 s6Step367HeadGFresh) ((growRow 795 s6Step367HeadFFresh ++ (growRow 775 s6Step367HeadGvFresh ++ (growRow 776 s6Step367HeadFvFresh ++ [])))) s6Step367HeadG_Incoming s6Step367HeadG_checked h1 s6Step367HeadG_Outgoing
  exact h0

private theorem s6Step367HeadBank_checked : compileHmrBankResizeLog .headroom s6Step367HeadGBefore ⟨s6Step367HeadFRow,s6Step367HeadGRow,s6Step367HeadFvRow,s6Step367HeadGvRow⟩ ⟨89,89,200,200⟩ [s6Step367HeadGFresh,s6Step367HeadFFresh,s6Step367HeadGvFresh,s6Step367HeadFvFresh]=
    some (s6Step367HeadFvAfter,⟨s6Step367HeadFOut,s6Step367HeadGOut,s6Step367HeadFvOut,s6Step367HeadGvOut⟩,(growRow 777 s6Step367HeadGFresh ++ (growRow 795 s6Step367HeadFFresh ++ (growRow 775 s6Step367HeadGvFresh ++ (growRow 776 s6Step367HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step367HeadBank_rows]
  rfl

private theorem s6Step367Front_checked : compileHmrSourceFrontLog s6Step367EntryFBefore s6Step367FrontBank 88 199 ⟨87,87,200,199⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step367FrontLog=some s6Step367FrontPlan := by
  have pairEq : s6Step367FrontPair=⟨s6Step367HeadFRow,s6Step367HeadGRow,s6Step367HeadFvRow,s6Step367HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step367FrontHead=⟨s6Step367ExitFRow,s6Step367ExitGRow,s6Step367ExitFvRow,s6Step367ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step367Add0A=s6Step367FrontHead.f.wires := by decide +kernel
  have gEq : s6Step367Add0B=s6Step367FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step367Add1A=s6Step367FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step367Add1B=s6Step367FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step367EntryFBefore s6Step367FrontBank 88 199 ⟨87,87,200,199⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step367FrontLog s6Step367FrontPlan
  · exact s6Step367Front_entry
  · exact s6Step367EntryBank_checked
  · exact s6Step367Front_sigma
  · rfl
  · exact s6Step367Front_branch
  · rfl
  · simpa only [s6Step367FrontPlan,pairEq] using s6Step367HeadBank_checked
  · simpa only [s6Step367FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step367F4_checked
  · exact s6Step367Counter_checked
  · rfl
  · simpa only [s6Step367FrontPlan,headEq] using s6Step367ExitBank_checked

private theorem s6Step367Complete_explicit_checked : compileHmrEarlyStepLog s6Step367EntryFBefore s6Step367FrontBank 88 199 ⟨87,87,200,199⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step367CompleteLog=some s6Step367CompletePlan := by
  let Q := s6Step367EarlyControlPlan
  have hq := s6Step367EarlyControl_plan_checked
  have fv1 : s6Step367CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step367CompleteOut.fv.payload[2]?.getD s6Step367CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step367CompleteOut.fv.payload[3]?.getD s6Step367CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step367CompleteOut.fv.payload[4]?.getD s6Step367CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step367EntryFBefore s6Step367EarlyControlArena s6Step367FrontBank 88 199 ⟨87,87,200,199⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step367CompleteLog s6Step367FrontPlan Q
    s6Step367Front_checked s6Step367Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step367Complete_owned s6Step367Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step367EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 s6Step367CompleteOut.fv.second (s6Step367CompleteOut.fv.payload[2]?.getD s6Step367CompleteOut.fv.sign) (s6Step367CompleteOut.fv.payload[3]?.getD s6Step367CompleteOut.fv.sign) (s6Step367CompleteOut.fv.payload[4]?.getD s6Step367CompleteOut.fv.sign) 906 60 s6Step367EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep367Arena : Arena := s6Step367EntryFBefore
def s6PrivateStep367Bank : WindowBank := s6Step367FrontBank
def s6PrivateStep367Spec : HmrSourceWalkStepLog := ⟨88,199,⟨87,87,200,199⟩,60,.early s6Step367CompleteLog⟩
def s6PrivateStep367Plan : HmrSourceStepPlan := .early s6Step367CompletePlan
theorem s6PrivateStep367_source : s6PrivateStep367Spec=s6ObservedLogs352[15] := rfl
theorem s6PrivateStep367_checked : compileHmrSourceStepLog s6PrivateStep367Arena s6PrivateStep367Bank
    s6PrivateStep367Spec.fgWidth s6PrivateStep367Spec.vWidth s6PrivateStep367Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 367 s6PrivateStep367Spec.need none s6PrivateStep367Spec.log=some s6PrivateStep367Plan := by
  change compileHmrSourceStepLog s6Step367EntryFBefore s6Step367FrontBank 88 199 ⟨87,87,200,199⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 367 60 none (.early s6Step367CompleteLog)=some (.early s6Step367CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 367<498)]
  rw [s6Step367Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
