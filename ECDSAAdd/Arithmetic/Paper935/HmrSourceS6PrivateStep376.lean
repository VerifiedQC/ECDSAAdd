import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep374
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

private def s6Step376CompleteMoves : List (Wire × Wire) := [(818,83),(839,339)]

private def s6Step376EarlyControlLog : HmrEarlyControlLog := ⟨[839, 818, 876, 863, 857],[821],[843],[877, 792, 816, 819, 920, 842],[]⟩

private def s6Step376FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[863], [876], [796], [805]],[[], [], [], []]⟩,[890],[908],[857],[821],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 821, 843, 877]⟩

private def s6Step376CompleteLog : HmrEarlyStepLog := ⟨s6Step376FrontLog,s6Step376CompleteMoves,s6Step376EarlyControlLog⟩

private def s6Step376ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338],795⟩

private def s6Step376ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step376ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82],777⟩

private def s6Step376ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step376FrontOut : WindowBank := ⟨s6Step376ExitFOut,s6Step376ExitGOut,s6Step376ExitFvOut,s6Step376ExitGvOut⟩

private def s6Step376CompleteOut : WindowBank := s6Step376FrontOut.repacked s6Step376CompleteMoves

private def s6Step376EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step376EarlyControlPositiveArena,[821],s6Step376EarlyControlEqualityArena,[843],⟨⟨890,false⟩,[⟨⟨821,false⟩,843⟩]⟩⟩

private def s6Step376EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,863⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step376EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step376EarlyControlZeroArena,s6Step376EarlyControlZeroPlan,s6Step376EarlyControlClassPlan,s6Step376EarlyControlFlagArena,s6Step376EarlyControlFittedArena,s6Step376EarlyControlHistoryArena,s6Step376EarlyControlSigmaArena,s6Step376EarlyControlOutputArena,s6Step376EarlyControlLog⟩

private def s6Step376CounterWork : List Wire := [857, 821, 843, 877]

private theorem s6Step376Counter_bounded : s6Step376CounterWork.toFinset⊆arenaWires := by norm_num [s6Step376CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step376HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376CounterDuring : Arena := ⟨s6Step376HeadFvAfter.live∪s6Step376CounterWork.toFinset,Finset.union_subset s6Step376HeadFvAfter.bounded s6Step376Counter_bounded⟩

private def s6Step376EntryFFresh : List Wire := []

private def s6Step376EntryFvFresh : List Wire := []

private def s6Step376EntryGFresh : List Wire := []

private def s6Step376EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376EntryGvAfter : Arena := s6Step376EntryFBefore

private def s6Step376EntryGvFresh : List Wire := []

private def s6Step376ExitFExtra : List Wire := [339, 876]

private def s6Step376ExitGExtra : List Wire := [83, 863]

private def s6Step376ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<339) ∨ (340≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376ExitGvAfter : Arena := s6Step376ExitFAfter

private def s6Step376Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step376Add0_bounded : s6Step376Add0Work.toFinset⊆arenaWires := by
  have h : s6Step376Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step376Add0During : Arena := ⟨s6Step376Add0Arena.live∪s6Step376Add0Work.toFinset,Finset.union_subset s6Step376Add0Arena.bounded s6Step376Add0_bounded⟩

private def s6Step376Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step376Add1_bounded : s6Step376Add1Work.toFinset⊆arenaWires := by
  have h : s6Step376Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step376Add1During : Arena := ⟨s6Step376Add1Arena.live∪s6Step376Add1Work.toFinset,Finset.union_subset s6Step376Add1Arena.bounded s6Step376Add1_bounded⟩

private def s6Step376F4FlagArena : Arena := ⟨s6Step376HeadFvAfter.live∪{857},Finset.union_subset s6Step376HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step376F4Plan : HmrHybridF4Plan := ⟨s6Step376F4FlagArena,[857],s6Step376Add0Arena,[821],s6Step376Add0During,s6Step376Add0Work,s6Step376Add1During,s6Step376Add1Work⟩

private def s6Step376HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 876],795⟩

private def s6Step376HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step376HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 863],777⟩

private def s6Step376HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step376FrontHead : WindowBank := ⟨s6Step376HeadFOut,s6Step376HeadGOut,s6Step376HeadFvOut,s6Step376HeadGvOut⟩

private def s6Step376EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339],795⟩

private def s6Step376EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step376EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step376EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩

private def s6Step376FrontPair : WindowBank := ⟨s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut⟩

private def s6Step376FrontSigmaArena : Arena := ⟨s6Step376EntryGvAfter.live∪{890},Finset.union_subset s6Step376EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step376HeadFFresh : List Wire := [876]

private def s6Step376HeadFvFresh : List Wire := [805]

private def s6Step376HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376HeadGFresh : List Wire := [863]

private def s6Step376HeadGvFresh : List Wire := [796]

private def s6Step376FrontPlan : HmrSourceFront := ⟨s6Step376EntryGvAfter,s6Step376FrontPair,(growRow 795 s6Step376EntryFFresh ++ (growRow 777 s6Step376EntryGFresh ++ (growRow 776 s6Step376EntryFvFresh ++ (growRow 775 s6Step376EntryGvFresh ++ [])))),s6Step376FrontSigmaArena,[890],s6Step376HeadGBefore,[908],
  s6Step376HeadFvAfter,s6Step376FrontHead,(growRow 777 s6Step376HeadGFresh ++ (growRow 795 s6Step376HeadFFresh ++ (growRow 775 s6Step376HeadGvFresh ++ (growRow 776 s6Step376HeadFvFresh ++ [])))),s6Step376F4Plan,s6Step376CounterDuring,s6Step376CounterWork,s6Step376ExitGvAfter,s6Step376FrontOut,(shrinkRow 777 s6Step376ExitGExtra ++ (shrinkRow 795 s6Step376ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step376CompletePlan : HmrEarlyStepPlan := ⟨s6Step376FrontPlan,s6Step376EarlyControlArena,s6Step376EarlyControlPlan,s6Step376CompleteMoves⟩

private theorem s6Step376Complete_apart : List.Disjoint (s6Step376CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [890, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step376CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[890, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step376Complete_owned : (s6Step376CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step376CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,339),(340,782),(783,790),(791,792),(793,797),(799,800),(801,808),(809,816),(817,818),(822,832),(833,842),(844,857),(858,863),(864,876),(878,896),(897,914),(915,916),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step376CompleteRelocationMove0Borrowed : Arena := ⟨s6Step376ExitGvAfter.live∪{83},Finset.union_subset s6Step376ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step376CompleteRelocationMove1Borrowed : Arena := ⟨s6Step376CompleteRelocationMove0After.live∪{339},Finset.union_subset s6Step376CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step376CompleteRelocation_move0_owned : 818∈s6Step376ExitGvAfter.live := by norm_num [s6Step376ExitGvAfter,s6Step376ExitFAfter,arenaWires]

private theorem s6Step376CompleteRelocation_move0_reserve : s6Step376ExitGvAfter.reserve {83}=some s6Step376CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step376ExitGvAfter,s6Step376ExitFAfter,arenaWires]
  · rfl

private theorem s6Step376CompleteRelocation_move0_retire : s6Step376CompleteRelocationMove0Borrowed.retireSet {818}=s6Step376CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step376CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step376CompleteRelocationMove0Borrowed,s6Step376ExitGvAfter,s6Step376ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step376CompleteRelocation_move1_owned : 839∈s6Step376CompleteRelocationMove0After.live := by norm_num [s6Step376CompleteRelocationMove0After,arenaWires]

private theorem s6Step376CompleteRelocation_move1_reserve : s6Step376CompleteRelocationMove0After.reserve {339}=some s6Step376CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step376CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step376CompleteRelocation_move1_retire : s6Step376CompleteRelocationMove1Borrowed.retireSet {839}=s6Step376EarlyControlArena := by
  unfold Arena.retireSet s6Step376EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step376CompleteRelocationMove1Borrowed,s6Step376CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step376CompleteRelocation_checked : s6Step376ExitGvAfter.checkRepack [(818,83),(839,339)]=some s6Step376EarlyControlArena := by
  have tail2 : s6Step376EarlyControlArena.checkRepack []=some s6Step376EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step376CompleteRelocationMove0After s6Step376CompleteRelocationMove1Borrowed s6Step376EarlyControlArena s6Step376EarlyControlArena 839 339 []
    s6Step376CompleteRelocation_move1_owned s6Step376CompleteRelocation_move1_reserve s6Step376CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step376ExitGvAfter s6Step376CompleteRelocationMove0Borrowed s6Step376CompleteRelocationMove0After s6Step376EarlyControlArena 818 83 [(839,339)]
    s6Step376CompleteRelocation_move0_owned s6Step376CompleteRelocation_move0_reserve s6Step376CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step376Complete_repack : s6Step376ExitGvAfter.checkRepack s6Step376CompleteMoves=some s6Step376EarlyControlArena := by
  simpa only [s6Step376CompleteMoves] using s6Step376CompleteRelocation_checked

private theorem s6Step376EarlyControl_branchOwned : ([908] : List Wire).toFinset⊆s6Step376EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_branch : compileHmrBranchRetirement s6Step376EarlyControlSigmaArena 908=some s6Step376EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step376EarlyControl_branchOwned
  · ext q
    simp [s6Step376EarlyControlOutputArena,s6Step376EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step376EarlyControl_classEqualityBorrow : s6Step376EarlyControlPositiveArena.checkBorrow (([890, 821] : List Wire).length-1) s6Step376EarlyControlLog.classWork=some s6Step376EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step376EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step376EarlyControlEqualityArena,s6Step376EarlyControlPositiveArena,s6Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step376EarlyControl_classEqualityOwned : ([890, 821] : List Wire).toFinset⊆s6Step376EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_classEquality : compileHmrEqualityLog s6Step376EarlyControlPositiveArena [890, 821] 0 s6Step376EarlyControlLog.classWork=some (s6Step376EarlyControlEqualityArena,s6Step376EarlyControlLog.classWork,s6Step376EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step376EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step376EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step376EarlyControl_classOwned : ([769, 857, 890] : List Wire).toFinset⊆s6Step376EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_positiveBorrow : s6Step376EarlyControlZeroArena.checkBorrow (1) s6Step376EarlyControlLog.positiveWork=some s6Step376EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step376EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step376EarlyControlPositiveArena,s6Step376EarlyControlZeroArena,s6Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step376EarlyControl_class : compileHmrSourceClassLog s6Step376EarlyControlZeroArena false 769 s6Step376EarlyControlZeroPlan.top 0 890 s6Step376EarlyControlLog.positiveWork s6Step376EarlyControlLog.classWork=some s6Step376EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step376EarlyControlClassPlan s6Step376EarlyControlZeroArena false 769 s6Step376EarlyControlZeroPlan.top 0 890
  constructor
  · decide +kernel
  · exact s6Step376EarlyControl_classOwned
  · exact s6Step376EarlyControl_positiveBorrow
  · exact s6Step376EarlyControl_classEquality

private theorem s6Step376EarlyControl_entryRecordOwned : ([908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_entrySigmaOwned : ([890, 254] : List Wire).toFinset⊆s6Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_fitBorrow : s6Step376EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step376EarlyControlLog.recordFresh=some s6Step376EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step376EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step376EarlyControlFittedArena,s6Step376EarlyControlFlagArena,s6Step376EarlyControlLog,arenaWires]

private theorem s6Step376EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step376EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_fit : compileHmrRecordGrowLog s6Step376EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step376EarlyControlLog.recordFresh=some s6Step376EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step376EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step376EarlyControl_fitBorrow

private theorem s6Step376EarlyControl_flagsBorrow : s6Step376EarlyControlEqualityArena.checkBorrow (6) s6Step376EarlyControlLog.flagWork=some s6Step376EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step376EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step376EarlyControlFlagArena,s6Step376EarlyControlEqualityArena,s6Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step376EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step376EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_flags : compileHmrFlagsLog s6Step376EarlyControlClassPlan.equalityArena s6Step376EarlyControlClassPlan.equality.top 253 252 251 s6Step376EarlyControlLog.flagWork=some s6Step376EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step376EarlyControl_flagsOwned⟩
  · exact s6Step376EarlyControl_flagsBorrow

private theorem s6Step376EarlyControl_historyBorrow : s6Step376EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step376EarlyControlLog.recordFresh=some s6Step376EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step376EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step376EarlyControlHistoryArena,s6Step376EarlyControlArena,s6Step376EarlyControlLog,arenaWires]

private theorem s6Step376EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_history : compileHmrRecordGrowLog s6Step376EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step376EarlyControlLog.recordFresh=some s6Step376EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step376EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step376EarlyControl_historyBorrow

private theorem s6Step376EarlyControl_sigmaOwned : ([254, 890] : List Wire).toFinset⊆s6Step376EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_sigmaReleaseOwned : ([890] : List Wire).toFinset⊆s6Step376EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_sigmaRelease : s6Step376EarlyControlHistoryArena.release {890} (fun _ => false)=some s6Step376EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step376EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step376EarlyControlSigmaArena,s6Step376EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step376EarlyControl_sigma : compileHmrSigmaDropLog s6Step376EarlyControlHistoryArena false 0 0 254 890 []=some s6Step376EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step376EarlyControl_sigmaOwned⟩
  · exact s6Step376EarlyControl_sigmaRelease

private theorem s6Step376EarlyControl_zeroBorrow : s6Step376EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step376EarlyControlLog.zeroWork=some s6Step376EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step376EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step376EarlyControlZeroArena,s6Step376EarlyControlArena,s6Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step376EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step376EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EarlyControl_zero : compileHmrEqualityLog s6Step376EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step376EarlyControlLog.zeroWork=some (s6Step376EarlyControlZeroArena,s6Step376EarlyControlLog.zeroWork,s6Step376EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step376EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step376EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step376EarlyControl_logged : s6Step376EarlyControlPlan.Logged s6Step376EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 254 253 252 251 908 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step376EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step376EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step376EarlyControl_zero
  · exact s6Step376EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step376EarlyControl_flags
  · exact s6Step376EarlyControl_fit
  · exact s6Step376EarlyControl_history
  · exact s6Step376EarlyControl_sigma
  · exact s6Step376EarlyControl_branch

private theorem s6Step376EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step376EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 254 253 252 251 908 60 s6Step376EarlyControlLog=some s6Step376EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step376EarlyControlPlan s6Step376EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 254 253 252 251 908 60 s6Step376EarlyControl_logged

private def s6Step376EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339],795⟩

private def s6Step376EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step376EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step376EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩

private def s6Step376FrontBank : WindowBank := ⟨s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow⟩

private def s6Step376Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 876, 795]

private def s6Step376Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 863, 777]

private def s6Step376Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 776]

private def s6Step376Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 775]

private theorem s6Step376Counter_apart : Disjoint s6Step376HeadFvAfter.live s6Step376CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step376HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376Counter_borrowed : s6Step376HeadFvAfter.checkBorrow 4 s6Step376CounterWork=some s6Step376CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step376HeadFvAfter s6Step376CounterDuring s6Step376CounterWork.toFinset s6Step376Counter_bounded s6Step376Counter_apart rfl

private theorem s6Step376Counter_owned : (890::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step376HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step376HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376Counter_checked : compileHmrCounterStepLog s6Step376HeadFvAfter true 890 [774, 773, 772, 771, 770, 769] s6Step376CounterWork=some s6Step376CounterDuring := by
  have owned : ∀q∈890::[774, 773, 772, 771, 770, 769],q∈s6Step376HeadFvAfter.live := fun q hq => s6Step376Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step376Counter_borrowed

private def s6Step376EntryFAfter : Arena := s6Step376EntryFBefore

private theorem s6Step376EntryBank_incomingDistinct : ([s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376EntryF_Incoming : rowsOwned s6Step376EntryFBefore [s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow] 0 s6Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376EntryBank_outgoingOwned : rowsOwned s6Step376EntryGvAfter [s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step376EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376EntryF_Outgoing : rowsOwned s6Step376EntryGvAfter [s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut] :=
  hmrRows_owned_drop s6Step376EntryGvAfter [s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut] 0 s6Step376EntryBank_outgoingOwned

private theorem s6Step376EntryF_distinct : (s6Step376EntryFRow.sign::s6Step376EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376EntryF_owned : (s6Step376EntryFRow.sign::s6Step376EntryFRow.payload).toFinset⊆s6Step376EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EntryF_reserved : s6Step376EntryFBefore.reserve s6Step376EntryFFresh.toFinset=some s6Step376EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376EntryFFresh,arenaWires]
  · norm_num [s6Step376EntryFBefore,s6Step376EntryFFresh,arenaWires]
  · simp only [s6Step376EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step376EntryF_checked : planRowResizeLog s6Step376EntryFBefore s6Step376EntryFRow 84 s6Step376EntryFFresh=
    some (s6Step376EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339],795⟩,growRow 795 s6Step376EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step376EntryFBefore s6Step376EntryFAfter s6Step376EntryFRow 84 s6Step376EntryFFresh
    s6Step376EntryF_distinct s6Step376EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376EntryF_reserved
  have rowEq : WindowRow.mk (s6Step376EntryFRow.payload++s6Step376EntryFFresh) s6Step376EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step376EntryFvAfter : Arena := s6Step376EntryFBefore

private def s6Step376EntryFvBefore : Arena := s6Step376EntryFBefore

private theorem s6Step376EntryFv_Incoming : rowsOwned s6Step376EntryFvBefore [s6Step376EntryFvRow,s6Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow] 2 s6Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376EntryFv_Outgoing : rowsOwned s6Step376EntryGvAfter [s6Step376EntryFvOut,s6Step376EntryGvOut] :=
  hmrRows_owned_drop s6Step376EntryGvAfter [s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut] 2 s6Step376EntryBank_outgoingOwned

private theorem s6Step376EntryFv_distinct : (s6Step376EntryFvRow.sign::s6Step376EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376EntryFv_owned : (s6Step376EntryFvRow.sign::s6Step376EntryFvRow.payload).toFinset⊆s6Step376EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EntryFv_reserved : s6Step376EntryFvBefore.reserve s6Step376EntryFvFresh.toFinset=some s6Step376EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376EntryFvFresh,arenaWires]
  · norm_num [s6Step376EntryFvBefore,s6Step376EntryFBefore,s6Step376EntryFvFresh,arenaWires]
  · simp only [s6Step376EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step376EntryFv_checked : planRowResizeLog s6Step376EntryFvBefore s6Step376EntryFvRow 204 s6Step376EntryFvFresh=
    some (s6Step376EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩,growRow 776 s6Step376EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step376EntryFvBefore s6Step376EntryFvAfter s6Step376EntryFvRow 204 s6Step376EntryFvFresh
    s6Step376EntryFv_distinct s6Step376EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step376EntryFvRow.payload++s6Step376EntryFvFresh) s6Step376EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step376EntryGAfter : Arena := s6Step376EntryFBefore

private def s6Step376EntryGBefore : Arena := s6Step376EntryFBefore

private theorem s6Step376EntryG_Incoming : rowsOwned s6Step376EntryGBefore [s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow] 1 s6Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376EntryG_Outgoing : rowsOwned s6Step376EntryGvAfter [s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut] :=
  hmrRows_owned_drop s6Step376EntryGvAfter [s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut] 1 s6Step376EntryBank_outgoingOwned

private theorem s6Step376EntryG_distinct : (s6Step376EntryGRow.sign::s6Step376EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376EntryG_owned : (s6Step376EntryGRow.sign::s6Step376EntryGRow.payload).toFinset⊆s6Step376EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EntryG_reserved : s6Step376EntryGBefore.reserve s6Step376EntryGFresh.toFinset=some s6Step376EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376EntryGFresh,arenaWires]
  · norm_num [s6Step376EntryGBefore,s6Step376EntryFBefore,s6Step376EntryGFresh,arenaWires]
  · simp only [s6Step376EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step376EntryG_checked : planRowResizeLog s6Step376EntryGBefore s6Step376EntryGRow 84 s6Step376EntryGFresh=
    some (s6Step376EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩,growRow 777 s6Step376EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step376EntryGBefore s6Step376EntryGAfter s6Step376EntryGRow 84 s6Step376EntryGFresh
    s6Step376EntryG_distinct s6Step376EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376EntryG_reserved
  have rowEq : WindowRow.mk (s6Step376EntryGRow.payload++s6Step376EntryGFresh) s6Step376EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step376EntryGvBefore : Arena := s6Step376EntryFBefore

private theorem s6Step376EntryGv_Incoming : rowsOwned s6Step376EntryGvBefore [s6Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow] 3 s6Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376EntryGv_Outgoing : rowsOwned s6Step376EntryGvAfter [s6Step376EntryGvOut] :=
  hmrRows_owned_drop s6Step376EntryGvAfter [s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut] 3 s6Step376EntryBank_outgoingOwned

private theorem s6Step376EntryGv_distinct : (s6Step376EntryGvRow.sign::s6Step376EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376EntryGv_owned : (s6Step376EntryGvRow.sign::s6Step376EntryGvRow.payload).toFinset⊆s6Step376EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376EntryGv_reserved : s6Step376EntryGvBefore.reserve s6Step376EntryGvFresh.toFinset=some s6Step376EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376EntryGvFresh,arenaWires]
  · norm_num [s6Step376EntryGvBefore,s6Step376EntryFBefore,s6Step376EntryGvFresh,arenaWires]
  · simp only [s6Step376EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step376EntryGv_checked : planRowResizeLog s6Step376EntryGvBefore s6Step376EntryGvRow 204 s6Step376EntryGvFresh=
    some (s6Step376EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩,growRow 775 s6Step376EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step376EntryGvBefore s6Step376EntryGvAfter s6Step376EntryGvRow 204 s6Step376EntryGvFresh
    s6Step376EntryGv_distinct s6Step376EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step376EntryGvRow.payload++s6Step376EntryGvFresh) s6Step376EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step376EntryBank_rows : planWindowRowsLog s6Step376EntryFBefore [(s6Step376EntryFRow,84),(s6Step376EntryGRow,84),(s6Step376EntryFvRow,204),(s6Step376EntryGvRow,204)] [s6Step376EntryFFresh,s6Step376EntryGFresh,s6Step376EntryFvFresh,s6Step376EntryGvFresh]=
    some (s6Step376EntryGvAfter,[s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut],(growRow 795 s6Step376EntryFFresh ++ (growRow 777 s6Step376EntryGFresh ++ (growRow 776 s6Step376EntryFvFresh ++ (growRow 775 s6Step376EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step376EntryGvAfter [] []=some (s6Step376EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step376EntryGvBefore s6Step376EntryGvAfter s6Step376EntryGvAfter
    s6Step376EntryGvRow s6Step376EntryGvOut 204 s6Step376EntryGvFresh [] [] []
    (growRow 775 s6Step376EntryGvFresh) ([]) s6Step376EntryGv_Incoming s6Step376EntryGv_checked h4 s6Step376EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step376EntryFvBefore s6Step376EntryFvAfter s6Step376EntryGvAfter
    s6Step376EntryFvRow s6Step376EntryFvOut 204 s6Step376EntryFvFresh [(s6Step376EntryGvRow,204)] [s6Step376EntryGvFresh] [s6Step376EntryGvOut]
    (growRow 776 s6Step376EntryFvFresh) ((growRow 775 s6Step376EntryGvFresh ++ [])) s6Step376EntryFv_Incoming s6Step376EntryFv_checked h3 s6Step376EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step376EntryGBefore s6Step376EntryGAfter s6Step376EntryGvAfter
    s6Step376EntryGRow s6Step376EntryGOut 84 s6Step376EntryGFresh [(s6Step376EntryFvRow,204),(s6Step376EntryGvRow,204)] [s6Step376EntryFvFresh,s6Step376EntryGvFresh] [s6Step376EntryFvOut,s6Step376EntryGvOut]
    (growRow 777 s6Step376EntryGFresh) ((growRow 776 s6Step376EntryFvFresh ++ (growRow 775 s6Step376EntryGvFresh ++ []))) s6Step376EntryG_Incoming s6Step376EntryG_checked h2 s6Step376EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step376EntryFBefore s6Step376EntryFAfter s6Step376EntryGvAfter
    s6Step376EntryFRow s6Step376EntryFOut 84 s6Step376EntryFFresh [(s6Step376EntryGRow,84),(s6Step376EntryFvRow,204),(s6Step376EntryGvRow,204)] [s6Step376EntryGFresh,s6Step376EntryFvFresh,s6Step376EntryGvFresh] [s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut]
    (growRow 795 s6Step376EntryFFresh) ((growRow 777 s6Step376EntryGFresh ++ (growRow 776 s6Step376EntryFvFresh ++ (growRow 775 s6Step376EntryGvFresh ++ [])))) s6Step376EntryF_Incoming s6Step376EntryF_checked h1 s6Step376EntryF_Outgoing
  exact h0

private theorem s6Step376EntryBank_checked : compileHmrBankResizeLog .entry s6Step376EntryFBefore ⟨s6Step376EntryFRow,s6Step376EntryGRow,s6Step376EntryFvRow,s6Step376EntryGvRow⟩ ⟨84,84,204,204⟩ [s6Step376EntryFFresh,s6Step376EntryGFresh,s6Step376EntryFvFresh,s6Step376EntryGvFresh]=
    some (s6Step376EntryGvAfter,⟨s6Step376EntryFOut,s6Step376EntryGOut,s6Step376EntryFvOut,s6Step376EntryGvOut⟩,(growRow 795 s6Step376EntryFFresh ++ (growRow 777 s6Step376EntryGFresh ++ (growRow 776 s6Step376EntryFvFresh ++ (growRow 775 s6Step376EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step376EntryBank_rows]
  rfl

private def s6Step376ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376ExitFBefore : Arena := s6Step376ExitGAfter

private def s6Step376ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 876],795⟩

private def s6Step376ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step376ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 863],777⟩

private def s6Step376ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private theorem s6Step376ExitBank_incomingDistinct : ([s6Step376ExitGRow,s6Step376ExitFRow,s6Step376ExitFvRow,s6Step376ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376ExitF_Incoming : rowsOwned s6Step376ExitFBefore [s6Step376ExitFRow,s6Step376ExitFvRow,s6Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376ExitGRow,s6Step376ExitFRow,s6Step376ExitFvRow,s6Step376ExitGvRow] 1 s6Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376ExitFBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376ExitBank_outgoingOwned : rowsOwned s6Step376ExitGvAfter [s6Step376ExitGOut,s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step376ExitGvAfter (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<339) ∨ (340≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376ExitF_Outgoing : rowsOwned s6Step376ExitGvAfter [s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut] :=
  hmrRows_owned_drop s6Step376ExitGvAfter [s6Step376ExitGOut,s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut] 1 s6Step376ExitBank_outgoingOwned

private theorem s6Step376ExitF_distinct : (s6Step376ExitFRow.sign::s6Step376ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376ExitF_owned : (s6Step376ExitFRow.sign::s6Step376ExitFRow.payload).toFinset⊆s6Step376ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376ExitFBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376ExitF_retired : s6Step376ExitFBefore.retireSet s6Step376ExitFExtra.toFinset=s6Step376ExitFAfter := by
  unfold Arena.retireSet s6Step376ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step376ExitFBefore,s6Step376ExitGAfter,s6Step376ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step376ExitF_checked : planRowResizeLog s6Step376ExitFBefore s6Step376ExitFRow 83 []=
    some (s6Step376ExitFAfter,s6Step376ExitFOut,shrinkRow 795 s6Step376ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step376ExitFBefore s6Step376ExitFRow 83 s6Step376ExitF_distinct s6Step376ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step376ExitFRow.payload.take 83) s6Step376ExitFRow.sign=s6Step376ExitFOut := by decide +kernel
  have hi : s6Step376ExitFRow.payload.drop 83=s6Step376ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step376ExitF_retired] at result
  exact result

private def s6Step376ExitFvAfter : Arena := s6Step376ExitFAfter

private def s6Step376ExitFvBefore : Arena := s6Step376ExitFAfter

private theorem s6Step376ExitFv_Incoming : rowsOwned s6Step376ExitFvBefore [s6Step376ExitFvRow,s6Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376ExitGRow,s6Step376ExitFRow,s6Step376ExitFvRow,s6Step376ExitGvRow] 2 s6Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376ExitFvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<339) ∨ (340≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376ExitFv_Outgoing : rowsOwned s6Step376ExitGvAfter [s6Step376ExitFvOut,s6Step376ExitGvOut] :=
  hmrRows_owned_drop s6Step376ExitGvAfter [s6Step376ExitGOut,s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut] 2 s6Step376ExitBank_outgoingOwned

private theorem s6Step376ExitFv_distinct : (s6Step376ExitFvRow.sign::s6Step376ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376ExitFv_owned : (s6Step376ExitFvRow.sign::s6Step376ExitFvRow.payload).toFinset⊆s6Step376ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376ExitFvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<339) ∨ (340≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376ExitFv_reserved : s6Step376ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step376ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step376ExitFv_checked : planRowResizeLog s6Step376ExitFvBefore s6Step376ExitFvRow 205 []=
    some (s6Step376ExitFvAfter,s6Step376ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step376ExitFvBefore s6Step376ExitFvAfter s6Step376ExitFvRow 205 []
    s6Step376ExitFv_distinct s6Step376ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step376ExitFvRow.payload++[]) s6Step376ExitFvRow.sign=s6Step376ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step376ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step376ExitG_Incoming : rowsOwned s6Step376ExitGBefore [s6Step376ExitGRow,s6Step376ExitFRow,s6Step376ExitFvRow,s6Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376ExitGRow,s6Step376ExitFRow,s6Step376ExitFvRow,s6Step376ExitGvRow] 0 s6Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376ExitG_Outgoing : rowsOwned s6Step376ExitGvAfter [s6Step376ExitGOut,s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut] :=
  hmrRows_owned_drop s6Step376ExitGvAfter [s6Step376ExitGOut,s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut] 0 s6Step376ExitBank_outgoingOwned

private theorem s6Step376ExitG_distinct : (s6Step376ExitGRow.sign::s6Step376ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376ExitG_owned : (s6Step376ExitGRow.sign::s6Step376ExitGRow.payload).toFinset⊆s6Step376ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376ExitG_retired : s6Step376ExitGBefore.retireSet s6Step376ExitGExtra.toFinset=s6Step376ExitGAfter := by
  unfold Arena.retireSet s6Step376ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step376ExitGBefore,s6Step376ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step376ExitG_checked : planRowResizeLog s6Step376ExitGBefore s6Step376ExitGRow 83 []=
    some (s6Step376ExitGAfter,s6Step376ExitGOut,shrinkRow 777 s6Step376ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step376ExitGBefore s6Step376ExitGRow 83 s6Step376ExitG_distinct s6Step376ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step376ExitGRow.payload.take 83) s6Step376ExitGRow.sign=s6Step376ExitGOut := by decide +kernel
  have hi : s6Step376ExitGRow.payload.drop 83=s6Step376ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step376ExitG_retired] at result
  exact result

private def s6Step376ExitGvBefore : Arena := s6Step376ExitFAfter

private theorem s6Step376ExitGv_Incoming : rowsOwned s6Step376ExitGvBefore [s6Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376ExitGRow,s6Step376ExitFRow,s6Step376ExitFvRow,s6Step376ExitGvRow] 3 s6Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376ExitGvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<339) ∨ (340≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376ExitGv_Outgoing : rowsOwned s6Step376ExitGvAfter [s6Step376ExitGvOut] :=
  hmrRows_owned_drop s6Step376ExitGvAfter [s6Step376ExitGOut,s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut] 3 s6Step376ExitBank_outgoingOwned

private theorem s6Step376ExitGv_distinct : (s6Step376ExitGvRow.sign::s6Step376ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376ExitGv_owned : (s6Step376ExitGvRow.sign::s6Step376ExitGvRow.payload).toFinset⊆s6Step376ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376ExitGvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<339) ∨ (340≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376ExitGv_reserved : s6Step376ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step376ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step376ExitGv_checked : planRowResizeLog s6Step376ExitGvBefore s6Step376ExitGvRow 205 []=
    some (s6Step376ExitGvAfter,s6Step376ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step376ExitGvBefore s6Step376ExitGvAfter s6Step376ExitGvRow 205 []
    s6Step376ExitGv_distinct s6Step376ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step376ExitGvRow.payload++[]) s6Step376ExitGvRow.sign=s6Step376ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step376ExitBank_rows : planWindowRowsLog s6Step376ExitGBefore [(s6Step376ExitGRow,83),(s6Step376ExitFRow,83),(s6Step376ExitFvRow,205),(s6Step376ExitGvRow,205)] [[],[],[],[]]=
    some (s6Step376ExitGvAfter,[s6Step376ExitGOut,s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut],(shrinkRow 777 s6Step376ExitGExtra ++ (shrinkRow 795 s6Step376ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step376ExitGvAfter [] []=some (s6Step376ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step376ExitGvBefore s6Step376ExitGvAfter s6Step376ExitGvAfter
    s6Step376ExitGvRow s6Step376ExitGvOut 205 [] [] [] []
    (growRow 775 []) ([]) s6Step376ExitGv_Incoming s6Step376ExitGv_checked h4 s6Step376ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step376ExitFvBefore s6Step376ExitFvAfter s6Step376ExitGvAfter
    s6Step376ExitFvRow s6Step376ExitFvOut 205 [] [(s6Step376ExitGvRow,205)] [[]] [s6Step376ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step376ExitFv_Incoming s6Step376ExitFv_checked h3 s6Step376ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step376ExitFBefore s6Step376ExitFAfter s6Step376ExitGvAfter
    s6Step376ExitFRow s6Step376ExitFOut 83 [] [(s6Step376ExitFvRow,205),(s6Step376ExitGvRow,205)] [[],[]] [s6Step376ExitFvOut,s6Step376ExitGvOut]
    (shrinkRow 795 s6Step376ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step376ExitF_Incoming s6Step376ExitF_checked h2 s6Step376ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step376ExitGBefore s6Step376ExitGAfter s6Step376ExitGvAfter
    s6Step376ExitGRow s6Step376ExitGOut 83 [] [(s6Step376ExitFRow,83),(s6Step376ExitFvRow,205),(s6Step376ExitGvRow,205)] [[],[],[]] [s6Step376ExitFOut,s6Step376ExitFvOut,s6Step376ExitGvOut]
    (shrinkRow 777 s6Step376ExitGExtra) ((shrinkRow 795 s6Step376ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step376ExitG_Incoming s6Step376ExitG_checked h1 s6Step376ExitG_Outgoing
  exact h0

private theorem s6Step376ExitBank_checked : compileHmrBankResizeLog .exit s6Step376ExitGBefore ⟨s6Step376ExitFRow,s6Step376ExitGRow,s6Step376ExitFvRow,s6Step376ExitGvRow⟩ ⟨83,83,205,205⟩ [[],[],[],[]]=
    some (s6Step376ExitGvAfter,⟨s6Step376ExitFOut,s6Step376ExitGOut,s6Step376ExitFvOut,s6Step376ExitGvOut⟩,(shrinkRow 777 s6Step376ExitGExtra ++ (shrinkRow 795 s6Step376ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step376ExitBank_rows]
  rfl

private theorem s6Step376Add0_apart : Disjoint s6Step376Add0Arena.live s6Step376Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step376Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376Add0_card : s6Step376Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step376Add0_borrowed : s6Step376Add0Arena.checkBorrow (hmrHybridCount s6Step376Add0Arena s6Step376Add0B.length) s6Step376Add0Work=some s6Step376Add0During := by
  have len : s6Step376Add0Work.length=hmrHybridCount s6Step376Add0Arena s6Step376Add0B.length := by
    rw [hmrHybridCount,s6Step376Add0_card]
    decide +kernel
  have nd : s6Step376Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step376Add0Arena s6Step376Add0During s6Step376Add0Work.toFinset s6Step376Add0_bounded s6Step376Add0_apart rfl

private theorem s6Step376Add0_distinct : (857::908::821::(s6Step376Add0A++s6Step376Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376Add0_owned : (857::908::821::(s6Step376Add0A++s6Step376Add0B)).toFinset⊆s6Step376Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step376Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376Add0_checked : compileHmrHybridCinLog s6Step376Add0Arena 908 857 821 s6Step376Add0A s6Step376Add0B s6Step376Add0Work=some s6Step376Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step376Add0Arena s6Step376Add0During 908 857 821 s6Step376Add0A s6Step376Add0B s6Step376Add0Work
    (by decide +kernel) (by decide +kernel) s6Step376Add0_distinct
    (fun q hq => s6Step376Add0_owned (List.mem_toFinset.mpr hq)) s6Step376Add0_borrowed

private theorem s6Step376Add1_apart : Disjoint s6Step376Add1Arena.live s6Step376Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step376Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376Add1_card : s6Step376Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step376Add1_borrowed : s6Step376Add1Arena.checkBorrow (hmrHybridCount s6Step376Add1Arena s6Step376Add1B.length) s6Step376Add1Work=some s6Step376Add1During := by
  have len : s6Step376Add1Work.length=hmrHybridCount s6Step376Add1Arena s6Step376Add1B.length := by
    rw [hmrHybridCount,s6Step376Add1_card]
    decide +kernel
  have nd : s6Step376Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step376Add1Arena s6Step376Add1During s6Step376Add1Work.toFinset s6Step376Add1_bounded s6Step376Add1_apart rfl

private theorem s6Step376Add1_distinct : (857::908::821::(s6Step376Add1A++s6Step376Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376Add1_owned : (857::908::821::(s6Step376Add1A++s6Step376Add1B)).toFinset⊆s6Step376Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step376Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376Add1_checked : compileHmrHybridCinLog s6Step376Add1Arena 908 857 821 s6Step376Add1A s6Step376Add1B s6Step376Add1Work=some s6Step376Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step376Add1Arena s6Step376Add1During 908 857 821 s6Step376Add1A s6Step376Add1B s6Step376Add1Work
    (by decide +kernel) (by decide +kernel) s6Step376Add1_distinct
    (fun q hq => s6Step376Add1_owned (List.mem_toFinset.mpr hq)) s6Step376Add1_borrowed

private theorem s6Step376F4_apart : Disjoint (s6Step376Add0A++s6Step376Add0B).toFinset (s6Step376Add1A++s6Step376Add1B).toFinset := by
  have nd : ((s6Step376Add0A++s6Step376Add0B)++(s6Step376Add1A++s6Step376Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step376F4_carry : s6Step376F4FlagArena.checkBorrow 1 [821]=some s6Step376Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step376F4FlagArena,s6Step376HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step376F4FlagArena,s6Step376HeadFvAfter,s6Step376Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step376F4_distinct : (890::908::857::821::((s6Step376Add0A++s6Step376Add1A)++(s6Step376Add0B++s6Step376Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376F4_flag : s6Step376HeadFvAfter.checkBorrow 1 [857]=some s6Step376F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step376HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step376F4_owned : (890::908::((s6Step376Add0A++s6Step376Add1A)++(s6Step376Add0B++s6Step376Add1B))).toFinset⊆s6Step376HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step376HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376F4_checked : compileHmrHybridF4Log s6Step376HeadFvAfter 890 908 s6Step376Add0A s6Step376Add0B s6Step376Add1A s6Step376Add1B [857] [821] s6Step376Add0Work s6Step376Add1Work=some s6Step376F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step376HeadFvAfter s6Step376F4FlagArena s6Step376Add0Arena s6Step376Add0During s6Step376Add1During 890 908
    s6Step376Add0A s6Step376Add0B s6Step376Add1A s6Step376Add1B [857] [821] s6Step376Add0Work s6Step376Add1Work
    (fun q hq => s6Step376F4_owned (List.mem_toFinset.mpr hq)) s6Step376F4_flag s6Step376F4_carry
    s6Step376F4_distinct s6Step376F4_apart s6Step376Add0_checked s6Step376Add1_checked

private theorem s6Step376Front_branch : s6Step376FrontSigmaArena.checkBorrow 1 [908]=some s6Step376HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step376FrontSigmaArena,s6Step376EntryGvAfter,s6Step376EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step376FrontSigmaArena,s6Step376EntryGvAfter,s6Step376EntryFBefore,s6Step376HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step376Front_entry : HmrFrontEntryValid s6Step376EntryFBefore s6Step376FrontBank 84 204 ⟨83,83,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step376FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step376EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step376EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step376FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step376Front_sigma : s6Step376EntryGvAfter.checkBorrow 1 [890]=some s6Step376FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step376EntryGvAfter,s6Step376EntryFBefore,arenaWires]
  · rfl

private def s6Step376HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376HeadFBefore : Arena := s6Step376HeadGAfter

private def s6Step376HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339],795⟩

private def s6Step376HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step376HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step376HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩

private theorem s6Step376HeadBank_incomingDistinct : ([s6Step376HeadGRow,s6Step376HeadFRow,s6Step376HeadGvRow,s6Step376HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376HeadF_Incoming : rowsOwned s6Step376HeadFBefore [s6Step376HeadFRow,s6Step376HeadGvRow,s6Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376HeadGRow,s6Step376HeadFRow,s6Step376HeadGvRow,s6Step376HeadFvRow] 1 s6Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376HeadBank_outgoingOwned : rowsOwned s6Step376HeadFvAfter [s6Step376HeadGOut,s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step376HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376HeadF_Outgoing : rowsOwned s6Step376HeadFvAfter [s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut] :=
  hmrRows_owned_drop s6Step376HeadFvAfter [s6Step376HeadGOut,s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut] 1 s6Step376HeadBank_outgoingOwned

private theorem s6Step376HeadF_distinct : (s6Step376HeadFRow.sign::s6Step376HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376HeadF_owned : (s6Step376HeadFRow.sign::s6Step376HeadFRow.payload).toFinset⊆s6Step376HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376HeadF_reserved : s6Step376HeadFBefore.reserve s6Step376HeadFFresh.toFinset=some s6Step376HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376HeadFFresh,arenaWires]
  · norm_num [s6Step376HeadFBefore,s6Step376HeadGAfter,s6Step376HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step376HeadFAfter,s6Step376HeadFBefore,s6Step376HeadGAfter,s6Step376HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step376HeadF_checked : planRowResizeLog s6Step376HeadFBefore s6Step376HeadFRow 85 s6Step376HeadFFresh=
    some (s6Step376HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 876],795⟩,growRow 795 s6Step376HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step376HeadFBefore s6Step376HeadFAfter s6Step376HeadFRow 85 s6Step376HeadFFresh
    s6Step376HeadF_distinct s6Step376HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376HeadF_reserved
  have rowEq : WindowRow.mk (s6Step376HeadFRow.payload++s6Step376HeadFFresh) s6Step376HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step376HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step376HeadFvBefore : Arena := s6Step376HeadGvAfter

private theorem s6Step376HeadFv_Incoming : rowsOwned s6Step376HeadFvBefore [s6Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376HeadGRow,s6Step376HeadFRow,s6Step376HeadGvRow,s6Step376HeadFvRow] 3 s6Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376HeadFv_Outgoing : rowsOwned s6Step376HeadFvAfter [s6Step376HeadFvOut] :=
  hmrRows_owned_drop s6Step376HeadFvAfter [s6Step376HeadGOut,s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut] 3 s6Step376HeadBank_outgoingOwned

private theorem s6Step376HeadFv_distinct : (s6Step376HeadFvRow.sign::s6Step376HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376HeadFv_owned : (s6Step376HeadFvRow.sign::s6Step376HeadFvRow.payload).toFinset⊆s6Step376HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376HeadFv_reserved : s6Step376HeadFvBefore.reserve s6Step376HeadFvFresh.toFinset=some s6Step376HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376HeadFvFresh,arenaWires]
  · norm_num [s6Step376HeadFvBefore,s6Step376HeadGvAfter,s6Step376HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step376HeadFvAfter,s6Step376HeadFvBefore,s6Step376HeadGvAfter,s6Step376HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step376HeadFv_checked : planRowResizeLog s6Step376HeadFvBefore s6Step376HeadFvRow 205 s6Step376HeadFvFresh=
    some (s6Step376HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩,growRow 776 s6Step376HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step376HeadFvBefore s6Step376HeadFvAfter s6Step376HeadFvRow 205 s6Step376HeadFvFresh
    s6Step376HeadFv_distinct s6Step376HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step376HeadFvRow.payload++s6Step376HeadFvFresh) s6Step376HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step376HeadG_Incoming : rowsOwned s6Step376HeadGBefore [s6Step376HeadGRow,s6Step376HeadFRow,s6Step376HeadGvRow,s6Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376HeadGRow,s6Step376HeadFRow,s6Step376HeadGvRow,s6Step376HeadFvRow] 0 s6Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376HeadG_Outgoing : rowsOwned s6Step376HeadFvAfter [s6Step376HeadGOut,s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut] :=
  hmrRows_owned_drop s6Step376HeadFvAfter [s6Step376HeadGOut,s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut] 0 s6Step376HeadBank_outgoingOwned

private theorem s6Step376HeadG_distinct : (s6Step376HeadGRow.sign::s6Step376HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376HeadG_owned : (s6Step376HeadGRow.sign::s6Step376HeadGRow.payload).toFinset⊆s6Step376HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376HeadG_reserved : s6Step376HeadGBefore.reserve s6Step376HeadGFresh.toFinset=some s6Step376HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376HeadGFresh,arenaWires]
  · norm_num [s6Step376HeadGBefore,s6Step376HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step376HeadGAfter,s6Step376HeadGBefore,s6Step376HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step376HeadG_checked : planRowResizeLog s6Step376HeadGBefore s6Step376HeadGRow 85 s6Step376HeadGFresh=
    some (s6Step376HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 863],777⟩,growRow 777 s6Step376HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step376HeadGBefore s6Step376HeadGAfter s6Step376HeadGRow 85 s6Step376HeadGFresh
    s6Step376HeadG_distinct s6Step376HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376HeadG_reserved
  have rowEq : WindowRow.mk (s6Step376HeadGRow.payload++s6Step376HeadGFresh) s6Step376HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step376HeadGvBefore : Arena := s6Step376HeadFAfter

private theorem s6Step376HeadGv_Incoming : rowsOwned s6Step376HeadGvBefore [s6Step376HeadGvRow,s6Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step376HeadGRow,s6Step376HeadFRow,s6Step376HeadGvRow,s6Step376HeadFvRow] 2 s6Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step376HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step376HeadGv_Outgoing : rowsOwned s6Step376HeadFvAfter [s6Step376HeadGvOut,s6Step376HeadFvOut] :=
  hmrRows_owned_drop s6Step376HeadFvAfter [s6Step376HeadGOut,s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut] 2 s6Step376HeadBank_outgoingOwned

private theorem s6Step376HeadGv_distinct : (s6Step376HeadGvRow.sign::s6Step376HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step376HeadGv_owned : (s6Step376HeadGvRow.sign::s6Step376HeadGvRow.payload).toFinset⊆s6Step376HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step376HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step376HeadGv_reserved : s6Step376HeadGvBefore.reserve s6Step376HeadGvFresh.toFinset=some s6Step376HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step376HeadGvFresh,arenaWires]
  · norm_num [s6Step376HeadGvBefore,s6Step376HeadFAfter,s6Step376HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step376HeadGvAfter,s6Step376HeadGvBefore,s6Step376HeadFAfter,s6Step376HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step376HeadGv_checked : planRowResizeLog s6Step376HeadGvBefore s6Step376HeadGvRow 205 s6Step376HeadGvFresh=
    some (s6Step376HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩,growRow 775 s6Step376HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step376HeadGvBefore s6Step376HeadGvAfter s6Step376HeadGvRow 205 s6Step376HeadGvFresh
    s6Step376HeadGv_distinct s6Step376HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step376HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step376HeadGvRow.payload++s6Step376HeadGvFresh) s6Step376HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step376HeadBank_rows : planWindowRowsLog s6Step376HeadGBefore [(s6Step376HeadGRow,85),(s6Step376HeadFRow,85),(s6Step376HeadGvRow,205),(s6Step376HeadFvRow,205)] [s6Step376HeadGFresh,s6Step376HeadFFresh,s6Step376HeadGvFresh,s6Step376HeadFvFresh]=
    some (s6Step376HeadFvAfter,[s6Step376HeadGOut,s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut],(growRow 777 s6Step376HeadGFresh ++ (growRow 795 s6Step376HeadFFresh ++ (growRow 775 s6Step376HeadGvFresh ++ (growRow 776 s6Step376HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step376HeadFvAfter [] []=some (s6Step376HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step376HeadFvBefore s6Step376HeadFvAfter s6Step376HeadFvAfter
    s6Step376HeadFvRow s6Step376HeadFvOut 205 s6Step376HeadFvFresh [] [] []
    (growRow 776 s6Step376HeadFvFresh) ([]) s6Step376HeadFv_Incoming s6Step376HeadFv_checked h4 s6Step376HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step376HeadGvBefore s6Step376HeadGvAfter s6Step376HeadFvAfter
    s6Step376HeadGvRow s6Step376HeadGvOut 205 s6Step376HeadGvFresh [(s6Step376HeadFvRow,205)] [s6Step376HeadFvFresh] [s6Step376HeadFvOut]
    (growRow 775 s6Step376HeadGvFresh) ((growRow 776 s6Step376HeadFvFresh ++ [])) s6Step376HeadGv_Incoming s6Step376HeadGv_checked h3 s6Step376HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step376HeadFBefore s6Step376HeadFAfter s6Step376HeadFvAfter
    s6Step376HeadFRow s6Step376HeadFOut 85 s6Step376HeadFFresh [(s6Step376HeadGvRow,205),(s6Step376HeadFvRow,205)] [s6Step376HeadGvFresh,s6Step376HeadFvFresh] [s6Step376HeadGvOut,s6Step376HeadFvOut]
    (growRow 795 s6Step376HeadFFresh) ((growRow 775 s6Step376HeadGvFresh ++ (growRow 776 s6Step376HeadFvFresh ++ []))) s6Step376HeadF_Incoming s6Step376HeadF_checked h2 s6Step376HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step376HeadGBefore s6Step376HeadGAfter s6Step376HeadFvAfter
    s6Step376HeadGRow s6Step376HeadGOut 85 s6Step376HeadGFresh [(s6Step376HeadFRow,85),(s6Step376HeadGvRow,205),(s6Step376HeadFvRow,205)] [s6Step376HeadFFresh,s6Step376HeadGvFresh,s6Step376HeadFvFresh] [s6Step376HeadFOut,s6Step376HeadGvOut,s6Step376HeadFvOut]
    (growRow 777 s6Step376HeadGFresh) ((growRow 795 s6Step376HeadFFresh ++ (growRow 775 s6Step376HeadGvFresh ++ (growRow 776 s6Step376HeadFvFresh ++ [])))) s6Step376HeadG_Incoming s6Step376HeadG_checked h1 s6Step376HeadG_Outgoing
  exact h0

private theorem s6Step376HeadBank_checked : compileHmrBankResizeLog .headroom s6Step376HeadGBefore ⟨s6Step376HeadFRow,s6Step376HeadGRow,s6Step376HeadFvRow,s6Step376HeadGvRow⟩ ⟨85,85,205,205⟩ [s6Step376HeadGFresh,s6Step376HeadFFresh,s6Step376HeadGvFresh,s6Step376HeadFvFresh]=
    some (s6Step376HeadFvAfter,⟨s6Step376HeadFOut,s6Step376HeadGOut,s6Step376HeadFvOut,s6Step376HeadGvOut⟩,(growRow 777 s6Step376HeadGFresh ++ (growRow 795 s6Step376HeadFFresh ++ (growRow 775 s6Step376HeadGvFresh ++ (growRow 776 s6Step376HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step376HeadBank_rows]
  rfl

private theorem s6Step376Front_checked : compileHmrSourceFrontLog s6Step376EntryFBefore s6Step376FrontBank 84 204 ⟨83,83,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step376FrontLog=some s6Step376FrontPlan := by
  have pairEq : s6Step376FrontPair=⟨s6Step376HeadFRow,s6Step376HeadGRow,s6Step376HeadFvRow,s6Step376HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step376FrontHead=⟨s6Step376ExitFRow,s6Step376ExitGRow,s6Step376ExitFvRow,s6Step376ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step376Add0A=s6Step376FrontHead.f.wires := by decide +kernel
  have gEq : s6Step376Add0B=s6Step376FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step376Add1A=s6Step376FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step376Add1B=s6Step376FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step376EntryFBefore s6Step376FrontBank 84 204 ⟨83,83,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step376FrontLog s6Step376FrontPlan
  · exact s6Step376Front_entry
  · exact s6Step376EntryBank_checked
  · exact s6Step376Front_sigma
  · rfl
  · exact s6Step376Front_branch
  · rfl
  · simpa only [s6Step376FrontPlan,pairEq] using s6Step376HeadBank_checked
  · simpa only [s6Step376FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step376F4_checked
  · exact s6Step376Counter_checked
  · rfl
  · simpa only [s6Step376FrontPlan,headEq] using s6Step376ExitBank_checked

private theorem s6Step376Complete_explicit_checked : compileHmrEarlyStepLog s6Step376EntryFBefore s6Step376FrontBank 84 204 ⟨83,83,205,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step376CompleteLog=some s6Step376CompletePlan := by
  let Q := s6Step376EarlyControlPlan
  have hq := s6Step376EarlyControl_plan_checked
  have fv1 : s6Step376CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step376CompleteOut.fv.payload[2]?.getD s6Step376CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step376CompleteOut.fv.payload[3]?.getD s6Step376CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step376CompleteOut.fv.payload[4]?.getD s6Step376CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step376EntryFBefore s6Step376EarlyControlArena s6Step376FrontBank 84 204 ⟨83,83,205,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step376CompleteLog s6Step376FrontPlan Q
    s6Step376Front_checked s6Step376Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step376Complete_owned s6Step376Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step376EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 s6Step376CompleteOut.fv.second (s6Step376CompleteOut.fv.payload[2]?.getD s6Step376CompleteOut.fv.sign) (s6Step376CompleteOut.fv.payload[3]?.getD s6Step376CompleteOut.fv.sign) (s6Step376CompleteOut.fv.payload[4]?.getD s6Step376CompleteOut.fv.sign) 908 60 s6Step376EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep376Arena : Arena := s6Step376EntryFBefore
def s6PrivateStep376Bank : WindowBank := s6Step376FrontBank
def s6PrivateStep376Spec : HmrSourceWalkStepLog := ⟨84,204,⟨83,83,205,205⟩,60,.early s6Step376CompleteLog⟩
def s6PrivateStep376Plan : HmrSourceStepPlan := .early s6Step376CompletePlan
theorem s6PrivateStep376_source : s6PrivateStep376Spec=s6ObservedLogs368[8] := rfl
theorem s6PrivateStep376_checked : compileHmrSourceStepLog s6PrivateStep376Arena s6PrivateStep376Bank
    s6PrivateStep376Spec.fgWidth s6PrivateStep376Spec.vWidth s6PrivateStep376Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 376 s6PrivateStep376Spec.need none s6PrivateStep376Spec.log=some s6PrivateStep376Plan := by
  change compileHmrSourceStepLog s6Step376EntryFBefore s6Step376FrontBank 84 204 ⟨83,83,205,205⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 376 60 none (.early s6Step376CompleteLog)=some (.early s6Step376CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 376<498)]
  rw [s6Step376Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
