import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep361
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

private def s6Step363CompleteMoves : List (Wire × Wire) := [(898,345)]

private def s6Step363EarlyControlLog : HmrEarlyControlLog := ⟨[898, 906, 876, 892, 922],[858],[807],[805, 802, 843, 877, 792, 816],[]⟩

private def s6Step363FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [858], [], [887]],[[807], [922], [906], [892]],[[], [], [], []]⟩,[908],[825],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step363CompleteLog : HmrEarlyStepLog := ⟨s6Step363FrontLog,s6Step363CompleteMoves,s6Step363EarlyControlLog⟩

private def s6Step363ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step363ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step363ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩

private def s6Step363ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step363FrontOut : WindowBank := ⟨s6Step363ExitFOut,s6Step363ExitGOut,s6Step363ExitFvOut,s6Step363ExitGvOut⟩

private def s6Step363CompleteOut : WindowBank := s6Step363FrontOut.repacked s6Step363CompleteMoves

private def s6Step363EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step363EarlyControlPositiveArena,[858],s6Step363EarlyControlEqualityArena,[807],⟨⟨908,false⟩,[⟨⟨858,false⟩,807⟩]⟩⟩

private def s6Step363EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,898⟩,⟨⟨772,false⟩,906⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,892⟩,⟨⟨769,false⟩,922⟩]⟩

private def s6Step363EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step363EarlyControlZeroArena,s6Step363EarlyControlZeroPlan,s6Step363EarlyControlClassPlan,s6Step363EarlyControlFlagArena,s6Step363EarlyControlFittedArena,s6Step363EarlyControlHistoryArena,s6Step363EarlyControlSigmaArena,s6Step363EarlyControlOutputArena,s6Step363EarlyControlLog⟩

private def s6Step363CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step363Counter_bounded : s6Step363CounterWork.toFinset⊆arenaWires := by norm_num [s6Step363CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step363HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363CounterDuring : Arena := ⟨s6Step363HeadFvAfter.live∪s6Step363CounterWork.toFinset,Finset.union_subset s6Step363HeadFvAfter.bounded s6Step363Counter_bounded⟩

private def s6Step363EntryFFresh : List Wire := []

private def s6Step363EntryFvFresh : List Wire := []

private def s6Step363EntryGFresh : List Wire := [858]

private def s6Step363EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EntryGvFresh : List Wire := [887]

private def s6Step363ExitFExtra : List Wire := [345, 922]

private def s6Step363ExitFvExtra : List Wire := [876, 892]

private def s6Step363ExitGExtra : List Wire := [858, 807]

private def s6Step363ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363ExitGvExtra : List Wire := [906]

private def s6Step363Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step363Add0_bounded : s6Step363Add0Work.toFinset⊆arenaWires := by
  have h : s6Step363Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step363Add0During : Arena := ⟨s6Step363Add0Arena.live∪s6Step363Add0Work.toFinset,Finset.union_subset s6Step363Add0Arena.bounded s6Step363Add0_bounded⟩

private def s6Step363Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step363Add1_bounded : s6Step363Add1Work.toFinset⊆arenaWires := by
  have h : s6Step363Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step363Add1During : Arena := ⟨s6Step363Add1Arena.live∪s6Step363Add1Work.toFinset,Finset.union_subset s6Step363Add1Arena.bounded s6Step363Add1_bounded⟩

private def s6Step363F4FlagArena : Arena := ⟨s6Step363HeadFvAfter.live∪{805},Finset.union_subset s6Step363HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step363F4Plan : HmrHybridF4Plan := ⟨s6Step363F4FlagArena,[805],s6Step363Add0Arena,[802],s6Step363Add0During,s6Step363Add0Work,s6Step363Add1During,s6Step363Add1Work⟩

private def s6Step363HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 922],795⟩

private def s6Step363HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876, 892],776⟩

private def s6Step363HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858, 807],777⟩

private def s6Step363HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩

private def s6Step363FrontHead : WindowBank := ⟨s6Step363HeadFOut,s6Step363HeadGOut,s6Step363HeadFvOut,s6Step363HeadGvOut⟩

private def s6Step363EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step363EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step363EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858],777⟩

private def s6Step363EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step363FrontPair : WindowBank := ⟨s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut⟩

private def s6Step363FrontSigmaArena : Arena := ⟨s6Step363EntryGvAfter.live∪{908},Finset.union_subset s6Step363EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step363HeadFFresh : List Wire := [922]

private def s6Step363HeadFvFresh : List Wire := [892]

private def s6Step363HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363HeadGFresh : List Wire := [807]

private def s6Step363HeadGvFresh : List Wire := [906]

private def s6Step363FrontPlan : HmrSourceFront := ⟨s6Step363EntryGvAfter,s6Step363FrontPair,(growRow 795 s6Step363EntryFFresh ++ (growRow 777 s6Step363EntryGFresh ++ (growRow 776 s6Step363EntryFvFresh ++ (growRow 775 s6Step363EntryGvFresh ++ [])))),s6Step363FrontSigmaArena,[908],s6Step363HeadGBefore,[825],
  s6Step363HeadFvAfter,s6Step363FrontHead,(growRow 777 s6Step363HeadGFresh ++ (growRow 795 s6Step363HeadFFresh ++ (growRow 775 s6Step363HeadGvFresh ++ (growRow 776 s6Step363HeadFvFresh ++ [])))),s6Step363F4Plan,s6Step363CounterDuring,s6Step363CounterWork,s6Step363ExitGvAfter,s6Step363FrontOut,(shrinkRow 777 s6Step363ExitGExtra ++ (shrinkRow 795 s6Step363ExitFExtra ++ (shrinkRow 776 s6Step363ExitFvExtra ++ (shrinkRow 775 s6Step363ExitGvExtra ++ []))))⟩

private def s6Step363CompletePlan : HmrEarlyStepPlan := ⟨s6Step363FrontPlan,s6Step363EarlyControlArena,s6Step363EarlyControlPlan,s6Step363CompleteMoves⟩

private theorem s6Step363Complete_apart : List.Disjoint (s6Step363CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step363CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step363Complete_owned : (s6Step363CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step363CompleteMoveArena : Arena := ⟨s6Step363ExitGvAfter.live∪{345},Finset.union_subset s6Step363ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step363Complete_repack : s6Step363ExitGvAfter.checkRepack s6Step363CompleteMoves=some s6Step363EarlyControlArena := by
  have owned : 898∈s6Step363ExitGvAfter.live := by norm_num [s6Step363ExitGvAfter,arenaWires]
  have reserve : s6Step363ExitGvAfter.reserve {345}=some s6Step363CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step363ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step363CompleteMoveArena.retireSet {898}=s6Step363EarlyControlArena := by
    unfold Arena.retireSet s6Step363EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step363CompleteMoveArena,s6Step363ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step363CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step363CompleteMoveArena.retireSet {898}).checkRepack []=some s6Step363EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step363EarlyControl_branchOwned : ([825] : List Wire).toFinset⊆s6Step363EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_branch : compileHmrBranchRetirement s6Step363EarlyControlSigmaArena 825=some s6Step363EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step363EarlyControl_branchOwned
  · ext q
    simp [s6Step363EarlyControlOutputArena,s6Step363EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step363EarlyControl_classEqualityBorrow : s6Step363EarlyControlPositiveArena.checkBorrow (([908, 858] : List Wire).length-1) s6Step363EarlyControlLog.classWork=some s6Step363EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step363EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step363EarlyControlEqualityArena,s6Step363EarlyControlPositiveArena,s6Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step363EarlyControl_classEqualityOwned : ([908, 858] : List Wire).toFinset⊆s6Step363EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_classEquality : compileHmrEqualityLog s6Step363EarlyControlPositiveArena [908, 858] 0 s6Step363EarlyControlLog.classWork=some (s6Step363EarlyControlEqualityArena,s6Step363EarlyControlLog.classWork,s6Step363EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step363EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step363EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step363EarlyControl_classOwned : ([769, 922, 908] : List Wire).toFinset⊆s6Step363EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_positiveBorrow : s6Step363EarlyControlZeroArena.checkBorrow (1) s6Step363EarlyControlLog.positiveWork=some s6Step363EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step363EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step363EarlyControlPositiveArena,s6Step363EarlyControlZeroArena,s6Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step363EarlyControl_class : compileHmrSourceClassLog s6Step363EarlyControlZeroArena false 769 s6Step363EarlyControlZeroPlan.top 0 908 s6Step363EarlyControlLog.positiveWork s6Step363EarlyControlLog.classWork=some s6Step363EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step363EarlyControlClassPlan s6Step363EarlyControlZeroArena false 769 s6Step363EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step363EarlyControl_classOwned
  · exact s6Step363EarlyControl_positiveBorrow
  · exact s6Step363EarlyControl_classEquality

private theorem s6Step363EarlyControl_entryRecordOwned : ([825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_fitBorrow : s6Step363EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step363EarlyControlLog.recordFresh=some s6Step363EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step363EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step363EarlyControlFittedArena,s6Step363EarlyControlFlagArena,s6Step363EarlyControlLog,arenaWires]

private theorem s6Step363EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step363EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_fit : compileHmrRecordGrowLog s6Step363EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step363EarlyControlLog.recordFresh=some s6Step363EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step363EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step363EarlyControl_fitBorrow

private theorem s6Step363EarlyControl_flagsBorrow : s6Step363EarlyControlEqualityArena.checkBorrow (6) s6Step363EarlyControlLog.flagWork=some s6Step363EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step363EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step363EarlyControlFlagArena,s6Step363EarlyControlEqualityArena,s6Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step363EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s6Step363EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_flags : compileHmrFlagsLog s6Step363EarlyControlClassPlan.equalityArena s6Step363EarlyControlClassPlan.equality.top 253 252 251 s6Step363EarlyControlLog.flagWork=some s6Step363EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step363EarlyControl_flagsOwned⟩
  · exact s6Step363EarlyControl_flagsBorrow

private theorem s6Step363EarlyControl_historyBorrow : s6Step363EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step363EarlyControlLog.recordFresh=some s6Step363EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step363EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step363EarlyControlHistoryArena,s6Step363EarlyControlArena,s6Step363EarlyControlLog,arenaWires]

private theorem s6Step363EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_history : compileHmrRecordGrowLog s6Step363EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step363EarlyControlLog.recordFresh=some s6Step363EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step363EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step363EarlyControl_historyBorrow

private theorem s6Step363EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step363EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step363EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_sigmaRelease : s6Step363EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step363EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step363EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step363EarlyControlSigmaArena,s6Step363EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step363EarlyControl_sigma : compileHmrSigmaDropLog s6Step363EarlyControlHistoryArena false 0 0 254 908 []=some s6Step363EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step363EarlyControl_sigmaOwned⟩
  · exact s6Step363EarlyControl_sigmaRelease

private theorem s6Step363EarlyControl_zeroBorrow : s6Step363EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step363EarlyControlLog.zeroWork=some s6Step363EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step363EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step363EarlyControlZeroArena,s6Step363EarlyControlArena,s6Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step363EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step363EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EarlyControl_zero : compileHmrEqualityLog s6Step363EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step363EarlyControlLog.zeroWork=some (s6Step363EarlyControlZeroArena,s6Step363EarlyControlLog.zeroWork,s6Step363EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step363EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step363EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step363EarlyControl_logged : s6Step363EarlyControlPlan.Logged s6Step363EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 825 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step363EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step363EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step363EarlyControl_zero
  · exact s6Step363EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step363EarlyControl_flags
  · exact s6Step363EarlyControl_fit
  · exact s6Step363EarlyControl_history
  · exact s6Step363EarlyControl_sigma
  · exact s6Step363EarlyControl_branch

private theorem s6Step363EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step363EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 825 60 s6Step363EarlyControlLog=some s6Step363EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step363EarlyControlPlan s6Step363EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 825 60 s6Step363EarlyControl_logged

private def s6Step363EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step363EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step363EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩

private def s6Step363EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private def s6Step363FrontBank : WindowBank := ⟨s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow⟩

private def s6Step363Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 922, 795]

private def s6Step363Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858, 807, 777]

private def s6Step363Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876, 892, 776]

private def s6Step363Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906, 775]

private theorem s6Step363Counter_apart : Disjoint s6Step363HeadFvAfter.live s6Step363CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step363HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363Counter_borrowed : s6Step363HeadFvAfter.checkBorrow 4 s6Step363CounterWork=some s6Step363CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step363HeadFvAfter s6Step363CounterDuring s6Step363CounterWork.toFinset s6Step363Counter_bounded s6Step363Counter_apart rfl

private theorem s6Step363Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step363HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step363HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363Counter_checked : compileHmrCounterStepLog s6Step363HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step363CounterWork=some s6Step363CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step363HeadFvAfter.live := fun q hq => s6Step363Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step363Counter_borrowed

private def s6Step363EntryFAfter : Arena := s6Step363EntryFBefore

private theorem s6Step363EntryBank_incomingDistinct : ([s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363EntryF_Incoming : rowsOwned s6Step363EntryFBefore [s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow] 0 s6Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363EntryBank_outgoingOwned : rowsOwned s6Step363EntryGvAfter [s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step363EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363EntryF_Outgoing : rowsOwned s6Step363EntryGvAfter [s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut] :=
  hmrRows_owned_drop s6Step363EntryGvAfter [s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut] 0 s6Step363EntryBank_outgoingOwned

private theorem s6Step363EntryF_distinct : (s6Step363EntryFRow.sign::s6Step363EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363EntryF_owned : (s6Step363EntryFRow.sign::s6Step363EntryFRow.payload).toFinset⊆s6Step363EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EntryF_reserved : s6Step363EntryFBefore.reserve s6Step363EntryFFresh.toFinset=some s6Step363EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363EntryFFresh,arenaWires]
  · norm_num [s6Step363EntryFBefore,s6Step363EntryFFresh,arenaWires]
  · simp only [s6Step363EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step363EntryF_checked : planRowResizeLog s6Step363EntryFBefore s6Step363EntryFRow 90 s6Step363EntryFFresh=
    some (s6Step363EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩,growRow 795 s6Step363EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step363EntryFBefore s6Step363EntryFAfter s6Step363EntryFRow 90 s6Step363EntryFFresh
    s6Step363EntryF_distinct s6Step363EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363EntryF_reserved
  have rowEq : WindowRow.mk (s6Step363EntryFRow.payload++s6Step363EntryFFresh) s6Step363EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step363EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363EntryFvAfter : Arena := s6Step363EntryGAfter

private def s6Step363EntryFvBefore : Arena := s6Step363EntryGAfter

private theorem s6Step363EntryFv_Incoming : rowsOwned s6Step363EntryFvBefore [s6Step363EntryFvRow,s6Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow] 2 s6Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363EntryFv_Outgoing : rowsOwned s6Step363EntryGvAfter [s6Step363EntryFvOut,s6Step363EntryGvOut] :=
  hmrRows_owned_drop s6Step363EntryGvAfter [s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut] 2 s6Step363EntryBank_outgoingOwned

private theorem s6Step363EntryFv_distinct : (s6Step363EntryFvRow.sign::s6Step363EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363EntryFv_owned : (s6Step363EntryFvRow.sign::s6Step363EntryFvRow.payload).toFinset⊆s6Step363EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EntryFv_reserved : s6Step363EntryFvBefore.reserve s6Step363EntryFvFresh.toFinset=some s6Step363EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363EntryFvFresh,arenaWires]
  · norm_num [s6Step363EntryFvBefore,s6Step363EntryGAfter,s6Step363EntryFvFresh,arenaWires]
  · simp only [s6Step363EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step363EntryFv_checked : planRowResizeLog s6Step363EntryFvBefore s6Step363EntryFvRow 198 s6Step363EntryFvFresh=
    some (s6Step363EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩,growRow 776 s6Step363EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step363EntryFvBefore s6Step363EntryFvAfter s6Step363EntryFvRow 198 s6Step363EntryFvFresh
    s6Step363EntryFv_distinct s6Step363EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step363EntryFvRow.payload++s6Step363EntryFvFresh) s6Step363EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step363EntryGBefore : Arena := s6Step363EntryFBefore

private theorem s6Step363EntryG_Incoming : rowsOwned s6Step363EntryGBefore [s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow] 1 s6Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363EntryG_Outgoing : rowsOwned s6Step363EntryGvAfter [s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut] :=
  hmrRows_owned_drop s6Step363EntryGvAfter [s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut] 1 s6Step363EntryBank_outgoingOwned

private theorem s6Step363EntryG_distinct : (s6Step363EntryGRow.sign::s6Step363EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363EntryG_owned : (s6Step363EntryGRow.sign::s6Step363EntryGRow.payload).toFinset⊆s6Step363EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EntryG_reserved : s6Step363EntryGBefore.reserve s6Step363EntryGFresh.toFinset=some s6Step363EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363EntryGFresh,arenaWires]
  · norm_num [s6Step363EntryGBefore,s6Step363EntryFBefore,s6Step363EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step363EntryGAfter,s6Step363EntryGBefore,s6Step363EntryFBefore,s6Step363EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363EntryG_checked : planRowResizeLog s6Step363EntryGBefore s6Step363EntryGRow 90 s6Step363EntryGFresh=
    some (s6Step363EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858],777⟩,growRow 777 s6Step363EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step363EntryGBefore s6Step363EntryGAfter s6Step363EntryGRow 90 s6Step363EntryGFresh
    s6Step363EntryG_distinct s6Step363EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363EntryG_reserved
  have rowEq : WindowRow.mk (s6Step363EntryGRow.payload++s6Step363EntryGFresh) s6Step363EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step363EntryGvBefore : Arena := s6Step363EntryGAfter

private theorem s6Step363EntryGv_Incoming : rowsOwned s6Step363EntryGvBefore [s6Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow] 3 s6Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363EntryGv_Outgoing : rowsOwned s6Step363EntryGvAfter [s6Step363EntryGvOut] :=
  hmrRows_owned_drop s6Step363EntryGvAfter [s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut] 3 s6Step363EntryBank_outgoingOwned

private theorem s6Step363EntryGv_distinct : (s6Step363EntryGvRow.sign::s6Step363EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363EntryGv_owned : (s6Step363EntryGvRow.sign::s6Step363EntryGvRow.payload).toFinset⊆s6Step363EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363EntryGv_reserved : s6Step363EntryGvBefore.reserve s6Step363EntryGvFresh.toFinset=some s6Step363EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363EntryGvFresh,arenaWires]
  · norm_num [s6Step363EntryGvBefore,s6Step363EntryGAfter,s6Step363EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step363EntryGvAfter,s6Step363EntryGvBefore,s6Step363EntryGAfter,s6Step363EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363EntryGv_checked : planRowResizeLog s6Step363EntryGvBefore s6Step363EntryGvRow 198 s6Step363EntryGvFresh=
    some (s6Step363EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩,growRow 775 s6Step363EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step363EntryGvBefore s6Step363EntryGvAfter s6Step363EntryGvRow 198 s6Step363EntryGvFresh
    s6Step363EntryGv_distinct s6Step363EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step363EntryGvRow.payload++s6Step363EntryGvFresh) s6Step363EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step363EntryBank_rows : planWindowRowsLog s6Step363EntryFBefore [(s6Step363EntryFRow,90),(s6Step363EntryGRow,90),(s6Step363EntryFvRow,198),(s6Step363EntryGvRow,198)] [s6Step363EntryFFresh,s6Step363EntryGFresh,s6Step363EntryFvFresh,s6Step363EntryGvFresh]=
    some (s6Step363EntryGvAfter,[s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut],(growRow 795 s6Step363EntryFFresh ++ (growRow 777 s6Step363EntryGFresh ++ (growRow 776 s6Step363EntryFvFresh ++ (growRow 775 s6Step363EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step363EntryGvAfter [] []=some (s6Step363EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step363EntryGvBefore s6Step363EntryGvAfter s6Step363EntryGvAfter
    s6Step363EntryGvRow s6Step363EntryGvOut 198 s6Step363EntryGvFresh [] [] []
    (growRow 775 s6Step363EntryGvFresh) ([]) s6Step363EntryGv_Incoming s6Step363EntryGv_checked h4 s6Step363EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step363EntryFvBefore s6Step363EntryFvAfter s6Step363EntryGvAfter
    s6Step363EntryFvRow s6Step363EntryFvOut 198 s6Step363EntryFvFresh [(s6Step363EntryGvRow,198)] [s6Step363EntryGvFresh] [s6Step363EntryGvOut]
    (growRow 776 s6Step363EntryFvFresh) ((growRow 775 s6Step363EntryGvFresh ++ [])) s6Step363EntryFv_Incoming s6Step363EntryFv_checked h3 s6Step363EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step363EntryGBefore s6Step363EntryGAfter s6Step363EntryGvAfter
    s6Step363EntryGRow s6Step363EntryGOut 90 s6Step363EntryGFresh [(s6Step363EntryFvRow,198),(s6Step363EntryGvRow,198)] [s6Step363EntryFvFresh,s6Step363EntryGvFresh] [s6Step363EntryFvOut,s6Step363EntryGvOut]
    (growRow 777 s6Step363EntryGFresh) ((growRow 776 s6Step363EntryFvFresh ++ (growRow 775 s6Step363EntryGvFresh ++ []))) s6Step363EntryG_Incoming s6Step363EntryG_checked h2 s6Step363EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step363EntryFBefore s6Step363EntryFAfter s6Step363EntryGvAfter
    s6Step363EntryFRow s6Step363EntryFOut 90 s6Step363EntryFFresh [(s6Step363EntryGRow,90),(s6Step363EntryFvRow,198),(s6Step363EntryGvRow,198)] [s6Step363EntryGFresh,s6Step363EntryFvFresh,s6Step363EntryGvFresh] [s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut]
    (growRow 795 s6Step363EntryFFresh) ((growRow 777 s6Step363EntryGFresh ++ (growRow 776 s6Step363EntryFvFresh ++ (growRow 775 s6Step363EntryGvFresh ++ [])))) s6Step363EntryF_Incoming s6Step363EntryF_checked h1 s6Step363EntryF_Outgoing
  exact h0

private theorem s6Step363EntryBank_checked : compileHmrBankResizeLog .entry s6Step363EntryFBefore ⟨s6Step363EntryFRow,s6Step363EntryGRow,s6Step363EntryFvRow,s6Step363EntryGvRow⟩ ⟨90,90,198,198⟩ [s6Step363EntryFFresh,s6Step363EntryGFresh,s6Step363EntryFvFresh,s6Step363EntryGvFresh]=
    some (s6Step363EntryGvAfter,⟨s6Step363EntryFOut,s6Step363EntryGOut,s6Step363EntryFvOut,s6Step363EntryGvOut⟩,(growRow 795 s6Step363EntryFFresh ++ (growRow 777 s6Step363EntryGFresh ++ (growRow 776 s6Step363EntryFvFresh ++ (growRow 775 s6Step363EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step363EntryBank_rows]
  rfl

private def s6Step363ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363ExitFBefore : Arena := s6Step363ExitGAfter

private def s6Step363ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 922],795⟩

private def s6Step363ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876, 892],776⟩

private def s6Step363ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858, 807],777⟩

private def s6Step363ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩

private theorem s6Step363ExitBank_incomingDistinct : ([s6Step363ExitGRow,s6Step363ExitFRow,s6Step363ExitFvRow,s6Step363ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363ExitF_Incoming : rowsOwned s6Step363ExitFBefore [s6Step363ExitFRow,s6Step363ExitFvRow,s6Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363ExitGRow,s6Step363ExitFRow,s6Step363ExitFvRow,s6Step363ExitGvRow] 1 s6Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363ExitBank_outgoingOwned : rowsOwned s6Step363ExitGvAfter [s6Step363ExitGOut,s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step363ExitGvAfter (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363ExitF_Outgoing : rowsOwned s6Step363ExitGvAfter [s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut] :=
  hmrRows_owned_drop s6Step363ExitGvAfter [s6Step363ExitGOut,s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut] 1 s6Step363ExitBank_outgoingOwned

private theorem s6Step363ExitF_distinct : (s6Step363ExitFRow.sign::s6Step363ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363ExitF_owned : (s6Step363ExitFRow.sign::s6Step363ExitFRow.payload).toFinset⊆s6Step363ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363ExitF_retired : s6Step363ExitFBefore.retireSet s6Step363ExitFExtra.toFinset=s6Step363ExitFAfter := by
  unfold Arena.retireSet s6Step363ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step363ExitFBefore,s6Step363ExitGAfter,s6Step363ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step363ExitF_checked : planRowResizeLog s6Step363ExitFBefore s6Step363ExitFRow 89 []=
    some (s6Step363ExitFAfter,s6Step363ExitFOut,shrinkRow 795 s6Step363ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step363ExitFBefore s6Step363ExitFRow 89 s6Step363ExitF_distinct s6Step363ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step363ExitFRow.payload.take 89) s6Step363ExitFRow.sign=s6Step363ExitFOut := by decide +kernel
  have hi : s6Step363ExitFRow.payload.drop 89=s6Step363ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step363ExitF_retired] at result
  exact result

private def s6Step363ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363ExitFvBefore : Arena := s6Step363ExitFAfter

private theorem s6Step363ExitFv_Incoming : rowsOwned s6Step363ExitFvBefore [s6Step363ExitFvRow,s6Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363ExitGRow,s6Step363ExitFRow,s6Step363ExitFvRow,s6Step363ExitGvRow] 2 s6Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363ExitFvBefore (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363ExitFv_Outgoing : rowsOwned s6Step363ExitGvAfter [s6Step363ExitFvOut,s6Step363ExitGvOut] :=
  hmrRows_owned_drop s6Step363ExitGvAfter [s6Step363ExitGOut,s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut] 2 s6Step363ExitBank_outgoingOwned

private theorem s6Step363ExitFv_distinct : (s6Step363ExitFvRow.sign::s6Step363ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363ExitFv_owned : (s6Step363ExitFvRow.sign::s6Step363ExitFvRow.payload).toFinset⊆s6Step363ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363ExitFvBefore (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363ExitFv_retired : s6Step363ExitFvBefore.retireSet s6Step363ExitFvExtra.toFinset=s6Step363ExitFvAfter := by
  unfold Arena.retireSet s6Step363ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step363ExitFvBefore,s6Step363ExitFAfter,s6Step363ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step363ExitFv_checked : planRowResizeLog s6Step363ExitFvBefore s6Step363ExitFvRow 197 []=
    some (s6Step363ExitFvAfter,s6Step363ExitFvOut,shrinkRow 776 s6Step363ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step363ExitFvBefore s6Step363ExitFvRow 197 s6Step363ExitFv_distinct s6Step363ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step363ExitFvRow.payload.take 197) s6Step363ExitFvRow.sign=s6Step363ExitFvOut := by decide +kernel
  have hi : s6Step363ExitFvRow.payload.drop 197=s6Step363ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step363ExitFv_retired] at result
  exact result

private def s6Step363ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step363ExitG_Incoming : rowsOwned s6Step363ExitGBefore [s6Step363ExitGRow,s6Step363ExitFRow,s6Step363ExitFvRow,s6Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363ExitGRow,s6Step363ExitFRow,s6Step363ExitFvRow,s6Step363ExitGvRow] 0 s6Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363ExitG_Outgoing : rowsOwned s6Step363ExitGvAfter [s6Step363ExitGOut,s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut] :=
  hmrRows_owned_drop s6Step363ExitGvAfter [s6Step363ExitGOut,s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut] 0 s6Step363ExitBank_outgoingOwned

private theorem s6Step363ExitG_distinct : (s6Step363ExitGRow.sign::s6Step363ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363ExitG_owned : (s6Step363ExitGRow.sign::s6Step363ExitGRow.payload).toFinset⊆s6Step363ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363ExitG_retired : s6Step363ExitGBefore.retireSet s6Step363ExitGExtra.toFinset=s6Step363ExitGAfter := by
  unfold Arena.retireSet s6Step363ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step363ExitGBefore,s6Step363ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step363ExitG_checked : planRowResizeLog s6Step363ExitGBefore s6Step363ExitGRow 89 []=
    some (s6Step363ExitGAfter,s6Step363ExitGOut,shrinkRow 777 s6Step363ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step363ExitGBefore s6Step363ExitGRow 89 s6Step363ExitG_distinct s6Step363ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step363ExitGRow.payload.take 89) s6Step363ExitGRow.sign=s6Step363ExitGOut := by decide +kernel
  have hi : s6Step363ExitGRow.payload.drop 89=s6Step363ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step363ExitG_retired] at result
  exact result

private def s6Step363ExitGvBefore : Arena := s6Step363ExitFvAfter

private theorem s6Step363ExitGv_Incoming : rowsOwned s6Step363ExitGvBefore [s6Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363ExitGRow,s6Step363ExitFRow,s6Step363ExitFvRow,s6Step363ExitGvRow] 3 s6Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363ExitGvBefore (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363ExitGv_Outgoing : rowsOwned s6Step363ExitGvAfter [s6Step363ExitGvOut] :=
  hmrRows_owned_drop s6Step363ExitGvAfter [s6Step363ExitGOut,s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut] 3 s6Step363ExitBank_outgoingOwned

private theorem s6Step363ExitGv_distinct : (s6Step363ExitGvRow.sign::s6Step363ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363ExitGv_owned : (s6Step363ExitGvRow.sign::s6Step363ExitGvRow.payload).toFinset⊆s6Step363ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363ExitGvBefore (fun q => (0≤q ∧ q<345) ∨ (346≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363ExitGv_retired : s6Step363ExitGvBefore.retireSet s6Step363ExitGvExtra.toFinset=s6Step363ExitGvAfter := by
  unfold Arena.retireSet s6Step363ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step363ExitGvBefore,s6Step363ExitFvAfter,s6Step363ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step363ExitGv_checked : planRowResizeLog s6Step363ExitGvBefore s6Step363ExitGvRow 198 []=
    some (s6Step363ExitGvAfter,s6Step363ExitGvOut,shrinkRow 775 s6Step363ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step363ExitGvBefore s6Step363ExitGvRow 198 s6Step363ExitGv_distinct s6Step363ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step363ExitGvRow.payload.take 198) s6Step363ExitGvRow.sign=s6Step363ExitGvOut := by decide +kernel
  have hi : s6Step363ExitGvRow.payload.drop 198=s6Step363ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step363ExitGv_retired] at result
  exact result

private theorem s6Step363ExitBank_rows : planWindowRowsLog s6Step363ExitGBefore [(s6Step363ExitGRow,89),(s6Step363ExitFRow,89),(s6Step363ExitFvRow,197),(s6Step363ExitGvRow,198)] [[],[],[],[]]=
    some (s6Step363ExitGvAfter,[s6Step363ExitGOut,s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut],(shrinkRow 777 s6Step363ExitGExtra ++ (shrinkRow 795 s6Step363ExitFExtra ++ (shrinkRow 776 s6Step363ExitFvExtra ++ (shrinkRow 775 s6Step363ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step363ExitGvAfter [] []=some (s6Step363ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step363ExitGvBefore s6Step363ExitGvAfter s6Step363ExitGvAfter
    s6Step363ExitGvRow s6Step363ExitGvOut 198 [] [] [] []
    (shrinkRow 775 s6Step363ExitGvExtra) ([]) s6Step363ExitGv_Incoming s6Step363ExitGv_checked h4 s6Step363ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step363ExitFvBefore s6Step363ExitFvAfter s6Step363ExitGvAfter
    s6Step363ExitFvRow s6Step363ExitFvOut 197 [] [(s6Step363ExitGvRow,198)] [[]] [s6Step363ExitGvOut]
    (shrinkRow 776 s6Step363ExitFvExtra) ((shrinkRow 775 s6Step363ExitGvExtra ++ [])) s6Step363ExitFv_Incoming s6Step363ExitFv_checked h3 s6Step363ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step363ExitFBefore s6Step363ExitFAfter s6Step363ExitGvAfter
    s6Step363ExitFRow s6Step363ExitFOut 89 [] [(s6Step363ExitFvRow,197),(s6Step363ExitGvRow,198)] [[],[]] [s6Step363ExitFvOut,s6Step363ExitGvOut]
    (shrinkRow 795 s6Step363ExitFExtra) ((shrinkRow 776 s6Step363ExitFvExtra ++ (shrinkRow 775 s6Step363ExitGvExtra ++ []))) s6Step363ExitF_Incoming s6Step363ExitF_checked h2 s6Step363ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step363ExitGBefore s6Step363ExitGAfter s6Step363ExitGvAfter
    s6Step363ExitGRow s6Step363ExitGOut 89 [] [(s6Step363ExitFRow,89),(s6Step363ExitFvRow,197),(s6Step363ExitGvRow,198)] [[],[],[]] [s6Step363ExitFOut,s6Step363ExitFvOut,s6Step363ExitGvOut]
    (shrinkRow 777 s6Step363ExitGExtra) ((shrinkRow 795 s6Step363ExitFExtra ++ (shrinkRow 776 s6Step363ExitFvExtra ++ (shrinkRow 775 s6Step363ExitGvExtra ++ [])))) s6Step363ExitG_Incoming s6Step363ExitG_checked h1 s6Step363ExitG_Outgoing
  exact h0

private theorem s6Step363ExitBank_checked : compileHmrBankResizeLog .exit s6Step363ExitGBefore ⟨s6Step363ExitFRow,s6Step363ExitGRow,s6Step363ExitFvRow,s6Step363ExitGvRow⟩ ⟨89,89,197,198⟩ [[],[],[],[]]=
    some (s6Step363ExitGvAfter,⟨s6Step363ExitFOut,s6Step363ExitGOut,s6Step363ExitFvOut,s6Step363ExitGvOut⟩,(shrinkRow 777 s6Step363ExitGExtra ++ (shrinkRow 795 s6Step363ExitFExtra ++ (shrinkRow 776 s6Step363ExitFvExtra ++ (shrinkRow 775 s6Step363ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step363ExitBank_rows]
  rfl

private theorem s6Step363Add0_apart : Disjoint s6Step363Add0Arena.live s6Step363Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step363Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363Add0_card : s6Step363Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step363Add0_borrowed : s6Step363Add0Arena.checkBorrow (hmrHybridCount s6Step363Add0Arena s6Step363Add0B.length) s6Step363Add0Work=some s6Step363Add0During := by
  have len : s6Step363Add0Work.length=hmrHybridCount s6Step363Add0Arena s6Step363Add0B.length := by
    rw [hmrHybridCount,s6Step363Add0_card]
    decide +kernel
  have nd : s6Step363Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step363Add0Arena s6Step363Add0During s6Step363Add0Work.toFinset s6Step363Add0_bounded s6Step363Add0_apart rfl

private theorem s6Step363Add0_distinct : (805::825::802::(s6Step363Add0A++s6Step363Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363Add0_owned : (805::825::802::(s6Step363Add0A++s6Step363Add0B)).toFinset⊆s6Step363Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step363Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363Add0_checked : compileHmrHybridCinLog s6Step363Add0Arena 825 805 802 s6Step363Add0A s6Step363Add0B s6Step363Add0Work=some s6Step363Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step363Add0Arena s6Step363Add0During 825 805 802 s6Step363Add0A s6Step363Add0B s6Step363Add0Work
    (by decide +kernel) (by decide +kernel) s6Step363Add0_distinct
    (fun q hq => s6Step363Add0_owned (List.mem_toFinset.mpr hq)) s6Step363Add0_borrowed

private theorem s6Step363Add1_apart : Disjoint s6Step363Add1Arena.live s6Step363Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step363Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363Add1_card : s6Step363Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step363Add1_borrowed : s6Step363Add1Arena.checkBorrow (hmrHybridCount s6Step363Add1Arena s6Step363Add1B.length) s6Step363Add1Work=some s6Step363Add1During := by
  have len : s6Step363Add1Work.length=hmrHybridCount s6Step363Add1Arena s6Step363Add1B.length := by
    rw [hmrHybridCount,s6Step363Add1_card]
    decide +kernel
  have nd : s6Step363Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step363Add1Arena s6Step363Add1During s6Step363Add1Work.toFinset s6Step363Add1_bounded s6Step363Add1_apart rfl

private theorem s6Step363Add1_distinct : (805::825::802::(s6Step363Add1A++s6Step363Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363Add1_owned : (805::825::802::(s6Step363Add1A++s6Step363Add1B)).toFinset⊆s6Step363Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step363Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363Add1_checked : compileHmrHybridCinLog s6Step363Add1Arena 825 805 802 s6Step363Add1A s6Step363Add1B s6Step363Add1Work=some s6Step363Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step363Add1Arena s6Step363Add1During 825 805 802 s6Step363Add1A s6Step363Add1B s6Step363Add1Work
    (by decide +kernel) (by decide +kernel) s6Step363Add1_distinct
    (fun q hq => s6Step363Add1_owned (List.mem_toFinset.mpr hq)) s6Step363Add1_borrowed

private theorem s6Step363F4_apart : Disjoint (s6Step363Add0A++s6Step363Add0B).toFinset (s6Step363Add1A++s6Step363Add1B).toFinset := by
  have nd : ((s6Step363Add0A++s6Step363Add0B)++(s6Step363Add1A++s6Step363Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step363F4_carry : s6Step363F4FlagArena.checkBorrow 1 [802]=some s6Step363Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step363F4FlagArena,s6Step363HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step363F4FlagArena,s6Step363HeadFvAfter,s6Step363Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363F4_distinct : (908::825::805::802::((s6Step363Add0A++s6Step363Add1A)++(s6Step363Add0B++s6Step363Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363F4_flag : s6Step363HeadFvAfter.checkBorrow 1 [805]=some s6Step363F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step363HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step363F4_owned : (908::825::((s6Step363Add0A++s6Step363Add1A)++(s6Step363Add0B++s6Step363Add1B))).toFinset⊆s6Step363HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step363HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363F4_checked : compileHmrHybridF4Log s6Step363HeadFvAfter 908 825 s6Step363Add0A s6Step363Add0B s6Step363Add1A s6Step363Add1B [805] [802] s6Step363Add0Work s6Step363Add1Work=some s6Step363F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step363HeadFvAfter s6Step363F4FlagArena s6Step363Add0Arena s6Step363Add0During s6Step363Add1During 908 825
    s6Step363Add0A s6Step363Add0B s6Step363Add1A s6Step363Add1B [805] [802] s6Step363Add0Work s6Step363Add1Work
    (fun q hq => s6Step363F4_owned (List.mem_toFinset.mpr hq)) s6Step363F4_flag s6Step363F4_carry
    s6Step363F4_distinct s6Step363F4_apart s6Step363Add0_checked s6Step363Add1_checked

private theorem s6Step363Front_branch : s6Step363FrontSigmaArena.checkBorrow 1 [825]=some s6Step363HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step363FrontSigmaArena,s6Step363EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step363FrontSigmaArena,s6Step363EntryGvAfter,s6Step363HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363Front_entry : HmrFrontEntryValid s6Step363EntryFBefore s6Step363FrontBank 90 198 ⟨89,89,197,198⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step363FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step363EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step363EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step363FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step363Front_sigma : s6Step363EntryGvAfter.checkBorrow 1 [908]=some s6Step363FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step363EntryGvAfter,arenaWires]
  · rfl

private def s6Step363HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363HeadFBefore : Arena := s6Step363HeadGAfter

private def s6Step363HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step363HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step363HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858],777⟩

private def s6Step363HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private theorem s6Step363HeadBank_incomingDistinct : ([s6Step363HeadGRow,s6Step363HeadFRow,s6Step363HeadGvRow,s6Step363HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363HeadF_Incoming : rowsOwned s6Step363HeadFBefore [s6Step363HeadFRow,s6Step363HeadGvRow,s6Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363HeadGRow,s6Step363HeadFRow,s6Step363HeadGvRow,s6Step363HeadFvRow] 1 s6Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363HeadBank_outgoingOwned : rowsOwned s6Step363HeadFvAfter [s6Step363HeadGOut,s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step363HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363HeadF_Outgoing : rowsOwned s6Step363HeadFvAfter [s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut] :=
  hmrRows_owned_drop s6Step363HeadFvAfter [s6Step363HeadGOut,s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut] 1 s6Step363HeadBank_outgoingOwned

private theorem s6Step363HeadF_distinct : (s6Step363HeadFRow.sign::s6Step363HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363HeadF_owned : (s6Step363HeadFRow.sign::s6Step363HeadFRow.payload).toFinset⊆s6Step363HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363HeadF_reserved : s6Step363HeadFBefore.reserve s6Step363HeadFFresh.toFinset=some s6Step363HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363HeadFFresh,arenaWires]
  · norm_num [s6Step363HeadFBefore,s6Step363HeadGAfter,s6Step363HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step363HeadFAfter,s6Step363HeadFBefore,s6Step363HeadGAfter,s6Step363HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363HeadF_checked : planRowResizeLog s6Step363HeadFBefore s6Step363HeadFRow 91 s6Step363HeadFFresh=
    some (s6Step363HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 922],795⟩,growRow 795 s6Step363HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step363HeadFBefore s6Step363HeadFAfter s6Step363HeadFRow 91 s6Step363HeadFFresh
    s6Step363HeadF_distinct s6Step363HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363HeadF_reserved
  have rowEq : WindowRow.mk (s6Step363HeadFRow.payload++s6Step363HeadFFresh) s6Step363HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 922],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step363HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step363HeadFvBefore : Arena := s6Step363HeadGvAfter

private theorem s6Step363HeadFv_Incoming : rowsOwned s6Step363HeadFvBefore [s6Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363HeadGRow,s6Step363HeadFRow,s6Step363HeadGvRow,s6Step363HeadFvRow] 3 s6Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363HeadFv_Outgoing : rowsOwned s6Step363HeadFvAfter [s6Step363HeadFvOut] :=
  hmrRows_owned_drop s6Step363HeadFvAfter [s6Step363HeadGOut,s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut] 3 s6Step363HeadBank_outgoingOwned

private theorem s6Step363HeadFv_distinct : (s6Step363HeadFvRow.sign::s6Step363HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363HeadFv_owned : (s6Step363HeadFvRow.sign::s6Step363HeadFvRow.payload).toFinset⊆s6Step363HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363HeadFv_reserved : s6Step363HeadFvBefore.reserve s6Step363HeadFvFresh.toFinset=some s6Step363HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363HeadFvFresh,arenaWires]
  · norm_num [s6Step363HeadFvBefore,s6Step363HeadGvAfter,s6Step363HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step363HeadFvAfter,s6Step363HeadFvBefore,s6Step363HeadGvAfter,s6Step363HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363HeadFv_checked : planRowResizeLog s6Step363HeadFvBefore s6Step363HeadFvRow 199 s6Step363HeadFvFresh=
    some (s6Step363HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876, 892],776⟩,growRow 776 s6Step363HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step363HeadFvBefore s6Step363HeadFvAfter s6Step363HeadFvRow 199 s6Step363HeadFvFresh
    s6Step363HeadFv_distinct s6Step363HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step363HeadFvRow.payload++s6Step363HeadFvFresh) s6Step363HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step363HeadG_Incoming : rowsOwned s6Step363HeadGBefore [s6Step363HeadGRow,s6Step363HeadFRow,s6Step363HeadGvRow,s6Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363HeadGRow,s6Step363HeadFRow,s6Step363HeadGvRow,s6Step363HeadFvRow] 0 s6Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363HeadG_Outgoing : rowsOwned s6Step363HeadFvAfter [s6Step363HeadGOut,s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut] :=
  hmrRows_owned_drop s6Step363HeadFvAfter [s6Step363HeadGOut,s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut] 0 s6Step363HeadBank_outgoingOwned

private theorem s6Step363HeadG_distinct : (s6Step363HeadGRow.sign::s6Step363HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363HeadG_owned : (s6Step363HeadGRow.sign::s6Step363HeadGRow.payload).toFinset⊆s6Step363HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363HeadG_reserved : s6Step363HeadGBefore.reserve s6Step363HeadGFresh.toFinset=some s6Step363HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363HeadGFresh,arenaWires]
  · norm_num [s6Step363HeadGBefore,s6Step363HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step363HeadGAfter,s6Step363HeadGBefore,s6Step363HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363HeadG_checked : planRowResizeLog s6Step363HeadGBefore s6Step363HeadGRow 91 s6Step363HeadGFresh=
    some (s6Step363HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858, 807],777⟩,growRow 777 s6Step363HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step363HeadGBefore s6Step363HeadGAfter s6Step363HeadGRow 91 s6Step363HeadGFresh
    s6Step363HeadG_distinct s6Step363HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363HeadG_reserved
  have rowEq : WindowRow.mk (s6Step363HeadGRow.payload++s6Step363HeadGFresh) s6Step363HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 858, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step363HeadGvBefore : Arena := s6Step363HeadFAfter

private theorem s6Step363HeadGv_Incoming : rowsOwned s6Step363HeadGvBefore [s6Step363HeadGvRow,s6Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step363HeadGRow,s6Step363HeadFRow,s6Step363HeadGvRow,s6Step363HeadFvRow] 2 s6Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step363HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step363HeadGv_Outgoing : rowsOwned s6Step363HeadFvAfter [s6Step363HeadGvOut,s6Step363HeadFvOut] :=
  hmrRows_owned_drop s6Step363HeadFvAfter [s6Step363HeadGOut,s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut] 2 s6Step363HeadBank_outgoingOwned

private theorem s6Step363HeadGv_distinct : (s6Step363HeadGvRow.sign::s6Step363HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step363HeadGv_owned : (s6Step363HeadGvRow.sign::s6Step363HeadGvRow.payload).toFinset⊆s6Step363HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step363HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step363HeadGv_reserved : s6Step363HeadGvBefore.reserve s6Step363HeadGvFresh.toFinset=some s6Step363HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step363HeadGvFresh,arenaWires]
  · norm_num [s6Step363HeadGvBefore,s6Step363HeadFAfter,s6Step363HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step363HeadGvAfter,s6Step363HeadGvBefore,s6Step363HeadFAfter,s6Step363HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step363HeadGv_checked : planRowResizeLog s6Step363HeadGvBefore s6Step363HeadGvRow 199 s6Step363HeadGvFresh=
    some (s6Step363HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩,growRow 775 s6Step363HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step363HeadGvBefore s6Step363HeadGvAfter s6Step363HeadGvRow 199 s6Step363HeadGvFresh
    s6Step363HeadGv_distinct s6Step363HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step363HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step363HeadGvRow.payload++s6Step363HeadGvFresh) s6Step363HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step363HeadBank_rows : planWindowRowsLog s6Step363HeadGBefore [(s6Step363HeadGRow,91),(s6Step363HeadFRow,91),(s6Step363HeadGvRow,199),(s6Step363HeadFvRow,199)] [s6Step363HeadGFresh,s6Step363HeadFFresh,s6Step363HeadGvFresh,s6Step363HeadFvFresh]=
    some (s6Step363HeadFvAfter,[s6Step363HeadGOut,s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut],(growRow 777 s6Step363HeadGFresh ++ (growRow 795 s6Step363HeadFFresh ++ (growRow 775 s6Step363HeadGvFresh ++ (growRow 776 s6Step363HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step363HeadFvAfter [] []=some (s6Step363HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step363HeadFvBefore s6Step363HeadFvAfter s6Step363HeadFvAfter
    s6Step363HeadFvRow s6Step363HeadFvOut 199 s6Step363HeadFvFresh [] [] []
    (growRow 776 s6Step363HeadFvFresh) ([]) s6Step363HeadFv_Incoming s6Step363HeadFv_checked h4 s6Step363HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step363HeadGvBefore s6Step363HeadGvAfter s6Step363HeadFvAfter
    s6Step363HeadGvRow s6Step363HeadGvOut 199 s6Step363HeadGvFresh [(s6Step363HeadFvRow,199)] [s6Step363HeadFvFresh] [s6Step363HeadFvOut]
    (growRow 775 s6Step363HeadGvFresh) ((growRow 776 s6Step363HeadFvFresh ++ [])) s6Step363HeadGv_Incoming s6Step363HeadGv_checked h3 s6Step363HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step363HeadFBefore s6Step363HeadFAfter s6Step363HeadFvAfter
    s6Step363HeadFRow s6Step363HeadFOut 91 s6Step363HeadFFresh [(s6Step363HeadGvRow,199),(s6Step363HeadFvRow,199)] [s6Step363HeadGvFresh,s6Step363HeadFvFresh] [s6Step363HeadGvOut,s6Step363HeadFvOut]
    (growRow 795 s6Step363HeadFFresh) ((growRow 775 s6Step363HeadGvFresh ++ (growRow 776 s6Step363HeadFvFresh ++ []))) s6Step363HeadF_Incoming s6Step363HeadF_checked h2 s6Step363HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step363HeadGBefore s6Step363HeadGAfter s6Step363HeadFvAfter
    s6Step363HeadGRow s6Step363HeadGOut 91 s6Step363HeadGFresh [(s6Step363HeadFRow,91),(s6Step363HeadGvRow,199),(s6Step363HeadFvRow,199)] [s6Step363HeadFFresh,s6Step363HeadGvFresh,s6Step363HeadFvFresh] [s6Step363HeadFOut,s6Step363HeadGvOut,s6Step363HeadFvOut]
    (growRow 777 s6Step363HeadGFresh) ((growRow 795 s6Step363HeadFFresh ++ (growRow 775 s6Step363HeadGvFresh ++ (growRow 776 s6Step363HeadFvFresh ++ [])))) s6Step363HeadG_Incoming s6Step363HeadG_checked h1 s6Step363HeadG_Outgoing
  exact h0

private theorem s6Step363HeadBank_checked : compileHmrBankResizeLog .headroom s6Step363HeadGBefore ⟨s6Step363HeadFRow,s6Step363HeadGRow,s6Step363HeadFvRow,s6Step363HeadGvRow⟩ ⟨91,91,199,199⟩ [s6Step363HeadGFresh,s6Step363HeadFFresh,s6Step363HeadGvFresh,s6Step363HeadFvFresh]=
    some (s6Step363HeadFvAfter,⟨s6Step363HeadFOut,s6Step363HeadGOut,s6Step363HeadFvOut,s6Step363HeadGvOut⟩,(growRow 777 s6Step363HeadGFresh ++ (growRow 795 s6Step363HeadFFresh ++ (growRow 775 s6Step363HeadGvFresh ++ (growRow 776 s6Step363HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step363HeadBank_rows]
  rfl

private theorem s6Step363Front_checked : compileHmrSourceFrontLog s6Step363EntryFBefore s6Step363FrontBank 90 198 ⟨89,89,197,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step363FrontLog=some s6Step363FrontPlan := by
  have pairEq : s6Step363FrontPair=⟨s6Step363HeadFRow,s6Step363HeadGRow,s6Step363HeadFvRow,s6Step363HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step363FrontHead=⟨s6Step363ExitFRow,s6Step363ExitGRow,s6Step363ExitFvRow,s6Step363ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step363Add0A=s6Step363FrontHead.f.wires := by decide +kernel
  have gEq : s6Step363Add0B=s6Step363FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step363Add1A=s6Step363FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step363Add1B=s6Step363FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step363EntryFBefore s6Step363FrontBank 90 198 ⟨89,89,197,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step363FrontLog s6Step363FrontPlan
  · exact s6Step363Front_entry
  · exact s6Step363EntryBank_checked
  · exact s6Step363Front_sigma
  · rfl
  · exact s6Step363Front_branch
  · rfl
  · simpa only [s6Step363FrontPlan,pairEq] using s6Step363HeadBank_checked
  · simpa only [s6Step363FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step363F4_checked
  · exact s6Step363Counter_checked
  · rfl
  · simpa only [s6Step363FrontPlan,headEq] using s6Step363ExitBank_checked

private theorem s6Step363Complete_explicit_checked : compileHmrEarlyStepLog s6Step363EntryFBefore s6Step363FrontBank 90 198 ⟨89,89,197,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step363CompleteLog=some s6Step363CompletePlan := by
  let Q := s6Step363EarlyControlPlan
  have hq := s6Step363EarlyControl_plan_checked
  have fv1 : s6Step363CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step363CompleteOut.fv.payload[2]?.getD s6Step363CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step363CompleteOut.fv.payload[3]?.getD s6Step363CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step363CompleteOut.fv.payload[4]?.getD s6Step363CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step363EntryFBefore s6Step363EarlyControlArena s6Step363FrontBank 90 198 ⟨89,89,197,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step363CompleteLog s6Step363FrontPlan Q
    s6Step363Front_checked s6Step363Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step363Complete_owned s6Step363Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step363EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 s6Step363CompleteOut.fv.second (s6Step363CompleteOut.fv.payload[2]?.getD s6Step363CompleteOut.fv.sign) (s6Step363CompleteOut.fv.payload[3]?.getD s6Step363CompleteOut.fv.sign) (s6Step363CompleteOut.fv.payload[4]?.getD s6Step363CompleteOut.fv.sign) 825 60 s6Step363EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep363Arena : Arena := s6Step363EntryFBefore
def s6PrivateStep363Bank : WindowBank := s6Step363FrontBank
def s6PrivateStep363Spec : HmrSourceWalkStepLog := ⟨90,198,⟨89,89,197,198⟩,60,.early s6Step363CompleteLog⟩
def s6PrivateStep363Plan : HmrSourceStepPlan := .early s6Step363CompletePlan
theorem s6PrivateStep363_source : s6PrivateStep363Spec=s6ObservedLogs352[11] := rfl
theorem s6PrivateStep363_checked : compileHmrSourceStepLog s6PrivateStep363Arena s6PrivateStep363Bank
    s6PrivateStep363Spec.fgWidth s6PrivateStep363Spec.vWidth s6PrivateStep363Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 363 s6PrivateStep363Spec.need none s6PrivateStep363Spec.log=some s6PrivateStep363Plan := by
  change compileHmrSourceStepLog s6Step363EntryFBefore s6Step363FrontBank 90 198 ⟨89,89,197,198⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 363 60 none (.early s6Step363CompleteLog)=some (.early s6Step363CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 363<498)]
  rw [s6Step363Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
