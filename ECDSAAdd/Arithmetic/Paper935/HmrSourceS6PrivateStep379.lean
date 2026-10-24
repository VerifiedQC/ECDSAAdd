import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep377
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

private def s6Step379CompleteMoves : List (Wire × Wire) := [(850,81)]

private def s6Step379EarlyControlLog : HmrEarlyControlLog := ⟨[850, 814, 863, 876, 818],[839],[857],[821, 843, 877, 792, 816, 819],[]⟩

private def s6Step379FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[876], [863], [814], [786]],[[], [], [], []]⟩,[908],[890],[818],[839],[857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[818, 839, 857, 821]⟩

private def s6Step379CompleteLog : HmrEarlyStepLog := ⟨s6Step379FrontLog,s6Step379CompleteMoves,s6Step379EarlyControlLog⟩

private def s6Step379ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step379ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step379ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩

private def s6Step379ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step379FrontOut : WindowBank := ⟨s6Step379ExitFOut,s6Step379ExitGOut,s6Step379ExitFvOut,s6Step379ExitGvOut⟩

private def s6Step379CompleteOut : WindowBank := s6Step379FrontOut.repacked s6Step379CompleteMoves

private def s6Step379EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step379EarlyControlPositiveArena,[839],s6Step379EarlyControlEqualityArena,[857],⟨⟨908,false⟩,[⟨⟨839,false⟩,857⟩]⟩⟩

private def s6Step379EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,850⟩,⟨⟨772,false⟩,814⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step379EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step379EarlyControlZeroArena,s6Step379EarlyControlZeroPlan,s6Step379EarlyControlClassPlan,s6Step379EarlyControlFlagArena,s6Step379EarlyControlFittedArena,s6Step379EarlyControlHistoryArena,s6Step379EarlyControlSigmaArena,s6Step379EarlyControlOutputArena,s6Step379EarlyControlLog⟩

private def s6Step379CounterWork : List Wire := [818, 839, 857, 821]

private theorem s6Step379Counter_bounded : s6Step379CounterWork.toFinset⊆arenaWires := by norm_num [s6Step379CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step379HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379CounterDuring : Arena := ⟨s6Step379HeadFvAfter.live∪s6Step379CounterWork.toFinset,Finset.union_subset s6Step379HeadFvAfter.bounded s6Step379Counter_bounded⟩

private def s6Step379EntryFFresh : List Wire := []

private def s6Step379EntryFvFresh : List Wire := []

private def s6Step379EntryGFresh : List Wire := []

private def s6Step379EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379EntryGvAfter : Arena := s6Step379EntryFBefore

private def s6Step379EntryGvFresh : List Wire := []

private def s6Step379ExitFExtra : List Wire := [863]

private def s6Step379ExitGExtra : List Wire := [81, 876]

private def s6Step379ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379ExitGvExtra : List Wire := [814]

private def s6Step379Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379Add0Work : List Wire := [857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step379Add0_bounded : s6Step379Add0Work.toFinset⊆arenaWires := by
  have h : s6Step379Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step379Add0During : Arena := ⟨s6Step379Add0Arena.live∪s6Step379Add0Work.toFinset,Finset.union_subset s6Step379Add0Arena.bounded s6Step379Add0_bounded⟩

private def s6Step379Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379Add1Work : List Wire := [857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step379Add1_bounded : s6Step379Add1Work.toFinset⊆arenaWires := by
  have h : s6Step379Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step379Add1During : Arena := ⟨s6Step379Add1Arena.live∪s6Step379Add1Work.toFinset,Finset.union_subset s6Step379Add1Arena.bounded s6Step379Add1_bounded⟩

private def s6Step379F4FlagArena : Arena := ⟨s6Step379HeadFvAfter.live∪{818},Finset.union_subset s6Step379HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step379F4Plan : HmrHybridF4Plan := ⟨s6Step379F4FlagArena,[818],s6Step379Add0Arena,[839],s6Step379Add0During,s6Step379Add0Work,s6Step379Add1During,s6Step379Add1Work⟩

private def s6Step379HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 863],795⟩

private def s6Step379HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step379HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 876],777⟩

private def s6Step379HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 814],775⟩

private def s6Step379FrontHead : WindowBank := ⟨s6Step379HeadFOut,s6Step379HeadGOut,s6Step379HeadFvOut,s6Step379HeadGvOut⟩

private def s6Step379EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step379EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step379EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step379EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step379FrontPair : WindowBank := ⟨s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut⟩

private def s6Step379FrontSigmaArena : Arena := ⟨s6Step379EntryGvAfter.live∪{908},Finset.union_subset s6Step379EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step379HeadFFresh : List Wire := [863]

private def s6Step379HeadFvFresh : List Wire := [786]

private def s6Step379HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379HeadGFresh : List Wire := [876]

private def s6Step379HeadGvFresh : List Wire := [814]

private def s6Step379FrontPlan : HmrSourceFront := ⟨s6Step379EntryGvAfter,s6Step379FrontPair,(growRow 795 s6Step379EntryFFresh ++ (growRow 777 s6Step379EntryGFresh ++ (growRow 776 s6Step379EntryFvFresh ++ (growRow 775 s6Step379EntryGvFresh ++ [])))),s6Step379FrontSigmaArena,[908],s6Step379HeadGBefore,[890],
  s6Step379HeadFvAfter,s6Step379FrontHead,(growRow 777 s6Step379HeadGFresh ++ (growRow 795 s6Step379HeadFFresh ++ (growRow 775 s6Step379HeadGvFresh ++ (growRow 776 s6Step379HeadFvFresh ++ [])))),s6Step379F4Plan,s6Step379CounterDuring,s6Step379CounterWork,s6Step379ExitGvAfter,s6Step379FrontOut,(shrinkRow 777 s6Step379ExitGExtra ++ (shrinkRow 795 s6Step379ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step379ExitGvExtra ++ []))))⟩

private def s6Step379CompletePlan : HmrEarlyStepPlan := ⟨s6Step379FrontPlan,s6Step379EarlyControlArena,s6Step379EarlyControlPlan,s6Step379CompleteMoves⟩

private theorem s6Step379Complete_apart : List.Disjoint (s6Step379CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step379CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step379Complete_owned : (s6Step379CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step379CompleteMoveArena : Arena := ⟨s6Step379ExitGvAfter.live∪{81},Finset.union_subset s6Step379ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step379Complete_repack : s6Step379ExitGvAfter.checkRepack s6Step379CompleteMoves=some s6Step379EarlyControlArena := by
  have owned : 850∈s6Step379ExitGvAfter.live := by norm_num [s6Step379ExitGvAfter,arenaWires]
  have reserve : s6Step379ExitGvAfter.reserve {81}=some s6Step379CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step379ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step379CompleteMoveArena.retireSet {850}=s6Step379EarlyControlArena := by
    unfold Arena.retireSet s6Step379EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step379CompleteMoveArena,s6Step379ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step379CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step379CompleteMoveArena.retireSet {850}).checkRepack []=some s6Step379EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step379EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step379EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_branch : compileHmrBranchRetirement s6Step379EarlyControlSigmaArena 890=some s6Step379EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step379EarlyControl_branchOwned
  · ext q
    simp [s6Step379EarlyControlOutputArena,s6Step379EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step379EarlyControl_classEqualityBorrow : s6Step379EarlyControlPositiveArena.checkBorrow (([908, 839] : List Wire).length-1) s6Step379EarlyControlLog.classWork=some s6Step379EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step379EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step379EarlyControlEqualityArena,s6Step379EarlyControlPositiveArena,s6Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step379EarlyControl_classEqualityOwned : ([908, 839] : List Wire).toFinset⊆s6Step379EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_classEquality : compileHmrEqualityLog s6Step379EarlyControlPositiveArena [908, 839] 0 s6Step379EarlyControlLog.classWork=some (s6Step379EarlyControlEqualityArena,s6Step379EarlyControlLog.classWork,s6Step379EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step379EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step379EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step379EarlyControl_classOwned : ([769, 818, 908] : List Wire).toFinset⊆s6Step379EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_positiveBorrow : s6Step379EarlyControlZeroArena.checkBorrow (1) s6Step379EarlyControlLog.positiveWork=some s6Step379EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step379EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step379EarlyControlPositiveArena,s6Step379EarlyControlZeroArena,s6Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step379EarlyControl_class : compileHmrSourceClassLog s6Step379EarlyControlZeroArena false 769 s6Step379EarlyControlZeroPlan.top 0 908 s6Step379EarlyControlLog.positiveWork s6Step379EarlyControlLog.classWork=some s6Step379EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step379EarlyControlClassPlan s6Step379EarlyControlZeroArena false 769 s6Step379EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step379EarlyControl_classOwned
  · exact s6Step379EarlyControl_positiveBorrow
  · exact s6Step379EarlyControl_classEquality

private theorem s6Step379EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_fitBorrow : s6Step379EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step379EarlyControlLog.recordFresh=some s6Step379EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step379EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step379EarlyControlFittedArena,s6Step379EarlyControlFlagArena,s6Step379EarlyControlLog,arenaWires]

private theorem s6Step379EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step379EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_fit : compileHmrRecordGrowLog s6Step379EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step379EarlyControlLog.recordFresh=some s6Step379EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step379EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step379EarlyControl_fitBorrow

private theorem s6Step379EarlyControl_flagsBorrow : s6Step379EarlyControlEqualityArena.checkBorrow (6) s6Step379EarlyControlLog.flagWork=some s6Step379EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step379EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step379EarlyControlFlagArena,s6Step379EarlyControlEqualityArena,s6Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step379EarlyControl_flagsOwned : ([857, 253, 252, 251] : List Wire).toFinset⊆s6Step379EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_flags : compileHmrFlagsLog s6Step379EarlyControlClassPlan.equalityArena s6Step379EarlyControlClassPlan.equality.top 253 252 251 s6Step379EarlyControlLog.flagWork=some s6Step379EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step379EarlyControl_flagsOwned⟩
  · exact s6Step379EarlyControl_flagsBorrow

private theorem s6Step379EarlyControl_historyBorrow : s6Step379EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step379EarlyControlLog.recordFresh=some s6Step379EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step379EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step379EarlyControlHistoryArena,s6Step379EarlyControlArena,s6Step379EarlyControlLog,arenaWires]

private theorem s6Step379EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_history : compileHmrRecordGrowLog s6Step379EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step379EarlyControlLog.recordFresh=some s6Step379EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step379EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step379EarlyControl_historyBorrow

private theorem s6Step379EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step379EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step379EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_sigmaRelease : s6Step379EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step379EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step379EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step379EarlyControlSigmaArena,s6Step379EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step379EarlyControl_sigma : compileHmrSigmaDropLog s6Step379EarlyControlHistoryArena false 0 0 254 908 []=some s6Step379EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step379EarlyControl_sigmaOwned⟩
  · exact s6Step379EarlyControl_sigmaRelease

private theorem s6Step379EarlyControl_zeroBorrow : s6Step379EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step379EarlyControlLog.zeroWork=some s6Step379EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step379EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step379EarlyControlZeroArena,s6Step379EarlyControlArena,s6Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step379EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step379EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EarlyControl_zero : compileHmrEqualityLog s6Step379EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step379EarlyControlLog.zeroWork=some (s6Step379EarlyControlZeroArena,s6Step379EarlyControlLog.zeroWork,s6Step379EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step379EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step379EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step379EarlyControl_logged : s6Step379EarlyControlPlan.Logged s6Step379EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step379EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step379EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step379EarlyControl_zero
  · exact s6Step379EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step379EarlyControl_flags
  · exact s6Step379EarlyControl_fit
  · exact s6Step379EarlyControl_history
  · exact s6Step379EarlyControl_sigma
  · exact s6Step379EarlyControl_branch

private theorem s6Step379EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step379EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 s6Step379EarlyControlLog=some s6Step379EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step379EarlyControlPlan s6Step379EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 s6Step379EarlyControl_logged

private def s6Step379EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step379EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step379EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step379EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step379FrontBank : WindowBank := ⟨s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow⟩

private def s6Step379Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 863, 795]

private def s6Step379Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 876, 777]

private def s6Step379Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 776]

private def s6Step379Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 814, 775]

private theorem s6Step379Counter_apart : Disjoint s6Step379HeadFvAfter.live s6Step379CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step379HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379Counter_borrowed : s6Step379HeadFvAfter.checkBorrow 4 s6Step379CounterWork=some s6Step379CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step379HeadFvAfter s6Step379CounterDuring s6Step379CounterWork.toFinset s6Step379Counter_bounded s6Step379Counter_apart rfl

private theorem s6Step379Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step379HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step379HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379Counter_checked : compileHmrCounterStepLog s6Step379HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step379CounterWork=some s6Step379CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step379HeadFvAfter.live := fun q hq => s6Step379Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step379Counter_borrowed

private def s6Step379EntryFAfter : Arena := s6Step379EntryFBefore

private theorem s6Step379EntryBank_incomingDistinct : ([s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379EntryF_Incoming : rowsOwned s6Step379EntryFBefore [s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow] 0 s6Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379EntryBank_outgoingOwned : rowsOwned s6Step379EntryGvAfter [s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step379EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379EntryF_Outgoing : rowsOwned s6Step379EntryGvAfter [s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut] :=
  hmrRows_owned_drop s6Step379EntryGvAfter [s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut] 0 s6Step379EntryBank_outgoingOwned

private theorem s6Step379EntryF_distinct : (s6Step379EntryFRow.sign::s6Step379EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379EntryF_owned : (s6Step379EntryFRow.sign::s6Step379EntryFRow.payload).toFinset⊆s6Step379EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EntryF_reserved : s6Step379EntryFBefore.reserve s6Step379EntryFFresh.toFinset=some s6Step379EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379EntryFFresh,arenaWires]
  · norm_num [s6Step379EntryFBefore,s6Step379EntryFFresh,arenaWires]
  · simp only [s6Step379EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step379EntryF_checked : planRowResizeLog s6Step379EntryFBefore s6Step379EntryFRow 82 s6Step379EntryFFresh=
    some (s6Step379EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩,growRow 795 s6Step379EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step379EntryFBefore s6Step379EntryFAfter s6Step379EntryFRow 82 s6Step379EntryFFresh
    s6Step379EntryF_distinct s6Step379EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379EntryF_reserved
  have rowEq : WindowRow.mk (s6Step379EntryFRow.payload++s6Step379EntryFFresh) s6Step379EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step379EntryFvAfter : Arena := s6Step379EntryFBefore

private def s6Step379EntryFvBefore : Arena := s6Step379EntryFBefore

private theorem s6Step379EntryFv_Incoming : rowsOwned s6Step379EntryFvBefore [s6Step379EntryFvRow,s6Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow] 2 s6Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379EntryFv_Outgoing : rowsOwned s6Step379EntryGvAfter [s6Step379EntryFvOut,s6Step379EntryGvOut] :=
  hmrRows_owned_drop s6Step379EntryGvAfter [s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut] 2 s6Step379EntryBank_outgoingOwned

private theorem s6Step379EntryFv_distinct : (s6Step379EntryFvRow.sign::s6Step379EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379EntryFv_owned : (s6Step379EntryFvRow.sign::s6Step379EntryFvRow.payload).toFinset⊆s6Step379EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EntryFv_reserved : s6Step379EntryFvBefore.reserve s6Step379EntryFvFresh.toFinset=some s6Step379EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379EntryFvFresh,arenaWires]
  · norm_num [s6Step379EntryFvBefore,s6Step379EntryFBefore,s6Step379EntryFvFresh,arenaWires]
  · simp only [s6Step379EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step379EntryFv_checked : planRowResizeLog s6Step379EntryFvBefore s6Step379EntryFvRow 205 s6Step379EntryFvFresh=
    some (s6Step379EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩,growRow 776 s6Step379EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step379EntryFvBefore s6Step379EntryFvAfter s6Step379EntryFvRow 205 s6Step379EntryFvFresh
    s6Step379EntryFv_distinct s6Step379EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step379EntryFvRow.payload++s6Step379EntryFvFresh) s6Step379EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step379EntryGAfter : Arena := s6Step379EntryFBefore

private def s6Step379EntryGBefore : Arena := s6Step379EntryFBefore

private theorem s6Step379EntryG_Incoming : rowsOwned s6Step379EntryGBefore [s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow] 1 s6Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379EntryG_Outgoing : rowsOwned s6Step379EntryGvAfter [s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut] :=
  hmrRows_owned_drop s6Step379EntryGvAfter [s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut] 1 s6Step379EntryBank_outgoingOwned

private theorem s6Step379EntryG_distinct : (s6Step379EntryGRow.sign::s6Step379EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379EntryG_owned : (s6Step379EntryGRow.sign::s6Step379EntryGRow.payload).toFinset⊆s6Step379EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EntryG_reserved : s6Step379EntryGBefore.reserve s6Step379EntryGFresh.toFinset=some s6Step379EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379EntryGFresh,arenaWires]
  · norm_num [s6Step379EntryGBefore,s6Step379EntryFBefore,s6Step379EntryGFresh,arenaWires]
  · simp only [s6Step379EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step379EntryG_checked : planRowResizeLog s6Step379EntryGBefore s6Step379EntryGRow 82 s6Step379EntryGFresh=
    some (s6Step379EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩,growRow 777 s6Step379EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step379EntryGBefore s6Step379EntryGAfter s6Step379EntryGRow 82 s6Step379EntryGFresh
    s6Step379EntryG_distinct s6Step379EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379EntryG_reserved
  have rowEq : WindowRow.mk (s6Step379EntryGRow.payload++s6Step379EntryGFresh) s6Step379EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step379EntryGvBefore : Arena := s6Step379EntryFBefore

private theorem s6Step379EntryGv_Incoming : rowsOwned s6Step379EntryGvBefore [s6Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow] 3 s6Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379EntryGv_Outgoing : rowsOwned s6Step379EntryGvAfter [s6Step379EntryGvOut] :=
  hmrRows_owned_drop s6Step379EntryGvAfter [s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut] 3 s6Step379EntryBank_outgoingOwned

private theorem s6Step379EntryGv_distinct : (s6Step379EntryGvRow.sign::s6Step379EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379EntryGv_owned : (s6Step379EntryGvRow.sign::s6Step379EntryGvRow.payload).toFinset⊆s6Step379EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379EntryGv_reserved : s6Step379EntryGvBefore.reserve s6Step379EntryGvFresh.toFinset=some s6Step379EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379EntryGvFresh,arenaWires]
  · norm_num [s6Step379EntryGvBefore,s6Step379EntryFBefore,s6Step379EntryGvFresh,arenaWires]
  · simp only [s6Step379EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step379EntryGv_checked : planRowResizeLog s6Step379EntryGvBefore s6Step379EntryGvRow 205 s6Step379EntryGvFresh=
    some (s6Step379EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩,growRow 775 s6Step379EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step379EntryGvBefore s6Step379EntryGvAfter s6Step379EntryGvRow 205 s6Step379EntryGvFresh
    s6Step379EntryGv_distinct s6Step379EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step379EntryGvRow.payload++s6Step379EntryGvFresh) s6Step379EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step379EntryBank_rows : planWindowRowsLog s6Step379EntryFBefore [(s6Step379EntryFRow,82),(s6Step379EntryGRow,82),(s6Step379EntryFvRow,205),(s6Step379EntryGvRow,205)] [s6Step379EntryFFresh,s6Step379EntryGFresh,s6Step379EntryFvFresh,s6Step379EntryGvFresh]=
    some (s6Step379EntryGvAfter,[s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut],(growRow 795 s6Step379EntryFFresh ++ (growRow 777 s6Step379EntryGFresh ++ (growRow 776 s6Step379EntryFvFresh ++ (growRow 775 s6Step379EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step379EntryGvAfter [] []=some (s6Step379EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step379EntryGvBefore s6Step379EntryGvAfter s6Step379EntryGvAfter
    s6Step379EntryGvRow s6Step379EntryGvOut 205 s6Step379EntryGvFresh [] [] []
    (growRow 775 s6Step379EntryGvFresh) ([]) s6Step379EntryGv_Incoming s6Step379EntryGv_checked h4 s6Step379EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step379EntryFvBefore s6Step379EntryFvAfter s6Step379EntryGvAfter
    s6Step379EntryFvRow s6Step379EntryFvOut 205 s6Step379EntryFvFresh [(s6Step379EntryGvRow,205)] [s6Step379EntryGvFresh] [s6Step379EntryGvOut]
    (growRow 776 s6Step379EntryFvFresh) ((growRow 775 s6Step379EntryGvFresh ++ [])) s6Step379EntryFv_Incoming s6Step379EntryFv_checked h3 s6Step379EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step379EntryGBefore s6Step379EntryGAfter s6Step379EntryGvAfter
    s6Step379EntryGRow s6Step379EntryGOut 82 s6Step379EntryGFresh [(s6Step379EntryFvRow,205),(s6Step379EntryGvRow,205)] [s6Step379EntryFvFresh,s6Step379EntryGvFresh] [s6Step379EntryFvOut,s6Step379EntryGvOut]
    (growRow 777 s6Step379EntryGFresh) ((growRow 776 s6Step379EntryFvFresh ++ (growRow 775 s6Step379EntryGvFresh ++ []))) s6Step379EntryG_Incoming s6Step379EntryG_checked h2 s6Step379EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step379EntryFBefore s6Step379EntryFAfter s6Step379EntryGvAfter
    s6Step379EntryFRow s6Step379EntryFOut 82 s6Step379EntryFFresh [(s6Step379EntryGRow,82),(s6Step379EntryFvRow,205),(s6Step379EntryGvRow,205)] [s6Step379EntryGFresh,s6Step379EntryFvFresh,s6Step379EntryGvFresh] [s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut]
    (growRow 795 s6Step379EntryFFresh) ((growRow 777 s6Step379EntryGFresh ++ (growRow 776 s6Step379EntryFvFresh ++ (growRow 775 s6Step379EntryGvFresh ++ [])))) s6Step379EntryF_Incoming s6Step379EntryF_checked h1 s6Step379EntryF_Outgoing
  exact h0

private theorem s6Step379EntryBank_checked : compileHmrBankResizeLog .entry s6Step379EntryFBefore ⟨s6Step379EntryFRow,s6Step379EntryGRow,s6Step379EntryFvRow,s6Step379EntryGvRow⟩ ⟨82,82,205,205⟩ [s6Step379EntryFFresh,s6Step379EntryGFresh,s6Step379EntryFvFresh,s6Step379EntryGvFresh]=
    some (s6Step379EntryGvAfter,⟨s6Step379EntryFOut,s6Step379EntryGOut,s6Step379EntryFvOut,s6Step379EntryGvOut⟩,(growRow 795 s6Step379EntryFFresh ++ (growRow 777 s6Step379EntryGFresh ++ (growRow 776 s6Step379EntryFvFresh ++ (growRow 775 s6Step379EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step379EntryBank_rows]
  rfl

private def s6Step379ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379ExitFBefore : Arena := s6Step379ExitGAfter

private def s6Step379ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 863],795⟩

private def s6Step379ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step379ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 876],777⟩

private def s6Step379ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 814],775⟩

private theorem s6Step379ExitBank_incomingDistinct : ([s6Step379ExitGRow,s6Step379ExitFRow,s6Step379ExitFvRow,s6Step379ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379ExitF_Incoming : rowsOwned s6Step379ExitFBefore [s6Step379ExitFRow,s6Step379ExitFvRow,s6Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379ExitGRow,s6Step379ExitFRow,s6Step379ExitFvRow,s6Step379ExitGvRow] 1 s6Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379ExitFBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379ExitBank_outgoingOwned : rowsOwned s6Step379ExitGvAfter [s6Step379ExitGOut,s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step379ExitGvAfter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379ExitF_Outgoing : rowsOwned s6Step379ExitGvAfter [s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut] :=
  hmrRows_owned_drop s6Step379ExitGvAfter [s6Step379ExitGOut,s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut] 1 s6Step379ExitBank_outgoingOwned

private theorem s6Step379ExitF_distinct : (s6Step379ExitFRow.sign::s6Step379ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379ExitF_owned : (s6Step379ExitFRow.sign::s6Step379ExitFRow.payload).toFinset⊆s6Step379ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379ExitFBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379ExitF_retired : s6Step379ExitFBefore.retireSet s6Step379ExitFExtra.toFinset=s6Step379ExitFAfter := by
  unfold Arena.retireSet s6Step379ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step379ExitFBefore,s6Step379ExitGAfter,s6Step379ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step379ExitF_checked : planRowResizeLog s6Step379ExitFBefore s6Step379ExitFRow 82 []=
    some (s6Step379ExitFAfter,s6Step379ExitFOut,shrinkRow 795 s6Step379ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step379ExitFBefore s6Step379ExitFRow 82 s6Step379ExitF_distinct s6Step379ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step379ExitFRow.payload.take 82) s6Step379ExitFRow.sign=s6Step379ExitFOut := by decide +kernel
  have hi : s6Step379ExitFRow.payload.drop 82=s6Step379ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step379ExitF_retired] at result
  exact result

private def s6Step379ExitFvAfter : Arena := s6Step379ExitFAfter

private def s6Step379ExitFvBefore : Arena := s6Step379ExitFAfter

private theorem s6Step379ExitFv_Incoming : rowsOwned s6Step379ExitFvBefore [s6Step379ExitFvRow,s6Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379ExitGRow,s6Step379ExitFRow,s6Step379ExitFvRow,s6Step379ExitGvRow] 2 s6Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379ExitFvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379ExitFv_Outgoing : rowsOwned s6Step379ExitGvAfter [s6Step379ExitFvOut,s6Step379ExitGvOut] :=
  hmrRows_owned_drop s6Step379ExitGvAfter [s6Step379ExitGOut,s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut] 2 s6Step379ExitBank_outgoingOwned

private theorem s6Step379ExitFv_distinct : (s6Step379ExitFvRow.sign::s6Step379ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379ExitFv_owned : (s6Step379ExitFvRow.sign::s6Step379ExitFvRow.payload).toFinset⊆s6Step379ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379ExitFvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379ExitFv_reserved : s6Step379ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step379ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step379ExitFv_checked : planRowResizeLog s6Step379ExitFvBefore s6Step379ExitFvRow 206 []=
    some (s6Step379ExitFvAfter,s6Step379ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step379ExitFvBefore s6Step379ExitFvAfter s6Step379ExitFvRow 206 []
    s6Step379ExitFv_distinct s6Step379ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step379ExitFvRow.payload++[]) s6Step379ExitFvRow.sign=s6Step379ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step379ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step379ExitG_Incoming : rowsOwned s6Step379ExitGBefore [s6Step379ExitGRow,s6Step379ExitFRow,s6Step379ExitFvRow,s6Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379ExitGRow,s6Step379ExitFRow,s6Step379ExitFvRow,s6Step379ExitGvRow] 0 s6Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379ExitG_Outgoing : rowsOwned s6Step379ExitGvAfter [s6Step379ExitGOut,s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut] :=
  hmrRows_owned_drop s6Step379ExitGvAfter [s6Step379ExitGOut,s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut] 0 s6Step379ExitBank_outgoingOwned

private theorem s6Step379ExitG_distinct : (s6Step379ExitGRow.sign::s6Step379ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379ExitG_owned : (s6Step379ExitGRow.sign::s6Step379ExitGRow.payload).toFinset⊆s6Step379ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379ExitG_retired : s6Step379ExitGBefore.retireSet s6Step379ExitGExtra.toFinset=s6Step379ExitGAfter := by
  unfold Arena.retireSet s6Step379ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step379ExitGBefore,s6Step379ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step379ExitG_checked : planRowResizeLog s6Step379ExitGBefore s6Step379ExitGRow 81 []=
    some (s6Step379ExitGAfter,s6Step379ExitGOut,shrinkRow 777 s6Step379ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step379ExitGBefore s6Step379ExitGRow 81 s6Step379ExitG_distinct s6Step379ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step379ExitGRow.payload.take 81) s6Step379ExitGRow.sign=s6Step379ExitGOut := by decide +kernel
  have hi : s6Step379ExitGRow.payload.drop 81=s6Step379ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step379ExitG_retired] at result
  exact result

private def s6Step379ExitGvBefore : Arena := s6Step379ExitFAfter

private theorem s6Step379ExitGv_Incoming : rowsOwned s6Step379ExitGvBefore [s6Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379ExitGRow,s6Step379ExitFRow,s6Step379ExitFvRow,s6Step379ExitGvRow] 3 s6Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379ExitGvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379ExitGv_Outgoing : rowsOwned s6Step379ExitGvAfter [s6Step379ExitGvOut] :=
  hmrRows_owned_drop s6Step379ExitGvAfter [s6Step379ExitGOut,s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut] 3 s6Step379ExitBank_outgoingOwned

private theorem s6Step379ExitGv_distinct : (s6Step379ExitGvRow.sign::s6Step379ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379ExitGv_owned : (s6Step379ExitGvRow.sign::s6Step379ExitGvRow.payload).toFinset⊆s6Step379ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379ExitGvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379ExitGv_retired : s6Step379ExitGvBefore.retireSet s6Step379ExitGvExtra.toFinset=s6Step379ExitGvAfter := by
  unfold Arena.retireSet s6Step379ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step379ExitGvBefore,s6Step379ExitFAfter,s6Step379ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step379ExitGv_checked : planRowResizeLog s6Step379ExitGvBefore s6Step379ExitGvRow 205 []=
    some (s6Step379ExitGvAfter,s6Step379ExitGvOut,shrinkRow 775 s6Step379ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step379ExitGvBefore s6Step379ExitGvRow 205 s6Step379ExitGv_distinct s6Step379ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step379ExitGvRow.payload.take 205) s6Step379ExitGvRow.sign=s6Step379ExitGvOut := by decide +kernel
  have hi : s6Step379ExitGvRow.payload.drop 205=s6Step379ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step379ExitGv_retired] at result
  exact result

private theorem s6Step379ExitBank_rows : planWindowRowsLog s6Step379ExitGBefore [(s6Step379ExitGRow,81),(s6Step379ExitFRow,82),(s6Step379ExitFvRow,206),(s6Step379ExitGvRow,205)] [[],[],[],[]]=
    some (s6Step379ExitGvAfter,[s6Step379ExitGOut,s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut],(shrinkRow 777 s6Step379ExitGExtra ++ (shrinkRow 795 s6Step379ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step379ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step379ExitGvAfter [] []=some (s6Step379ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step379ExitGvBefore s6Step379ExitGvAfter s6Step379ExitGvAfter
    s6Step379ExitGvRow s6Step379ExitGvOut 205 [] [] [] []
    (shrinkRow 775 s6Step379ExitGvExtra) ([]) s6Step379ExitGv_Incoming s6Step379ExitGv_checked h4 s6Step379ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step379ExitFvBefore s6Step379ExitFvAfter s6Step379ExitGvAfter
    s6Step379ExitFvRow s6Step379ExitFvOut 206 [] [(s6Step379ExitGvRow,205)] [[]] [s6Step379ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step379ExitGvExtra ++ [])) s6Step379ExitFv_Incoming s6Step379ExitFv_checked h3 s6Step379ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step379ExitFBefore s6Step379ExitFAfter s6Step379ExitGvAfter
    s6Step379ExitFRow s6Step379ExitFOut 82 [] [(s6Step379ExitFvRow,206),(s6Step379ExitGvRow,205)] [[],[]] [s6Step379ExitFvOut,s6Step379ExitGvOut]
    (shrinkRow 795 s6Step379ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step379ExitGvExtra ++ []))) s6Step379ExitF_Incoming s6Step379ExitF_checked h2 s6Step379ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step379ExitGBefore s6Step379ExitGAfter s6Step379ExitGvAfter
    s6Step379ExitGRow s6Step379ExitGOut 81 [] [(s6Step379ExitFRow,82),(s6Step379ExitFvRow,206),(s6Step379ExitGvRow,205)] [[],[],[]] [s6Step379ExitFOut,s6Step379ExitFvOut,s6Step379ExitGvOut]
    (shrinkRow 777 s6Step379ExitGExtra) ((shrinkRow 795 s6Step379ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step379ExitGvExtra ++ [])))) s6Step379ExitG_Incoming s6Step379ExitG_checked h1 s6Step379ExitG_Outgoing
  exact h0

private theorem s6Step379ExitBank_checked : compileHmrBankResizeLog .exit s6Step379ExitGBefore ⟨s6Step379ExitFRow,s6Step379ExitGRow,s6Step379ExitFvRow,s6Step379ExitGvRow⟩ ⟨82,81,206,205⟩ [[],[],[],[]]=
    some (s6Step379ExitGvAfter,⟨s6Step379ExitFOut,s6Step379ExitGOut,s6Step379ExitFvOut,s6Step379ExitGvOut⟩,(shrinkRow 777 s6Step379ExitGExtra ++ (shrinkRow 795 s6Step379ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step379ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step379ExitBank_rows]
  rfl

private theorem s6Step379Add0_apart : Disjoint s6Step379Add0Arena.live s6Step379Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step379Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379Add0_card : s6Step379Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step379Add0_borrowed : s6Step379Add0Arena.checkBorrow (hmrHybridCount s6Step379Add0Arena s6Step379Add0B.length) s6Step379Add0Work=some s6Step379Add0During := by
  have len : s6Step379Add0Work.length=hmrHybridCount s6Step379Add0Arena s6Step379Add0B.length := by
    rw [hmrHybridCount,s6Step379Add0_card]
    decide +kernel
  have nd : s6Step379Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step379Add0Arena s6Step379Add0During s6Step379Add0Work.toFinset s6Step379Add0_bounded s6Step379Add0_apart rfl

private theorem s6Step379Add0_distinct : (818::890::839::(s6Step379Add0A++s6Step379Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379Add0_owned : (818::890::839::(s6Step379Add0A++s6Step379Add0B)).toFinset⊆s6Step379Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step379Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379Add0_checked : compileHmrHybridCinLog s6Step379Add0Arena 890 818 839 s6Step379Add0A s6Step379Add0B s6Step379Add0Work=some s6Step379Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step379Add0Arena s6Step379Add0During 890 818 839 s6Step379Add0A s6Step379Add0B s6Step379Add0Work
    (by decide +kernel) (by decide +kernel) s6Step379Add0_distinct
    (fun q hq => s6Step379Add0_owned (List.mem_toFinset.mpr hq)) s6Step379Add0_borrowed

private theorem s6Step379Add1_apart : Disjoint s6Step379Add1Arena.live s6Step379Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step379Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379Add1_card : s6Step379Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step379Add1_borrowed : s6Step379Add1Arena.checkBorrow (hmrHybridCount s6Step379Add1Arena s6Step379Add1B.length) s6Step379Add1Work=some s6Step379Add1During := by
  have len : s6Step379Add1Work.length=hmrHybridCount s6Step379Add1Arena s6Step379Add1B.length := by
    rw [hmrHybridCount,s6Step379Add1_card]
    decide +kernel
  have nd : s6Step379Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step379Add1Arena s6Step379Add1During s6Step379Add1Work.toFinset s6Step379Add1_bounded s6Step379Add1_apart rfl

private theorem s6Step379Add1_distinct : (818::890::839::(s6Step379Add1A++s6Step379Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379Add1_owned : (818::890::839::(s6Step379Add1A++s6Step379Add1B)).toFinset⊆s6Step379Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step379Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379Add1_checked : compileHmrHybridCinLog s6Step379Add1Arena 890 818 839 s6Step379Add1A s6Step379Add1B s6Step379Add1Work=some s6Step379Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step379Add1Arena s6Step379Add1During 890 818 839 s6Step379Add1A s6Step379Add1B s6Step379Add1Work
    (by decide +kernel) (by decide +kernel) s6Step379Add1_distinct
    (fun q hq => s6Step379Add1_owned (List.mem_toFinset.mpr hq)) s6Step379Add1_borrowed

private theorem s6Step379F4_apart : Disjoint (s6Step379Add0A++s6Step379Add0B).toFinset (s6Step379Add1A++s6Step379Add1B).toFinset := by
  have nd : ((s6Step379Add0A++s6Step379Add0B)++(s6Step379Add1A++s6Step379Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step379F4_carry : s6Step379F4FlagArena.checkBorrow 1 [839]=some s6Step379Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step379F4FlagArena,s6Step379HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step379F4FlagArena,s6Step379HeadFvAfter,s6Step379Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step379F4_distinct : (908::890::818::839::((s6Step379Add0A++s6Step379Add1A)++(s6Step379Add0B++s6Step379Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379F4_flag : s6Step379HeadFvAfter.checkBorrow 1 [818]=some s6Step379F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step379HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step379F4_owned : (908::890::((s6Step379Add0A++s6Step379Add1A)++(s6Step379Add0B++s6Step379Add1B))).toFinset⊆s6Step379HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step379HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379F4_checked : compileHmrHybridF4Log s6Step379HeadFvAfter 908 890 s6Step379Add0A s6Step379Add0B s6Step379Add1A s6Step379Add1B [818] [839] s6Step379Add0Work s6Step379Add1Work=some s6Step379F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step379HeadFvAfter s6Step379F4FlagArena s6Step379Add0Arena s6Step379Add0During s6Step379Add1During 908 890
    s6Step379Add0A s6Step379Add0B s6Step379Add1A s6Step379Add1B [818] [839] s6Step379Add0Work s6Step379Add1Work
    (fun q hq => s6Step379F4_owned (List.mem_toFinset.mpr hq)) s6Step379F4_flag s6Step379F4_carry
    s6Step379F4_distinct s6Step379F4_apart s6Step379Add0_checked s6Step379Add1_checked

private theorem s6Step379Front_branch : s6Step379FrontSigmaArena.checkBorrow 1 [890]=some s6Step379HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step379FrontSigmaArena,s6Step379EntryGvAfter,s6Step379EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step379FrontSigmaArena,s6Step379EntryGvAfter,s6Step379EntryFBefore,s6Step379HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step379Front_entry : HmrFrontEntryValid s6Step379EntryFBefore s6Step379FrontBank 82 205 ⟨82,81,206,205⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step379FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step379EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step379EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step379FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step379Front_sigma : s6Step379EntryGvAfter.checkBorrow 1 [908]=some s6Step379FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step379EntryGvAfter,s6Step379EntryFBefore,arenaWires]
  · rfl

private def s6Step379HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379HeadFBefore : Arena := s6Step379HeadGAfter

private def s6Step379HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step379HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step379HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step379HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private theorem s6Step379HeadBank_incomingDistinct : ([s6Step379HeadGRow,s6Step379HeadFRow,s6Step379HeadGvRow,s6Step379HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379HeadF_Incoming : rowsOwned s6Step379HeadFBefore [s6Step379HeadFRow,s6Step379HeadGvRow,s6Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379HeadGRow,s6Step379HeadFRow,s6Step379HeadGvRow,s6Step379HeadFvRow] 1 s6Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379HeadBank_outgoingOwned : rowsOwned s6Step379HeadFvAfter [s6Step379HeadGOut,s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step379HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379HeadF_Outgoing : rowsOwned s6Step379HeadFvAfter [s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut] :=
  hmrRows_owned_drop s6Step379HeadFvAfter [s6Step379HeadGOut,s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut] 1 s6Step379HeadBank_outgoingOwned

private theorem s6Step379HeadF_distinct : (s6Step379HeadFRow.sign::s6Step379HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379HeadF_owned : (s6Step379HeadFRow.sign::s6Step379HeadFRow.payload).toFinset⊆s6Step379HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379HeadF_reserved : s6Step379HeadFBefore.reserve s6Step379HeadFFresh.toFinset=some s6Step379HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379HeadFFresh,arenaWires]
  · norm_num [s6Step379HeadFBefore,s6Step379HeadGAfter,s6Step379HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step379HeadFAfter,s6Step379HeadFBefore,s6Step379HeadGAfter,s6Step379HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step379HeadF_checked : planRowResizeLog s6Step379HeadFBefore s6Step379HeadFRow 83 s6Step379HeadFFresh=
    some (s6Step379HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 863],795⟩,growRow 795 s6Step379HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step379HeadFBefore s6Step379HeadFAfter s6Step379HeadFRow 83 s6Step379HeadFFresh
    s6Step379HeadF_distinct s6Step379HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379HeadF_reserved
  have rowEq : WindowRow.mk (s6Step379HeadFRow.payload++s6Step379HeadFFresh) s6Step379HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 863],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step379HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step379HeadFvBefore : Arena := s6Step379HeadGvAfter

private theorem s6Step379HeadFv_Incoming : rowsOwned s6Step379HeadFvBefore [s6Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379HeadGRow,s6Step379HeadFRow,s6Step379HeadGvRow,s6Step379HeadFvRow] 3 s6Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379HeadFv_Outgoing : rowsOwned s6Step379HeadFvAfter [s6Step379HeadFvOut] :=
  hmrRows_owned_drop s6Step379HeadFvAfter [s6Step379HeadGOut,s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut] 3 s6Step379HeadBank_outgoingOwned

private theorem s6Step379HeadFv_distinct : (s6Step379HeadFvRow.sign::s6Step379HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379HeadFv_owned : (s6Step379HeadFvRow.sign::s6Step379HeadFvRow.payload).toFinset⊆s6Step379HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379HeadFv_reserved : s6Step379HeadFvBefore.reserve s6Step379HeadFvFresh.toFinset=some s6Step379HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379HeadFvFresh,arenaWires]
  · norm_num [s6Step379HeadFvBefore,s6Step379HeadGvAfter,s6Step379HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step379HeadFvAfter,s6Step379HeadFvBefore,s6Step379HeadGvAfter,s6Step379HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step379HeadFv_checked : planRowResizeLog s6Step379HeadFvBefore s6Step379HeadFvRow 206 s6Step379HeadFvFresh=
    some (s6Step379HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩,growRow 776 s6Step379HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step379HeadFvBefore s6Step379HeadFvAfter s6Step379HeadFvRow 206 s6Step379HeadFvFresh
    s6Step379HeadFv_distinct s6Step379HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step379HeadFvRow.payload++s6Step379HeadFvFresh) s6Step379HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step379HeadG_Incoming : rowsOwned s6Step379HeadGBefore [s6Step379HeadGRow,s6Step379HeadFRow,s6Step379HeadGvRow,s6Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379HeadGRow,s6Step379HeadFRow,s6Step379HeadGvRow,s6Step379HeadFvRow] 0 s6Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379HeadG_Outgoing : rowsOwned s6Step379HeadFvAfter [s6Step379HeadGOut,s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut] :=
  hmrRows_owned_drop s6Step379HeadFvAfter [s6Step379HeadGOut,s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut] 0 s6Step379HeadBank_outgoingOwned

private theorem s6Step379HeadG_distinct : (s6Step379HeadGRow.sign::s6Step379HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379HeadG_owned : (s6Step379HeadGRow.sign::s6Step379HeadGRow.payload).toFinset⊆s6Step379HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379HeadG_reserved : s6Step379HeadGBefore.reserve s6Step379HeadGFresh.toFinset=some s6Step379HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379HeadGFresh,arenaWires]
  · norm_num [s6Step379HeadGBefore,s6Step379HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step379HeadGAfter,s6Step379HeadGBefore,s6Step379HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step379HeadG_checked : planRowResizeLog s6Step379HeadGBefore s6Step379HeadGRow 83 s6Step379HeadGFresh=
    some (s6Step379HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 876],777⟩,growRow 777 s6Step379HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step379HeadGBefore s6Step379HeadGAfter s6Step379HeadGRow 83 s6Step379HeadGFresh
    s6Step379HeadG_distinct s6Step379HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379HeadG_reserved
  have rowEq : WindowRow.mk (s6Step379HeadGRow.payload++s6Step379HeadGFresh) s6Step379HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step379HeadGvBefore : Arena := s6Step379HeadFAfter

private theorem s6Step379HeadGv_Incoming : rowsOwned s6Step379HeadGvBefore [s6Step379HeadGvRow,s6Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step379HeadGRow,s6Step379HeadFRow,s6Step379HeadGvRow,s6Step379HeadFvRow] 2 s6Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step379HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step379HeadGv_Outgoing : rowsOwned s6Step379HeadFvAfter [s6Step379HeadGvOut,s6Step379HeadFvOut] :=
  hmrRows_owned_drop s6Step379HeadFvAfter [s6Step379HeadGOut,s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut] 2 s6Step379HeadBank_outgoingOwned

private theorem s6Step379HeadGv_distinct : (s6Step379HeadGvRow.sign::s6Step379HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step379HeadGv_owned : (s6Step379HeadGvRow.sign::s6Step379HeadGvRow.payload).toFinset⊆s6Step379HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step379HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step379HeadGv_reserved : s6Step379HeadGvBefore.reserve s6Step379HeadGvFresh.toFinset=some s6Step379HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step379HeadGvFresh,arenaWires]
  · norm_num [s6Step379HeadGvBefore,s6Step379HeadFAfter,s6Step379HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step379HeadGvAfter,s6Step379HeadGvBefore,s6Step379HeadFAfter,s6Step379HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step379HeadGv_checked : planRowResizeLog s6Step379HeadGvBefore s6Step379HeadGvRow 206 s6Step379HeadGvFresh=
    some (s6Step379HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 814],775⟩,growRow 775 s6Step379HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step379HeadGvBefore s6Step379HeadGvAfter s6Step379HeadGvRow 206 s6Step379HeadGvFresh
    s6Step379HeadGv_distinct s6Step379HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step379HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step379HeadGvRow.payload++s6Step379HeadGvFresh) s6Step379HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 814],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step379HeadBank_rows : planWindowRowsLog s6Step379HeadGBefore [(s6Step379HeadGRow,83),(s6Step379HeadFRow,83),(s6Step379HeadGvRow,206),(s6Step379HeadFvRow,206)] [s6Step379HeadGFresh,s6Step379HeadFFresh,s6Step379HeadGvFresh,s6Step379HeadFvFresh]=
    some (s6Step379HeadFvAfter,[s6Step379HeadGOut,s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut],(growRow 777 s6Step379HeadGFresh ++ (growRow 795 s6Step379HeadFFresh ++ (growRow 775 s6Step379HeadGvFresh ++ (growRow 776 s6Step379HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step379HeadFvAfter [] []=some (s6Step379HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step379HeadFvBefore s6Step379HeadFvAfter s6Step379HeadFvAfter
    s6Step379HeadFvRow s6Step379HeadFvOut 206 s6Step379HeadFvFresh [] [] []
    (growRow 776 s6Step379HeadFvFresh) ([]) s6Step379HeadFv_Incoming s6Step379HeadFv_checked h4 s6Step379HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step379HeadGvBefore s6Step379HeadGvAfter s6Step379HeadFvAfter
    s6Step379HeadGvRow s6Step379HeadGvOut 206 s6Step379HeadGvFresh [(s6Step379HeadFvRow,206)] [s6Step379HeadFvFresh] [s6Step379HeadFvOut]
    (growRow 775 s6Step379HeadGvFresh) ((growRow 776 s6Step379HeadFvFresh ++ [])) s6Step379HeadGv_Incoming s6Step379HeadGv_checked h3 s6Step379HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step379HeadFBefore s6Step379HeadFAfter s6Step379HeadFvAfter
    s6Step379HeadFRow s6Step379HeadFOut 83 s6Step379HeadFFresh [(s6Step379HeadGvRow,206),(s6Step379HeadFvRow,206)] [s6Step379HeadGvFresh,s6Step379HeadFvFresh] [s6Step379HeadGvOut,s6Step379HeadFvOut]
    (growRow 795 s6Step379HeadFFresh) ((growRow 775 s6Step379HeadGvFresh ++ (growRow 776 s6Step379HeadFvFresh ++ []))) s6Step379HeadF_Incoming s6Step379HeadF_checked h2 s6Step379HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step379HeadGBefore s6Step379HeadGAfter s6Step379HeadFvAfter
    s6Step379HeadGRow s6Step379HeadGOut 83 s6Step379HeadGFresh [(s6Step379HeadFRow,83),(s6Step379HeadGvRow,206),(s6Step379HeadFvRow,206)] [s6Step379HeadFFresh,s6Step379HeadGvFresh,s6Step379HeadFvFresh] [s6Step379HeadFOut,s6Step379HeadGvOut,s6Step379HeadFvOut]
    (growRow 777 s6Step379HeadGFresh) ((growRow 795 s6Step379HeadFFresh ++ (growRow 775 s6Step379HeadGvFresh ++ (growRow 776 s6Step379HeadFvFresh ++ [])))) s6Step379HeadG_Incoming s6Step379HeadG_checked h1 s6Step379HeadG_Outgoing
  exact h0

private theorem s6Step379HeadBank_checked : compileHmrBankResizeLog .headroom s6Step379HeadGBefore ⟨s6Step379HeadFRow,s6Step379HeadGRow,s6Step379HeadFvRow,s6Step379HeadGvRow⟩ ⟨83,83,206,206⟩ [s6Step379HeadGFresh,s6Step379HeadFFresh,s6Step379HeadGvFresh,s6Step379HeadFvFresh]=
    some (s6Step379HeadFvAfter,⟨s6Step379HeadFOut,s6Step379HeadGOut,s6Step379HeadFvOut,s6Step379HeadGvOut⟩,(growRow 777 s6Step379HeadGFresh ++ (growRow 795 s6Step379HeadFFresh ++ (growRow 775 s6Step379HeadGvFresh ++ (growRow 776 s6Step379HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step379HeadBank_rows]
  rfl

private theorem s6Step379Front_checked : compileHmrSourceFrontLog s6Step379EntryFBefore s6Step379FrontBank 82 205 ⟨82,81,206,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step379FrontLog=some s6Step379FrontPlan := by
  have pairEq : s6Step379FrontPair=⟨s6Step379HeadFRow,s6Step379HeadGRow,s6Step379HeadFvRow,s6Step379HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step379FrontHead=⟨s6Step379ExitFRow,s6Step379ExitGRow,s6Step379ExitFvRow,s6Step379ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step379Add0A=s6Step379FrontHead.f.wires := by decide +kernel
  have gEq : s6Step379Add0B=s6Step379FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step379Add1A=s6Step379FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step379Add1B=s6Step379FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step379EntryFBefore s6Step379FrontBank 82 205 ⟨82,81,206,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step379FrontLog s6Step379FrontPlan
  · exact s6Step379Front_entry
  · exact s6Step379EntryBank_checked
  · exact s6Step379Front_sigma
  · rfl
  · exact s6Step379Front_branch
  · rfl
  · simpa only [s6Step379FrontPlan,pairEq] using s6Step379HeadBank_checked
  · simpa only [s6Step379FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step379F4_checked
  · exact s6Step379Counter_checked
  · rfl
  · simpa only [s6Step379FrontPlan,headEq] using s6Step379ExitBank_checked

private theorem s6Step379Complete_explicit_checked : compileHmrEarlyStepLog s6Step379EntryFBefore s6Step379FrontBank 82 205 ⟨82,81,206,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step379CompleteLog=some s6Step379CompletePlan := by
  let Q := s6Step379EarlyControlPlan
  have hq := s6Step379EarlyControl_plan_checked
  have fv1 : s6Step379CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step379CompleteOut.fv.payload[2]?.getD s6Step379CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step379CompleteOut.fv.payload[3]?.getD s6Step379CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step379CompleteOut.fv.payload[4]?.getD s6Step379CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step379EntryFBefore s6Step379EarlyControlArena s6Step379FrontBank 82 205 ⟨82,81,206,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step379CompleteLog s6Step379FrontPlan Q
    s6Step379Front_checked s6Step379Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step379Complete_owned s6Step379Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step379EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 s6Step379CompleteOut.fv.second (s6Step379CompleteOut.fv.payload[2]?.getD s6Step379CompleteOut.fv.sign) (s6Step379CompleteOut.fv.payload[3]?.getD s6Step379CompleteOut.fv.sign) (s6Step379CompleteOut.fv.payload[4]?.getD s6Step379CompleteOut.fv.sign) 890 60 s6Step379EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep379Arena : Arena := s6Step379EntryFBefore
def s6PrivateStep379Bank : WindowBank := s6Step379FrontBank
def s6PrivateStep379Spec : HmrSourceWalkStepLog := ⟨82,205,⟨82,81,206,205⟩,60,.early s6Step379CompleteLog⟩
def s6PrivateStep379Plan : HmrSourceStepPlan := .early s6Step379CompletePlan
theorem s6PrivateStep379_source : s6PrivateStep379Spec=s6ObservedLogs368[11] := rfl
theorem s6PrivateStep379_checked : compileHmrSourceStepLog s6PrivateStep379Arena s6PrivateStep379Bank
    s6PrivateStep379Spec.fgWidth s6PrivateStep379Spec.vWidth s6PrivateStep379Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 379 s6PrivateStep379Spec.need none s6PrivateStep379Spec.log=some s6PrivateStep379Plan := by
  change compileHmrSourceStepLog s6Step379EntryFBefore s6Step379FrontBank 82 205 ⟨82,81,206,205⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 379 60 none (.early s6Step379CompleteLog)=some (.early s6Step379CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 379<498)]
  rw [s6Step379Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
