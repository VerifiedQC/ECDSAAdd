import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep364
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

private def s6Step366CompleteMoves : List (Wire × Wire) := [(823,87)]

private def s6Step366EarlyControlLog : HmrEarlyControlLog := ⟨[823, 906, 876, 888, 898],[892],[858],[807, 805, 802, 843, 877, 792],[]⟩

private def s6Step366FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[888], [876], [906], [922]],[[], [], [], []]⟩,[886],[908],[898],[892],[858, 807, 805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[858, 807, 805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[898, 892, 858, 807]⟩

private def s6Step366CompleteLog : HmrEarlyStepLog := ⟨s6Step366FrontLog,s6Step366CompleteMoves,s6Step366EarlyControlLog⟩

private def s6Step366ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step366ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step366ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩

private def s6Step366ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step366FrontOut : WindowBank := ⟨s6Step366ExitFOut,s6Step366ExitGOut,s6Step366ExitFvOut,s6Step366ExitGvOut⟩

private def s6Step366CompleteOut : WindowBank := s6Step366FrontOut.repacked s6Step366CompleteMoves

private def s6Step366EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step366EarlyControlPositiveArena,[892],s6Step366EarlyControlEqualityArena,[858],⟨⟨886,false⟩,[⟨⟨892,false⟩,858⟩]⟩⟩

private def s6Step366EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,823⟩,⟨⟨772,false⟩,906⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,888⟩,⟨⟨769,false⟩,898⟩]⟩

private def s6Step366EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step366EarlyControlZeroArena,s6Step366EarlyControlZeroPlan,s6Step366EarlyControlClassPlan,s6Step366EarlyControlFlagArena,s6Step366EarlyControlFittedArena,s6Step366EarlyControlHistoryArena,s6Step366EarlyControlSigmaArena,s6Step366EarlyControlOutputArena,s6Step366EarlyControlLog⟩

private def s6Step366CounterWork : List Wire := [898, 892, 858, 807]

private theorem s6Step366Counter_bounded : s6Step366CounterWork.toFinset⊆arenaWires := by norm_num [s6Step366CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step366HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366CounterDuring : Arena := ⟨s6Step366HeadFvAfter.live∪s6Step366CounterWork.toFinset,Finset.union_subset s6Step366HeadFvAfter.bounded s6Step366Counter_bounded⟩

private def s6Step366EntryFFresh : List Wire := []

private def s6Step366EntryFvFresh : List Wire := []

private def s6Step366EntryGFresh : List Wire := []

private def s6Step366EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366EntryGvAfter : Arena := s6Step366EntryFBefore

private def s6Step366EntryGvFresh : List Wire := []

private def s6Step366ExitFExtra : List Wire := [876]

private def s6Step366ExitGExtra : List Wire := [87, 888]

private def s6Step366ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366ExitGvExtra : List Wire := [906]

private def s6Step366Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366Add0Work : List Wire := [858, 807, 805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step366Add0_bounded : s6Step366Add0Work.toFinset⊆arenaWires := by
  have h : s6Step366Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step366Add0During : Arena := ⟨s6Step366Add0Arena.live∪s6Step366Add0Work.toFinset,Finset.union_subset s6Step366Add0Arena.bounded s6Step366Add0_bounded⟩

private def s6Step366Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366Add1Work : List Wire := [858, 807, 805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step366Add1_bounded : s6Step366Add1Work.toFinset⊆arenaWires := by
  have h : s6Step366Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step366Add1During : Arena := ⟨s6Step366Add1Arena.live∪s6Step366Add1Work.toFinset,Finset.union_subset s6Step366Add1Arena.bounded s6Step366Add1_bounded⟩

private def s6Step366F4FlagArena : Arena := ⟨s6Step366HeadFvAfter.live∪{898},Finset.union_subset s6Step366HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step366F4Plan : HmrHybridF4Plan := ⟨s6Step366F4FlagArena,[898],s6Step366Add0Arena,[892],s6Step366Add0During,s6Step366Add0Work,s6Step366Add1During,s6Step366Add1Work⟩

private def s6Step366HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 876],795⟩

private def s6Step366HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step366HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 888],777⟩

private def s6Step366HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩

private def s6Step366FrontHead : WindowBank := ⟨s6Step366HeadFOut,s6Step366HeadGOut,s6Step366HeadFvOut,s6Step366HeadGvOut⟩

private def s6Step366EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step366EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step366EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩

private def s6Step366EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step366FrontPair : WindowBank := ⟨s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut⟩

private def s6Step366FrontSigmaArena : Arena := ⟨s6Step366EntryGvAfter.live∪{886},Finset.union_subset s6Step366EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step366HeadFFresh : List Wire := [876]

private def s6Step366HeadFvFresh : List Wire := [922]

private def s6Step366HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366HeadGFresh : List Wire := [888]

private def s6Step366HeadGvFresh : List Wire := [906]

private def s6Step366FrontPlan : HmrSourceFront := ⟨s6Step366EntryGvAfter,s6Step366FrontPair,(growRow 795 s6Step366EntryFFresh ++ (growRow 777 s6Step366EntryGFresh ++ (growRow 776 s6Step366EntryFvFresh ++ (growRow 775 s6Step366EntryGvFresh ++ [])))),s6Step366FrontSigmaArena,[886],s6Step366HeadGBefore,[908],
  s6Step366HeadFvAfter,s6Step366FrontHead,(growRow 777 s6Step366HeadGFresh ++ (growRow 795 s6Step366HeadFFresh ++ (growRow 775 s6Step366HeadGvFresh ++ (growRow 776 s6Step366HeadFvFresh ++ [])))),s6Step366F4Plan,s6Step366CounterDuring,s6Step366CounterWork,s6Step366ExitGvAfter,s6Step366FrontOut,(shrinkRow 777 s6Step366ExitGExtra ++ (shrinkRow 795 s6Step366ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step366ExitGvExtra ++ []))))⟩

private def s6Step366CompletePlan : HmrEarlyStepPlan := ⟨s6Step366FrontPlan,s6Step366EarlyControlArena,s6Step366EarlyControlPlan,s6Step366CompleteMoves⟩

private theorem s6Step366Complete_apart : List.Disjoint (s6Step366CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [886, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step366CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[886, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step366Complete_owned : (s6Step366CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step366CompleteMoveArena : Arena := ⟨s6Step366ExitGvAfter.live∪{87},Finset.union_subset s6Step366ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step366Complete_repack : s6Step366ExitGvAfter.checkRepack s6Step366CompleteMoves=some s6Step366EarlyControlArena := by
  have owned : 823∈s6Step366ExitGvAfter.live := by norm_num [s6Step366ExitGvAfter,arenaWires]
  have reserve : s6Step366ExitGvAfter.reserve {87}=some s6Step366CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step366ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step366CompleteMoveArena.retireSet {823}=s6Step366EarlyControlArena := by
    unfold Arena.retireSet s6Step366EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step366CompleteMoveArena,s6Step366ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step366CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step366CompleteMoveArena.retireSet {823}).checkRepack []=some s6Step366EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step366EarlyControl_branchOwned : ([908] : List Wire).toFinset⊆s6Step366EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_branch : compileHmrBranchRetirement s6Step366EarlyControlSigmaArena 908=some s6Step366EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step366EarlyControl_branchOwned
  · ext q
    simp [s6Step366EarlyControlOutputArena,s6Step366EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step366EarlyControl_classEqualityBorrow : s6Step366EarlyControlPositiveArena.checkBorrow (([886, 892] : List Wire).length-1) s6Step366EarlyControlLog.classWork=some s6Step366EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step366EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step366EarlyControlEqualityArena,s6Step366EarlyControlPositiveArena,s6Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step366EarlyControl_classEqualityOwned : ([886, 892] : List Wire).toFinset⊆s6Step366EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_classEquality : compileHmrEqualityLog s6Step366EarlyControlPositiveArena [886, 892] 0 s6Step366EarlyControlLog.classWork=some (s6Step366EarlyControlEqualityArena,s6Step366EarlyControlLog.classWork,s6Step366EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step366EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step366EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step366EarlyControl_classOwned : ([769, 898, 886] : List Wire).toFinset⊆s6Step366EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_positiveBorrow : s6Step366EarlyControlZeroArena.checkBorrow (1) s6Step366EarlyControlLog.positiveWork=some s6Step366EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step366EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step366EarlyControlPositiveArena,s6Step366EarlyControlZeroArena,s6Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step366EarlyControl_class : compileHmrSourceClassLog s6Step366EarlyControlZeroArena false 769 s6Step366EarlyControlZeroPlan.top 0 886 s6Step366EarlyControlLog.positiveWork s6Step366EarlyControlLog.classWork=some s6Step366EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step366EarlyControlClassPlan s6Step366EarlyControlZeroArena false 769 s6Step366EarlyControlZeroPlan.top 0 886
  constructor
  · decide +kernel
  · exact s6Step366EarlyControl_classOwned
  · exact s6Step366EarlyControl_positiveBorrow
  · exact s6Step366EarlyControl_classEquality

private theorem s6Step366EarlyControl_entryRecordOwned : ([908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_entrySigmaOwned : ([886, 254] : List Wire).toFinset⊆s6Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_fitBorrow : s6Step366EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step366EarlyControlLog.recordFresh=some s6Step366EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step366EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step366EarlyControlFittedArena,s6Step366EarlyControlFlagArena,s6Step366EarlyControlLog,arenaWires]

private theorem s6Step366EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step366EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_fit : compileHmrRecordGrowLog s6Step366EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step366EarlyControlLog.recordFresh=some s6Step366EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step366EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step366EarlyControl_fitBorrow

private theorem s6Step366EarlyControl_flagsBorrow : s6Step366EarlyControlEqualityArena.checkBorrow (6) s6Step366EarlyControlLog.flagWork=some s6Step366EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step366EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step366EarlyControlFlagArena,s6Step366EarlyControlEqualityArena,s6Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step366EarlyControl_flagsOwned : ([858, 253, 252, 251] : List Wire).toFinset⊆s6Step366EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_flags : compileHmrFlagsLog s6Step366EarlyControlClassPlan.equalityArena s6Step366EarlyControlClassPlan.equality.top 253 252 251 s6Step366EarlyControlLog.flagWork=some s6Step366EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step366EarlyControl_flagsOwned⟩
  · exact s6Step366EarlyControl_flagsBorrow

private theorem s6Step366EarlyControl_historyBorrow : s6Step366EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step366EarlyControlLog.recordFresh=some s6Step366EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step366EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step366EarlyControlHistoryArena,s6Step366EarlyControlArena,s6Step366EarlyControlLog,arenaWires]

private theorem s6Step366EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_history : compileHmrRecordGrowLog s6Step366EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step366EarlyControlLog.recordFresh=some s6Step366EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step366EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step366EarlyControl_historyBorrow

private theorem s6Step366EarlyControl_sigmaOwned : ([254, 886] : List Wire).toFinset⊆s6Step366EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_sigmaReleaseOwned : ([886] : List Wire).toFinset⊆s6Step366EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_sigmaRelease : s6Step366EarlyControlHistoryArena.release {886} (fun _ => false)=some s6Step366EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step366EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step366EarlyControlSigmaArena,s6Step366EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step366EarlyControl_sigma : compileHmrSigmaDropLog s6Step366EarlyControlHistoryArena false 0 0 254 886 []=some s6Step366EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step366EarlyControl_sigmaOwned⟩
  · exact s6Step366EarlyControl_sigmaRelease

private theorem s6Step366EarlyControl_zeroBorrow : s6Step366EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step366EarlyControlLog.zeroWork=some s6Step366EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step366EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step366EarlyControlZeroArena,s6Step366EarlyControlArena,s6Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step366EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step366EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EarlyControl_zero : compileHmrEqualityLog s6Step366EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step366EarlyControlLog.zeroWork=some (s6Step366EarlyControlZeroArena,s6Step366EarlyControlLog.zeroWork,s6Step366EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step366EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step366EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step366EarlyControl_logged : s6Step366EarlyControlPlan.Logged s6Step366EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 886 254 253 252 251 908 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step366EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step366EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step366EarlyControl_zero
  · exact s6Step366EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step366EarlyControl_flags
  · exact s6Step366EarlyControl_fit
  · exact s6Step366EarlyControl_history
  · exact s6Step366EarlyControl_sigma
  · exact s6Step366EarlyControl_branch

private theorem s6Step366EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step366EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 886 254 253 252 251 908 60 s6Step366EarlyControlLog=some s6Step366EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step366EarlyControlPlan s6Step366EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 886 254 253 252 251 908 60 s6Step366EarlyControl_logged

private def s6Step366EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step366EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step366EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩

private def s6Step366EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step366FrontBank : WindowBank := ⟨s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow⟩

private def s6Step366Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 876, 795]

private def s6Step366Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 888, 777]

private def s6Step366Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 776]

private def s6Step366Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906, 775]

private theorem s6Step366Counter_apart : Disjoint s6Step366HeadFvAfter.live s6Step366CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step366HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366Counter_borrowed : s6Step366HeadFvAfter.checkBorrow 4 s6Step366CounterWork=some s6Step366CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step366HeadFvAfter s6Step366CounterDuring s6Step366CounterWork.toFinset s6Step366Counter_bounded s6Step366Counter_apart rfl

private theorem s6Step366Counter_owned : (886::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step366HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step366HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366Counter_checked : compileHmrCounterStepLog s6Step366HeadFvAfter true 886 [774, 773, 772, 771, 770, 769] s6Step366CounterWork=some s6Step366CounterDuring := by
  have owned : ∀q∈886::[774, 773, 772, 771, 770, 769],q∈s6Step366HeadFvAfter.live := fun q hq => s6Step366Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step366Counter_borrowed

private def s6Step366EntryFAfter : Arena := s6Step366EntryFBefore

private theorem s6Step366EntryBank_incomingDistinct : ([s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366EntryF_Incoming : rowsOwned s6Step366EntryFBefore [s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow] 0 s6Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366EntryBank_outgoingOwned : rowsOwned s6Step366EntryGvAfter [s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step366EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366EntryF_Outgoing : rowsOwned s6Step366EntryGvAfter [s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut] :=
  hmrRows_owned_drop s6Step366EntryGvAfter [s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut] 0 s6Step366EntryBank_outgoingOwned

private theorem s6Step366EntryF_distinct : (s6Step366EntryFRow.sign::s6Step366EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366EntryF_owned : (s6Step366EntryFRow.sign::s6Step366EntryFRow.payload).toFinset⊆s6Step366EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EntryF_reserved : s6Step366EntryFBefore.reserve s6Step366EntryFFresh.toFinset=some s6Step366EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366EntryFFresh,arenaWires]
  · norm_num [s6Step366EntryFBefore,s6Step366EntryFFresh,arenaWires]
  · simp only [s6Step366EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step366EntryF_checked : planRowResizeLog s6Step366EntryFBefore s6Step366EntryFRow 88 s6Step366EntryFFresh=
    some (s6Step366EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩,growRow 795 s6Step366EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step366EntryFBefore s6Step366EntryFAfter s6Step366EntryFRow 88 s6Step366EntryFFresh
    s6Step366EntryF_distinct s6Step366EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366EntryF_reserved
  have rowEq : WindowRow.mk (s6Step366EntryFRow.payload++s6Step366EntryFFresh) s6Step366EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step366EntryFvAfter : Arena := s6Step366EntryFBefore

private def s6Step366EntryFvBefore : Arena := s6Step366EntryFBefore

private theorem s6Step366EntryFv_Incoming : rowsOwned s6Step366EntryFvBefore [s6Step366EntryFvRow,s6Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow] 2 s6Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366EntryFv_Outgoing : rowsOwned s6Step366EntryGvAfter [s6Step366EntryFvOut,s6Step366EntryGvOut] :=
  hmrRows_owned_drop s6Step366EntryGvAfter [s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut] 2 s6Step366EntryBank_outgoingOwned

private theorem s6Step366EntryFv_distinct : (s6Step366EntryFvRow.sign::s6Step366EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366EntryFv_owned : (s6Step366EntryFvRow.sign::s6Step366EntryFvRow.payload).toFinset⊆s6Step366EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EntryFv_reserved : s6Step366EntryFvBefore.reserve s6Step366EntryFvFresh.toFinset=some s6Step366EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366EntryFvFresh,arenaWires]
  · norm_num [s6Step366EntryFvBefore,s6Step366EntryFBefore,s6Step366EntryFvFresh,arenaWires]
  · simp only [s6Step366EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step366EntryFv_checked : planRowResizeLog s6Step366EntryFvBefore s6Step366EntryFvRow 198 s6Step366EntryFvFresh=
    some (s6Step366EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩,growRow 776 s6Step366EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step366EntryFvBefore s6Step366EntryFvAfter s6Step366EntryFvRow 198 s6Step366EntryFvFresh
    s6Step366EntryFv_distinct s6Step366EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step366EntryFvRow.payload++s6Step366EntryFvFresh) s6Step366EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step366EntryGAfter : Arena := s6Step366EntryFBefore

private def s6Step366EntryGBefore : Arena := s6Step366EntryFBefore

private theorem s6Step366EntryG_Incoming : rowsOwned s6Step366EntryGBefore [s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow] 1 s6Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366EntryG_Outgoing : rowsOwned s6Step366EntryGvAfter [s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut] :=
  hmrRows_owned_drop s6Step366EntryGvAfter [s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut] 1 s6Step366EntryBank_outgoingOwned

private theorem s6Step366EntryG_distinct : (s6Step366EntryGRow.sign::s6Step366EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366EntryG_owned : (s6Step366EntryGRow.sign::s6Step366EntryGRow.payload).toFinset⊆s6Step366EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EntryG_reserved : s6Step366EntryGBefore.reserve s6Step366EntryGFresh.toFinset=some s6Step366EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366EntryGFresh,arenaWires]
  · norm_num [s6Step366EntryGBefore,s6Step366EntryFBefore,s6Step366EntryGFresh,arenaWires]
  · simp only [s6Step366EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step366EntryG_checked : planRowResizeLog s6Step366EntryGBefore s6Step366EntryGRow 88 s6Step366EntryGFresh=
    some (s6Step366EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩,growRow 777 s6Step366EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step366EntryGBefore s6Step366EntryGAfter s6Step366EntryGRow 88 s6Step366EntryGFresh
    s6Step366EntryG_distinct s6Step366EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366EntryG_reserved
  have rowEq : WindowRow.mk (s6Step366EntryGRow.payload++s6Step366EntryGFresh) s6Step366EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step366EntryGvBefore : Arena := s6Step366EntryFBefore

private theorem s6Step366EntryGv_Incoming : rowsOwned s6Step366EntryGvBefore [s6Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow] 3 s6Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366EntryGv_Outgoing : rowsOwned s6Step366EntryGvAfter [s6Step366EntryGvOut] :=
  hmrRows_owned_drop s6Step366EntryGvAfter [s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut] 3 s6Step366EntryBank_outgoingOwned

private theorem s6Step366EntryGv_distinct : (s6Step366EntryGvRow.sign::s6Step366EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366EntryGv_owned : (s6Step366EntryGvRow.sign::s6Step366EntryGvRow.payload).toFinset⊆s6Step366EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366EntryGv_reserved : s6Step366EntryGvBefore.reserve s6Step366EntryGvFresh.toFinset=some s6Step366EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366EntryGvFresh,arenaWires]
  · norm_num [s6Step366EntryGvBefore,s6Step366EntryFBefore,s6Step366EntryGvFresh,arenaWires]
  · simp only [s6Step366EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step366EntryGv_checked : planRowResizeLog s6Step366EntryGvBefore s6Step366EntryGvRow 198 s6Step366EntryGvFresh=
    some (s6Step366EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩,growRow 775 s6Step366EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step366EntryGvBefore s6Step366EntryGvAfter s6Step366EntryGvRow 198 s6Step366EntryGvFresh
    s6Step366EntryGv_distinct s6Step366EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step366EntryGvRow.payload++s6Step366EntryGvFresh) s6Step366EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step366EntryBank_rows : planWindowRowsLog s6Step366EntryFBefore [(s6Step366EntryFRow,88),(s6Step366EntryGRow,88),(s6Step366EntryFvRow,198),(s6Step366EntryGvRow,198)] [s6Step366EntryFFresh,s6Step366EntryGFresh,s6Step366EntryFvFresh,s6Step366EntryGvFresh]=
    some (s6Step366EntryGvAfter,[s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut],(growRow 795 s6Step366EntryFFresh ++ (growRow 777 s6Step366EntryGFresh ++ (growRow 776 s6Step366EntryFvFresh ++ (growRow 775 s6Step366EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step366EntryGvAfter [] []=some (s6Step366EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step366EntryGvBefore s6Step366EntryGvAfter s6Step366EntryGvAfter
    s6Step366EntryGvRow s6Step366EntryGvOut 198 s6Step366EntryGvFresh [] [] []
    (growRow 775 s6Step366EntryGvFresh) ([]) s6Step366EntryGv_Incoming s6Step366EntryGv_checked h4 s6Step366EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step366EntryFvBefore s6Step366EntryFvAfter s6Step366EntryGvAfter
    s6Step366EntryFvRow s6Step366EntryFvOut 198 s6Step366EntryFvFresh [(s6Step366EntryGvRow,198)] [s6Step366EntryGvFresh] [s6Step366EntryGvOut]
    (growRow 776 s6Step366EntryFvFresh) ((growRow 775 s6Step366EntryGvFresh ++ [])) s6Step366EntryFv_Incoming s6Step366EntryFv_checked h3 s6Step366EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step366EntryGBefore s6Step366EntryGAfter s6Step366EntryGvAfter
    s6Step366EntryGRow s6Step366EntryGOut 88 s6Step366EntryGFresh [(s6Step366EntryFvRow,198),(s6Step366EntryGvRow,198)] [s6Step366EntryFvFresh,s6Step366EntryGvFresh] [s6Step366EntryFvOut,s6Step366EntryGvOut]
    (growRow 777 s6Step366EntryGFresh) ((growRow 776 s6Step366EntryFvFresh ++ (growRow 775 s6Step366EntryGvFresh ++ []))) s6Step366EntryG_Incoming s6Step366EntryG_checked h2 s6Step366EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step366EntryFBefore s6Step366EntryFAfter s6Step366EntryGvAfter
    s6Step366EntryFRow s6Step366EntryFOut 88 s6Step366EntryFFresh [(s6Step366EntryGRow,88),(s6Step366EntryFvRow,198),(s6Step366EntryGvRow,198)] [s6Step366EntryGFresh,s6Step366EntryFvFresh,s6Step366EntryGvFresh] [s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut]
    (growRow 795 s6Step366EntryFFresh) ((growRow 777 s6Step366EntryGFresh ++ (growRow 776 s6Step366EntryFvFresh ++ (growRow 775 s6Step366EntryGvFresh ++ [])))) s6Step366EntryF_Incoming s6Step366EntryF_checked h1 s6Step366EntryF_Outgoing
  exact h0

private theorem s6Step366EntryBank_checked : compileHmrBankResizeLog .entry s6Step366EntryFBefore ⟨s6Step366EntryFRow,s6Step366EntryGRow,s6Step366EntryFvRow,s6Step366EntryGvRow⟩ ⟨88,88,198,198⟩ [s6Step366EntryFFresh,s6Step366EntryGFresh,s6Step366EntryFvFresh,s6Step366EntryGvFresh]=
    some (s6Step366EntryGvAfter,⟨s6Step366EntryFOut,s6Step366EntryGOut,s6Step366EntryFvOut,s6Step366EntryGvOut⟩,(growRow 795 s6Step366EntryFFresh ++ (growRow 777 s6Step366EntryGFresh ++ (growRow 776 s6Step366EntryFvFresh ++ (growRow 775 s6Step366EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step366EntryBank_rows]
  rfl

private def s6Step366ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366ExitFBefore : Arena := s6Step366ExitGAfter

private def s6Step366ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 876],795⟩

private def s6Step366ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step366ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 888],777⟩

private def s6Step366ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩

private theorem s6Step366ExitBank_incomingDistinct : ([s6Step366ExitGRow,s6Step366ExitFRow,s6Step366ExitFvRow,s6Step366ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366ExitF_Incoming : rowsOwned s6Step366ExitFBefore [s6Step366ExitFRow,s6Step366ExitFvRow,s6Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366ExitGRow,s6Step366ExitFRow,s6Step366ExitFvRow,s6Step366ExitGvRow] 1 s6Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366ExitFBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366ExitBank_outgoingOwned : rowsOwned s6Step366ExitGvAfter [s6Step366ExitGOut,s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step366ExitGvAfter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366ExitF_Outgoing : rowsOwned s6Step366ExitGvAfter [s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut] :=
  hmrRows_owned_drop s6Step366ExitGvAfter [s6Step366ExitGOut,s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut] 1 s6Step366ExitBank_outgoingOwned

private theorem s6Step366ExitF_distinct : (s6Step366ExitFRow.sign::s6Step366ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366ExitF_owned : (s6Step366ExitFRow.sign::s6Step366ExitFRow.payload).toFinset⊆s6Step366ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366ExitFBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366ExitF_retired : s6Step366ExitFBefore.retireSet s6Step366ExitFExtra.toFinset=s6Step366ExitFAfter := by
  unfold Arena.retireSet s6Step366ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step366ExitFBefore,s6Step366ExitGAfter,s6Step366ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step366ExitF_checked : planRowResizeLog s6Step366ExitFBefore s6Step366ExitFRow 88 []=
    some (s6Step366ExitFAfter,s6Step366ExitFOut,shrinkRow 795 s6Step366ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step366ExitFBefore s6Step366ExitFRow 88 s6Step366ExitF_distinct s6Step366ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step366ExitFRow.payload.take 88) s6Step366ExitFRow.sign=s6Step366ExitFOut := by decide +kernel
  have hi : s6Step366ExitFRow.payload.drop 88=s6Step366ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step366ExitF_retired] at result
  exact result

private def s6Step366ExitFvAfter : Arena := s6Step366ExitFAfter

private def s6Step366ExitFvBefore : Arena := s6Step366ExitFAfter

private theorem s6Step366ExitFv_Incoming : rowsOwned s6Step366ExitFvBefore [s6Step366ExitFvRow,s6Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366ExitGRow,s6Step366ExitFRow,s6Step366ExitFvRow,s6Step366ExitGvRow] 2 s6Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366ExitFvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366ExitFv_Outgoing : rowsOwned s6Step366ExitGvAfter [s6Step366ExitFvOut,s6Step366ExitGvOut] :=
  hmrRows_owned_drop s6Step366ExitGvAfter [s6Step366ExitGOut,s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut] 2 s6Step366ExitBank_outgoingOwned

private theorem s6Step366ExitFv_distinct : (s6Step366ExitFvRow.sign::s6Step366ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366ExitFv_owned : (s6Step366ExitFvRow.sign::s6Step366ExitFvRow.payload).toFinset⊆s6Step366ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366ExitFvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366ExitFv_reserved : s6Step366ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step366ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step366ExitFv_checked : planRowResizeLog s6Step366ExitFvBefore s6Step366ExitFvRow 199 []=
    some (s6Step366ExitFvAfter,s6Step366ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step366ExitFvBefore s6Step366ExitFvAfter s6Step366ExitFvRow 199 []
    s6Step366ExitFv_distinct s6Step366ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step366ExitFvRow.payload++[]) s6Step366ExitFvRow.sign=s6Step366ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step366ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step366ExitG_Incoming : rowsOwned s6Step366ExitGBefore [s6Step366ExitGRow,s6Step366ExitFRow,s6Step366ExitFvRow,s6Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366ExitGRow,s6Step366ExitFRow,s6Step366ExitFvRow,s6Step366ExitGvRow] 0 s6Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366ExitG_Outgoing : rowsOwned s6Step366ExitGvAfter [s6Step366ExitGOut,s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut] :=
  hmrRows_owned_drop s6Step366ExitGvAfter [s6Step366ExitGOut,s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut] 0 s6Step366ExitBank_outgoingOwned

private theorem s6Step366ExitG_distinct : (s6Step366ExitGRow.sign::s6Step366ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366ExitG_owned : (s6Step366ExitGRow.sign::s6Step366ExitGRow.payload).toFinset⊆s6Step366ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366ExitG_retired : s6Step366ExitGBefore.retireSet s6Step366ExitGExtra.toFinset=s6Step366ExitGAfter := by
  unfold Arena.retireSet s6Step366ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step366ExitGBefore,s6Step366ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step366ExitG_checked : planRowResizeLog s6Step366ExitGBefore s6Step366ExitGRow 87 []=
    some (s6Step366ExitGAfter,s6Step366ExitGOut,shrinkRow 777 s6Step366ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step366ExitGBefore s6Step366ExitGRow 87 s6Step366ExitG_distinct s6Step366ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step366ExitGRow.payload.take 87) s6Step366ExitGRow.sign=s6Step366ExitGOut := by decide +kernel
  have hi : s6Step366ExitGRow.payload.drop 87=s6Step366ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step366ExitG_retired] at result
  exact result

private def s6Step366ExitGvBefore : Arena := s6Step366ExitFAfter

private theorem s6Step366ExitGv_Incoming : rowsOwned s6Step366ExitGvBefore [s6Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366ExitGRow,s6Step366ExitFRow,s6Step366ExitFvRow,s6Step366ExitGvRow] 3 s6Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366ExitGvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366ExitGv_Outgoing : rowsOwned s6Step366ExitGvAfter [s6Step366ExitGvOut] :=
  hmrRows_owned_drop s6Step366ExitGvAfter [s6Step366ExitGOut,s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut] 3 s6Step366ExitBank_outgoingOwned

private theorem s6Step366ExitGv_distinct : (s6Step366ExitGvRow.sign::s6Step366ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366ExitGv_owned : (s6Step366ExitGvRow.sign::s6Step366ExitGvRow.payload).toFinset⊆s6Step366ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366ExitGvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366ExitGv_retired : s6Step366ExitGvBefore.retireSet s6Step366ExitGvExtra.toFinset=s6Step366ExitGvAfter := by
  unfold Arena.retireSet s6Step366ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step366ExitGvBefore,s6Step366ExitFAfter,s6Step366ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step366ExitGv_checked : planRowResizeLog s6Step366ExitGvBefore s6Step366ExitGvRow 198 []=
    some (s6Step366ExitGvAfter,s6Step366ExitGvOut,shrinkRow 775 s6Step366ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step366ExitGvBefore s6Step366ExitGvRow 198 s6Step366ExitGv_distinct s6Step366ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step366ExitGvRow.payload.take 198) s6Step366ExitGvRow.sign=s6Step366ExitGvOut := by decide +kernel
  have hi : s6Step366ExitGvRow.payload.drop 198=s6Step366ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step366ExitGv_retired] at result
  exact result

private theorem s6Step366ExitBank_rows : planWindowRowsLog s6Step366ExitGBefore [(s6Step366ExitGRow,87),(s6Step366ExitFRow,88),(s6Step366ExitFvRow,199),(s6Step366ExitGvRow,198)] [[],[],[],[]]=
    some (s6Step366ExitGvAfter,[s6Step366ExitGOut,s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut],(shrinkRow 777 s6Step366ExitGExtra ++ (shrinkRow 795 s6Step366ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step366ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step366ExitGvAfter [] []=some (s6Step366ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step366ExitGvBefore s6Step366ExitGvAfter s6Step366ExitGvAfter
    s6Step366ExitGvRow s6Step366ExitGvOut 198 [] [] [] []
    (shrinkRow 775 s6Step366ExitGvExtra) ([]) s6Step366ExitGv_Incoming s6Step366ExitGv_checked h4 s6Step366ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step366ExitFvBefore s6Step366ExitFvAfter s6Step366ExitGvAfter
    s6Step366ExitFvRow s6Step366ExitFvOut 199 [] [(s6Step366ExitGvRow,198)] [[]] [s6Step366ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step366ExitGvExtra ++ [])) s6Step366ExitFv_Incoming s6Step366ExitFv_checked h3 s6Step366ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step366ExitFBefore s6Step366ExitFAfter s6Step366ExitGvAfter
    s6Step366ExitFRow s6Step366ExitFOut 88 [] [(s6Step366ExitFvRow,199),(s6Step366ExitGvRow,198)] [[],[]] [s6Step366ExitFvOut,s6Step366ExitGvOut]
    (shrinkRow 795 s6Step366ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step366ExitGvExtra ++ []))) s6Step366ExitF_Incoming s6Step366ExitF_checked h2 s6Step366ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step366ExitGBefore s6Step366ExitGAfter s6Step366ExitGvAfter
    s6Step366ExitGRow s6Step366ExitGOut 87 [] [(s6Step366ExitFRow,88),(s6Step366ExitFvRow,199),(s6Step366ExitGvRow,198)] [[],[],[]] [s6Step366ExitFOut,s6Step366ExitFvOut,s6Step366ExitGvOut]
    (shrinkRow 777 s6Step366ExitGExtra) ((shrinkRow 795 s6Step366ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step366ExitGvExtra ++ [])))) s6Step366ExitG_Incoming s6Step366ExitG_checked h1 s6Step366ExitG_Outgoing
  exact h0

private theorem s6Step366ExitBank_checked : compileHmrBankResizeLog .exit s6Step366ExitGBefore ⟨s6Step366ExitFRow,s6Step366ExitGRow,s6Step366ExitFvRow,s6Step366ExitGvRow⟩ ⟨88,87,199,198⟩ [[],[],[],[]]=
    some (s6Step366ExitGvAfter,⟨s6Step366ExitFOut,s6Step366ExitGOut,s6Step366ExitFvOut,s6Step366ExitGvOut⟩,(shrinkRow 777 s6Step366ExitGExtra ++ (shrinkRow 795 s6Step366ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step366ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step366ExitBank_rows]
  rfl

private theorem s6Step366Add0_apart : Disjoint s6Step366Add0Arena.live s6Step366Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step366Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366Add0_card : s6Step366Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step366Add0_borrowed : s6Step366Add0Arena.checkBorrow (hmrHybridCount s6Step366Add0Arena s6Step366Add0B.length) s6Step366Add0Work=some s6Step366Add0During := by
  have len : s6Step366Add0Work.length=hmrHybridCount s6Step366Add0Arena s6Step366Add0B.length := by
    rw [hmrHybridCount,s6Step366Add0_card]
    decide +kernel
  have nd : s6Step366Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step366Add0Arena s6Step366Add0During s6Step366Add0Work.toFinset s6Step366Add0_bounded s6Step366Add0_apart rfl

private theorem s6Step366Add0_distinct : (898::908::892::(s6Step366Add0A++s6Step366Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366Add0_owned : (898::908::892::(s6Step366Add0A++s6Step366Add0B)).toFinset⊆s6Step366Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step366Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366Add0_checked : compileHmrHybridCinLog s6Step366Add0Arena 908 898 892 s6Step366Add0A s6Step366Add0B s6Step366Add0Work=some s6Step366Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step366Add0Arena s6Step366Add0During 908 898 892 s6Step366Add0A s6Step366Add0B s6Step366Add0Work
    (by decide +kernel) (by decide +kernel) s6Step366Add0_distinct
    (fun q hq => s6Step366Add0_owned (List.mem_toFinset.mpr hq)) s6Step366Add0_borrowed

private theorem s6Step366Add1_apart : Disjoint s6Step366Add1Arena.live s6Step366Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step366Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366Add1_card : s6Step366Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step366Add1_borrowed : s6Step366Add1Arena.checkBorrow (hmrHybridCount s6Step366Add1Arena s6Step366Add1B.length) s6Step366Add1Work=some s6Step366Add1During := by
  have len : s6Step366Add1Work.length=hmrHybridCount s6Step366Add1Arena s6Step366Add1B.length := by
    rw [hmrHybridCount,s6Step366Add1_card]
    decide +kernel
  have nd : s6Step366Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step366Add1Arena s6Step366Add1During s6Step366Add1Work.toFinset s6Step366Add1_bounded s6Step366Add1_apart rfl

private theorem s6Step366Add1_distinct : (898::908::892::(s6Step366Add1A++s6Step366Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366Add1_owned : (898::908::892::(s6Step366Add1A++s6Step366Add1B)).toFinset⊆s6Step366Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step366Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366Add1_checked : compileHmrHybridCinLog s6Step366Add1Arena 908 898 892 s6Step366Add1A s6Step366Add1B s6Step366Add1Work=some s6Step366Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step366Add1Arena s6Step366Add1During 908 898 892 s6Step366Add1A s6Step366Add1B s6Step366Add1Work
    (by decide +kernel) (by decide +kernel) s6Step366Add1_distinct
    (fun q hq => s6Step366Add1_owned (List.mem_toFinset.mpr hq)) s6Step366Add1_borrowed

private theorem s6Step366F4_apart : Disjoint (s6Step366Add0A++s6Step366Add0B).toFinset (s6Step366Add1A++s6Step366Add1B).toFinset := by
  have nd : ((s6Step366Add0A++s6Step366Add0B)++(s6Step366Add1A++s6Step366Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step366F4_carry : s6Step366F4FlagArena.checkBorrow 1 [892]=some s6Step366Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step366F4FlagArena,s6Step366HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step366F4FlagArena,s6Step366HeadFvAfter,s6Step366Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step366F4_distinct : (886::908::898::892::((s6Step366Add0A++s6Step366Add1A)++(s6Step366Add0B++s6Step366Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366F4_flag : s6Step366HeadFvAfter.checkBorrow 1 [898]=some s6Step366F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step366HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step366F4_owned : (886::908::((s6Step366Add0A++s6Step366Add1A)++(s6Step366Add0B++s6Step366Add1B))).toFinset⊆s6Step366HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step366HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366F4_checked : compileHmrHybridF4Log s6Step366HeadFvAfter 886 908 s6Step366Add0A s6Step366Add0B s6Step366Add1A s6Step366Add1B [898] [892] s6Step366Add0Work s6Step366Add1Work=some s6Step366F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step366HeadFvAfter s6Step366F4FlagArena s6Step366Add0Arena s6Step366Add0During s6Step366Add1During 886 908
    s6Step366Add0A s6Step366Add0B s6Step366Add1A s6Step366Add1B [898] [892] s6Step366Add0Work s6Step366Add1Work
    (fun q hq => s6Step366F4_owned (List.mem_toFinset.mpr hq)) s6Step366F4_flag s6Step366F4_carry
    s6Step366F4_distinct s6Step366F4_apart s6Step366Add0_checked s6Step366Add1_checked

private theorem s6Step366Front_branch : s6Step366FrontSigmaArena.checkBorrow 1 [908]=some s6Step366HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step366FrontSigmaArena,s6Step366EntryGvAfter,s6Step366EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step366FrontSigmaArena,s6Step366EntryGvAfter,s6Step366EntryFBefore,s6Step366HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step366Front_entry : HmrFrontEntryValid s6Step366EntryFBefore s6Step366FrontBank 88 198 ⟨88,87,199,198⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step366FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step366EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step366EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step366FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step366Front_sigma : s6Step366EntryGvAfter.checkBorrow 1 [886]=some s6Step366FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step366EntryGvAfter,s6Step366EntryFBefore,arenaWires]
  · rfl

private def s6Step366HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366HeadFBefore : Arena := s6Step366HeadGAfter

private def s6Step366HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step366HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step366HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩

private def s6Step366HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private theorem s6Step366HeadBank_incomingDistinct : ([s6Step366HeadGRow,s6Step366HeadFRow,s6Step366HeadGvRow,s6Step366HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366HeadF_Incoming : rowsOwned s6Step366HeadFBefore [s6Step366HeadFRow,s6Step366HeadGvRow,s6Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366HeadGRow,s6Step366HeadFRow,s6Step366HeadGvRow,s6Step366HeadFvRow] 1 s6Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366HeadBank_outgoingOwned : rowsOwned s6Step366HeadFvAfter [s6Step366HeadGOut,s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step366HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366HeadF_Outgoing : rowsOwned s6Step366HeadFvAfter [s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut] :=
  hmrRows_owned_drop s6Step366HeadFvAfter [s6Step366HeadGOut,s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut] 1 s6Step366HeadBank_outgoingOwned

private theorem s6Step366HeadF_distinct : (s6Step366HeadFRow.sign::s6Step366HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366HeadF_owned : (s6Step366HeadFRow.sign::s6Step366HeadFRow.payload).toFinset⊆s6Step366HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366HeadF_reserved : s6Step366HeadFBefore.reserve s6Step366HeadFFresh.toFinset=some s6Step366HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366HeadFFresh,arenaWires]
  · norm_num [s6Step366HeadFBefore,s6Step366HeadGAfter,s6Step366HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step366HeadFAfter,s6Step366HeadFBefore,s6Step366HeadGAfter,s6Step366HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step366HeadF_checked : planRowResizeLog s6Step366HeadFBefore s6Step366HeadFRow 89 s6Step366HeadFFresh=
    some (s6Step366HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 876],795⟩,growRow 795 s6Step366HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step366HeadFBefore s6Step366HeadFAfter s6Step366HeadFRow 89 s6Step366HeadFFresh
    s6Step366HeadF_distinct s6Step366HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366HeadF_reserved
  have rowEq : WindowRow.mk (s6Step366HeadFRow.payload++s6Step366HeadFFresh) s6Step366HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step366HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step366HeadFvBefore : Arena := s6Step366HeadGvAfter

private theorem s6Step366HeadFv_Incoming : rowsOwned s6Step366HeadFvBefore [s6Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366HeadGRow,s6Step366HeadFRow,s6Step366HeadGvRow,s6Step366HeadFvRow] 3 s6Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366HeadFv_Outgoing : rowsOwned s6Step366HeadFvAfter [s6Step366HeadFvOut] :=
  hmrRows_owned_drop s6Step366HeadFvAfter [s6Step366HeadGOut,s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut] 3 s6Step366HeadBank_outgoingOwned

private theorem s6Step366HeadFv_distinct : (s6Step366HeadFvRow.sign::s6Step366HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366HeadFv_owned : (s6Step366HeadFvRow.sign::s6Step366HeadFvRow.payload).toFinset⊆s6Step366HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366HeadFv_reserved : s6Step366HeadFvBefore.reserve s6Step366HeadFvFresh.toFinset=some s6Step366HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366HeadFvFresh,arenaWires]
  · norm_num [s6Step366HeadFvBefore,s6Step366HeadGvAfter,s6Step366HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step366HeadFvAfter,s6Step366HeadFvBefore,s6Step366HeadGvAfter,s6Step366HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step366HeadFv_checked : planRowResizeLog s6Step366HeadFvBefore s6Step366HeadFvRow 199 s6Step366HeadFvFresh=
    some (s6Step366HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩,growRow 776 s6Step366HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step366HeadFvBefore s6Step366HeadFvAfter s6Step366HeadFvRow 199 s6Step366HeadFvFresh
    s6Step366HeadFv_distinct s6Step366HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step366HeadFvRow.payload++s6Step366HeadFvFresh) s6Step366HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step366HeadG_Incoming : rowsOwned s6Step366HeadGBefore [s6Step366HeadGRow,s6Step366HeadFRow,s6Step366HeadGvRow,s6Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366HeadGRow,s6Step366HeadFRow,s6Step366HeadGvRow,s6Step366HeadFvRow] 0 s6Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366HeadG_Outgoing : rowsOwned s6Step366HeadFvAfter [s6Step366HeadGOut,s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut] :=
  hmrRows_owned_drop s6Step366HeadFvAfter [s6Step366HeadGOut,s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut] 0 s6Step366HeadBank_outgoingOwned

private theorem s6Step366HeadG_distinct : (s6Step366HeadGRow.sign::s6Step366HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366HeadG_owned : (s6Step366HeadGRow.sign::s6Step366HeadGRow.payload).toFinset⊆s6Step366HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366HeadG_reserved : s6Step366HeadGBefore.reserve s6Step366HeadGFresh.toFinset=some s6Step366HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366HeadGFresh,arenaWires]
  · norm_num [s6Step366HeadGBefore,s6Step366HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step366HeadGAfter,s6Step366HeadGBefore,s6Step366HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step366HeadG_checked : planRowResizeLog s6Step366HeadGBefore s6Step366HeadGRow 89 s6Step366HeadGFresh=
    some (s6Step366HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 888],777⟩,growRow 777 s6Step366HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step366HeadGBefore s6Step366HeadGAfter s6Step366HeadGRow 89 s6Step366HeadGFresh
    s6Step366HeadG_distinct s6Step366HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366HeadG_reserved
  have rowEq : WindowRow.mk (s6Step366HeadGRow.payload++s6Step366HeadGFresh) s6Step366HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 888],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step366HeadGvBefore : Arena := s6Step366HeadFAfter

private theorem s6Step366HeadGv_Incoming : rowsOwned s6Step366HeadGvBefore [s6Step366HeadGvRow,s6Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step366HeadGRow,s6Step366HeadFRow,s6Step366HeadGvRow,s6Step366HeadFvRow] 2 s6Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step366HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step366HeadGv_Outgoing : rowsOwned s6Step366HeadFvAfter [s6Step366HeadGvOut,s6Step366HeadFvOut] :=
  hmrRows_owned_drop s6Step366HeadFvAfter [s6Step366HeadGOut,s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut] 2 s6Step366HeadBank_outgoingOwned

private theorem s6Step366HeadGv_distinct : (s6Step366HeadGvRow.sign::s6Step366HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step366HeadGv_owned : (s6Step366HeadGvRow.sign::s6Step366HeadGvRow.payload).toFinset⊆s6Step366HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step366HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step366HeadGv_reserved : s6Step366HeadGvBefore.reserve s6Step366HeadGvFresh.toFinset=some s6Step366HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step366HeadGvFresh,arenaWires]
  · norm_num [s6Step366HeadGvBefore,s6Step366HeadFAfter,s6Step366HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step366HeadGvAfter,s6Step366HeadGvBefore,s6Step366HeadFAfter,s6Step366HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step366HeadGv_checked : planRowResizeLog s6Step366HeadGvBefore s6Step366HeadGvRow 199 s6Step366HeadGvFresh=
    some (s6Step366HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩,growRow 775 s6Step366HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step366HeadGvBefore s6Step366HeadGvAfter s6Step366HeadGvRow 199 s6Step366HeadGvFresh
    s6Step366HeadGv_distinct s6Step366HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step366HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step366HeadGvRow.payload++s6Step366HeadGvFresh) s6Step366HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 906],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step366HeadBank_rows : planWindowRowsLog s6Step366HeadGBefore [(s6Step366HeadGRow,89),(s6Step366HeadFRow,89),(s6Step366HeadGvRow,199),(s6Step366HeadFvRow,199)] [s6Step366HeadGFresh,s6Step366HeadFFresh,s6Step366HeadGvFresh,s6Step366HeadFvFresh]=
    some (s6Step366HeadFvAfter,[s6Step366HeadGOut,s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut],(growRow 777 s6Step366HeadGFresh ++ (growRow 795 s6Step366HeadFFresh ++ (growRow 775 s6Step366HeadGvFresh ++ (growRow 776 s6Step366HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step366HeadFvAfter [] []=some (s6Step366HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step366HeadFvBefore s6Step366HeadFvAfter s6Step366HeadFvAfter
    s6Step366HeadFvRow s6Step366HeadFvOut 199 s6Step366HeadFvFresh [] [] []
    (growRow 776 s6Step366HeadFvFresh) ([]) s6Step366HeadFv_Incoming s6Step366HeadFv_checked h4 s6Step366HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step366HeadGvBefore s6Step366HeadGvAfter s6Step366HeadFvAfter
    s6Step366HeadGvRow s6Step366HeadGvOut 199 s6Step366HeadGvFresh [(s6Step366HeadFvRow,199)] [s6Step366HeadFvFresh] [s6Step366HeadFvOut]
    (growRow 775 s6Step366HeadGvFresh) ((growRow 776 s6Step366HeadFvFresh ++ [])) s6Step366HeadGv_Incoming s6Step366HeadGv_checked h3 s6Step366HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step366HeadFBefore s6Step366HeadFAfter s6Step366HeadFvAfter
    s6Step366HeadFRow s6Step366HeadFOut 89 s6Step366HeadFFresh [(s6Step366HeadGvRow,199),(s6Step366HeadFvRow,199)] [s6Step366HeadGvFresh,s6Step366HeadFvFresh] [s6Step366HeadGvOut,s6Step366HeadFvOut]
    (growRow 795 s6Step366HeadFFresh) ((growRow 775 s6Step366HeadGvFresh ++ (growRow 776 s6Step366HeadFvFresh ++ []))) s6Step366HeadF_Incoming s6Step366HeadF_checked h2 s6Step366HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step366HeadGBefore s6Step366HeadGAfter s6Step366HeadFvAfter
    s6Step366HeadGRow s6Step366HeadGOut 89 s6Step366HeadGFresh [(s6Step366HeadFRow,89),(s6Step366HeadGvRow,199),(s6Step366HeadFvRow,199)] [s6Step366HeadFFresh,s6Step366HeadGvFresh,s6Step366HeadFvFresh] [s6Step366HeadFOut,s6Step366HeadGvOut,s6Step366HeadFvOut]
    (growRow 777 s6Step366HeadGFresh) ((growRow 795 s6Step366HeadFFresh ++ (growRow 775 s6Step366HeadGvFresh ++ (growRow 776 s6Step366HeadFvFresh ++ [])))) s6Step366HeadG_Incoming s6Step366HeadG_checked h1 s6Step366HeadG_Outgoing
  exact h0

private theorem s6Step366HeadBank_checked : compileHmrBankResizeLog .headroom s6Step366HeadGBefore ⟨s6Step366HeadFRow,s6Step366HeadGRow,s6Step366HeadFvRow,s6Step366HeadGvRow⟩ ⟨89,89,199,199⟩ [s6Step366HeadGFresh,s6Step366HeadFFresh,s6Step366HeadGvFresh,s6Step366HeadFvFresh]=
    some (s6Step366HeadFvAfter,⟨s6Step366HeadFOut,s6Step366HeadGOut,s6Step366HeadFvOut,s6Step366HeadGvOut⟩,(growRow 777 s6Step366HeadGFresh ++ (growRow 795 s6Step366HeadFFresh ++ (growRow 775 s6Step366HeadGvFresh ++ (growRow 776 s6Step366HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step366HeadBank_rows]
  rfl

private theorem s6Step366Front_checked : compileHmrSourceFrontLog s6Step366EntryFBefore s6Step366FrontBank 88 198 ⟨88,87,199,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step366FrontLog=some s6Step366FrontPlan := by
  have pairEq : s6Step366FrontPair=⟨s6Step366HeadFRow,s6Step366HeadGRow,s6Step366HeadFvRow,s6Step366HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step366FrontHead=⟨s6Step366ExitFRow,s6Step366ExitGRow,s6Step366ExitFvRow,s6Step366ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step366Add0A=s6Step366FrontHead.f.wires := by decide +kernel
  have gEq : s6Step366Add0B=s6Step366FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step366Add1A=s6Step366FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step366Add1B=s6Step366FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step366EntryFBefore s6Step366FrontBank 88 198 ⟨88,87,199,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step366FrontLog s6Step366FrontPlan
  · exact s6Step366Front_entry
  · exact s6Step366EntryBank_checked
  · exact s6Step366Front_sigma
  · rfl
  · exact s6Step366Front_branch
  · rfl
  · simpa only [s6Step366FrontPlan,pairEq] using s6Step366HeadBank_checked
  · simpa only [s6Step366FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step366F4_checked
  · exact s6Step366Counter_checked
  · rfl
  · simpa only [s6Step366FrontPlan,headEq] using s6Step366ExitBank_checked

private theorem s6Step366Complete_explicit_checked : compileHmrEarlyStepLog s6Step366EntryFBefore s6Step366FrontBank 88 198 ⟨88,87,199,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step366CompleteLog=some s6Step366CompletePlan := by
  let Q := s6Step366EarlyControlPlan
  have hq := s6Step366EarlyControl_plan_checked
  have fv1 : s6Step366CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step366CompleteOut.fv.payload[2]?.getD s6Step366CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step366CompleteOut.fv.payload[3]?.getD s6Step366CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step366CompleteOut.fv.payload[4]?.getD s6Step366CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step366EntryFBefore s6Step366EarlyControlArena s6Step366FrontBank 88 198 ⟨88,87,199,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step366CompleteLog s6Step366FrontPlan Q
    s6Step366Front_checked s6Step366Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step366Complete_owned s6Step366Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step366EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 886 s6Step366CompleteOut.fv.second (s6Step366CompleteOut.fv.payload[2]?.getD s6Step366CompleteOut.fv.sign) (s6Step366CompleteOut.fv.payload[3]?.getD s6Step366CompleteOut.fv.sign) (s6Step366CompleteOut.fv.payload[4]?.getD s6Step366CompleteOut.fv.sign) 908 60 s6Step366EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep366Arena : Arena := s6Step366EntryFBefore
def s6PrivateStep366Bank : WindowBank := s6Step366FrontBank
def s6PrivateStep366Spec : HmrSourceWalkStepLog := ⟨88,198,⟨88,87,199,198⟩,60,.early s6Step366CompleteLog⟩
def s6PrivateStep366Plan : HmrSourceStepPlan := .early s6Step366CompletePlan
theorem s6PrivateStep366_source : s6PrivateStep366Spec=s6ObservedLogs352[14] := rfl
theorem s6PrivateStep366_checked : compileHmrSourceStepLog s6PrivateStep366Arena s6PrivateStep366Bank
    s6PrivateStep366Spec.fgWidth s6PrivateStep366Spec.vWidth s6PrivateStep366Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 366 s6PrivateStep366Spec.need none s6PrivateStep366Spec.log=some s6PrivateStep366Plan := by
  change compileHmrSourceStepLog s6Step366EntryFBefore s6Step366FrontBank 88 198 ⟨88,87,199,198⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 366 60 none (.early s6Step366CompleteLog)=some (.early s6Step366CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 366<498)]
  rw [s6Step366Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
