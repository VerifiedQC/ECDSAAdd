import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep378
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

private def s6Step380CompleteMoves : List (Wire × Wire) := [(864,337)]

private def s6Step380EarlyControlLog : HmrEarlyControlLog := ⟨[864, 818, 839, 876, 890],[863],[857],[821, 843, 877, 792, 816, 819],[]⟩

private def s6Step380FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [890], [], [908]],[[863], [876], [818], [839]],[[], [], [], []]⟩,[850],[814],[857],[821],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 821, 843, 877]⟩

private def s6Step380CompleteLog : HmrEarlyStepLog := ⟨s6Step380FrontLog,s6Step380CompleteMoves,s6Step380EarlyControlLog⟩

private def s6Step380ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step380ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step380ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩

private def s6Step380ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩

private def s6Step380FrontOut : WindowBank := ⟨s6Step380ExitFOut,s6Step380ExitGOut,s6Step380ExitFvOut,s6Step380ExitGvOut⟩

private def s6Step380CompleteOut : WindowBank := s6Step380FrontOut.repacked s6Step380CompleteMoves

private def s6Step380EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step380EarlyControlPositiveArena,[863],s6Step380EarlyControlEqualityArena,[857],⟨⟨850,false⟩,[⟨⟨863,false⟩,857⟩]⟩⟩

private def s6Step380EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,864⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,839⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,890⟩]⟩

private def s6Step380EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step380EarlyControlZeroArena,s6Step380EarlyControlZeroPlan,s6Step380EarlyControlClassPlan,s6Step380EarlyControlFlagArena,s6Step380EarlyControlFittedArena,s6Step380EarlyControlHistoryArena,s6Step380EarlyControlSigmaArena,s6Step380EarlyControlOutputArena,s6Step380EarlyControlLog⟩

private def s6Step380CounterWork : List Wire := [857, 821, 843, 877]

private theorem s6Step380Counter_bounded : s6Step380CounterWork.toFinset⊆arenaWires := by norm_num [s6Step380CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step380HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380CounterDuring : Arena := ⟨s6Step380HeadFvAfter.live∪s6Step380CounterWork.toFinset,Finset.union_subset s6Step380HeadFvAfter.bounded s6Step380Counter_bounded⟩

private def s6Step380EntryFFresh : List Wire := []

private def s6Step380EntryFvFresh : List Wire := []

private def s6Step380EntryGFresh : List Wire := [890]

private def s6Step380EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EntryGvFresh : List Wire := [908]

private def s6Step380ExitFExtra : List Wire := [337, 876]

private def s6Step380ExitFvExtra : List Wire := [839]

private def s6Step380ExitGExtra : List Wire := [890, 863]

private def s6Step380ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380ExitGvExtra : List Wire := [818]

private def s6Step380Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step380Add0_bounded : s6Step380Add0Work.toFinset⊆arenaWires := by
  have h : s6Step380Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step380Add0During : Arena := ⟨s6Step380Add0Arena.live∪s6Step380Add0Work.toFinset,Finset.union_subset s6Step380Add0Arena.bounded s6Step380Add0_bounded⟩

private def s6Step380Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step380Add1_bounded : s6Step380Add1Work.toFinset⊆arenaWires := by
  have h : s6Step380Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step380Add1During : Arena := ⟨s6Step380Add1Arena.live∪s6Step380Add1Work.toFinset,Finset.union_subset s6Step380Add1Arena.bounded s6Step380Add1_bounded⟩

private def s6Step380F4FlagArena : Arena := ⟨s6Step380HeadFvAfter.live∪{857},Finset.union_subset s6Step380HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step380F4Plan : HmrHybridF4Plan := ⟨s6Step380F4FlagArena,[857],s6Step380Add0Arena,[821],s6Step380Add0During,s6Step380Add0Work,s6Step380Add1During,s6Step380Add1Work⟩

private def s6Step380HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 876],795⟩

private def s6Step380HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 839],776⟩

private def s6Step380HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890, 863],777⟩

private def s6Step380HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 818],775⟩

private def s6Step380FrontHead : WindowBank := ⟨s6Step380HeadFOut,s6Step380HeadGOut,s6Step380HeadFvOut,s6Step380HeadGvOut⟩

private def s6Step380EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step380EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step380EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890],777⟩

private def s6Step380EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩

private def s6Step380FrontPair : WindowBank := ⟨s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut⟩

private def s6Step380FrontSigmaArena : Arena := ⟨s6Step380EntryGvAfter.live∪{850},Finset.union_subset s6Step380EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step380HeadFFresh : List Wire := [876]

private def s6Step380HeadFvFresh : List Wire := [839]

private def s6Step380HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380HeadGFresh : List Wire := [863]

private def s6Step380HeadGvFresh : List Wire := [818]

private def s6Step380FrontPlan : HmrSourceFront := ⟨s6Step380EntryGvAfter,s6Step380FrontPair,(growRow 795 s6Step380EntryFFresh ++ (growRow 777 s6Step380EntryGFresh ++ (growRow 776 s6Step380EntryFvFresh ++ (growRow 775 s6Step380EntryGvFresh ++ [])))),s6Step380FrontSigmaArena,[850],s6Step380HeadGBefore,[814],
  s6Step380HeadFvAfter,s6Step380FrontHead,(growRow 777 s6Step380HeadGFresh ++ (growRow 795 s6Step380HeadFFresh ++ (growRow 775 s6Step380HeadGvFresh ++ (growRow 776 s6Step380HeadFvFresh ++ [])))),s6Step380F4Plan,s6Step380CounterDuring,s6Step380CounterWork,s6Step380ExitGvAfter,s6Step380FrontOut,(shrinkRow 777 s6Step380ExitGExtra ++ (shrinkRow 795 s6Step380ExitFExtra ++ (shrinkRow 776 s6Step380ExitFvExtra ++ (shrinkRow 775 s6Step380ExitGvExtra ++ []))))⟩

private def s6Step380CompletePlan : HmrEarlyStepPlan := ⟨s6Step380FrontPlan,s6Step380EarlyControlArena,s6Step380EarlyControlPlan,s6Step380CompleteMoves⟩

private theorem s6Step380Complete_apart : List.Disjoint (s6Step380CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [850, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step380CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[850, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step380Complete_owned : (s6Step380CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step380CompleteMoveArena : Arena := ⟨s6Step380ExitGvAfter.live∪{337},Finset.union_subset s6Step380ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step380Complete_repack : s6Step380ExitGvAfter.checkRepack s6Step380CompleteMoves=some s6Step380EarlyControlArena := by
  have owned : 864∈s6Step380ExitGvAfter.live := by norm_num [s6Step380ExitGvAfter,arenaWires]
  have reserve : s6Step380ExitGvAfter.reserve {337}=some s6Step380CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step380ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step380CompleteMoveArena.retireSet {864}=s6Step380EarlyControlArena := by
    unfold Arena.retireSet s6Step380EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step380CompleteMoveArena,s6Step380ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step380CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step380CompleteMoveArena.retireSet {864}).checkRepack []=some s6Step380EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step380EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s6Step380EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_branch : compileHmrBranchRetirement s6Step380EarlyControlSigmaArena 814=some s6Step380EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step380EarlyControl_branchOwned
  · ext q
    simp [s6Step380EarlyControlOutputArena,s6Step380EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step380EarlyControl_classEqualityBorrow : s6Step380EarlyControlPositiveArena.checkBorrow (([850, 863] : List Wire).length-1) s6Step380EarlyControlLog.classWork=some s6Step380EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step380EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step380EarlyControlEqualityArena,s6Step380EarlyControlPositiveArena,s6Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step380EarlyControl_classEqualityOwned : ([850, 863] : List Wire).toFinset⊆s6Step380EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_classEquality : compileHmrEqualityLog s6Step380EarlyControlPositiveArena [850, 863] 0 s6Step380EarlyControlLog.classWork=some (s6Step380EarlyControlEqualityArena,s6Step380EarlyControlLog.classWork,s6Step380EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step380EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step380EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step380EarlyControl_classOwned : ([769, 890, 850] : List Wire).toFinset⊆s6Step380EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_positiveBorrow : s6Step380EarlyControlZeroArena.checkBorrow (1) s6Step380EarlyControlLog.positiveWork=some s6Step380EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step380EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step380EarlyControlPositiveArena,s6Step380EarlyControlZeroArena,s6Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step380EarlyControl_class : compileHmrSourceClassLog s6Step380EarlyControlZeroArena false 769 s6Step380EarlyControlZeroPlan.top 0 850 s6Step380EarlyControlLog.positiveWork s6Step380EarlyControlLog.classWork=some s6Step380EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step380EarlyControlClassPlan s6Step380EarlyControlZeroArena false 769 s6Step380EarlyControlZeroPlan.top 0 850
  constructor
  · decide +kernel
  · exact s6Step380EarlyControl_classOwned
  · exact s6Step380EarlyControl_positiveBorrow
  · exact s6Step380EarlyControl_classEquality

private theorem s6Step380EarlyControl_entryRecordOwned : ([814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_entrySigmaOwned : ([850, 254] : List Wire).toFinset⊆s6Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_fitBorrow : s6Step380EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step380EarlyControlLog.recordFresh=some s6Step380EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step380EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step380EarlyControlFittedArena,s6Step380EarlyControlFlagArena,s6Step380EarlyControlLog,arenaWires]

private theorem s6Step380EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step380EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_fit : compileHmrRecordGrowLog s6Step380EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step380EarlyControlLog.recordFresh=some s6Step380EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step380EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step380EarlyControl_fitBorrow

private theorem s6Step380EarlyControl_flagsBorrow : s6Step380EarlyControlEqualityArena.checkBorrow (6) s6Step380EarlyControlLog.flagWork=some s6Step380EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step380EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step380EarlyControlFlagArena,s6Step380EarlyControlEqualityArena,s6Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step380EarlyControl_flagsOwned : ([857, 253, 252, 251] : List Wire).toFinset⊆s6Step380EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_flags : compileHmrFlagsLog s6Step380EarlyControlClassPlan.equalityArena s6Step380EarlyControlClassPlan.equality.top 253 252 251 s6Step380EarlyControlLog.flagWork=some s6Step380EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step380EarlyControl_flagsOwned⟩
  · exact s6Step380EarlyControl_flagsBorrow

private theorem s6Step380EarlyControl_historyBorrow : s6Step380EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step380EarlyControlLog.recordFresh=some s6Step380EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step380EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step380EarlyControlHistoryArena,s6Step380EarlyControlArena,s6Step380EarlyControlLog,arenaWires]

private theorem s6Step380EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_history : compileHmrRecordGrowLog s6Step380EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step380EarlyControlLog.recordFresh=some s6Step380EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step380EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step380EarlyControl_historyBorrow

private theorem s6Step380EarlyControl_sigmaOwned : ([254, 850] : List Wire).toFinset⊆s6Step380EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_sigmaReleaseOwned : ([850] : List Wire).toFinset⊆s6Step380EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_sigmaRelease : s6Step380EarlyControlHistoryArena.release {850} (fun _ => false)=some s6Step380EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step380EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step380EarlyControlSigmaArena,s6Step380EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step380EarlyControl_sigma : compileHmrSigmaDropLog s6Step380EarlyControlHistoryArena false 0 0 254 850 []=some s6Step380EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step380EarlyControl_sigmaOwned⟩
  · exact s6Step380EarlyControl_sigmaRelease

private theorem s6Step380EarlyControl_zeroBorrow : s6Step380EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step380EarlyControlLog.zeroWork=some s6Step380EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step380EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step380EarlyControlZeroArena,s6Step380EarlyControlArena,s6Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step380EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step380EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EarlyControl_zero : compileHmrEqualityLog s6Step380EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step380EarlyControlLog.zeroWork=some (s6Step380EarlyControlZeroArena,s6Step380EarlyControlLog.zeroWork,s6Step380EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step380EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step380EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step380EarlyControl_logged : s6Step380EarlyControlPlan.Logged s6Step380EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 850 254 253 252 251 814 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step380EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step380EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step380EarlyControl_zero
  · exact s6Step380EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step380EarlyControl_flags
  · exact s6Step380EarlyControl_fit
  · exact s6Step380EarlyControl_history
  · exact s6Step380EarlyControl_sigma
  · exact s6Step380EarlyControl_branch

private theorem s6Step380EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step380EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 850 254 253 252 251 814 60 s6Step380EarlyControlLog=some s6Step380EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step380EarlyControlPlan s6Step380EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 850 254 253 252 251 814 60 s6Step380EarlyControl_logged

private def s6Step380EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step380EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step380EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩

private def s6Step380EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796],775⟩

private def s6Step380FrontBank : WindowBank := ⟨s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow⟩

private def s6Step380Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 876, 795]

private def s6Step380Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890, 863, 777]

private def s6Step380Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 839, 776]

private def s6Step380Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 818, 775]

private theorem s6Step380Counter_apart : Disjoint s6Step380HeadFvAfter.live s6Step380CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step380HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380Counter_borrowed : s6Step380HeadFvAfter.checkBorrow 4 s6Step380CounterWork=some s6Step380CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step380HeadFvAfter s6Step380CounterDuring s6Step380CounterWork.toFinset s6Step380Counter_bounded s6Step380Counter_apart rfl

private theorem s6Step380Counter_owned : (850::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step380HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step380HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380Counter_checked : compileHmrCounterStepLog s6Step380HeadFvAfter true 850 [774, 773, 772, 771, 770, 769] s6Step380CounterWork=some s6Step380CounterDuring := by
  have owned : ∀q∈850::[774, 773, 772, 771, 770, 769],q∈s6Step380HeadFvAfter.live := fun q hq => s6Step380Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step380Counter_borrowed

private def s6Step380EntryFAfter : Arena := s6Step380EntryFBefore

private theorem s6Step380EntryBank_incomingDistinct : ([s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380EntryF_Incoming : rowsOwned s6Step380EntryFBefore [s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow] 0 s6Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380EntryBank_outgoingOwned : rowsOwned s6Step380EntryGvAfter [s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step380EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380EntryF_Outgoing : rowsOwned s6Step380EntryGvAfter [s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut] :=
  hmrRows_owned_drop s6Step380EntryGvAfter [s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut] 0 s6Step380EntryBank_outgoingOwned

private theorem s6Step380EntryF_distinct : (s6Step380EntryFRow.sign::s6Step380EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380EntryF_owned : (s6Step380EntryFRow.sign::s6Step380EntryFRow.payload).toFinset⊆s6Step380EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EntryF_reserved : s6Step380EntryFBefore.reserve s6Step380EntryFFresh.toFinset=some s6Step380EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380EntryFFresh,arenaWires]
  · norm_num [s6Step380EntryFBefore,s6Step380EntryFFresh,arenaWires]
  · simp only [s6Step380EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step380EntryF_checked : planRowResizeLog s6Step380EntryFBefore s6Step380EntryFRow 82 s6Step380EntryFFresh=
    some (s6Step380EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩,growRow 795 s6Step380EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step380EntryFBefore s6Step380EntryFAfter s6Step380EntryFRow 82 s6Step380EntryFFresh
    s6Step380EntryF_distinct s6Step380EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380EntryF_reserved
  have rowEq : WindowRow.mk (s6Step380EntryFRow.payload++s6Step380EntryFFresh) s6Step380EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step380EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380EntryFvAfter : Arena := s6Step380EntryGAfter

private def s6Step380EntryFvBefore : Arena := s6Step380EntryGAfter

private theorem s6Step380EntryFv_Incoming : rowsOwned s6Step380EntryFvBefore [s6Step380EntryFvRow,s6Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow] 2 s6Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380EntryFv_Outgoing : rowsOwned s6Step380EntryGvAfter [s6Step380EntryFvOut,s6Step380EntryGvOut] :=
  hmrRows_owned_drop s6Step380EntryGvAfter [s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut] 2 s6Step380EntryBank_outgoingOwned

private theorem s6Step380EntryFv_distinct : (s6Step380EntryFvRow.sign::s6Step380EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380EntryFv_owned : (s6Step380EntryFvRow.sign::s6Step380EntryFvRow.payload).toFinset⊆s6Step380EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EntryFv_reserved : s6Step380EntryFvBefore.reserve s6Step380EntryFvFresh.toFinset=some s6Step380EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380EntryFvFresh,arenaWires]
  · norm_num [s6Step380EntryFvBefore,s6Step380EntryGAfter,s6Step380EntryFvFresh,arenaWires]
  · simp only [s6Step380EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step380EntryFv_checked : planRowResizeLog s6Step380EntryFvBefore s6Step380EntryFvRow 206 s6Step380EntryFvFresh=
    some (s6Step380EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩,growRow 776 s6Step380EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step380EntryFvBefore s6Step380EntryFvAfter s6Step380EntryFvRow 206 s6Step380EntryFvFresh
    s6Step380EntryFv_distinct s6Step380EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step380EntryFvRow.payload++s6Step380EntryFvFresh) s6Step380EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step380EntryGBefore : Arena := s6Step380EntryFBefore

private theorem s6Step380EntryG_Incoming : rowsOwned s6Step380EntryGBefore [s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow] 1 s6Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380EntryG_Outgoing : rowsOwned s6Step380EntryGvAfter [s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut] :=
  hmrRows_owned_drop s6Step380EntryGvAfter [s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut] 1 s6Step380EntryBank_outgoingOwned

private theorem s6Step380EntryG_distinct : (s6Step380EntryGRow.sign::s6Step380EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380EntryG_owned : (s6Step380EntryGRow.sign::s6Step380EntryGRow.payload).toFinset⊆s6Step380EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EntryG_reserved : s6Step380EntryGBefore.reserve s6Step380EntryGFresh.toFinset=some s6Step380EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380EntryGFresh,arenaWires]
  · norm_num [s6Step380EntryGBefore,s6Step380EntryFBefore,s6Step380EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step380EntryGAfter,s6Step380EntryGBefore,s6Step380EntryFBefore,s6Step380EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380EntryG_checked : planRowResizeLog s6Step380EntryGBefore s6Step380EntryGRow 82 s6Step380EntryGFresh=
    some (s6Step380EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890],777⟩,growRow 777 s6Step380EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step380EntryGBefore s6Step380EntryGAfter s6Step380EntryGRow 82 s6Step380EntryGFresh
    s6Step380EntryG_distinct s6Step380EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380EntryG_reserved
  have rowEq : WindowRow.mk (s6Step380EntryGRow.payload++s6Step380EntryGFresh) s6Step380EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step380EntryGvBefore : Arena := s6Step380EntryGAfter

private theorem s6Step380EntryGv_Incoming : rowsOwned s6Step380EntryGvBefore [s6Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow] 3 s6Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380EntryGv_Outgoing : rowsOwned s6Step380EntryGvAfter [s6Step380EntryGvOut] :=
  hmrRows_owned_drop s6Step380EntryGvAfter [s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut] 3 s6Step380EntryBank_outgoingOwned

private theorem s6Step380EntryGv_distinct : (s6Step380EntryGvRow.sign::s6Step380EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380EntryGv_owned : (s6Step380EntryGvRow.sign::s6Step380EntryGvRow.payload).toFinset⊆s6Step380EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380EntryGv_reserved : s6Step380EntryGvBefore.reserve s6Step380EntryGvFresh.toFinset=some s6Step380EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380EntryGvFresh,arenaWires]
  · norm_num [s6Step380EntryGvBefore,s6Step380EntryGAfter,s6Step380EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step380EntryGvAfter,s6Step380EntryGvBefore,s6Step380EntryGAfter,s6Step380EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380EntryGv_checked : planRowResizeLog s6Step380EntryGvBefore s6Step380EntryGvRow 206 s6Step380EntryGvFresh=
    some (s6Step380EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩,growRow 775 s6Step380EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step380EntryGvBefore s6Step380EntryGvAfter s6Step380EntryGvRow 206 s6Step380EntryGvFresh
    s6Step380EntryGv_distinct s6Step380EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step380EntryGvRow.payload++s6Step380EntryGvFresh) s6Step380EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step380EntryBank_rows : planWindowRowsLog s6Step380EntryFBefore [(s6Step380EntryFRow,82),(s6Step380EntryGRow,82),(s6Step380EntryFvRow,206),(s6Step380EntryGvRow,206)] [s6Step380EntryFFresh,s6Step380EntryGFresh,s6Step380EntryFvFresh,s6Step380EntryGvFresh]=
    some (s6Step380EntryGvAfter,[s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut],(growRow 795 s6Step380EntryFFresh ++ (growRow 777 s6Step380EntryGFresh ++ (growRow 776 s6Step380EntryFvFresh ++ (growRow 775 s6Step380EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step380EntryGvAfter [] []=some (s6Step380EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step380EntryGvBefore s6Step380EntryGvAfter s6Step380EntryGvAfter
    s6Step380EntryGvRow s6Step380EntryGvOut 206 s6Step380EntryGvFresh [] [] []
    (growRow 775 s6Step380EntryGvFresh) ([]) s6Step380EntryGv_Incoming s6Step380EntryGv_checked h4 s6Step380EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step380EntryFvBefore s6Step380EntryFvAfter s6Step380EntryGvAfter
    s6Step380EntryFvRow s6Step380EntryFvOut 206 s6Step380EntryFvFresh [(s6Step380EntryGvRow,206)] [s6Step380EntryGvFresh] [s6Step380EntryGvOut]
    (growRow 776 s6Step380EntryFvFresh) ((growRow 775 s6Step380EntryGvFresh ++ [])) s6Step380EntryFv_Incoming s6Step380EntryFv_checked h3 s6Step380EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step380EntryGBefore s6Step380EntryGAfter s6Step380EntryGvAfter
    s6Step380EntryGRow s6Step380EntryGOut 82 s6Step380EntryGFresh [(s6Step380EntryFvRow,206),(s6Step380EntryGvRow,206)] [s6Step380EntryFvFresh,s6Step380EntryGvFresh] [s6Step380EntryFvOut,s6Step380EntryGvOut]
    (growRow 777 s6Step380EntryGFresh) ((growRow 776 s6Step380EntryFvFresh ++ (growRow 775 s6Step380EntryGvFresh ++ []))) s6Step380EntryG_Incoming s6Step380EntryG_checked h2 s6Step380EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step380EntryFBefore s6Step380EntryFAfter s6Step380EntryGvAfter
    s6Step380EntryFRow s6Step380EntryFOut 82 s6Step380EntryFFresh [(s6Step380EntryGRow,82),(s6Step380EntryFvRow,206),(s6Step380EntryGvRow,206)] [s6Step380EntryGFresh,s6Step380EntryFvFresh,s6Step380EntryGvFresh] [s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut]
    (growRow 795 s6Step380EntryFFresh) ((growRow 777 s6Step380EntryGFresh ++ (growRow 776 s6Step380EntryFvFresh ++ (growRow 775 s6Step380EntryGvFresh ++ [])))) s6Step380EntryF_Incoming s6Step380EntryF_checked h1 s6Step380EntryF_Outgoing
  exact h0

private theorem s6Step380EntryBank_checked : compileHmrBankResizeLog .entry s6Step380EntryFBefore ⟨s6Step380EntryFRow,s6Step380EntryGRow,s6Step380EntryFvRow,s6Step380EntryGvRow⟩ ⟨82,82,206,206⟩ [s6Step380EntryFFresh,s6Step380EntryGFresh,s6Step380EntryFvFresh,s6Step380EntryGvFresh]=
    some (s6Step380EntryGvAfter,⟨s6Step380EntryFOut,s6Step380EntryGOut,s6Step380EntryFvOut,s6Step380EntryGvOut⟩,(growRow 795 s6Step380EntryFFresh ++ (growRow 777 s6Step380EntryGFresh ++ (growRow 776 s6Step380EntryFvFresh ++ (growRow 775 s6Step380EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step380EntryBank_rows]
  rfl

private def s6Step380ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380ExitFBefore : Arena := s6Step380ExitGAfter

private def s6Step380ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 876],795⟩

private def s6Step380ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 839],776⟩

private def s6Step380ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890, 863],777⟩

private def s6Step380ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 818],775⟩

private theorem s6Step380ExitBank_incomingDistinct : ([s6Step380ExitGRow,s6Step380ExitFRow,s6Step380ExitFvRow,s6Step380ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380ExitF_Incoming : rowsOwned s6Step380ExitFBefore [s6Step380ExitFRow,s6Step380ExitFvRow,s6Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380ExitGRow,s6Step380ExitFRow,s6Step380ExitFvRow,s6Step380ExitGvRow] 1 s6Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380ExitBank_outgoingOwned : rowsOwned s6Step380ExitGvAfter [s6Step380ExitGOut,s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step380ExitGvAfter (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380ExitF_Outgoing : rowsOwned s6Step380ExitGvAfter [s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut] :=
  hmrRows_owned_drop s6Step380ExitGvAfter [s6Step380ExitGOut,s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut] 1 s6Step380ExitBank_outgoingOwned

private theorem s6Step380ExitF_distinct : (s6Step380ExitFRow.sign::s6Step380ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380ExitF_owned : (s6Step380ExitFRow.sign::s6Step380ExitFRow.payload).toFinset⊆s6Step380ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380ExitF_retired : s6Step380ExitFBefore.retireSet s6Step380ExitFExtra.toFinset=s6Step380ExitFAfter := by
  unfold Arena.retireSet s6Step380ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step380ExitFBefore,s6Step380ExitGAfter,s6Step380ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step380ExitF_checked : planRowResizeLog s6Step380ExitFBefore s6Step380ExitFRow 81 []=
    some (s6Step380ExitFAfter,s6Step380ExitFOut,shrinkRow 795 s6Step380ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step380ExitFBefore s6Step380ExitFRow 81 s6Step380ExitF_distinct s6Step380ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step380ExitFRow.payload.take 81) s6Step380ExitFRow.sign=s6Step380ExitFOut := by decide +kernel
  have hi : s6Step380ExitFRow.payload.drop 81=s6Step380ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step380ExitF_retired] at result
  exact result

private def s6Step380ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380ExitFvBefore : Arena := s6Step380ExitFAfter

private theorem s6Step380ExitFv_Incoming : rowsOwned s6Step380ExitFvBefore [s6Step380ExitFvRow,s6Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380ExitGRow,s6Step380ExitFRow,s6Step380ExitFvRow,s6Step380ExitGvRow] 2 s6Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380ExitFvBefore (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380ExitFv_Outgoing : rowsOwned s6Step380ExitGvAfter [s6Step380ExitFvOut,s6Step380ExitGvOut] :=
  hmrRows_owned_drop s6Step380ExitGvAfter [s6Step380ExitGOut,s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut] 2 s6Step380ExitBank_outgoingOwned

private theorem s6Step380ExitFv_distinct : (s6Step380ExitFvRow.sign::s6Step380ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380ExitFv_owned : (s6Step380ExitFvRow.sign::s6Step380ExitFvRow.payload).toFinset⊆s6Step380ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380ExitFvBefore (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380ExitFv_retired : s6Step380ExitFvBefore.retireSet s6Step380ExitFvExtra.toFinset=s6Step380ExitFvAfter := by
  unfold Arena.retireSet s6Step380ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step380ExitFvBefore,s6Step380ExitFAfter,s6Step380ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step380ExitFv_checked : planRowResizeLog s6Step380ExitFvBefore s6Step380ExitFvRow 206 []=
    some (s6Step380ExitFvAfter,s6Step380ExitFvOut,shrinkRow 776 s6Step380ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step380ExitFvBefore s6Step380ExitFvRow 206 s6Step380ExitFv_distinct s6Step380ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step380ExitFvRow.payload.take 206) s6Step380ExitFvRow.sign=s6Step380ExitFvOut := by decide +kernel
  have hi : s6Step380ExitFvRow.payload.drop 206=s6Step380ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step380ExitFv_retired] at result
  exact result

private def s6Step380ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step380ExitG_Incoming : rowsOwned s6Step380ExitGBefore [s6Step380ExitGRow,s6Step380ExitFRow,s6Step380ExitFvRow,s6Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380ExitGRow,s6Step380ExitFRow,s6Step380ExitFvRow,s6Step380ExitGvRow] 0 s6Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380ExitG_Outgoing : rowsOwned s6Step380ExitGvAfter [s6Step380ExitGOut,s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut] :=
  hmrRows_owned_drop s6Step380ExitGvAfter [s6Step380ExitGOut,s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut] 0 s6Step380ExitBank_outgoingOwned

private theorem s6Step380ExitG_distinct : (s6Step380ExitGRow.sign::s6Step380ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380ExitG_owned : (s6Step380ExitGRow.sign::s6Step380ExitGRow.payload).toFinset⊆s6Step380ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380ExitG_retired : s6Step380ExitGBefore.retireSet s6Step380ExitGExtra.toFinset=s6Step380ExitGAfter := by
  unfold Arena.retireSet s6Step380ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step380ExitGBefore,s6Step380ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step380ExitG_checked : planRowResizeLog s6Step380ExitGBefore s6Step380ExitGRow 81 []=
    some (s6Step380ExitGAfter,s6Step380ExitGOut,shrinkRow 777 s6Step380ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step380ExitGBefore s6Step380ExitGRow 81 s6Step380ExitG_distinct s6Step380ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step380ExitGRow.payload.take 81) s6Step380ExitGRow.sign=s6Step380ExitGOut := by decide +kernel
  have hi : s6Step380ExitGRow.payload.drop 81=s6Step380ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step380ExitG_retired] at result
  exact result

private def s6Step380ExitGvBefore : Arena := s6Step380ExitFvAfter

private theorem s6Step380ExitGv_Incoming : rowsOwned s6Step380ExitGvBefore [s6Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380ExitGRow,s6Step380ExitFRow,s6Step380ExitFvRow,s6Step380ExitGvRow] 3 s6Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380ExitGvBefore (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380ExitGv_Outgoing : rowsOwned s6Step380ExitGvAfter [s6Step380ExitGvOut] :=
  hmrRows_owned_drop s6Step380ExitGvAfter [s6Step380ExitGOut,s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut] 3 s6Step380ExitBank_outgoingOwned

private theorem s6Step380ExitGv_distinct : (s6Step380ExitGvRow.sign::s6Step380ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380ExitGv_owned : (s6Step380ExitGvRow.sign::s6Step380ExitGvRow.payload).toFinset⊆s6Step380ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380ExitGvBefore (fun q => (0≤q ∧ q<337) ∨ (338≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380ExitGv_retired : s6Step380ExitGvBefore.retireSet s6Step380ExitGvExtra.toFinset=s6Step380ExitGvAfter := by
  unfold Arena.retireSet s6Step380ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step380ExitGvBefore,s6Step380ExitFvAfter,s6Step380ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step380ExitGv_checked : planRowResizeLog s6Step380ExitGvBefore s6Step380ExitGvRow 206 []=
    some (s6Step380ExitGvAfter,s6Step380ExitGvOut,shrinkRow 775 s6Step380ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step380ExitGvBefore s6Step380ExitGvRow 206 s6Step380ExitGv_distinct s6Step380ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step380ExitGvRow.payload.take 206) s6Step380ExitGvRow.sign=s6Step380ExitGvOut := by decide +kernel
  have hi : s6Step380ExitGvRow.payload.drop 206=s6Step380ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step380ExitGv_retired] at result
  exact result

private theorem s6Step380ExitBank_rows : planWindowRowsLog s6Step380ExitGBefore [(s6Step380ExitGRow,81),(s6Step380ExitFRow,81),(s6Step380ExitFvRow,206),(s6Step380ExitGvRow,206)] [[],[],[],[]]=
    some (s6Step380ExitGvAfter,[s6Step380ExitGOut,s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut],(shrinkRow 777 s6Step380ExitGExtra ++ (shrinkRow 795 s6Step380ExitFExtra ++ (shrinkRow 776 s6Step380ExitFvExtra ++ (shrinkRow 775 s6Step380ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step380ExitGvAfter [] []=some (s6Step380ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step380ExitGvBefore s6Step380ExitGvAfter s6Step380ExitGvAfter
    s6Step380ExitGvRow s6Step380ExitGvOut 206 [] [] [] []
    (shrinkRow 775 s6Step380ExitGvExtra) ([]) s6Step380ExitGv_Incoming s6Step380ExitGv_checked h4 s6Step380ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step380ExitFvBefore s6Step380ExitFvAfter s6Step380ExitGvAfter
    s6Step380ExitFvRow s6Step380ExitFvOut 206 [] [(s6Step380ExitGvRow,206)] [[]] [s6Step380ExitGvOut]
    (shrinkRow 776 s6Step380ExitFvExtra) ((shrinkRow 775 s6Step380ExitGvExtra ++ [])) s6Step380ExitFv_Incoming s6Step380ExitFv_checked h3 s6Step380ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step380ExitFBefore s6Step380ExitFAfter s6Step380ExitGvAfter
    s6Step380ExitFRow s6Step380ExitFOut 81 [] [(s6Step380ExitFvRow,206),(s6Step380ExitGvRow,206)] [[],[]] [s6Step380ExitFvOut,s6Step380ExitGvOut]
    (shrinkRow 795 s6Step380ExitFExtra) ((shrinkRow 776 s6Step380ExitFvExtra ++ (shrinkRow 775 s6Step380ExitGvExtra ++ []))) s6Step380ExitF_Incoming s6Step380ExitF_checked h2 s6Step380ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step380ExitGBefore s6Step380ExitGAfter s6Step380ExitGvAfter
    s6Step380ExitGRow s6Step380ExitGOut 81 [] [(s6Step380ExitFRow,81),(s6Step380ExitFvRow,206),(s6Step380ExitGvRow,206)] [[],[],[]] [s6Step380ExitFOut,s6Step380ExitFvOut,s6Step380ExitGvOut]
    (shrinkRow 777 s6Step380ExitGExtra) ((shrinkRow 795 s6Step380ExitFExtra ++ (shrinkRow 776 s6Step380ExitFvExtra ++ (shrinkRow 775 s6Step380ExitGvExtra ++ [])))) s6Step380ExitG_Incoming s6Step380ExitG_checked h1 s6Step380ExitG_Outgoing
  exact h0

private theorem s6Step380ExitBank_checked : compileHmrBankResizeLog .exit s6Step380ExitGBefore ⟨s6Step380ExitFRow,s6Step380ExitGRow,s6Step380ExitFvRow,s6Step380ExitGvRow⟩ ⟨81,81,206,206⟩ [[],[],[],[]]=
    some (s6Step380ExitGvAfter,⟨s6Step380ExitFOut,s6Step380ExitGOut,s6Step380ExitFvOut,s6Step380ExitGvOut⟩,(shrinkRow 777 s6Step380ExitGExtra ++ (shrinkRow 795 s6Step380ExitFExtra ++ (shrinkRow 776 s6Step380ExitFvExtra ++ (shrinkRow 775 s6Step380ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step380ExitBank_rows]
  rfl

private theorem s6Step380Add0_apart : Disjoint s6Step380Add0Arena.live s6Step380Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step380Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380Add0_card : s6Step380Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step380Add0_borrowed : s6Step380Add0Arena.checkBorrow (hmrHybridCount s6Step380Add0Arena s6Step380Add0B.length) s6Step380Add0Work=some s6Step380Add0During := by
  have len : s6Step380Add0Work.length=hmrHybridCount s6Step380Add0Arena s6Step380Add0B.length := by
    rw [hmrHybridCount,s6Step380Add0_card]
    decide +kernel
  have nd : s6Step380Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step380Add0Arena s6Step380Add0During s6Step380Add0Work.toFinset s6Step380Add0_bounded s6Step380Add0_apart rfl

private theorem s6Step380Add0_distinct : (857::814::821::(s6Step380Add0A++s6Step380Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380Add0_owned : (857::814::821::(s6Step380Add0A++s6Step380Add0B)).toFinset⊆s6Step380Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step380Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380Add0_checked : compileHmrHybridCinLog s6Step380Add0Arena 814 857 821 s6Step380Add0A s6Step380Add0B s6Step380Add0Work=some s6Step380Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step380Add0Arena s6Step380Add0During 814 857 821 s6Step380Add0A s6Step380Add0B s6Step380Add0Work
    (by decide +kernel) (by decide +kernel) s6Step380Add0_distinct
    (fun q hq => s6Step380Add0_owned (List.mem_toFinset.mpr hq)) s6Step380Add0_borrowed

private theorem s6Step380Add1_apart : Disjoint s6Step380Add1Arena.live s6Step380Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step380Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380Add1_card : s6Step380Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step380Add1_borrowed : s6Step380Add1Arena.checkBorrow (hmrHybridCount s6Step380Add1Arena s6Step380Add1B.length) s6Step380Add1Work=some s6Step380Add1During := by
  have len : s6Step380Add1Work.length=hmrHybridCount s6Step380Add1Arena s6Step380Add1B.length := by
    rw [hmrHybridCount,s6Step380Add1_card]
    decide +kernel
  have nd : s6Step380Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step380Add1Arena s6Step380Add1During s6Step380Add1Work.toFinset s6Step380Add1_bounded s6Step380Add1_apart rfl

private theorem s6Step380Add1_distinct : (857::814::821::(s6Step380Add1A++s6Step380Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380Add1_owned : (857::814::821::(s6Step380Add1A++s6Step380Add1B)).toFinset⊆s6Step380Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step380Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380Add1_checked : compileHmrHybridCinLog s6Step380Add1Arena 814 857 821 s6Step380Add1A s6Step380Add1B s6Step380Add1Work=some s6Step380Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step380Add1Arena s6Step380Add1During 814 857 821 s6Step380Add1A s6Step380Add1B s6Step380Add1Work
    (by decide +kernel) (by decide +kernel) s6Step380Add1_distinct
    (fun q hq => s6Step380Add1_owned (List.mem_toFinset.mpr hq)) s6Step380Add1_borrowed

private theorem s6Step380F4_apart : Disjoint (s6Step380Add0A++s6Step380Add0B).toFinset (s6Step380Add1A++s6Step380Add1B).toFinset := by
  have nd : ((s6Step380Add0A++s6Step380Add0B)++(s6Step380Add1A++s6Step380Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step380F4_carry : s6Step380F4FlagArena.checkBorrow 1 [821]=some s6Step380Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step380F4FlagArena,s6Step380HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step380F4FlagArena,s6Step380HeadFvAfter,s6Step380Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380F4_distinct : (850::814::857::821::((s6Step380Add0A++s6Step380Add1A)++(s6Step380Add0B++s6Step380Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380F4_flag : s6Step380HeadFvAfter.checkBorrow 1 [857]=some s6Step380F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step380HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step380F4_owned : (850::814::((s6Step380Add0A++s6Step380Add1A)++(s6Step380Add0B++s6Step380Add1B))).toFinset⊆s6Step380HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step380HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380F4_checked : compileHmrHybridF4Log s6Step380HeadFvAfter 850 814 s6Step380Add0A s6Step380Add0B s6Step380Add1A s6Step380Add1B [857] [821] s6Step380Add0Work s6Step380Add1Work=some s6Step380F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step380HeadFvAfter s6Step380F4FlagArena s6Step380Add0Arena s6Step380Add0During s6Step380Add1During 850 814
    s6Step380Add0A s6Step380Add0B s6Step380Add1A s6Step380Add1B [857] [821] s6Step380Add0Work s6Step380Add1Work
    (fun q hq => s6Step380F4_owned (List.mem_toFinset.mpr hq)) s6Step380F4_flag s6Step380F4_carry
    s6Step380F4_distinct s6Step380F4_apart s6Step380Add0_checked s6Step380Add1_checked

private theorem s6Step380Front_branch : s6Step380FrontSigmaArena.checkBorrow 1 [814]=some s6Step380HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step380FrontSigmaArena,s6Step380EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step380FrontSigmaArena,s6Step380EntryGvAfter,s6Step380HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380Front_entry : HmrFrontEntryValid s6Step380EntryFBefore s6Step380FrontBank 82 206 ⟨81,81,206,206⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step380FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step380EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step380EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step380FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step380Front_sigma : s6Step380EntryGvAfter.checkBorrow 1 [850]=some s6Step380FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step380EntryGvAfter,arenaWires]
  · rfl

private def s6Step380HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380HeadFBefore : Arena := s6Step380HeadGAfter

private def s6Step380HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337],795⟩

private def s6Step380HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step380HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890],777⟩

private def s6Step380HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩

private theorem s6Step380HeadBank_incomingDistinct : ([s6Step380HeadGRow,s6Step380HeadFRow,s6Step380HeadGvRow,s6Step380HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380HeadF_Incoming : rowsOwned s6Step380HeadFBefore [s6Step380HeadFRow,s6Step380HeadGvRow,s6Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380HeadGRow,s6Step380HeadFRow,s6Step380HeadGvRow,s6Step380HeadFvRow] 1 s6Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380HeadBank_outgoingOwned : rowsOwned s6Step380HeadFvAfter [s6Step380HeadGOut,s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step380HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380HeadF_Outgoing : rowsOwned s6Step380HeadFvAfter [s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut] :=
  hmrRows_owned_drop s6Step380HeadFvAfter [s6Step380HeadGOut,s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut] 1 s6Step380HeadBank_outgoingOwned

private theorem s6Step380HeadF_distinct : (s6Step380HeadFRow.sign::s6Step380HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380HeadF_owned : (s6Step380HeadFRow.sign::s6Step380HeadFRow.payload).toFinset⊆s6Step380HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380HeadF_reserved : s6Step380HeadFBefore.reserve s6Step380HeadFFresh.toFinset=some s6Step380HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380HeadFFresh,arenaWires]
  · norm_num [s6Step380HeadFBefore,s6Step380HeadGAfter,s6Step380HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step380HeadFAfter,s6Step380HeadFBefore,s6Step380HeadGAfter,s6Step380HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380HeadF_checked : planRowResizeLog s6Step380HeadFBefore s6Step380HeadFRow 83 s6Step380HeadFFresh=
    some (s6Step380HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 876],795⟩,growRow 795 s6Step380HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step380HeadFBefore s6Step380HeadFAfter s6Step380HeadFRow 83 s6Step380HeadFFresh
    s6Step380HeadF_distinct s6Step380HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380HeadF_reserved
  have rowEq : WindowRow.mk (s6Step380HeadFRow.payload++s6Step380HeadFFresh) s6Step380HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step380HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step380HeadFvBefore : Arena := s6Step380HeadGvAfter

private theorem s6Step380HeadFv_Incoming : rowsOwned s6Step380HeadFvBefore [s6Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380HeadGRow,s6Step380HeadFRow,s6Step380HeadGvRow,s6Step380HeadFvRow] 3 s6Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380HeadFv_Outgoing : rowsOwned s6Step380HeadFvAfter [s6Step380HeadFvOut] :=
  hmrRows_owned_drop s6Step380HeadFvAfter [s6Step380HeadGOut,s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut] 3 s6Step380HeadBank_outgoingOwned

private theorem s6Step380HeadFv_distinct : (s6Step380HeadFvRow.sign::s6Step380HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380HeadFv_owned : (s6Step380HeadFvRow.sign::s6Step380HeadFvRow.payload).toFinset⊆s6Step380HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380HeadFv_reserved : s6Step380HeadFvBefore.reserve s6Step380HeadFvFresh.toFinset=some s6Step380HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380HeadFvFresh,arenaWires]
  · norm_num [s6Step380HeadFvBefore,s6Step380HeadGvAfter,s6Step380HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step380HeadFvAfter,s6Step380HeadFvBefore,s6Step380HeadGvAfter,s6Step380HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380HeadFv_checked : planRowResizeLog s6Step380HeadFvBefore s6Step380HeadFvRow 207 s6Step380HeadFvFresh=
    some (s6Step380HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 839],776⟩,growRow 776 s6Step380HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step380HeadFvBefore s6Step380HeadFvAfter s6Step380HeadFvRow 207 s6Step380HeadFvFresh
    s6Step380HeadFv_distinct s6Step380HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step380HeadFvRow.payload++s6Step380HeadFvFresh) s6Step380HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 839],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step380HeadG_Incoming : rowsOwned s6Step380HeadGBefore [s6Step380HeadGRow,s6Step380HeadFRow,s6Step380HeadGvRow,s6Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380HeadGRow,s6Step380HeadFRow,s6Step380HeadGvRow,s6Step380HeadFvRow] 0 s6Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380HeadG_Outgoing : rowsOwned s6Step380HeadFvAfter [s6Step380HeadGOut,s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut] :=
  hmrRows_owned_drop s6Step380HeadFvAfter [s6Step380HeadGOut,s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut] 0 s6Step380HeadBank_outgoingOwned

private theorem s6Step380HeadG_distinct : (s6Step380HeadGRow.sign::s6Step380HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380HeadG_owned : (s6Step380HeadGRow.sign::s6Step380HeadGRow.payload).toFinset⊆s6Step380HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380HeadG_reserved : s6Step380HeadGBefore.reserve s6Step380HeadGFresh.toFinset=some s6Step380HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380HeadGFresh,arenaWires]
  · norm_num [s6Step380HeadGBefore,s6Step380HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step380HeadGAfter,s6Step380HeadGBefore,s6Step380HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380HeadG_checked : planRowResizeLog s6Step380HeadGBefore s6Step380HeadGRow 83 s6Step380HeadGFresh=
    some (s6Step380HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890, 863],777⟩,growRow 777 s6Step380HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step380HeadGBefore s6Step380HeadGAfter s6Step380HeadGRow 83 s6Step380HeadGFresh
    s6Step380HeadG_distinct s6Step380HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380HeadG_reserved
  have rowEq : WindowRow.mk (s6Step380HeadGRow.payload++s6Step380HeadGFresh) s6Step380HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 890, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step380HeadGvBefore : Arena := s6Step380HeadFAfter

private theorem s6Step380HeadGv_Incoming : rowsOwned s6Step380HeadGvBefore [s6Step380HeadGvRow,s6Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step380HeadGRow,s6Step380HeadFRow,s6Step380HeadGvRow,s6Step380HeadFvRow] 2 s6Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step380HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step380HeadGv_Outgoing : rowsOwned s6Step380HeadFvAfter [s6Step380HeadGvOut,s6Step380HeadFvOut] :=
  hmrRows_owned_drop s6Step380HeadFvAfter [s6Step380HeadGOut,s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut] 2 s6Step380HeadBank_outgoingOwned

private theorem s6Step380HeadGv_distinct : (s6Step380HeadGvRow.sign::s6Step380HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step380HeadGv_owned : (s6Step380HeadGvRow.sign::s6Step380HeadGvRow.payload).toFinset⊆s6Step380HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step380HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step380HeadGv_reserved : s6Step380HeadGvBefore.reserve s6Step380HeadGvFresh.toFinset=some s6Step380HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step380HeadGvFresh,arenaWires]
  · norm_num [s6Step380HeadGvBefore,s6Step380HeadFAfter,s6Step380HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step380HeadGvAfter,s6Step380HeadGvBefore,s6Step380HeadFAfter,s6Step380HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step380HeadGv_checked : planRowResizeLog s6Step380HeadGvBefore s6Step380HeadGvRow 207 s6Step380HeadGvFresh=
    some (s6Step380HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 818],775⟩,growRow 775 s6Step380HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step380HeadGvBefore s6Step380HeadGvAfter s6Step380HeadGvRow 207 s6Step380HeadGvFresh
    s6Step380HeadGv_distinct s6Step380HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step380HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step380HeadGvRow.payload++s6Step380HeadGvFresh) s6Step380HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 818],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step380HeadBank_rows : planWindowRowsLog s6Step380HeadGBefore [(s6Step380HeadGRow,83),(s6Step380HeadFRow,83),(s6Step380HeadGvRow,207),(s6Step380HeadFvRow,207)] [s6Step380HeadGFresh,s6Step380HeadFFresh,s6Step380HeadGvFresh,s6Step380HeadFvFresh]=
    some (s6Step380HeadFvAfter,[s6Step380HeadGOut,s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut],(growRow 777 s6Step380HeadGFresh ++ (growRow 795 s6Step380HeadFFresh ++ (growRow 775 s6Step380HeadGvFresh ++ (growRow 776 s6Step380HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step380HeadFvAfter [] []=some (s6Step380HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step380HeadFvBefore s6Step380HeadFvAfter s6Step380HeadFvAfter
    s6Step380HeadFvRow s6Step380HeadFvOut 207 s6Step380HeadFvFresh [] [] []
    (growRow 776 s6Step380HeadFvFresh) ([]) s6Step380HeadFv_Incoming s6Step380HeadFv_checked h4 s6Step380HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step380HeadGvBefore s6Step380HeadGvAfter s6Step380HeadFvAfter
    s6Step380HeadGvRow s6Step380HeadGvOut 207 s6Step380HeadGvFresh [(s6Step380HeadFvRow,207)] [s6Step380HeadFvFresh] [s6Step380HeadFvOut]
    (growRow 775 s6Step380HeadGvFresh) ((growRow 776 s6Step380HeadFvFresh ++ [])) s6Step380HeadGv_Incoming s6Step380HeadGv_checked h3 s6Step380HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step380HeadFBefore s6Step380HeadFAfter s6Step380HeadFvAfter
    s6Step380HeadFRow s6Step380HeadFOut 83 s6Step380HeadFFresh [(s6Step380HeadGvRow,207),(s6Step380HeadFvRow,207)] [s6Step380HeadGvFresh,s6Step380HeadFvFresh] [s6Step380HeadGvOut,s6Step380HeadFvOut]
    (growRow 795 s6Step380HeadFFresh) ((growRow 775 s6Step380HeadGvFresh ++ (growRow 776 s6Step380HeadFvFresh ++ []))) s6Step380HeadF_Incoming s6Step380HeadF_checked h2 s6Step380HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step380HeadGBefore s6Step380HeadGAfter s6Step380HeadFvAfter
    s6Step380HeadGRow s6Step380HeadGOut 83 s6Step380HeadGFresh [(s6Step380HeadFRow,83),(s6Step380HeadGvRow,207),(s6Step380HeadFvRow,207)] [s6Step380HeadFFresh,s6Step380HeadGvFresh,s6Step380HeadFvFresh] [s6Step380HeadFOut,s6Step380HeadGvOut,s6Step380HeadFvOut]
    (growRow 777 s6Step380HeadGFresh) ((growRow 795 s6Step380HeadFFresh ++ (growRow 775 s6Step380HeadGvFresh ++ (growRow 776 s6Step380HeadFvFresh ++ [])))) s6Step380HeadG_Incoming s6Step380HeadG_checked h1 s6Step380HeadG_Outgoing
  exact h0

private theorem s6Step380HeadBank_checked : compileHmrBankResizeLog .headroom s6Step380HeadGBefore ⟨s6Step380HeadFRow,s6Step380HeadGRow,s6Step380HeadFvRow,s6Step380HeadGvRow⟩ ⟨83,83,207,207⟩ [s6Step380HeadGFresh,s6Step380HeadFFresh,s6Step380HeadGvFresh,s6Step380HeadFvFresh]=
    some (s6Step380HeadFvAfter,⟨s6Step380HeadFOut,s6Step380HeadGOut,s6Step380HeadFvOut,s6Step380HeadGvOut⟩,(growRow 777 s6Step380HeadGFresh ++ (growRow 795 s6Step380HeadFFresh ++ (growRow 775 s6Step380HeadGvFresh ++ (growRow 776 s6Step380HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step380HeadBank_rows]
  rfl

private theorem s6Step380Front_checked : compileHmrSourceFrontLog s6Step380EntryFBefore s6Step380FrontBank 82 206 ⟨81,81,206,206⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step380FrontLog=some s6Step380FrontPlan := by
  have pairEq : s6Step380FrontPair=⟨s6Step380HeadFRow,s6Step380HeadGRow,s6Step380HeadFvRow,s6Step380HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step380FrontHead=⟨s6Step380ExitFRow,s6Step380ExitGRow,s6Step380ExitFvRow,s6Step380ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step380Add0A=s6Step380FrontHead.f.wires := by decide +kernel
  have gEq : s6Step380Add0B=s6Step380FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step380Add1A=s6Step380FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step380Add1B=s6Step380FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step380EntryFBefore s6Step380FrontBank 82 206 ⟨81,81,206,206⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step380FrontLog s6Step380FrontPlan
  · exact s6Step380Front_entry
  · exact s6Step380EntryBank_checked
  · exact s6Step380Front_sigma
  · rfl
  · exact s6Step380Front_branch
  · rfl
  · simpa only [s6Step380FrontPlan,pairEq] using s6Step380HeadBank_checked
  · simpa only [s6Step380FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step380F4_checked
  · exact s6Step380Counter_checked
  · rfl
  · simpa only [s6Step380FrontPlan,headEq] using s6Step380ExitBank_checked

private theorem s6Step380Complete_explicit_checked : compileHmrEarlyStepLog s6Step380EntryFBefore s6Step380FrontBank 82 206 ⟨81,81,206,206⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step380CompleteLog=some s6Step380CompletePlan := by
  let Q := s6Step380EarlyControlPlan
  have hq := s6Step380EarlyControl_plan_checked
  have fv1 : s6Step380CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step380CompleteOut.fv.payload[2]?.getD s6Step380CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step380CompleteOut.fv.payload[3]?.getD s6Step380CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step380CompleteOut.fv.payload[4]?.getD s6Step380CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step380EntryFBefore s6Step380EarlyControlArena s6Step380FrontBank 82 206 ⟨81,81,206,206⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step380CompleteLog s6Step380FrontPlan Q
    s6Step380Front_checked s6Step380Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step380Complete_owned s6Step380Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step380EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 850 s6Step380CompleteOut.fv.second (s6Step380CompleteOut.fv.payload[2]?.getD s6Step380CompleteOut.fv.sign) (s6Step380CompleteOut.fv.payload[3]?.getD s6Step380CompleteOut.fv.sign) (s6Step380CompleteOut.fv.payload[4]?.getD s6Step380CompleteOut.fv.sign) 814 60 s6Step380EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep380Arena : Arena := s6Step380EntryFBefore
def s6PrivateStep380Bank : WindowBank := s6Step380FrontBank
def s6PrivateStep380Spec : HmrSourceWalkStepLog := ⟨82,206,⟨81,81,206,206⟩,60,.early s6Step380CompleteLog⟩
def s6PrivateStep380Plan : HmrSourceStepPlan := .early s6Step380CompletePlan
theorem s6PrivateStep380_source : s6PrivateStep380Spec=s6ObservedLogs368[12] := rfl
theorem s6PrivateStep380_checked : compileHmrSourceStepLog s6PrivateStep380Arena s6PrivateStep380Bank
    s6PrivateStep380Spec.fgWidth s6PrivateStep380Spec.vWidth s6PrivateStep380Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 380 s6PrivateStep380Spec.need none s6PrivateStep380Spec.log=some s6PrivateStep380Plan := by
  change compileHmrSourceStepLog s6Step380EntryFBefore s6Step380FrontBank 82 206 ⟨81,81,206,206⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 380 60 none (.early s6Step380CompleteLog)=some (.early s6Step380CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 380<498)]
  rw [s6Step380Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
