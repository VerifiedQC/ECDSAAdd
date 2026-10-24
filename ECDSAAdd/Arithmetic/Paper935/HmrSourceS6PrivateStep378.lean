import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep376
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

private def s6Step378CompleteMoves : List (Wire × Wire) := []

private def s6Step378EarlyControlLog : HmrEarlyControlLog := ⟨[876, 863, 814, 786, 818],[839],[857],[821, 843, 877, 792, 816, 819],[]⟩

private def s6Step378FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[786], [814], [876], [863]],[[], [], [], []]⟩,[890],[908],[818],[839],[857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[818, 839, 857, 821]⟩

private def s6Step378CompleteLog : HmrEarlyStepLog := ⟨s6Step378FrontLog,s6Step378CompleteMoves,s6Step378EarlyControlLog⟩

private def s6Step378ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step378ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step378ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step378ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step378FrontOut : WindowBank := ⟨s6Step378ExitFOut,s6Step378ExitGOut,s6Step378ExitFvOut,s6Step378ExitGvOut⟩

private def s6Step378CompleteOut : WindowBank := s6Step378FrontOut.repacked s6Step378CompleteMoves

private def s6Step378EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step378EarlyControlPositiveArena,[839],s6Step378EarlyControlEqualityArena,[857],⟨⟨890,false⟩,[⟨⟨839,false⟩,857⟩]⟩⟩

private def s6Step378EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,876⟩,⟨⟨772,false⟩,863⟩,⟨⟨771,false⟩,814⟩,⟨⟨770,false⟩,786⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step378EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step378EarlyControlZeroArena,s6Step378EarlyControlZeroPlan,s6Step378EarlyControlClassPlan,s6Step378EarlyControlFlagArena,s6Step378EarlyControlFittedArena,s6Step378EarlyControlHistoryArena,s6Step378EarlyControlSigmaArena,s6Step378EarlyControlOutputArena,s6Step378EarlyControlLog⟩

private def s6Step378CounterWork : List Wire := [818, 839, 857, 821]

private theorem s6Step378Counter_bounded : s6Step378CounterWork.toFinset⊆arenaWires := by norm_num [s6Step378CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step378HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378CounterDuring : Arena := ⟨s6Step378HeadFvAfter.live∪s6Step378CounterWork.toFinset,Finset.union_subset s6Step378HeadFvAfter.bounded s6Step378Counter_bounded⟩

private def s6Step378EntryFFresh : List Wire := []

private def s6Step378EntryFvFresh : List Wire := []

private def s6Step378EntryGFresh : List Wire := []

private def s6Step378EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378EntryGvAfter : Arena := s6Step378EntryFBefore

private def s6Step378EntryGvFresh : List Wire := []

private def s6Step378ExitFExtra : List Wire := [814]

private def s6Step378ExitFvExtra : List Wire := [863]

private def s6Step378ExitGExtra : List Wire := [786]

private def s6Step378ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378ExitGvExtra : List Wire := [876]

private def s6Step378Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378Add0Work : List Wire := [857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step378Add0_bounded : s6Step378Add0Work.toFinset⊆arenaWires := by
  have h : s6Step378Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step378Add0During : Arena := ⟨s6Step378Add0Arena.live∪s6Step378Add0Work.toFinset,Finset.union_subset s6Step378Add0Arena.bounded s6Step378Add0_bounded⟩

private def s6Step378Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378Add1Work : List Wire := [857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step378Add1_bounded : s6Step378Add1Work.toFinset⊆arenaWires := by
  have h : s6Step378Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step378Add1During : Arena := ⟨s6Step378Add1Arena.live∪s6Step378Add1Work.toFinset,Finset.union_subset s6Step378Add1Arena.bounded s6Step378Add1_bounded⟩

private def s6Step378F4FlagArena : Arena := ⟨s6Step378HeadFvAfter.live∪{818},Finset.union_subset s6Step378HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step378F4Plan : HmrHybridF4Plan := ⟨s6Step378F4FlagArena,[818],s6Step378Add0Arena,[839],s6Step378Add0During,s6Step378Add0Work,s6Step378Add1During,s6Step378Add1Work⟩

private def s6Step378HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 814],795⟩

private def s6Step378HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩

private def s6Step378HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 786],777⟩

private def s6Step378HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩

private def s6Step378FrontHead : WindowBank := ⟨s6Step378HeadFOut,s6Step378HeadGOut,s6Step378HeadFvOut,s6Step378HeadGvOut⟩

private def s6Step378EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step378EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step378EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step378EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step378FrontPair : WindowBank := ⟨s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut⟩

private def s6Step378FrontSigmaArena : Arena := ⟨s6Step378EntryGvAfter.live∪{890},Finset.union_subset s6Step378EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step378HeadFFresh : List Wire := [814]

private def s6Step378HeadFvFresh : List Wire := [863]

private def s6Step378HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378HeadGFresh : List Wire := [786]

private def s6Step378HeadGvFresh : List Wire := [876]

private def s6Step378FrontPlan : HmrSourceFront := ⟨s6Step378EntryGvAfter,s6Step378FrontPair,(growRow 795 s6Step378EntryFFresh ++ (growRow 777 s6Step378EntryGFresh ++ (growRow 776 s6Step378EntryFvFresh ++ (growRow 775 s6Step378EntryGvFresh ++ [])))),s6Step378FrontSigmaArena,[890],s6Step378HeadGBefore,[908],
  s6Step378HeadFvAfter,s6Step378FrontHead,(growRow 777 s6Step378HeadGFresh ++ (growRow 795 s6Step378HeadFFresh ++ (growRow 775 s6Step378HeadGvFresh ++ (growRow 776 s6Step378HeadFvFresh ++ [])))),s6Step378F4Plan,s6Step378CounterDuring,s6Step378CounterWork,s6Step378ExitGvAfter,s6Step378FrontOut,(shrinkRow 777 s6Step378ExitGExtra ++ (shrinkRow 795 s6Step378ExitFExtra ++ (shrinkRow 776 s6Step378ExitFvExtra ++ (shrinkRow 775 s6Step378ExitGvExtra ++ []))))⟩

private def s6Step378CompletePlan : HmrEarlyStepPlan := ⟨s6Step378FrontPlan,s6Step378EarlyControlArena,s6Step378EarlyControlPlan,s6Step378CompleteMoves⟩

private theorem s6Step378Complete_apart : List.Disjoint (s6Step378CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [890, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step378CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[890, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step378Complete_owned : (s6Step378CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378Complete_repack : s6Step378ExitGvAfter.checkRepack s6Step378CompleteMoves=some s6Step378EarlyControlArena := by rfl

private theorem s6Step378EarlyControl_branchOwned : ([908] : List Wire).toFinset⊆s6Step378EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_branch : compileHmrBranchRetirement s6Step378EarlyControlSigmaArena 908=some s6Step378EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step378EarlyControl_branchOwned
  · ext q
    simp [s6Step378EarlyControlOutputArena,s6Step378EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step378EarlyControl_classEqualityBorrow : s6Step378EarlyControlPositiveArena.checkBorrow (([890, 839] : List Wire).length-1) s6Step378EarlyControlLog.classWork=some s6Step378EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step378EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step378EarlyControlEqualityArena,s6Step378EarlyControlPositiveArena,s6Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step378EarlyControl_classEqualityOwned : ([890, 839] : List Wire).toFinset⊆s6Step378EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_classEquality : compileHmrEqualityLog s6Step378EarlyControlPositiveArena [890, 839] 0 s6Step378EarlyControlLog.classWork=some (s6Step378EarlyControlEqualityArena,s6Step378EarlyControlLog.classWork,s6Step378EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step378EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step378EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step378EarlyControl_classOwned : ([769, 818, 890] : List Wire).toFinset⊆s6Step378EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_positiveBorrow : s6Step378EarlyControlZeroArena.checkBorrow (1) s6Step378EarlyControlLog.positiveWork=some s6Step378EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step378EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step378EarlyControlPositiveArena,s6Step378EarlyControlZeroArena,s6Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step378EarlyControl_class : compileHmrSourceClassLog s6Step378EarlyControlZeroArena false 769 s6Step378EarlyControlZeroPlan.top 0 890 s6Step378EarlyControlLog.positiveWork s6Step378EarlyControlLog.classWork=some s6Step378EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step378EarlyControlClassPlan s6Step378EarlyControlZeroArena false 769 s6Step378EarlyControlZeroPlan.top 0 890
  constructor
  · decide +kernel
  · exact s6Step378EarlyControl_classOwned
  · exact s6Step378EarlyControl_positiveBorrow
  · exact s6Step378EarlyControl_classEquality

private theorem s6Step378EarlyControl_entryRecordOwned : ([908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_entrySigmaOwned : ([890, 254] : List Wire).toFinset⊆s6Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_fitBorrow : s6Step378EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step378EarlyControlLog.recordFresh=some s6Step378EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step378EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step378EarlyControlFittedArena,s6Step378EarlyControlFlagArena,s6Step378EarlyControlLog,arenaWires]

private theorem s6Step378EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step378EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_fit : compileHmrRecordGrowLog s6Step378EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step378EarlyControlLog.recordFresh=some s6Step378EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step378EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step378EarlyControl_fitBorrow

private theorem s6Step378EarlyControl_flagsBorrow : s6Step378EarlyControlEqualityArena.checkBorrow (6) s6Step378EarlyControlLog.flagWork=some s6Step378EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step378EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step378EarlyControlFlagArena,s6Step378EarlyControlEqualityArena,s6Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step378EarlyControl_flagsOwned : ([857, 253, 252, 251] : List Wire).toFinset⊆s6Step378EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_flags : compileHmrFlagsLog s6Step378EarlyControlClassPlan.equalityArena s6Step378EarlyControlClassPlan.equality.top 253 252 251 s6Step378EarlyControlLog.flagWork=some s6Step378EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step378EarlyControl_flagsOwned⟩
  · exact s6Step378EarlyControl_flagsBorrow

private theorem s6Step378EarlyControl_historyBorrow : s6Step378EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step378EarlyControlLog.recordFresh=some s6Step378EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step378EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step378EarlyControlHistoryArena,s6Step378EarlyControlArena,s6Step378EarlyControlLog,arenaWires]

private theorem s6Step378EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_history : compileHmrRecordGrowLog s6Step378EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step378EarlyControlLog.recordFresh=some s6Step378EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step378EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step378EarlyControl_historyBorrow

private theorem s6Step378EarlyControl_sigmaOwned : ([254, 890] : List Wire).toFinset⊆s6Step378EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_sigmaReleaseOwned : ([890] : List Wire).toFinset⊆s6Step378EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_sigmaRelease : s6Step378EarlyControlHistoryArena.release {890} (fun _ => false)=some s6Step378EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step378EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step378EarlyControlSigmaArena,s6Step378EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step378EarlyControl_sigma : compileHmrSigmaDropLog s6Step378EarlyControlHistoryArena false 0 0 254 890 []=some s6Step378EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step378EarlyControl_sigmaOwned⟩
  · exact s6Step378EarlyControl_sigmaRelease

private theorem s6Step378EarlyControl_zeroBorrow : s6Step378EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step378EarlyControlLog.zeroWork=some s6Step378EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step378EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step378EarlyControlZeroArena,s6Step378EarlyControlArena,s6Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step378EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step378EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EarlyControl_zero : compileHmrEqualityLog s6Step378EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step378EarlyControlLog.zeroWork=some (s6Step378EarlyControlZeroArena,s6Step378EarlyControlLog.zeroWork,s6Step378EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step378EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step378EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step378EarlyControl_logged : s6Step378EarlyControlPlan.Logged s6Step378EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 254 253 252 251 908 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step378EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step378EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step378EarlyControl_zero
  · exact s6Step378EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step378EarlyControl_flags
  · exact s6Step378EarlyControl_fit
  · exact s6Step378EarlyControl_history
  · exact s6Step378EarlyControl_sigma
  · exact s6Step378EarlyControl_branch

private theorem s6Step378EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step378EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 254 253 252 251 908 60 s6Step378EarlyControlLog=some s6Step378EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step378EarlyControlPlan s6Step378EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 254 253 252 251 908 60 s6Step378EarlyControl_logged

private def s6Step378EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step378EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step378EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step378EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step378FrontBank : WindowBank := ⟨s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow⟩

private def s6Step378Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 814, 795]

private def s6Step378Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 786, 777]

private def s6Step378Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863, 776]

private def s6Step378Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876, 775]

private theorem s6Step378Counter_apart : Disjoint s6Step378HeadFvAfter.live s6Step378CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step378HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378Counter_borrowed : s6Step378HeadFvAfter.checkBorrow 4 s6Step378CounterWork=some s6Step378CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step378HeadFvAfter s6Step378CounterDuring s6Step378CounterWork.toFinset s6Step378Counter_bounded s6Step378Counter_apart rfl

private theorem s6Step378Counter_owned : (890::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step378HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step378HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378Counter_checked : compileHmrCounterStepLog s6Step378HeadFvAfter true 890 [774, 773, 772, 771, 770, 769] s6Step378CounterWork=some s6Step378CounterDuring := by
  have owned : ∀q∈890::[774, 773, 772, 771, 770, 769],q∈s6Step378HeadFvAfter.live := fun q hq => s6Step378Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step378Counter_borrowed

private def s6Step378EntryFAfter : Arena := s6Step378EntryFBefore

private theorem s6Step378EntryBank_incomingDistinct : ([s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378EntryF_Incoming : rowsOwned s6Step378EntryFBefore [s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow] 0 s6Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378EntryBank_outgoingOwned : rowsOwned s6Step378EntryGvAfter [s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step378EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378EntryF_Outgoing : rowsOwned s6Step378EntryGvAfter [s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut] :=
  hmrRows_owned_drop s6Step378EntryGvAfter [s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut] 0 s6Step378EntryBank_outgoingOwned

private theorem s6Step378EntryF_distinct : (s6Step378EntryFRow.sign::s6Step378EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378EntryF_owned : (s6Step378EntryFRow.sign::s6Step378EntryFRow.payload).toFinset⊆s6Step378EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EntryF_reserved : s6Step378EntryFBefore.reserve s6Step378EntryFFresh.toFinset=some s6Step378EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378EntryFFresh,arenaWires]
  · norm_num [s6Step378EntryFBefore,s6Step378EntryFFresh,arenaWires]
  · simp only [s6Step378EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step378EntryF_checked : planRowResizeLog s6Step378EntryFBefore s6Step378EntryFRow 82 s6Step378EntryFFresh=
    some (s6Step378EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩,growRow 795 s6Step378EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step378EntryFBefore s6Step378EntryFAfter s6Step378EntryFRow 82 s6Step378EntryFFresh
    s6Step378EntryF_distinct s6Step378EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378EntryF_reserved
  have rowEq : WindowRow.mk (s6Step378EntryFRow.payload++s6Step378EntryFFresh) s6Step378EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step378EntryFvAfter : Arena := s6Step378EntryFBefore

private def s6Step378EntryFvBefore : Arena := s6Step378EntryFBefore

private theorem s6Step378EntryFv_Incoming : rowsOwned s6Step378EntryFvBefore [s6Step378EntryFvRow,s6Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow] 2 s6Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378EntryFv_Outgoing : rowsOwned s6Step378EntryGvAfter [s6Step378EntryFvOut,s6Step378EntryGvOut] :=
  hmrRows_owned_drop s6Step378EntryGvAfter [s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut] 2 s6Step378EntryBank_outgoingOwned

private theorem s6Step378EntryFv_distinct : (s6Step378EntryFvRow.sign::s6Step378EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378EntryFv_owned : (s6Step378EntryFvRow.sign::s6Step378EntryFvRow.payload).toFinset⊆s6Step378EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EntryFv_reserved : s6Step378EntryFvBefore.reserve s6Step378EntryFvFresh.toFinset=some s6Step378EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378EntryFvFresh,arenaWires]
  · norm_num [s6Step378EntryFvBefore,s6Step378EntryFBefore,s6Step378EntryFvFresh,arenaWires]
  · simp only [s6Step378EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step378EntryFv_checked : planRowResizeLog s6Step378EntryFvBefore s6Step378EntryFvRow 205 s6Step378EntryFvFresh=
    some (s6Step378EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩,growRow 776 s6Step378EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step378EntryFvBefore s6Step378EntryFvAfter s6Step378EntryFvRow 205 s6Step378EntryFvFresh
    s6Step378EntryFv_distinct s6Step378EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step378EntryFvRow.payload++s6Step378EntryFvFresh) s6Step378EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step378EntryGAfter : Arena := s6Step378EntryFBefore

private def s6Step378EntryGBefore : Arena := s6Step378EntryFBefore

private theorem s6Step378EntryG_Incoming : rowsOwned s6Step378EntryGBefore [s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow] 1 s6Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378EntryG_Outgoing : rowsOwned s6Step378EntryGvAfter [s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut] :=
  hmrRows_owned_drop s6Step378EntryGvAfter [s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut] 1 s6Step378EntryBank_outgoingOwned

private theorem s6Step378EntryG_distinct : (s6Step378EntryGRow.sign::s6Step378EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378EntryG_owned : (s6Step378EntryGRow.sign::s6Step378EntryGRow.payload).toFinset⊆s6Step378EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EntryG_reserved : s6Step378EntryGBefore.reserve s6Step378EntryGFresh.toFinset=some s6Step378EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378EntryGFresh,arenaWires]
  · norm_num [s6Step378EntryGBefore,s6Step378EntryFBefore,s6Step378EntryGFresh,arenaWires]
  · simp only [s6Step378EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step378EntryG_checked : planRowResizeLog s6Step378EntryGBefore s6Step378EntryGRow 82 s6Step378EntryGFresh=
    some (s6Step378EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩,growRow 777 s6Step378EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step378EntryGBefore s6Step378EntryGAfter s6Step378EntryGRow 82 s6Step378EntryGFresh
    s6Step378EntryG_distinct s6Step378EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378EntryG_reserved
  have rowEq : WindowRow.mk (s6Step378EntryGRow.payload++s6Step378EntryGFresh) s6Step378EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step378EntryGvBefore : Arena := s6Step378EntryFBefore

private theorem s6Step378EntryGv_Incoming : rowsOwned s6Step378EntryGvBefore [s6Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow] 3 s6Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378EntryGv_Outgoing : rowsOwned s6Step378EntryGvAfter [s6Step378EntryGvOut] :=
  hmrRows_owned_drop s6Step378EntryGvAfter [s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut] 3 s6Step378EntryBank_outgoingOwned

private theorem s6Step378EntryGv_distinct : (s6Step378EntryGvRow.sign::s6Step378EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378EntryGv_owned : (s6Step378EntryGvRow.sign::s6Step378EntryGvRow.payload).toFinset⊆s6Step378EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378EntryGv_reserved : s6Step378EntryGvBefore.reserve s6Step378EntryGvFresh.toFinset=some s6Step378EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378EntryGvFresh,arenaWires]
  · norm_num [s6Step378EntryGvBefore,s6Step378EntryFBefore,s6Step378EntryGvFresh,arenaWires]
  · simp only [s6Step378EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step378EntryGv_checked : planRowResizeLog s6Step378EntryGvBefore s6Step378EntryGvRow 205 s6Step378EntryGvFresh=
    some (s6Step378EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩,growRow 775 s6Step378EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step378EntryGvBefore s6Step378EntryGvAfter s6Step378EntryGvRow 205 s6Step378EntryGvFresh
    s6Step378EntryGv_distinct s6Step378EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step378EntryGvRow.payload++s6Step378EntryGvFresh) s6Step378EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step378EntryBank_rows : planWindowRowsLog s6Step378EntryFBefore [(s6Step378EntryFRow,82),(s6Step378EntryGRow,82),(s6Step378EntryFvRow,205),(s6Step378EntryGvRow,205)] [s6Step378EntryFFresh,s6Step378EntryGFresh,s6Step378EntryFvFresh,s6Step378EntryGvFresh]=
    some (s6Step378EntryGvAfter,[s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut],(growRow 795 s6Step378EntryFFresh ++ (growRow 777 s6Step378EntryGFresh ++ (growRow 776 s6Step378EntryFvFresh ++ (growRow 775 s6Step378EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step378EntryGvAfter [] []=some (s6Step378EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step378EntryGvBefore s6Step378EntryGvAfter s6Step378EntryGvAfter
    s6Step378EntryGvRow s6Step378EntryGvOut 205 s6Step378EntryGvFresh [] [] []
    (growRow 775 s6Step378EntryGvFresh) ([]) s6Step378EntryGv_Incoming s6Step378EntryGv_checked h4 s6Step378EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step378EntryFvBefore s6Step378EntryFvAfter s6Step378EntryGvAfter
    s6Step378EntryFvRow s6Step378EntryFvOut 205 s6Step378EntryFvFresh [(s6Step378EntryGvRow,205)] [s6Step378EntryGvFresh] [s6Step378EntryGvOut]
    (growRow 776 s6Step378EntryFvFresh) ((growRow 775 s6Step378EntryGvFresh ++ [])) s6Step378EntryFv_Incoming s6Step378EntryFv_checked h3 s6Step378EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step378EntryGBefore s6Step378EntryGAfter s6Step378EntryGvAfter
    s6Step378EntryGRow s6Step378EntryGOut 82 s6Step378EntryGFresh [(s6Step378EntryFvRow,205),(s6Step378EntryGvRow,205)] [s6Step378EntryFvFresh,s6Step378EntryGvFresh] [s6Step378EntryFvOut,s6Step378EntryGvOut]
    (growRow 777 s6Step378EntryGFresh) ((growRow 776 s6Step378EntryFvFresh ++ (growRow 775 s6Step378EntryGvFresh ++ []))) s6Step378EntryG_Incoming s6Step378EntryG_checked h2 s6Step378EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step378EntryFBefore s6Step378EntryFAfter s6Step378EntryGvAfter
    s6Step378EntryFRow s6Step378EntryFOut 82 s6Step378EntryFFresh [(s6Step378EntryGRow,82),(s6Step378EntryFvRow,205),(s6Step378EntryGvRow,205)] [s6Step378EntryGFresh,s6Step378EntryFvFresh,s6Step378EntryGvFresh] [s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut]
    (growRow 795 s6Step378EntryFFresh) ((growRow 777 s6Step378EntryGFresh ++ (growRow 776 s6Step378EntryFvFresh ++ (growRow 775 s6Step378EntryGvFresh ++ [])))) s6Step378EntryF_Incoming s6Step378EntryF_checked h1 s6Step378EntryF_Outgoing
  exact h0

private theorem s6Step378EntryBank_checked : compileHmrBankResizeLog .entry s6Step378EntryFBefore ⟨s6Step378EntryFRow,s6Step378EntryGRow,s6Step378EntryFvRow,s6Step378EntryGvRow⟩ ⟨82,82,205,205⟩ [s6Step378EntryFFresh,s6Step378EntryGFresh,s6Step378EntryFvFresh,s6Step378EntryGvFresh]=
    some (s6Step378EntryGvAfter,⟨s6Step378EntryFOut,s6Step378EntryGOut,s6Step378EntryFvOut,s6Step378EntryGvOut⟩,(growRow 795 s6Step378EntryFFresh ++ (growRow 777 s6Step378EntryGFresh ++ (growRow 776 s6Step378EntryFvFresh ++ (growRow 775 s6Step378EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step378EntryBank_rows]
  rfl

private def s6Step378ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378ExitFBefore : Arena := s6Step378ExitGAfter

private def s6Step378ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 814],795⟩

private def s6Step378ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩

private def s6Step378ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 786],777⟩

private def s6Step378ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩

private theorem s6Step378ExitBank_incomingDistinct : ([s6Step378ExitGRow,s6Step378ExitFRow,s6Step378ExitFvRow,s6Step378ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378ExitF_Incoming : rowsOwned s6Step378ExitFBefore [s6Step378ExitFRow,s6Step378ExitFvRow,s6Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378ExitGRow,s6Step378ExitFRow,s6Step378ExitFvRow,s6Step378ExitGvRow] 1 s6Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378ExitBank_outgoingOwned : rowsOwned s6Step378ExitGvAfter [s6Step378ExitGOut,s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step378ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378ExitF_Outgoing : rowsOwned s6Step378ExitGvAfter [s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut] :=
  hmrRows_owned_drop s6Step378ExitGvAfter [s6Step378ExitGOut,s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut] 1 s6Step378ExitBank_outgoingOwned

private theorem s6Step378ExitF_distinct : (s6Step378ExitFRow.sign::s6Step378ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378ExitF_owned : (s6Step378ExitFRow.sign::s6Step378ExitFRow.payload).toFinset⊆s6Step378ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378ExitF_retired : s6Step378ExitFBefore.retireSet s6Step378ExitFExtra.toFinset=s6Step378ExitFAfter := by
  unfold Arena.retireSet s6Step378ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step378ExitFBefore,s6Step378ExitGAfter,s6Step378ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step378ExitF_checked : planRowResizeLog s6Step378ExitFBefore s6Step378ExitFRow 82 []=
    some (s6Step378ExitFAfter,s6Step378ExitFOut,shrinkRow 795 s6Step378ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step378ExitFBefore s6Step378ExitFRow 82 s6Step378ExitF_distinct s6Step378ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step378ExitFRow.payload.take 82) s6Step378ExitFRow.sign=s6Step378ExitFOut := by decide +kernel
  have hi : s6Step378ExitFRow.payload.drop 82=s6Step378ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step378ExitF_retired] at result
  exact result

private def s6Step378ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378ExitFvBefore : Arena := s6Step378ExitFAfter

private theorem s6Step378ExitFv_Incoming : rowsOwned s6Step378ExitFvBefore [s6Step378ExitFvRow,s6Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378ExitGRow,s6Step378ExitFRow,s6Step378ExitFvRow,s6Step378ExitGvRow] 2 s6Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378ExitFv_Outgoing : rowsOwned s6Step378ExitGvAfter [s6Step378ExitFvOut,s6Step378ExitGvOut] :=
  hmrRows_owned_drop s6Step378ExitGvAfter [s6Step378ExitGOut,s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut] 2 s6Step378ExitBank_outgoingOwned

private theorem s6Step378ExitFv_distinct : (s6Step378ExitFvRow.sign::s6Step378ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378ExitFv_owned : (s6Step378ExitFvRow.sign::s6Step378ExitFvRow.payload).toFinset⊆s6Step378ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378ExitFv_retired : s6Step378ExitFvBefore.retireSet s6Step378ExitFvExtra.toFinset=s6Step378ExitFvAfter := by
  unfold Arena.retireSet s6Step378ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step378ExitFvBefore,s6Step378ExitFAfter,s6Step378ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step378ExitFv_checked : planRowResizeLog s6Step378ExitFvBefore s6Step378ExitFvRow 205 []=
    some (s6Step378ExitFvAfter,s6Step378ExitFvOut,shrinkRow 776 s6Step378ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step378ExitFvBefore s6Step378ExitFvRow 205 s6Step378ExitFv_distinct s6Step378ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step378ExitFvRow.payload.take 205) s6Step378ExitFvRow.sign=s6Step378ExitFvOut := by decide +kernel
  have hi : s6Step378ExitFvRow.payload.drop 205=s6Step378ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step378ExitFv_retired] at result
  exact result

private def s6Step378ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step378ExitG_Incoming : rowsOwned s6Step378ExitGBefore [s6Step378ExitGRow,s6Step378ExitFRow,s6Step378ExitFvRow,s6Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378ExitGRow,s6Step378ExitFRow,s6Step378ExitFvRow,s6Step378ExitGvRow] 0 s6Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378ExitG_Outgoing : rowsOwned s6Step378ExitGvAfter [s6Step378ExitGOut,s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut] :=
  hmrRows_owned_drop s6Step378ExitGvAfter [s6Step378ExitGOut,s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut] 0 s6Step378ExitBank_outgoingOwned

private theorem s6Step378ExitG_distinct : (s6Step378ExitGRow.sign::s6Step378ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378ExitG_owned : (s6Step378ExitGRow.sign::s6Step378ExitGRow.payload).toFinset⊆s6Step378ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378ExitG_retired : s6Step378ExitGBefore.retireSet s6Step378ExitGExtra.toFinset=s6Step378ExitGAfter := by
  unfold Arena.retireSet s6Step378ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step378ExitGBefore,s6Step378ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step378ExitG_checked : planRowResizeLog s6Step378ExitGBefore s6Step378ExitGRow 82 []=
    some (s6Step378ExitGAfter,s6Step378ExitGOut,shrinkRow 777 s6Step378ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step378ExitGBefore s6Step378ExitGRow 82 s6Step378ExitG_distinct s6Step378ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step378ExitGRow.payload.take 82) s6Step378ExitGRow.sign=s6Step378ExitGOut := by decide +kernel
  have hi : s6Step378ExitGRow.payload.drop 82=s6Step378ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step378ExitG_retired] at result
  exact result

private def s6Step378ExitGvBefore : Arena := s6Step378ExitFvAfter

private theorem s6Step378ExitGv_Incoming : rowsOwned s6Step378ExitGvBefore [s6Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378ExitGRow,s6Step378ExitFRow,s6Step378ExitFvRow,s6Step378ExitGvRow] 3 s6Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378ExitGv_Outgoing : rowsOwned s6Step378ExitGvAfter [s6Step378ExitGvOut] :=
  hmrRows_owned_drop s6Step378ExitGvAfter [s6Step378ExitGOut,s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut] 3 s6Step378ExitBank_outgoingOwned

private theorem s6Step378ExitGv_distinct : (s6Step378ExitGvRow.sign::s6Step378ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378ExitGv_owned : (s6Step378ExitGvRow.sign::s6Step378ExitGvRow.payload).toFinset⊆s6Step378ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378ExitGv_retired : s6Step378ExitGvBefore.retireSet s6Step378ExitGvExtra.toFinset=s6Step378ExitGvAfter := by
  unfold Arena.retireSet s6Step378ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step378ExitGvBefore,s6Step378ExitFvAfter,s6Step378ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step378ExitGv_checked : planRowResizeLog s6Step378ExitGvBefore s6Step378ExitGvRow 205 []=
    some (s6Step378ExitGvAfter,s6Step378ExitGvOut,shrinkRow 775 s6Step378ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step378ExitGvBefore s6Step378ExitGvRow 205 s6Step378ExitGv_distinct s6Step378ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step378ExitGvRow.payload.take 205) s6Step378ExitGvRow.sign=s6Step378ExitGvOut := by decide +kernel
  have hi : s6Step378ExitGvRow.payload.drop 205=s6Step378ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step378ExitGv_retired] at result
  exact result

private theorem s6Step378ExitBank_rows : planWindowRowsLog s6Step378ExitGBefore [(s6Step378ExitGRow,82),(s6Step378ExitFRow,82),(s6Step378ExitFvRow,205),(s6Step378ExitGvRow,205)] [[],[],[],[]]=
    some (s6Step378ExitGvAfter,[s6Step378ExitGOut,s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut],(shrinkRow 777 s6Step378ExitGExtra ++ (shrinkRow 795 s6Step378ExitFExtra ++ (shrinkRow 776 s6Step378ExitFvExtra ++ (shrinkRow 775 s6Step378ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step378ExitGvAfter [] []=some (s6Step378ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step378ExitGvBefore s6Step378ExitGvAfter s6Step378ExitGvAfter
    s6Step378ExitGvRow s6Step378ExitGvOut 205 [] [] [] []
    (shrinkRow 775 s6Step378ExitGvExtra) ([]) s6Step378ExitGv_Incoming s6Step378ExitGv_checked h4 s6Step378ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step378ExitFvBefore s6Step378ExitFvAfter s6Step378ExitGvAfter
    s6Step378ExitFvRow s6Step378ExitFvOut 205 [] [(s6Step378ExitGvRow,205)] [[]] [s6Step378ExitGvOut]
    (shrinkRow 776 s6Step378ExitFvExtra) ((shrinkRow 775 s6Step378ExitGvExtra ++ [])) s6Step378ExitFv_Incoming s6Step378ExitFv_checked h3 s6Step378ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step378ExitFBefore s6Step378ExitFAfter s6Step378ExitGvAfter
    s6Step378ExitFRow s6Step378ExitFOut 82 [] [(s6Step378ExitFvRow,205),(s6Step378ExitGvRow,205)] [[],[]] [s6Step378ExitFvOut,s6Step378ExitGvOut]
    (shrinkRow 795 s6Step378ExitFExtra) ((shrinkRow 776 s6Step378ExitFvExtra ++ (shrinkRow 775 s6Step378ExitGvExtra ++ []))) s6Step378ExitF_Incoming s6Step378ExitF_checked h2 s6Step378ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step378ExitGBefore s6Step378ExitGAfter s6Step378ExitGvAfter
    s6Step378ExitGRow s6Step378ExitGOut 82 [] [(s6Step378ExitFRow,82),(s6Step378ExitFvRow,205),(s6Step378ExitGvRow,205)] [[],[],[]] [s6Step378ExitFOut,s6Step378ExitFvOut,s6Step378ExitGvOut]
    (shrinkRow 777 s6Step378ExitGExtra) ((shrinkRow 795 s6Step378ExitFExtra ++ (shrinkRow 776 s6Step378ExitFvExtra ++ (shrinkRow 775 s6Step378ExitGvExtra ++ [])))) s6Step378ExitG_Incoming s6Step378ExitG_checked h1 s6Step378ExitG_Outgoing
  exact h0

private theorem s6Step378ExitBank_checked : compileHmrBankResizeLog .exit s6Step378ExitGBefore ⟨s6Step378ExitFRow,s6Step378ExitGRow,s6Step378ExitFvRow,s6Step378ExitGvRow⟩ ⟨82,82,205,205⟩ [[],[],[],[]]=
    some (s6Step378ExitGvAfter,⟨s6Step378ExitFOut,s6Step378ExitGOut,s6Step378ExitFvOut,s6Step378ExitGvOut⟩,(shrinkRow 777 s6Step378ExitGExtra ++ (shrinkRow 795 s6Step378ExitFExtra ++ (shrinkRow 776 s6Step378ExitFvExtra ++ (shrinkRow 775 s6Step378ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step378ExitBank_rows]
  rfl

private theorem s6Step378Add0_apart : Disjoint s6Step378Add0Arena.live s6Step378Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step378Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378Add0_card : s6Step378Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step378Add0_borrowed : s6Step378Add0Arena.checkBorrow (hmrHybridCount s6Step378Add0Arena s6Step378Add0B.length) s6Step378Add0Work=some s6Step378Add0During := by
  have len : s6Step378Add0Work.length=hmrHybridCount s6Step378Add0Arena s6Step378Add0B.length := by
    rw [hmrHybridCount,s6Step378Add0_card]
    decide +kernel
  have nd : s6Step378Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step378Add0Arena s6Step378Add0During s6Step378Add0Work.toFinset s6Step378Add0_bounded s6Step378Add0_apart rfl

private theorem s6Step378Add0_distinct : (818::908::839::(s6Step378Add0A++s6Step378Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378Add0_owned : (818::908::839::(s6Step378Add0A++s6Step378Add0B)).toFinset⊆s6Step378Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step378Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378Add0_checked : compileHmrHybridCinLog s6Step378Add0Arena 908 818 839 s6Step378Add0A s6Step378Add0B s6Step378Add0Work=some s6Step378Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step378Add0Arena s6Step378Add0During 908 818 839 s6Step378Add0A s6Step378Add0B s6Step378Add0Work
    (by decide +kernel) (by decide +kernel) s6Step378Add0_distinct
    (fun q hq => s6Step378Add0_owned (List.mem_toFinset.mpr hq)) s6Step378Add0_borrowed

private theorem s6Step378Add1_apart : Disjoint s6Step378Add1Arena.live s6Step378Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step378Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378Add1_card : s6Step378Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step378Add1_borrowed : s6Step378Add1Arena.checkBorrow (hmrHybridCount s6Step378Add1Arena s6Step378Add1B.length) s6Step378Add1Work=some s6Step378Add1During := by
  have len : s6Step378Add1Work.length=hmrHybridCount s6Step378Add1Arena s6Step378Add1B.length := by
    rw [hmrHybridCount,s6Step378Add1_card]
    decide +kernel
  have nd : s6Step378Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step378Add1Arena s6Step378Add1During s6Step378Add1Work.toFinset s6Step378Add1_bounded s6Step378Add1_apart rfl

private theorem s6Step378Add1_distinct : (818::908::839::(s6Step378Add1A++s6Step378Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378Add1_owned : (818::908::839::(s6Step378Add1A++s6Step378Add1B)).toFinset⊆s6Step378Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step378Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378Add1_checked : compileHmrHybridCinLog s6Step378Add1Arena 908 818 839 s6Step378Add1A s6Step378Add1B s6Step378Add1Work=some s6Step378Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step378Add1Arena s6Step378Add1During 908 818 839 s6Step378Add1A s6Step378Add1B s6Step378Add1Work
    (by decide +kernel) (by decide +kernel) s6Step378Add1_distinct
    (fun q hq => s6Step378Add1_owned (List.mem_toFinset.mpr hq)) s6Step378Add1_borrowed

private theorem s6Step378F4_apart : Disjoint (s6Step378Add0A++s6Step378Add0B).toFinset (s6Step378Add1A++s6Step378Add1B).toFinset := by
  have nd : ((s6Step378Add0A++s6Step378Add0B)++(s6Step378Add1A++s6Step378Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step378F4_carry : s6Step378F4FlagArena.checkBorrow 1 [839]=some s6Step378Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step378F4FlagArena,s6Step378HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step378F4FlagArena,s6Step378HeadFvAfter,s6Step378Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step378F4_distinct : (890::908::818::839::((s6Step378Add0A++s6Step378Add1A)++(s6Step378Add0B++s6Step378Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378F4_flag : s6Step378HeadFvAfter.checkBorrow 1 [818]=some s6Step378F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step378HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step378F4_owned : (890::908::((s6Step378Add0A++s6Step378Add1A)++(s6Step378Add0B++s6Step378Add1B))).toFinset⊆s6Step378HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step378HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378F4_checked : compileHmrHybridF4Log s6Step378HeadFvAfter 890 908 s6Step378Add0A s6Step378Add0B s6Step378Add1A s6Step378Add1B [818] [839] s6Step378Add0Work s6Step378Add1Work=some s6Step378F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step378HeadFvAfter s6Step378F4FlagArena s6Step378Add0Arena s6Step378Add0During s6Step378Add1During 890 908
    s6Step378Add0A s6Step378Add0B s6Step378Add1A s6Step378Add1B [818] [839] s6Step378Add0Work s6Step378Add1Work
    (fun q hq => s6Step378F4_owned (List.mem_toFinset.mpr hq)) s6Step378F4_flag s6Step378F4_carry
    s6Step378F4_distinct s6Step378F4_apart s6Step378Add0_checked s6Step378Add1_checked

private theorem s6Step378Front_branch : s6Step378FrontSigmaArena.checkBorrow 1 [908]=some s6Step378HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step378FrontSigmaArena,s6Step378EntryGvAfter,s6Step378EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step378FrontSigmaArena,s6Step378EntryGvAfter,s6Step378EntryFBefore,s6Step378HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step378Front_entry : HmrFrontEntryValid s6Step378EntryFBefore s6Step378FrontBank 82 205 ⟨82,82,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step378FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step378EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step378EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step378FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step378Front_sigma : s6Step378EntryGvAfter.checkBorrow 1 [890]=some s6Step378FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step378EntryGvAfter,s6Step378EntryFBefore,arenaWires]
  · rfl

private def s6Step378HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378HeadFBefore : Arena := s6Step378HeadGAfter

private def s6Step378HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step378HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step378HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step378HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private theorem s6Step378HeadBank_incomingDistinct : ([s6Step378HeadGRow,s6Step378HeadFRow,s6Step378HeadGvRow,s6Step378HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378HeadF_Incoming : rowsOwned s6Step378HeadFBefore [s6Step378HeadFRow,s6Step378HeadGvRow,s6Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378HeadGRow,s6Step378HeadFRow,s6Step378HeadGvRow,s6Step378HeadFvRow] 1 s6Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378HeadBank_outgoingOwned : rowsOwned s6Step378HeadFvAfter [s6Step378HeadGOut,s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step378HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378HeadF_Outgoing : rowsOwned s6Step378HeadFvAfter [s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut] :=
  hmrRows_owned_drop s6Step378HeadFvAfter [s6Step378HeadGOut,s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut] 1 s6Step378HeadBank_outgoingOwned

private theorem s6Step378HeadF_distinct : (s6Step378HeadFRow.sign::s6Step378HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378HeadF_owned : (s6Step378HeadFRow.sign::s6Step378HeadFRow.payload).toFinset⊆s6Step378HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378HeadF_reserved : s6Step378HeadFBefore.reserve s6Step378HeadFFresh.toFinset=some s6Step378HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378HeadFFresh,arenaWires]
  · norm_num [s6Step378HeadFBefore,s6Step378HeadGAfter,s6Step378HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step378HeadFAfter,s6Step378HeadFBefore,s6Step378HeadGAfter,s6Step378HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step378HeadF_checked : planRowResizeLog s6Step378HeadFBefore s6Step378HeadFRow 83 s6Step378HeadFFresh=
    some (s6Step378HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 814],795⟩,growRow 795 s6Step378HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step378HeadFBefore s6Step378HeadFAfter s6Step378HeadFRow 83 s6Step378HeadFFresh
    s6Step378HeadF_distinct s6Step378HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378HeadF_reserved
  have rowEq : WindowRow.mk (s6Step378HeadFRow.payload++s6Step378HeadFFresh) s6Step378HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 814],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step378HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step378HeadFvBefore : Arena := s6Step378HeadGvAfter

private theorem s6Step378HeadFv_Incoming : rowsOwned s6Step378HeadFvBefore [s6Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378HeadGRow,s6Step378HeadFRow,s6Step378HeadGvRow,s6Step378HeadFvRow] 3 s6Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378HeadFv_Outgoing : rowsOwned s6Step378HeadFvAfter [s6Step378HeadFvOut] :=
  hmrRows_owned_drop s6Step378HeadFvAfter [s6Step378HeadGOut,s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut] 3 s6Step378HeadBank_outgoingOwned

private theorem s6Step378HeadFv_distinct : (s6Step378HeadFvRow.sign::s6Step378HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378HeadFv_owned : (s6Step378HeadFvRow.sign::s6Step378HeadFvRow.payload).toFinset⊆s6Step378HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378HeadFv_reserved : s6Step378HeadFvBefore.reserve s6Step378HeadFvFresh.toFinset=some s6Step378HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378HeadFvFresh,arenaWires]
  · norm_num [s6Step378HeadFvBefore,s6Step378HeadGvAfter,s6Step378HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step378HeadFvAfter,s6Step378HeadFvBefore,s6Step378HeadGvAfter,s6Step378HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step378HeadFv_checked : planRowResizeLog s6Step378HeadFvBefore s6Step378HeadFvRow 206 s6Step378HeadFvFresh=
    some (s6Step378HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩,growRow 776 s6Step378HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step378HeadFvBefore s6Step378HeadFvAfter s6Step378HeadFvRow 206 s6Step378HeadFvFresh
    s6Step378HeadFv_distinct s6Step378HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step378HeadFvRow.payload++s6Step378HeadFvFresh) s6Step378HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step378HeadG_Incoming : rowsOwned s6Step378HeadGBefore [s6Step378HeadGRow,s6Step378HeadFRow,s6Step378HeadGvRow,s6Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378HeadGRow,s6Step378HeadFRow,s6Step378HeadGvRow,s6Step378HeadFvRow] 0 s6Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378HeadG_Outgoing : rowsOwned s6Step378HeadFvAfter [s6Step378HeadGOut,s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut] :=
  hmrRows_owned_drop s6Step378HeadFvAfter [s6Step378HeadGOut,s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut] 0 s6Step378HeadBank_outgoingOwned

private theorem s6Step378HeadG_distinct : (s6Step378HeadGRow.sign::s6Step378HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378HeadG_owned : (s6Step378HeadGRow.sign::s6Step378HeadGRow.payload).toFinset⊆s6Step378HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378HeadG_reserved : s6Step378HeadGBefore.reserve s6Step378HeadGFresh.toFinset=some s6Step378HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378HeadGFresh,arenaWires]
  · norm_num [s6Step378HeadGBefore,s6Step378HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step378HeadGAfter,s6Step378HeadGBefore,s6Step378HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step378HeadG_checked : planRowResizeLog s6Step378HeadGBefore s6Step378HeadGRow 83 s6Step378HeadGFresh=
    some (s6Step378HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 786],777⟩,growRow 777 s6Step378HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step378HeadGBefore s6Step378HeadGAfter s6Step378HeadGRow 83 s6Step378HeadGFresh
    s6Step378HeadG_distinct s6Step378HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378HeadG_reserved
  have rowEq : WindowRow.mk (s6Step378HeadGRow.payload++s6Step378HeadGFresh) s6Step378HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 786],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step378HeadGvBefore : Arena := s6Step378HeadFAfter

private theorem s6Step378HeadGv_Incoming : rowsOwned s6Step378HeadGvBefore [s6Step378HeadGvRow,s6Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step378HeadGRow,s6Step378HeadFRow,s6Step378HeadGvRow,s6Step378HeadFvRow] 2 s6Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step378HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step378HeadGv_Outgoing : rowsOwned s6Step378HeadFvAfter [s6Step378HeadGvOut,s6Step378HeadFvOut] :=
  hmrRows_owned_drop s6Step378HeadFvAfter [s6Step378HeadGOut,s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut] 2 s6Step378HeadBank_outgoingOwned

private theorem s6Step378HeadGv_distinct : (s6Step378HeadGvRow.sign::s6Step378HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step378HeadGv_owned : (s6Step378HeadGvRow.sign::s6Step378HeadGvRow.payload).toFinset⊆s6Step378HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step378HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step378HeadGv_reserved : s6Step378HeadGvBefore.reserve s6Step378HeadGvFresh.toFinset=some s6Step378HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step378HeadGvFresh,arenaWires]
  · norm_num [s6Step378HeadGvBefore,s6Step378HeadFAfter,s6Step378HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step378HeadGvAfter,s6Step378HeadGvBefore,s6Step378HeadFAfter,s6Step378HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step378HeadGv_checked : planRowResizeLog s6Step378HeadGvBefore s6Step378HeadGvRow 206 s6Step378HeadGvFresh=
    some (s6Step378HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩,growRow 775 s6Step378HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step378HeadGvBefore s6Step378HeadGvAfter s6Step378HeadGvRow 206 s6Step378HeadGvFresh
    s6Step378HeadGv_distinct s6Step378HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step378HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step378HeadGvRow.payload++s6Step378HeadGvFresh) s6Step378HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step378HeadBank_rows : planWindowRowsLog s6Step378HeadGBefore [(s6Step378HeadGRow,83),(s6Step378HeadFRow,83),(s6Step378HeadGvRow,206),(s6Step378HeadFvRow,206)] [s6Step378HeadGFresh,s6Step378HeadFFresh,s6Step378HeadGvFresh,s6Step378HeadFvFresh]=
    some (s6Step378HeadFvAfter,[s6Step378HeadGOut,s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut],(growRow 777 s6Step378HeadGFresh ++ (growRow 795 s6Step378HeadFFresh ++ (growRow 775 s6Step378HeadGvFresh ++ (growRow 776 s6Step378HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step378HeadFvAfter [] []=some (s6Step378HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step378HeadFvBefore s6Step378HeadFvAfter s6Step378HeadFvAfter
    s6Step378HeadFvRow s6Step378HeadFvOut 206 s6Step378HeadFvFresh [] [] []
    (growRow 776 s6Step378HeadFvFresh) ([]) s6Step378HeadFv_Incoming s6Step378HeadFv_checked h4 s6Step378HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step378HeadGvBefore s6Step378HeadGvAfter s6Step378HeadFvAfter
    s6Step378HeadGvRow s6Step378HeadGvOut 206 s6Step378HeadGvFresh [(s6Step378HeadFvRow,206)] [s6Step378HeadFvFresh] [s6Step378HeadFvOut]
    (growRow 775 s6Step378HeadGvFresh) ((growRow 776 s6Step378HeadFvFresh ++ [])) s6Step378HeadGv_Incoming s6Step378HeadGv_checked h3 s6Step378HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step378HeadFBefore s6Step378HeadFAfter s6Step378HeadFvAfter
    s6Step378HeadFRow s6Step378HeadFOut 83 s6Step378HeadFFresh [(s6Step378HeadGvRow,206),(s6Step378HeadFvRow,206)] [s6Step378HeadGvFresh,s6Step378HeadFvFresh] [s6Step378HeadGvOut,s6Step378HeadFvOut]
    (growRow 795 s6Step378HeadFFresh) ((growRow 775 s6Step378HeadGvFresh ++ (growRow 776 s6Step378HeadFvFresh ++ []))) s6Step378HeadF_Incoming s6Step378HeadF_checked h2 s6Step378HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step378HeadGBefore s6Step378HeadGAfter s6Step378HeadFvAfter
    s6Step378HeadGRow s6Step378HeadGOut 83 s6Step378HeadGFresh [(s6Step378HeadFRow,83),(s6Step378HeadGvRow,206),(s6Step378HeadFvRow,206)] [s6Step378HeadFFresh,s6Step378HeadGvFresh,s6Step378HeadFvFresh] [s6Step378HeadFOut,s6Step378HeadGvOut,s6Step378HeadFvOut]
    (growRow 777 s6Step378HeadGFresh) ((growRow 795 s6Step378HeadFFresh ++ (growRow 775 s6Step378HeadGvFresh ++ (growRow 776 s6Step378HeadFvFresh ++ [])))) s6Step378HeadG_Incoming s6Step378HeadG_checked h1 s6Step378HeadG_Outgoing
  exact h0

private theorem s6Step378HeadBank_checked : compileHmrBankResizeLog .headroom s6Step378HeadGBefore ⟨s6Step378HeadFRow,s6Step378HeadGRow,s6Step378HeadFvRow,s6Step378HeadGvRow⟩ ⟨83,83,206,206⟩ [s6Step378HeadGFresh,s6Step378HeadFFresh,s6Step378HeadGvFresh,s6Step378HeadFvFresh]=
    some (s6Step378HeadFvAfter,⟨s6Step378HeadFOut,s6Step378HeadGOut,s6Step378HeadFvOut,s6Step378HeadGvOut⟩,(growRow 777 s6Step378HeadGFresh ++ (growRow 795 s6Step378HeadFFresh ++ (growRow 775 s6Step378HeadGvFresh ++ (growRow 776 s6Step378HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step378HeadBank_rows]
  rfl

private theorem s6Step378Front_checked : compileHmrSourceFrontLog s6Step378EntryFBefore s6Step378FrontBank 82 205 ⟨82,82,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step378FrontLog=some s6Step378FrontPlan := by
  have pairEq : s6Step378FrontPair=⟨s6Step378HeadFRow,s6Step378HeadGRow,s6Step378HeadFvRow,s6Step378HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step378FrontHead=⟨s6Step378ExitFRow,s6Step378ExitGRow,s6Step378ExitFvRow,s6Step378ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step378Add0A=s6Step378FrontHead.f.wires := by decide +kernel
  have gEq : s6Step378Add0B=s6Step378FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step378Add1A=s6Step378FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step378Add1B=s6Step378FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step378EntryFBefore s6Step378FrontBank 82 205 ⟨82,82,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step378FrontLog s6Step378FrontPlan
  · exact s6Step378Front_entry
  · exact s6Step378EntryBank_checked
  · exact s6Step378Front_sigma
  · rfl
  · exact s6Step378Front_branch
  · rfl
  · simpa only [s6Step378FrontPlan,pairEq] using s6Step378HeadBank_checked
  · simpa only [s6Step378FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step378F4_checked
  · exact s6Step378Counter_checked
  · rfl
  · simpa only [s6Step378FrontPlan,headEq] using s6Step378ExitBank_checked

private theorem s6Step378Complete_explicit_checked : compileHmrEarlyStepLog s6Step378EntryFBefore s6Step378FrontBank 82 205 ⟨82,82,205,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step378CompleteLog=some s6Step378CompletePlan := by
  let Q := s6Step378EarlyControlPlan
  have hq := s6Step378EarlyControl_plan_checked
  have fv1 : s6Step378CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step378CompleteOut.fv.payload[2]?.getD s6Step378CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step378CompleteOut.fv.payload[3]?.getD s6Step378CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step378CompleteOut.fv.payload[4]?.getD s6Step378CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step378EntryFBefore s6Step378EarlyControlArena s6Step378FrontBank 82 205 ⟨82,82,205,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step378CompleteLog s6Step378FrontPlan Q
    s6Step378Front_checked s6Step378Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step378Complete_owned s6Step378Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step378EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 890 s6Step378CompleteOut.fv.second (s6Step378CompleteOut.fv.payload[2]?.getD s6Step378CompleteOut.fv.sign) (s6Step378CompleteOut.fv.payload[3]?.getD s6Step378CompleteOut.fv.sign) (s6Step378CompleteOut.fv.payload[4]?.getD s6Step378CompleteOut.fv.sign) 908 60 s6Step378EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep378Arena : Arena := s6Step378EntryFBefore
def s6PrivateStep378Bank : WindowBank := s6Step378FrontBank
def s6PrivateStep378Spec : HmrSourceWalkStepLog := ⟨82,205,⟨82,82,205,205⟩,60,.early s6Step378CompleteLog⟩
def s6PrivateStep378Plan : HmrSourceStepPlan := .early s6Step378CompletePlan
theorem s6PrivateStep378_source : s6PrivateStep378Spec=s6ObservedLogs368[10] := rfl
theorem s6PrivateStep378_checked : compileHmrSourceStepLog s6PrivateStep378Arena s6PrivateStep378Bank
    s6PrivateStep378Spec.fgWidth s6PrivateStep378Spec.vWidth s6PrivateStep378Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 378 s6PrivateStep378Spec.need none s6PrivateStep378Spec.log=some s6PrivateStep378Plan := by
  change compileHmrSourceStepLog s6Step378EntryFBefore s6Step378FrontBank 82 205 ⟨82,82,205,205⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 378 60 none (.early s6Step378CompleteLog)=some (.early s6Step378CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 378<498)]
  rw [s6Step378Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
