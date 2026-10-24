import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep375
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

private def s6Step377CompleteMoves : List (Wire × Wire) := [(814,82),(786,338)]

private def s6Step377EarlyControlLog : HmrEarlyControlLog := ⟨[786, 814, 876, 863, 818],[839],[857],[821, 843, 877, 792, 816, 819],[]⟩

private def s6Step377FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[839], [818], [876], [863]],[[], [], [], []]⟩,[908],[890],[857],[821],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 821, 843, 877]⟩

private def s6Step377CompleteLog : HmrEarlyStepLog := ⟨s6Step377FrontLog,s6Step377CompleteMoves,s6Step377EarlyControlLog⟩

private def s6Step377ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step377ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step377ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],777⟩

private def s6Step377ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step377FrontOut : WindowBank := ⟨s6Step377ExitFOut,s6Step377ExitGOut,s6Step377ExitFvOut,s6Step377ExitGvOut⟩

private def s6Step377CompleteOut : WindowBank := s6Step377FrontOut.repacked s6Step377CompleteMoves

private def s6Step377EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step377EarlyControlPositiveArena,[839],s6Step377EarlyControlEqualityArena,[857],⟨⟨908,false⟩,[⟨⟨839,false⟩,857⟩]⟩⟩

private def s6Step377EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨772,false⟩,814⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,863⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step377EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step377EarlyControlZeroArena,s6Step377EarlyControlZeroPlan,s6Step377EarlyControlClassPlan,s6Step377EarlyControlFlagArena,s6Step377EarlyControlFittedArena,s6Step377EarlyControlHistoryArena,s6Step377EarlyControlSigmaArena,s6Step377EarlyControlOutputArena,s6Step377EarlyControlLog⟩

private def s6Step377CounterWork : List Wire := [857, 821, 843, 877]

private theorem s6Step377Counter_bounded : s6Step377CounterWork.toFinset⊆arenaWires := by norm_num [s6Step377CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step377HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377CounterDuring : Arena := ⟨s6Step377HeadFvAfter.live∪s6Step377CounterWork.toFinset,Finset.union_subset s6Step377HeadFvAfter.bounded s6Step377Counter_bounded⟩

private def s6Step377EntryFFresh : List Wire := []

private def s6Step377EntryFvFresh : List Wire := []

private def s6Step377EntryGFresh : List Wire := []

private def s6Step377EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377EntryGvAfter : Arena := s6Step377EntryFBefore

private def s6Step377EntryGvFresh : List Wire := []

private def s6Step377ExitFExtra : List Wire := [338, 818]

private def s6Step377ExitFvExtra : List Wire := [863]

private def s6Step377ExitGExtra : List Wire := [82, 839]

private def s6Step377ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377ExitGvExtra : List Wire := [876]

private def s6Step377Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step377Add0_bounded : s6Step377Add0Work.toFinset⊆arenaWires := by
  have h : s6Step377Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step377Add0During : Arena := ⟨s6Step377Add0Arena.live∪s6Step377Add0Work.toFinset,Finset.union_subset s6Step377Add0Arena.bounded s6Step377Add0_bounded⟩

private def s6Step377Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step377Add1_bounded : s6Step377Add1Work.toFinset⊆arenaWires := by
  have h : s6Step377Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step377Add1During : Arena := ⟨s6Step377Add1Arena.live∪s6Step377Add1Work.toFinset,Finset.union_subset s6Step377Add1Arena.bounded s6Step377Add1_bounded⟩

private def s6Step377F4FlagArena : Arena := ⟨s6Step377HeadFvAfter.live∪{857},Finset.union_subset s6Step377HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step377F4Plan : HmrHybridF4Plan := ⟨s6Step377F4FlagArena,[857],s6Step377Add0Arena,[821],s6Step377Add0During,s6Step377Add0Work,s6Step377Add1During,s6Step377Add1Work⟩

private def s6Step377HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 818],795⟩

private def s6Step377HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩

private def s6Step377HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 839],777⟩

private def s6Step377HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩

private def s6Step377FrontHead : WindowBank := ⟨s6Step377HeadFOut,s6Step377HeadGOut,s6Step377HeadFvOut,s6Step377HeadGvOut⟩

private def s6Step377EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338],795⟩

private def s6Step377EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step377EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82],777⟩

private def s6Step377EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step377FrontPair : WindowBank := ⟨s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut⟩

private def s6Step377FrontSigmaArena : Arena := ⟨s6Step377EntryGvAfter.live∪{908},Finset.union_subset s6Step377EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step377HeadFFresh : List Wire := [818]

private def s6Step377HeadFvFresh : List Wire := [863]

private def s6Step377HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377HeadGFresh : List Wire := [839]

private def s6Step377HeadGvFresh : List Wire := [876]

private def s6Step377FrontPlan : HmrSourceFront := ⟨s6Step377EntryGvAfter,s6Step377FrontPair,(growRow 795 s6Step377EntryFFresh ++ (growRow 777 s6Step377EntryGFresh ++ (growRow 776 s6Step377EntryFvFresh ++ (growRow 775 s6Step377EntryGvFresh ++ [])))),s6Step377FrontSigmaArena,[908],s6Step377HeadGBefore,[890],
  s6Step377HeadFvAfter,s6Step377FrontHead,(growRow 777 s6Step377HeadGFresh ++ (growRow 795 s6Step377HeadFFresh ++ (growRow 775 s6Step377HeadGvFresh ++ (growRow 776 s6Step377HeadFvFresh ++ [])))),s6Step377F4Plan,s6Step377CounterDuring,s6Step377CounterWork,s6Step377ExitGvAfter,s6Step377FrontOut,(shrinkRow 777 s6Step377ExitGExtra ++ (shrinkRow 795 s6Step377ExitFExtra ++ (shrinkRow 776 s6Step377ExitFvExtra ++ (shrinkRow 775 s6Step377ExitGvExtra ++ []))))⟩

private def s6Step377CompletePlan : HmrEarlyStepPlan := ⟨s6Step377FrontPlan,s6Step377EarlyControlArena,s6Step377EarlyControlPlan,s6Step377CompleteMoves⟩

private theorem s6Step377Complete_apart : List.Disjoint (s6Step377CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step377CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step377Complete_owned : (s6Step377CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step377EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step377CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,338),(339,782),(783,790),(791,792),(793,797),(799,800),(801,808),(809,814),(815,816),(817,818),(822,832),(833,839),(840,842),(844,857),(858,863),(864,876),(878,896),(897,914),(915,916),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step377CompleteRelocationMove0Borrowed : Arena := ⟨s6Step377ExitGvAfter.live∪{82},Finset.union_subset s6Step377ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step377CompleteRelocationMove1Borrowed : Arena := ⟨s6Step377CompleteRelocationMove0After.live∪{338},Finset.union_subset s6Step377CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step377CompleteRelocation_move0_owned : 814∈s6Step377ExitGvAfter.live := by norm_num [s6Step377ExitGvAfter,arenaWires]

private theorem s6Step377CompleteRelocation_move0_reserve : s6Step377ExitGvAfter.reserve {82}=some s6Step377CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step377ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step377CompleteRelocation_move0_retire : s6Step377CompleteRelocationMove0Borrowed.retireSet {814}=s6Step377CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step377CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step377CompleteRelocationMove0Borrowed,s6Step377ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step377CompleteRelocation_move1_owned : 786∈s6Step377CompleteRelocationMove0After.live := by norm_num [s6Step377CompleteRelocationMove0After,arenaWires]

private theorem s6Step377CompleteRelocation_move1_reserve : s6Step377CompleteRelocationMove0After.reserve {338}=some s6Step377CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step377CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step377CompleteRelocation_move1_retire : s6Step377CompleteRelocationMove1Borrowed.retireSet {786}=s6Step377EarlyControlArena := by
  unfold Arena.retireSet s6Step377EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step377CompleteRelocationMove1Borrowed,s6Step377CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step377CompleteRelocation_checked : s6Step377ExitGvAfter.checkRepack [(814,82),(786,338)]=some s6Step377EarlyControlArena := by
  have tail2 : s6Step377EarlyControlArena.checkRepack []=some s6Step377EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step377CompleteRelocationMove0After s6Step377CompleteRelocationMove1Borrowed s6Step377EarlyControlArena s6Step377EarlyControlArena 786 338 []
    s6Step377CompleteRelocation_move1_owned s6Step377CompleteRelocation_move1_reserve s6Step377CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step377ExitGvAfter s6Step377CompleteRelocationMove0Borrowed s6Step377CompleteRelocationMove0After s6Step377EarlyControlArena 814 82 [(786,338)]
    s6Step377CompleteRelocation_move0_owned s6Step377CompleteRelocation_move0_reserve s6Step377CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step377Complete_repack : s6Step377ExitGvAfter.checkRepack s6Step377CompleteMoves=some s6Step377EarlyControlArena := by
  simpa only [s6Step377CompleteMoves] using s6Step377CompleteRelocation_checked

private theorem s6Step377EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step377EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_branch : compileHmrBranchRetirement s6Step377EarlyControlSigmaArena 890=some s6Step377EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step377EarlyControl_branchOwned
  · ext q
    simp [s6Step377EarlyControlOutputArena,s6Step377EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step377EarlyControl_classEqualityBorrow : s6Step377EarlyControlPositiveArena.checkBorrow (([908, 839] : List Wire).length-1) s6Step377EarlyControlLog.classWork=some s6Step377EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step377EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step377EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step377EarlyControlEqualityArena,s6Step377EarlyControlPositiveArena,s6Step377EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step377EarlyControl_classEqualityOwned : ([908, 839] : List Wire).toFinset⊆s6Step377EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_classEquality : compileHmrEqualityLog s6Step377EarlyControlPositiveArena [908, 839] 0 s6Step377EarlyControlLog.classWork=some (s6Step377EarlyControlEqualityArena,s6Step377EarlyControlLog.classWork,s6Step377EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step377EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step377EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step377EarlyControl_classOwned : ([769, 818, 908] : List Wire).toFinset⊆s6Step377EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_positiveBorrow : s6Step377EarlyControlZeroArena.checkBorrow (1) s6Step377EarlyControlLog.positiveWork=some s6Step377EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step377EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step377EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step377EarlyControlPositiveArena,s6Step377EarlyControlZeroArena,s6Step377EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step377EarlyControl_class : compileHmrSourceClassLog s6Step377EarlyControlZeroArena false 769 s6Step377EarlyControlZeroPlan.top 0 908 s6Step377EarlyControlLog.positiveWork s6Step377EarlyControlLog.classWork=some s6Step377EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step377EarlyControlClassPlan s6Step377EarlyControlZeroArena false 769 s6Step377EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step377EarlyControl_classOwned
  · exact s6Step377EarlyControl_positiveBorrow
  · exact s6Step377EarlyControl_classEquality

private theorem s6Step377EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step377EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step377EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_fitBorrow : s6Step377EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step377EarlyControlLog.recordFresh=some s6Step377EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step377EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step377EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step377EarlyControlFittedArena,s6Step377EarlyControlFlagArena,s6Step377EarlyControlLog,arenaWires]

private theorem s6Step377EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step377EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_fit : compileHmrRecordGrowLog s6Step377EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step377EarlyControlLog.recordFresh=some s6Step377EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step377EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step377EarlyControl_fitBorrow

private theorem s6Step377EarlyControl_flagsBorrow : s6Step377EarlyControlEqualityArena.checkBorrow (6) s6Step377EarlyControlLog.flagWork=some s6Step377EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step377EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step377EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step377EarlyControlFlagArena,s6Step377EarlyControlEqualityArena,s6Step377EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step377EarlyControl_flagsOwned : ([857, 253, 252, 251] : List Wire).toFinset⊆s6Step377EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_flags : compileHmrFlagsLog s6Step377EarlyControlClassPlan.equalityArena s6Step377EarlyControlClassPlan.equality.top 253 252 251 s6Step377EarlyControlLog.flagWork=some s6Step377EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step377EarlyControl_flagsOwned⟩
  · exact s6Step377EarlyControl_flagsBorrow

private theorem s6Step377EarlyControl_historyBorrow : s6Step377EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step377EarlyControlLog.recordFresh=some s6Step377EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step377EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step377EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step377EarlyControlHistoryArena,s6Step377EarlyControlArena,s6Step377EarlyControlLog,arenaWires]

private theorem s6Step377EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step377EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_history : compileHmrRecordGrowLog s6Step377EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step377EarlyControlLog.recordFresh=some s6Step377EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step377EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step377EarlyControl_historyBorrow

private theorem s6Step377EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step377EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step377EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_sigmaRelease : s6Step377EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step377EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step377EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step377EarlyControlSigmaArena,s6Step377EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step377EarlyControl_sigma : compileHmrSigmaDropLog s6Step377EarlyControlHistoryArena false 0 0 254 908 []=some s6Step377EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step377EarlyControl_sigmaOwned⟩
  · exact s6Step377EarlyControl_sigmaRelease

private theorem s6Step377EarlyControl_zeroBorrow : s6Step377EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step377EarlyControlLog.zeroWork=some s6Step377EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step377EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step377EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step377EarlyControlZeroArena,s6Step377EarlyControlArena,s6Step377EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step377EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step377EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step377EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EarlyControl_zero : compileHmrEqualityLog s6Step377EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step377EarlyControlLog.zeroWork=some (s6Step377EarlyControlZeroArena,s6Step377EarlyControlLog.zeroWork,s6Step377EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step377EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step377EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step377EarlyControl_logged : s6Step377EarlyControlPlan.Logged s6Step377EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step377EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step377EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step377EarlyControl_zero
  · exact s6Step377EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step377EarlyControl_flags
  · exact s6Step377EarlyControl_fit
  · exact s6Step377EarlyControl_history
  · exact s6Step377EarlyControl_sigma
  · exact s6Step377EarlyControl_branch

private theorem s6Step377EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step377EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 s6Step377EarlyControlLog=some s6Step377EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step377EarlyControlPlan s6Step377EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 s6Step377EarlyControl_logged

private def s6Step377EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338],795⟩

private def s6Step377EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step377EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82],777⟩

private def s6Step377EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step377FrontBank : WindowBank := ⟨s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow⟩

private def s6Step377Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 818, 795]

private def s6Step377Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 839, 777]

private def s6Step377Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863, 776]

private def s6Step377Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876, 775]

private theorem s6Step377Counter_apart : Disjoint s6Step377HeadFvAfter.live s6Step377CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step377HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377Counter_borrowed : s6Step377HeadFvAfter.checkBorrow 4 s6Step377CounterWork=some s6Step377CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step377HeadFvAfter s6Step377CounterDuring s6Step377CounterWork.toFinset s6Step377Counter_bounded s6Step377Counter_apart rfl

private theorem s6Step377Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step377HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step377HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377Counter_checked : compileHmrCounterStepLog s6Step377HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step377CounterWork=some s6Step377CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step377HeadFvAfter.live := fun q hq => s6Step377Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step377Counter_borrowed

private def s6Step377EntryFAfter : Arena := s6Step377EntryFBefore

private theorem s6Step377EntryBank_incomingDistinct : ([s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377EntryF_Incoming : rowsOwned s6Step377EntryFBefore [s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow] 0 s6Step377EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377EntryBank_outgoingOwned : rowsOwned s6Step377EntryGvAfter [s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step377EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377EntryF_Outgoing : rowsOwned s6Step377EntryGvAfter [s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut] :=
  hmrRows_owned_drop s6Step377EntryGvAfter [s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut] 0 s6Step377EntryBank_outgoingOwned

private theorem s6Step377EntryF_distinct : (s6Step377EntryFRow.sign::s6Step377EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377EntryF_owned : (s6Step377EntryFRow.sign::s6Step377EntryFRow.payload).toFinset⊆s6Step377EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EntryF_reserved : s6Step377EntryFBefore.reserve s6Step377EntryFFresh.toFinset=some s6Step377EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377EntryFFresh,arenaWires]
  · norm_num [s6Step377EntryFBefore,s6Step377EntryFFresh,arenaWires]
  · simp only [s6Step377EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step377EntryF_checked : planRowResizeLog s6Step377EntryFBefore s6Step377EntryFRow 83 s6Step377EntryFFresh=
    some (s6Step377EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338],795⟩,growRow 795 s6Step377EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step377EntryFBefore s6Step377EntryFAfter s6Step377EntryFRow 83 s6Step377EntryFFresh
    s6Step377EntryF_distinct s6Step377EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377EntryF_reserved
  have rowEq : WindowRow.mk (s6Step377EntryFRow.payload++s6Step377EntryFFresh) s6Step377EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step377EntryFvAfter : Arena := s6Step377EntryFBefore

private def s6Step377EntryFvBefore : Arena := s6Step377EntryFBefore

private theorem s6Step377EntryFv_Incoming : rowsOwned s6Step377EntryFvBefore [s6Step377EntryFvRow,s6Step377EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow] 2 s6Step377EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377EntryFv_Outgoing : rowsOwned s6Step377EntryGvAfter [s6Step377EntryFvOut,s6Step377EntryGvOut] :=
  hmrRows_owned_drop s6Step377EntryGvAfter [s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut] 2 s6Step377EntryBank_outgoingOwned

private theorem s6Step377EntryFv_distinct : (s6Step377EntryFvRow.sign::s6Step377EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377EntryFv_owned : (s6Step377EntryFvRow.sign::s6Step377EntryFvRow.payload).toFinset⊆s6Step377EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EntryFv_reserved : s6Step377EntryFvBefore.reserve s6Step377EntryFvFresh.toFinset=some s6Step377EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377EntryFvFresh,arenaWires]
  · norm_num [s6Step377EntryFvBefore,s6Step377EntryFBefore,s6Step377EntryFvFresh,arenaWires]
  · simp only [s6Step377EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step377EntryFv_checked : planRowResizeLog s6Step377EntryFvBefore s6Step377EntryFvRow 205 s6Step377EntryFvFresh=
    some (s6Step377EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩,growRow 776 s6Step377EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step377EntryFvBefore s6Step377EntryFvAfter s6Step377EntryFvRow 205 s6Step377EntryFvFresh
    s6Step377EntryFv_distinct s6Step377EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step377EntryFvRow.payload++s6Step377EntryFvFresh) s6Step377EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step377EntryGAfter : Arena := s6Step377EntryFBefore

private def s6Step377EntryGBefore : Arena := s6Step377EntryFBefore

private theorem s6Step377EntryG_Incoming : rowsOwned s6Step377EntryGBefore [s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow] 1 s6Step377EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377EntryG_Outgoing : rowsOwned s6Step377EntryGvAfter [s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut] :=
  hmrRows_owned_drop s6Step377EntryGvAfter [s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut] 1 s6Step377EntryBank_outgoingOwned

private theorem s6Step377EntryG_distinct : (s6Step377EntryGRow.sign::s6Step377EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377EntryG_owned : (s6Step377EntryGRow.sign::s6Step377EntryGRow.payload).toFinset⊆s6Step377EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EntryG_reserved : s6Step377EntryGBefore.reserve s6Step377EntryGFresh.toFinset=some s6Step377EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377EntryGFresh,arenaWires]
  · norm_num [s6Step377EntryGBefore,s6Step377EntryFBefore,s6Step377EntryGFresh,arenaWires]
  · simp only [s6Step377EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step377EntryG_checked : planRowResizeLog s6Step377EntryGBefore s6Step377EntryGRow 83 s6Step377EntryGFresh=
    some (s6Step377EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82],777⟩,growRow 777 s6Step377EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step377EntryGBefore s6Step377EntryGAfter s6Step377EntryGRow 83 s6Step377EntryGFresh
    s6Step377EntryG_distinct s6Step377EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377EntryG_reserved
  have rowEq : WindowRow.mk (s6Step377EntryGRow.payload++s6Step377EntryGFresh) s6Step377EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step377EntryGvBefore : Arena := s6Step377EntryFBefore

private theorem s6Step377EntryGv_Incoming : rowsOwned s6Step377EntryGvBefore [s6Step377EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow] 3 s6Step377EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377EntryGv_Outgoing : rowsOwned s6Step377EntryGvAfter [s6Step377EntryGvOut] :=
  hmrRows_owned_drop s6Step377EntryGvAfter [s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut] 3 s6Step377EntryBank_outgoingOwned

private theorem s6Step377EntryGv_distinct : (s6Step377EntryGvRow.sign::s6Step377EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377EntryGv_owned : (s6Step377EntryGvRow.sign::s6Step377EntryGvRow.payload).toFinset⊆s6Step377EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377EntryGv_reserved : s6Step377EntryGvBefore.reserve s6Step377EntryGvFresh.toFinset=some s6Step377EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377EntryGvFresh,arenaWires]
  · norm_num [s6Step377EntryGvBefore,s6Step377EntryFBefore,s6Step377EntryGvFresh,arenaWires]
  · simp only [s6Step377EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step377EntryGv_checked : planRowResizeLog s6Step377EntryGvBefore s6Step377EntryGvRow 205 s6Step377EntryGvFresh=
    some (s6Step377EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩,growRow 775 s6Step377EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step377EntryGvBefore s6Step377EntryGvAfter s6Step377EntryGvRow 205 s6Step377EntryGvFresh
    s6Step377EntryGv_distinct s6Step377EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step377EntryGvRow.payload++s6Step377EntryGvFresh) s6Step377EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step377EntryBank_rows : planWindowRowsLog s6Step377EntryFBefore [(s6Step377EntryFRow,83),(s6Step377EntryGRow,83),(s6Step377EntryFvRow,205),(s6Step377EntryGvRow,205)] [s6Step377EntryFFresh,s6Step377EntryGFresh,s6Step377EntryFvFresh,s6Step377EntryGvFresh]=
    some (s6Step377EntryGvAfter,[s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut],(growRow 795 s6Step377EntryFFresh ++ (growRow 777 s6Step377EntryGFresh ++ (growRow 776 s6Step377EntryFvFresh ++ (growRow 775 s6Step377EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step377EntryGvAfter [] []=some (s6Step377EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step377EntryGvBefore s6Step377EntryGvAfter s6Step377EntryGvAfter
    s6Step377EntryGvRow s6Step377EntryGvOut 205 s6Step377EntryGvFresh [] [] []
    (growRow 775 s6Step377EntryGvFresh) ([]) s6Step377EntryGv_Incoming s6Step377EntryGv_checked h4 s6Step377EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step377EntryFvBefore s6Step377EntryFvAfter s6Step377EntryGvAfter
    s6Step377EntryFvRow s6Step377EntryFvOut 205 s6Step377EntryFvFresh [(s6Step377EntryGvRow,205)] [s6Step377EntryGvFresh] [s6Step377EntryGvOut]
    (growRow 776 s6Step377EntryFvFresh) ((growRow 775 s6Step377EntryGvFresh ++ [])) s6Step377EntryFv_Incoming s6Step377EntryFv_checked h3 s6Step377EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step377EntryGBefore s6Step377EntryGAfter s6Step377EntryGvAfter
    s6Step377EntryGRow s6Step377EntryGOut 83 s6Step377EntryGFresh [(s6Step377EntryFvRow,205),(s6Step377EntryGvRow,205)] [s6Step377EntryFvFresh,s6Step377EntryGvFresh] [s6Step377EntryFvOut,s6Step377EntryGvOut]
    (growRow 777 s6Step377EntryGFresh) ((growRow 776 s6Step377EntryFvFresh ++ (growRow 775 s6Step377EntryGvFresh ++ []))) s6Step377EntryG_Incoming s6Step377EntryG_checked h2 s6Step377EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step377EntryFBefore s6Step377EntryFAfter s6Step377EntryGvAfter
    s6Step377EntryFRow s6Step377EntryFOut 83 s6Step377EntryFFresh [(s6Step377EntryGRow,83),(s6Step377EntryFvRow,205),(s6Step377EntryGvRow,205)] [s6Step377EntryGFresh,s6Step377EntryFvFresh,s6Step377EntryGvFresh] [s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut]
    (growRow 795 s6Step377EntryFFresh) ((growRow 777 s6Step377EntryGFresh ++ (growRow 776 s6Step377EntryFvFresh ++ (growRow 775 s6Step377EntryGvFresh ++ [])))) s6Step377EntryF_Incoming s6Step377EntryF_checked h1 s6Step377EntryF_Outgoing
  exact h0

private theorem s6Step377EntryBank_checked : compileHmrBankResizeLog .entry s6Step377EntryFBefore ⟨s6Step377EntryFRow,s6Step377EntryGRow,s6Step377EntryFvRow,s6Step377EntryGvRow⟩ ⟨83,83,205,205⟩ [s6Step377EntryFFresh,s6Step377EntryGFresh,s6Step377EntryFvFresh,s6Step377EntryGvFresh]=
    some (s6Step377EntryGvAfter,⟨s6Step377EntryFOut,s6Step377EntryGOut,s6Step377EntryFvOut,s6Step377EntryGvOut⟩,(growRow 795 s6Step377EntryFFresh ++ (growRow 777 s6Step377EntryGFresh ++ (growRow 776 s6Step377EntryFvFresh ++ (growRow 775 s6Step377EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step377EntryBank_rows]
  rfl

private def s6Step377ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377ExitFBefore : Arena := s6Step377ExitGAfter

private def s6Step377ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 818],795⟩

private def s6Step377ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩

private def s6Step377ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 839],777⟩

private def s6Step377ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩

private theorem s6Step377ExitBank_incomingDistinct : ([s6Step377ExitGRow,s6Step377ExitFRow,s6Step377ExitFvRow,s6Step377ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377ExitF_Incoming : rowsOwned s6Step377ExitFBefore [s6Step377ExitFRow,s6Step377ExitFvRow,s6Step377ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377ExitGRow,s6Step377ExitFRow,s6Step377ExitFvRow,s6Step377ExitGvRow] 1 s6Step377ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377ExitFBefore (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377ExitBank_outgoingOwned : rowsOwned s6Step377ExitGvAfter [s6Step377ExitGOut,s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step377ExitGvAfter (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377ExitF_Outgoing : rowsOwned s6Step377ExitGvAfter [s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut] :=
  hmrRows_owned_drop s6Step377ExitGvAfter [s6Step377ExitGOut,s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut] 1 s6Step377ExitBank_outgoingOwned

private theorem s6Step377ExitF_distinct : (s6Step377ExitFRow.sign::s6Step377ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377ExitF_owned : (s6Step377ExitFRow.sign::s6Step377ExitFRow.payload).toFinset⊆s6Step377ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377ExitFBefore (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377ExitF_retired : s6Step377ExitFBefore.retireSet s6Step377ExitFExtra.toFinset=s6Step377ExitFAfter := by
  unfold Arena.retireSet s6Step377ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step377ExitFBefore,s6Step377ExitGAfter,s6Step377ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step377ExitF_checked : planRowResizeLog s6Step377ExitFBefore s6Step377ExitFRow 82 []=
    some (s6Step377ExitFAfter,s6Step377ExitFOut,shrinkRow 795 s6Step377ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step377ExitFBefore s6Step377ExitFRow 82 s6Step377ExitF_distinct s6Step377ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step377ExitFRow.payload.take 82) s6Step377ExitFRow.sign=s6Step377ExitFOut := by decide +kernel
  have hi : s6Step377ExitFRow.payload.drop 82=s6Step377ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step377ExitF_retired] at result
  exact result

private def s6Step377ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377ExitFvBefore : Arena := s6Step377ExitFAfter

private theorem s6Step377ExitFv_Incoming : rowsOwned s6Step377ExitFvBefore [s6Step377ExitFvRow,s6Step377ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377ExitGRow,s6Step377ExitFRow,s6Step377ExitFvRow,s6Step377ExitGvRow] 2 s6Step377ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377ExitFvBefore (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377ExitFv_Outgoing : rowsOwned s6Step377ExitGvAfter [s6Step377ExitFvOut,s6Step377ExitGvOut] :=
  hmrRows_owned_drop s6Step377ExitGvAfter [s6Step377ExitGOut,s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut] 2 s6Step377ExitBank_outgoingOwned

private theorem s6Step377ExitFv_distinct : (s6Step377ExitFvRow.sign::s6Step377ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377ExitFv_owned : (s6Step377ExitFvRow.sign::s6Step377ExitFvRow.payload).toFinset⊆s6Step377ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377ExitFvBefore (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377ExitFv_retired : s6Step377ExitFvBefore.retireSet s6Step377ExitFvExtra.toFinset=s6Step377ExitFvAfter := by
  unfold Arena.retireSet s6Step377ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step377ExitFvBefore,s6Step377ExitFAfter,s6Step377ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step377ExitFv_checked : planRowResizeLog s6Step377ExitFvBefore s6Step377ExitFvRow 205 []=
    some (s6Step377ExitFvAfter,s6Step377ExitFvOut,shrinkRow 776 s6Step377ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step377ExitFvBefore s6Step377ExitFvRow 205 s6Step377ExitFv_distinct s6Step377ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step377ExitFvRow.payload.take 205) s6Step377ExitFvRow.sign=s6Step377ExitFvOut := by decide +kernel
  have hi : s6Step377ExitFvRow.payload.drop 205=s6Step377ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step377ExitFv_retired] at result
  exact result

private def s6Step377ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step377ExitG_Incoming : rowsOwned s6Step377ExitGBefore [s6Step377ExitGRow,s6Step377ExitFRow,s6Step377ExitFvRow,s6Step377ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377ExitGRow,s6Step377ExitFRow,s6Step377ExitFvRow,s6Step377ExitGvRow] 0 s6Step377ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377ExitG_Outgoing : rowsOwned s6Step377ExitGvAfter [s6Step377ExitGOut,s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut] :=
  hmrRows_owned_drop s6Step377ExitGvAfter [s6Step377ExitGOut,s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut] 0 s6Step377ExitBank_outgoingOwned

private theorem s6Step377ExitG_distinct : (s6Step377ExitGRow.sign::s6Step377ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377ExitG_owned : (s6Step377ExitGRow.sign::s6Step377ExitGRow.payload).toFinset⊆s6Step377ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377ExitG_retired : s6Step377ExitGBefore.retireSet s6Step377ExitGExtra.toFinset=s6Step377ExitGAfter := by
  unfold Arena.retireSet s6Step377ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step377ExitGBefore,s6Step377ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step377ExitG_checked : planRowResizeLog s6Step377ExitGBefore s6Step377ExitGRow 82 []=
    some (s6Step377ExitGAfter,s6Step377ExitGOut,shrinkRow 777 s6Step377ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step377ExitGBefore s6Step377ExitGRow 82 s6Step377ExitG_distinct s6Step377ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step377ExitGRow.payload.take 82) s6Step377ExitGRow.sign=s6Step377ExitGOut := by decide +kernel
  have hi : s6Step377ExitGRow.payload.drop 82=s6Step377ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step377ExitG_retired] at result
  exact result

private def s6Step377ExitGvBefore : Arena := s6Step377ExitFvAfter

private theorem s6Step377ExitGv_Incoming : rowsOwned s6Step377ExitGvBefore [s6Step377ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377ExitGRow,s6Step377ExitFRow,s6Step377ExitFvRow,s6Step377ExitGvRow] 3 s6Step377ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377ExitGvBefore (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377ExitGv_Outgoing : rowsOwned s6Step377ExitGvAfter [s6Step377ExitGvOut] :=
  hmrRows_owned_drop s6Step377ExitGvAfter [s6Step377ExitGOut,s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut] 3 s6Step377ExitBank_outgoingOwned

private theorem s6Step377ExitGv_distinct : (s6Step377ExitGvRow.sign::s6Step377ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377ExitGv_owned : (s6Step377ExitGvRow.sign::s6Step377ExitGvRow.payload).toFinset⊆s6Step377ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377ExitGvBefore (fun q => (0≤q ∧ q<82) ∨ (83≤q ∧ q<338) ∨ (339≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377ExitGv_retired : s6Step377ExitGvBefore.retireSet s6Step377ExitGvExtra.toFinset=s6Step377ExitGvAfter := by
  unfold Arena.retireSet s6Step377ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step377ExitGvBefore,s6Step377ExitFvAfter,s6Step377ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step377ExitGv_checked : planRowResizeLog s6Step377ExitGvBefore s6Step377ExitGvRow 205 []=
    some (s6Step377ExitGvAfter,s6Step377ExitGvOut,shrinkRow 775 s6Step377ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step377ExitGvBefore s6Step377ExitGvRow 205 s6Step377ExitGv_distinct s6Step377ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step377ExitGvRow.payload.take 205) s6Step377ExitGvRow.sign=s6Step377ExitGvOut := by decide +kernel
  have hi : s6Step377ExitGvRow.payload.drop 205=s6Step377ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step377ExitGv_retired] at result
  exact result

private theorem s6Step377ExitBank_rows : planWindowRowsLog s6Step377ExitGBefore [(s6Step377ExitGRow,82),(s6Step377ExitFRow,82),(s6Step377ExitFvRow,205),(s6Step377ExitGvRow,205)] [[],[],[],[]]=
    some (s6Step377ExitGvAfter,[s6Step377ExitGOut,s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut],(shrinkRow 777 s6Step377ExitGExtra ++ (shrinkRow 795 s6Step377ExitFExtra ++ (shrinkRow 776 s6Step377ExitFvExtra ++ (shrinkRow 775 s6Step377ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step377ExitGvAfter [] []=some (s6Step377ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step377ExitGvBefore s6Step377ExitGvAfter s6Step377ExitGvAfter
    s6Step377ExitGvRow s6Step377ExitGvOut 205 [] [] [] []
    (shrinkRow 775 s6Step377ExitGvExtra) ([]) s6Step377ExitGv_Incoming s6Step377ExitGv_checked h4 s6Step377ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step377ExitFvBefore s6Step377ExitFvAfter s6Step377ExitGvAfter
    s6Step377ExitFvRow s6Step377ExitFvOut 205 [] [(s6Step377ExitGvRow,205)] [[]] [s6Step377ExitGvOut]
    (shrinkRow 776 s6Step377ExitFvExtra) ((shrinkRow 775 s6Step377ExitGvExtra ++ [])) s6Step377ExitFv_Incoming s6Step377ExitFv_checked h3 s6Step377ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step377ExitFBefore s6Step377ExitFAfter s6Step377ExitGvAfter
    s6Step377ExitFRow s6Step377ExitFOut 82 [] [(s6Step377ExitFvRow,205),(s6Step377ExitGvRow,205)] [[],[]] [s6Step377ExitFvOut,s6Step377ExitGvOut]
    (shrinkRow 795 s6Step377ExitFExtra) ((shrinkRow 776 s6Step377ExitFvExtra ++ (shrinkRow 775 s6Step377ExitGvExtra ++ []))) s6Step377ExitF_Incoming s6Step377ExitF_checked h2 s6Step377ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step377ExitGBefore s6Step377ExitGAfter s6Step377ExitGvAfter
    s6Step377ExitGRow s6Step377ExitGOut 82 [] [(s6Step377ExitFRow,82),(s6Step377ExitFvRow,205),(s6Step377ExitGvRow,205)] [[],[],[]] [s6Step377ExitFOut,s6Step377ExitFvOut,s6Step377ExitGvOut]
    (shrinkRow 777 s6Step377ExitGExtra) ((shrinkRow 795 s6Step377ExitFExtra ++ (shrinkRow 776 s6Step377ExitFvExtra ++ (shrinkRow 775 s6Step377ExitGvExtra ++ [])))) s6Step377ExitG_Incoming s6Step377ExitG_checked h1 s6Step377ExitG_Outgoing
  exact h0

private theorem s6Step377ExitBank_checked : compileHmrBankResizeLog .exit s6Step377ExitGBefore ⟨s6Step377ExitFRow,s6Step377ExitGRow,s6Step377ExitFvRow,s6Step377ExitGvRow⟩ ⟨82,82,205,205⟩ [[],[],[],[]]=
    some (s6Step377ExitGvAfter,⟨s6Step377ExitFOut,s6Step377ExitGOut,s6Step377ExitFvOut,s6Step377ExitGvOut⟩,(shrinkRow 777 s6Step377ExitGExtra ++ (shrinkRow 795 s6Step377ExitFExtra ++ (shrinkRow 776 s6Step377ExitFvExtra ++ (shrinkRow 775 s6Step377ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step377ExitBank_rows]
  rfl

private theorem s6Step377Add0_apart : Disjoint s6Step377Add0Arena.live s6Step377Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step377Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377Add0_card : s6Step377Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step377Add0_borrowed : s6Step377Add0Arena.checkBorrow (hmrHybridCount s6Step377Add0Arena s6Step377Add0B.length) s6Step377Add0Work=some s6Step377Add0During := by
  have len : s6Step377Add0Work.length=hmrHybridCount s6Step377Add0Arena s6Step377Add0B.length := by
    rw [hmrHybridCount,s6Step377Add0_card]
    decide +kernel
  have nd : s6Step377Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step377Add0Arena s6Step377Add0During s6Step377Add0Work.toFinset s6Step377Add0_bounded s6Step377Add0_apart rfl

private theorem s6Step377Add0_distinct : (857::890::821::(s6Step377Add0A++s6Step377Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377Add0_owned : (857::890::821::(s6Step377Add0A++s6Step377Add0B)).toFinset⊆s6Step377Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step377Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377Add0_checked : compileHmrHybridCinLog s6Step377Add0Arena 890 857 821 s6Step377Add0A s6Step377Add0B s6Step377Add0Work=some s6Step377Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step377Add0Arena s6Step377Add0During 890 857 821 s6Step377Add0A s6Step377Add0B s6Step377Add0Work
    (by decide +kernel) (by decide +kernel) s6Step377Add0_distinct
    (fun q hq => s6Step377Add0_owned (List.mem_toFinset.mpr hq)) s6Step377Add0_borrowed

private theorem s6Step377Add1_apart : Disjoint s6Step377Add1Arena.live s6Step377Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step377Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377Add1_card : s6Step377Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step377Add1_borrowed : s6Step377Add1Arena.checkBorrow (hmrHybridCount s6Step377Add1Arena s6Step377Add1B.length) s6Step377Add1Work=some s6Step377Add1During := by
  have len : s6Step377Add1Work.length=hmrHybridCount s6Step377Add1Arena s6Step377Add1B.length := by
    rw [hmrHybridCount,s6Step377Add1_card]
    decide +kernel
  have nd : s6Step377Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step377Add1Arena s6Step377Add1During s6Step377Add1Work.toFinset s6Step377Add1_bounded s6Step377Add1_apart rfl

private theorem s6Step377Add1_distinct : (857::890::821::(s6Step377Add1A++s6Step377Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377Add1_owned : (857::890::821::(s6Step377Add1A++s6Step377Add1B)).toFinset⊆s6Step377Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step377Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377Add1_checked : compileHmrHybridCinLog s6Step377Add1Arena 890 857 821 s6Step377Add1A s6Step377Add1B s6Step377Add1Work=some s6Step377Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step377Add1Arena s6Step377Add1During 890 857 821 s6Step377Add1A s6Step377Add1B s6Step377Add1Work
    (by decide +kernel) (by decide +kernel) s6Step377Add1_distinct
    (fun q hq => s6Step377Add1_owned (List.mem_toFinset.mpr hq)) s6Step377Add1_borrowed

private theorem s6Step377F4_apart : Disjoint (s6Step377Add0A++s6Step377Add0B).toFinset (s6Step377Add1A++s6Step377Add1B).toFinset := by
  have nd : ((s6Step377Add0A++s6Step377Add0B)++(s6Step377Add1A++s6Step377Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step377F4_carry : s6Step377F4FlagArena.checkBorrow 1 [821]=some s6Step377Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step377F4FlagArena,s6Step377HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step377F4FlagArena,s6Step377HeadFvAfter,s6Step377Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step377F4_distinct : (908::890::857::821::((s6Step377Add0A++s6Step377Add1A)++(s6Step377Add0B++s6Step377Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377F4_flag : s6Step377HeadFvAfter.checkBorrow 1 [857]=some s6Step377F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step377HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step377F4_owned : (908::890::((s6Step377Add0A++s6Step377Add1A)++(s6Step377Add0B++s6Step377Add1B))).toFinset⊆s6Step377HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step377HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377F4_checked : compileHmrHybridF4Log s6Step377HeadFvAfter 908 890 s6Step377Add0A s6Step377Add0B s6Step377Add1A s6Step377Add1B [857] [821] s6Step377Add0Work s6Step377Add1Work=some s6Step377F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step377HeadFvAfter s6Step377F4FlagArena s6Step377Add0Arena s6Step377Add0During s6Step377Add1During 908 890
    s6Step377Add0A s6Step377Add0B s6Step377Add1A s6Step377Add1B [857] [821] s6Step377Add0Work s6Step377Add1Work
    (fun q hq => s6Step377F4_owned (List.mem_toFinset.mpr hq)) s6Step377F4_flag s6Step377F4_carry
    s6Step377F4_distinct s6Step377F4_apart s6Step377Add0_checked s6Step377Add1_checked

private theorem s6Step377Front_branch : s6Step377FrontSigmaArena.checkBorrow 1 [890]=some s6Step377HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step377FrontSigmaArena,s6Step377EntryGvAfter,s6Step377EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step377FrontSigmaArena,s6Step377EntryGvAfter,s6Step377EntryFBefore,s6Step377HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step377Front_entry : HmrFrontEntryValid s6Step377EntryFBefore s6Step377FrontBank 83 205 ⟨82,82,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step377FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step377EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step377EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step377FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step377Front_sigma : s6Step377EntryGvAfter.checkBorrow 1 [908]=some s6Step377FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step377EntryGvAfter,s6Step377EntryFBefore,arenaWires]
  · rfl

private def s6Step377HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377HeadFBefore : Arena := s6Step377HeadGAfter

private def s6Step377HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338],795⟩

private def s6Step377HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805],776⟩

private def s6Step377HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82],777⟩

private def s6Step377HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private theorem s6Step377HeadBank_incomingDistinct : ([s6Step377HeadGRow,s6Step377HeadFRow,s6Step377HeadGvRow,s6Step377HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377HeadF_Incoming : rowsOwned s6Step377HeadFBefore [s6Step377HeadFRow,s6Step377HeadGvRow,s6Step377HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377HeadGRow,s6Step377HeadFRow,s6Step377HeadGvRow,s6Step377HeadFvRow] 1 s6Step377HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377HeadBank_outgoingOwned : rowsOwned s6Step377HeadFvAfter [s6Step377HeadGOut,s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step377HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377HeadF_Outgoing : rowsOwned s6Step377HeadFvAfter [s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut] :=
  hmrRows_owned_drop s6Step377HeadFvAfter [s6Step377HeadGOut,s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut] 1 s6Step377HeadBank_outgoingOwned

private theorem s6Step377HeadF_distinct : (s6Step377HeadFRow.sign::s6Step377HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377HeadF_owned : (s6Step377HeadFRow.sign::s6Step377HeadFRow.payload).toFinset⊆s6Step377HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377HeadF_reserved : s6Step377HeadFBefore.reserve s6Step377HeadFFresh.toFinset=some s6Step377HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377HeadFFresh,arenaWires]
  · norm_num [s6Step377HeadFBefore,s6Step377HeadGAfter,s6Step377HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step377HeadFAfter,s6Step377HeadFBefore,s6Step377HeadGAfter,s6Step377HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step377HeadF_checked : planRowResizeLog s6Step377HeadFBefore s6Step377HeadFRow 84 s6Step377HeadFFresh=
    some (s6Step377HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 818],795⟩,growRow 795 s6Step377HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step377HeadFBefore s6Step377HeadFAfter s6Step377HeadFRow 84 s6Step377HeadFFresh
    s6Step377HeadF_distinct s6Step377HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377HeadF_reserved
  have rowEq : WindowRow.mk (s6Step377HeadFRow.payload++s6Step377HeadFFresh) s6Step377HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 818],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step377HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step377HeadFvBefore : Arena := s6Step377HeadGvAfter

private theorem s6Step377HeadFv_Incoming : rowsOwned s6Step377HeadFvBefore [s6Step377HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377HeadGRow,s6Step377HeadFRow,s6Step377HeadGvRow,s6Step377HeadFvRow] 3 s6Step377HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377HeadFv_Outgoing : rowsOwned s6Step377HeadFvAfter [s6Step377HeadFvOut] :=
  hmrRows_owned_drop s6Step377HeadFvAfter [s6Step377HeadGOut,s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut] 3 s6Step377HeadBank_outgoingOwned

private theorem s6Step377HeadFv_distinct : (s6Step377HeadFvRow.sign::s6Step377HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377HeadFv_owned : (s6Step377HeadFvRow.sign::s6Step377HeadFvRow.payload).toFinset⊆s6Step377HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377HeadFv_reserved : s6Step377HeadFvBefore.reserve s6Step377HeadFvFresh.toFinset=some s6Step377HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377HeadFvFresh,arenaWires]
  · norm_num [s6Step377HeadFvBefore,s6Step377HeadGvAfter,s6Step377HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step377HeadFvAfter,s6Step377HeadFvBefore,s6Step377HeadGvAfter,s6Step377HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step377HeadFv_checked : planRowResizeLog s6Step377HeadFvBefore s6Step377HeadFvRow 206 s6Step377HeadFvFresh=
    some (s6Step377HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩,growRow 776 s6Step377HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step377HeadFvBefore s6Step377HeadFvAfter s6Step377HeadFvRow 206 s6Step377HeadFvFresh
    s6Step377HeadFv_distinct s6Step377HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step377HeadFvRow.payload++s6Step377HeadFvFresh) s6Step377HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step377HeadG_Incoming : rowsOwned s6Step377HeadGBefore [s6Step377HeadGRow,s6Step377HeadFRow,s6Step377HeadGvRow,s6Step377HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377HeadGRow,s6Step377HeadFRow,s6Step377HeadGvRow,s6Step377HeadFvRow] 0 s6Step377HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377HeadG_Outgoing : rowsOwned s6Step377HeadFvAfter [s6Step377HeadGOut,s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut] :=
  hmrRows_owned_drop s6Step377HeadFvAfter [s6Step377HeadGOut,s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut] 0 s6Step377HeadBank_outgoingOwned

private theorem s6Step377HeadG_distinct : (s6Step377HeadGRow.sign::s6Step377HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377HeadG_owned : (s6Step377HeadGRow.sign::s6Step377HeadGRow.payload).toFinset⊆s6Step377HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377HeadG_reserved : s6Step377HeadGBefore.reserve s6Step377HeadGFresh.toFinset=some s6Step377HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377HeadGFresh,arenaWires]
  · norm_num [s6Step377HeadGBefore,s6Step377HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step377HeadGAfter,s6Step377HeadGBefore,s6Step377HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step377HeadG_checked : planRowResizeLog s6Step377HeadGBefore s6Step377HeadGRow 84 s6Step377HeadGFresh=
    some (s6Step377HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 839],777⟩,growRow 777 s6Step377HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step377HeadGBefore s6Step377HeadGAfter s6Step377HeadGRow 84 s6Step377HeadGFresh
    s6Step377HeadG_distinct s6Step377HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377HeadG_reserved
  have rowEq : WindowRow.mk (s6Step377HeadGRow.payload++s6Step377HeadGFresh) s6Step377HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 839],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step377HeadGvBefore : Arena := s6Step377HeadFAfter

private theorem s6Step377HeadGv_Incoming : rowsOwned s6Step377HeadGvBefore [s6Step377HeadGvRow,s6Step377HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step377HeadGRow,s6Step377HeadFRow,s6Step377HeadGvRow,s6Step377HeadFvRow] 2 s6Step377HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step377HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step377HeadGv_Outgoing : rowsOwned s6Step377HeadFvAfter [s6Step377HeadGvOut,s6Step377HeadFvOut] :=
  hmrRows_owned_drop s6Step377HeadFvAfter [s6Step377HeadGOut,s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut] 2 s6Step377HeadBank_outgoingOwned

private theorem s6Step377HeadGv_distinct : (s6Step377HeadGvRow.sign::s6Step377HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step377HeadGv_owned : (s6Step377HeadGvRow.sign::s6Step377HeadGvRow.payload).toFinset⊆s6Step377HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step377HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step377HeadGv_reserved : s6Step377HeadGvBefore.reserve s6Step377HeadGvFresh.toFinset=some s6Step377HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step377HeadGvFresh,arenaWires]
  · norm_num [s6Step377HeadGvBefore,s6Step377HeadFAfter,s6Step377HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step377HeadGvAfter,s6Step377HeadGvBefore,s6Step377HeadFAfter,s6Step377HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step377HeadGv_checked : planRowResizeLog s6Step377HeadGvBefore s6Step377HeadGvRow 206 s6Step377HeadGvFresh=
    some (s6Step377HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩,growRow 775 s6Step377HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step377HeadGvBefore s6Step377HeadGvAfter s6Step377HeadGvRow 206 s6Step377HeadGvFresh
    s6Step377HeadGv_distinct s6Step377HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step377HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step377HeadGvRow.payload++s6Step377HeadGvFresh) s6Step377HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step377HeadBank_rows : planWindowRowsLog s6Step377HeadGBefore [(s6Step377HeadGRow,84),(s6Step377HeadFRow,84),(s6Step377HeadGvRow,206),(s6Step377HeadFvRow,206)] [s6Step377HeadGFresh,s6Step377HeadFFresh,s6Step377HeadGvFresh,s6Step377HeadFvFresh]=
    some (s6Step377HeadFvAfter,[s6Step377HeadGOut,s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut],(growRow 777 s6Step377HeadGFresh ++ (growRow 795 s6Step377HeadFFresh ++ (growRow 775 s6Step377HeadGvFresh ++ (growRow 776 s6Step377HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step377HeadFvAfter [] []=some (s6Step377HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step377HeadFvBefore s6Step377HeadFvAfter s6Step377HeadFvAfter
    s6Step377HeadFvRow s6Step377HeadFvOut 206 s6Step377HeadFvFresh [] [] []
    (growRow 776 s6Step377HeadFvFresh) ([]) s6Step377HeadFv_Incoming s6Step377HeadFv_checked h4 s6Step377HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step377HeadGvBefore s6Step377HeadGvAfter s6Step377HeadFvAfter
    s6Step377HeadGvRow s6Step377HeadGvOut 206 s6Step377HeadGvFresh [(s6Step377HeadFvRow,206)] [s6Step377HeadFvFresh] [s6Step377HeadFvOut]
    (growRow 775 s6Step377HeadGvFresh) ((growRow 776 s6Step377HeadFvFresh ++ [])) s6Step377HeadGv_Incoming s6Step377HeadGv_checked h3 s6Step377HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step377HeadFBefore s6Step377HeadFAfter s6Step377HeadFvAfter
    s6Step377HeadFRow s6Step377HeadFOut 84 s6Step377HeadFFresh [(s6Step377HeadGvRow,206),(s6Step377HeadFvRow,206)] [s6Step377HeadGvFresh,s6Step377HeadFvFresh] [s6Step377HeadGvOut,s6Step377HeadFvOut]
    (growRow 795 s6Step377HeadFFresh) ((growRow 775 s6Step377HeadGvFresh ++ (growRow 776 s6Step377HeadFvFresh ++ []))) s6Step377HeadF_Incoming s6Step377HeadF_checked h2 s6Step377HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step377HeadGBefore s6Step377HeadGAfter s6Step377HeadFvAfter
    s6Step377HeadGRow s6Step377HeadGOut 84 s6Step377HeadGFresh [(s6Step377HeadFRow,84),(s6Step377HeadGvRow,206),(s6Step377HeadFvRow,206)] [s6Step377HeadFFresh,s6Step377HeadGvFresh,s6Step377HeadFvFresh] [s6Step377HeadFOut,s6Step377HeadGvOut,s6Step377HeadFvOut]
    (growRow 777 s6Step377HeadGFresh) ((growRow 795 s6Step377HeadFFresh ++ (growRow 775 s6Step377HeadGvFresh ++ (growRow 776 s6Step377HeadFvFresh ++ [])))) s6Step377HeadG_Incoming s6Step377HeadG_checked h1 s6Step377HeadG_Outgoing
  exact h0

private theorem s6Step377HeadBank_checked : compileHmrBankResizeLog .headroom s6Step377HeadGBefore ⟨s6Step377HeadFRow,s6Step377HeadGRow,s6Step377HeadFvRow,s6Step377HeadGvRow⟩ ⟨84,84,206,206⟩ [s6Step377HeadGFresh,s6Step377HeadFFresh,s6Step377HeadGvFresh,s6Step377HeadFvFresh]=
    some (s6Step377HeadFvAfter,⟨s6Step377HeadFOut,s6Step377HeadGOut,s6Step377HeadFvOut,s6Step377HeadGvOut⟩,(growRow 777 s6Step377HeadGFresh ++ (growRow 795 s6Step377HeadFFresh ++ (growRow 775 s6Step377HeadGvFresh ++ (growRow 776 s6Step377HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step377HeadBank_rows]
  rfl

private theorem s6Step377Front_checked : compileHmrSourceFrontLog s6Step377EntryFBefore s6Step377FrontBank 83 205 ⟨82,82,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step377FrontLog=some s6Step377FrontPlan := by
  have pairEq : s6Step377FrontPair=⟨s6Step377HeadFRow,s6Step377HeadGRow,s6Step377HeadFvRow,s6Step377HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step377FrontHead=⟨s6Step377ExitFRow,s6Step377ExitGRow,s6Step377ExitFvRow,s6Step377ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step377Add0A=s6Step377FrontHead.f.wires := by decide +kernel
  have gEq : s6Step377Add0B=s6Step377FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step377Add1A=s6Step377FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step377Add1B=s6Step377FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step377EntryFBefore s6Step377FrontBank 83 205 ⟨82,82,205,205⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step377FrontLog s6Step377FrontPlan
  · exact s6Step377Front_entry
  · exact s6Step377EntryBank_checked
  · exact s6Step377Front_sigma
  · rfl
  · exact s6Step377Front_branch
  · rfl
  · simpa only [s6Step377FrontPlan,pairEq] using s6Step377HeadBank_checked
  · simpa only [s6Step377FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step377F4_checked
  · exact s6Step377Counter_checked
  · rfl
  · simpa only [s6Step377FrontPlan,headEq] using s6Step377ExitBank_checked

private theorem s6Step377Complete_explicit_checked : compileHmrEarlyStepLog s6Step377EntryFBefore s6Step377FrontBank 83 205 ⟨82,82,205,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step377CompleteLog=some s6Step377CompletePlan := by
  let Q := s6Step377EarlyControlPlan
  have hq := s6Step377EarlyControl_plan_checked
  have fv1 : s6Step377CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step377CompleteOut.fv.payload[2]?.getD s6Step377CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step377CompleteOut.fv.payload[3]?.getD s6Step377CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step377CompleteOut.fv.payload[4]?.getD s6Step377CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step377EntryFBefore s6Step377EarlyControlArena s6Step377FrontBank 83 205 ⟨82,82,205,205⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step377CompleteLog s6Step377FrontPlan Q
    s6Step377Front_checked s6Step377Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step377Complete_owned s6Step377Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step377EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 s6Step377CompleteOut.fv.second (s6Step377CompleteOut.fv.payload[2]?.getD s6Step377CompleteOut.fv.sign) (s6Step377CompleteOut.fv.payload[3]?.getD s6Step377CompleteOut.fv.sign) (s6Step377CompleteOut.fv.payload[4]?.getD s6Step377CompleteOut.fv.sign) 890 60 s6Step377EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep377Arena : Arena := s6Step377EntryFBefore
def s6PrivateStep377Bank : WindowBank := s6Step377FrontBank
def s6PrivateStep377Spec : HmrSourceWalkStepLog := ⟨83,205,⟨82,82,205,205⟩,60,.early s6Step377CompleteLog⟩
def s6PrivateStep377Plan : HmrSourceStepPlan := .early s6Step377CompletePlan
theorem s6PrivateStep377_source : s6PrivateStep377Spec=s6ObservedLogs368[9] := rfl
theorem s6PrivateStep377_checked : compileHmrSourceStepLog s6PrivateStep377Arena s6PrivateStep377Bank
    s6PrivateStep377Spec.fgWidth s6PrivateStep377Spec.vWidth s6PrivateStep377Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 377 s6PrivateStep377Spec.need none s6PrivateStep377Spec.log=some s6PrivateStep377Plan := by
  change compileHmrSourceStepLog s6Step377EntryFBefore s6Step377FrontBank 83 205 ⟨82,82,205,205⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 377 60 none (.early s6Step377CompleteLog)=some (.early s6Step377CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 377<498)]
  rw [s6Step377Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
