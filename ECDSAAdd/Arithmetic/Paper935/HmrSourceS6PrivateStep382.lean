import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep380
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

private def s6Step382CompleteMoves : List (Wire × Wire) := [(868,336)]

private def s6Step382EarlyControlLog : HmrEarlyControlLog := ⟨[868, 890, 864, 850, 818],[857],[821],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step382FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [850], [], []],[[818], [864], [890], [863]],[[], [], [], []]⟩,[814],[803],[857],[821],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 821, 843, 877]⟩

private def s6Step382CompleteLog : HmrEarlyStepLog := ⟨s6Step382FrontLog,s6Step382CompleteMoves,s6Step382EarlyControlLog⟩

private def s6Step382ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335],795⟩

private def s6Step382ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876, 863],776⟩

private def s6Step382ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],777⟩

private def s6Step382ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩

private def s6Step382FrontOut : WindowBank := ⟨s6Step382ExitFOut,s6Step382ExitGOut,s6Step382ExitFvOut,s6Step382ExitGvOut⟩

private def s6Step382CompleteOut : WindowBank := s6Step382FrontOut.repacked s6Step382CompleteMoves

private def s6Step382EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step382EarlyControlPositiveArena,[857],s6Step382EarlyControlEqualityArena,[821],⟨⟨814,false⟩,[⟨⟨857,false⟩,821⟩]⟩⟩

private def s6Step382EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,868⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,864⟩,⟨⟨770,false⟩,850⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step382EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step382EarlyControlZeroArena,s6Step382EarlyControlZeroPlan,s6Step382EarlyControlClassPlan,s6Step382EarlyControlFlagArena,s6Step382EarlyControlFittedArena,s6Step382EarlyControlHistoryArena,s6Step382EarlyControlSigmaArena,s6Step382EarlyControlOutputArena,s6Step382EarlyControlLog⟩

private def s6Step382CounterWork : List Wire := [857, 821, 843, 877]

private theorem s6Step382Counter_bounded : s6Step382CounterWork.toFinset⊆arenaWires := by norm_num [s6Step382CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step382HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382CounterDuring : Arena := ⟨s6Step382HeadFvAfter.live∪s6Step382CounterWork.toFinset,Finset.union_subset s6Step382HeadFvAfter.bounded s6Step382Counter_bounded⟩

private def s6Step382EntryFFresh : List Wire := []

private def s6Step382EntryFvFresh : List Wire := []

private def s6Step382EntryGFresh : List Wire := [850]

private def s6Step382EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EntryGvAfter : Arena := s6Step382EntryGAfter

private def s6Step382EntryGvFresh : List Wire := []

private def s6Step382ExitFExtra : List Wire := [336, 864]

private def s6Step382ExitGExtra : List Wire := [850, 818]

private def s6Step382ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<336) ∨ (337≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382ExitGvExtra : List Wire := [890]

private def s6Step382Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step382Add0_bounded : s6Step382Add0Work.toFinset⊆arenaWires := by
  have h : s6Step382Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step382Add0During : Arena := ⟨s6Step382Add0Arena.live∪s6Step382Add0Work.toFinset,Finset.union_subset s6Step382Add0Arena.bounded s6Step382Add0_bounded⟩

private def s6Step382Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step382Add1_bounded : s6Step382Add1Work.toFinset⊆arenaWires := by
  have h : s6Step382Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step382Add1During : Arena := ⟨s6Step382Add1Arena.live∪s6Step382Add1Work.toFinset,Finset.union_subset s6Step382Add1Arena.bounded s6Step382Add1_bounded⟩

private def s6Step382F4FlagArena : Arena := ⟨s6Step382HeadFvAfter.live∪{857},Finset.union_subset s6Step382HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step382F4Plan : HmrHybridF4Plan := ⟨s6Step382F4FlagArena,[857],s6Step382Add0Arena,[821],s6Step382Add0During,s6Step382Add0Work,s6Step382Add1During,s6Step382Add1Work⟩

private def s6Step382HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 864],795⟩

private def s6Step382HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876, 863],776⟩

private def s6Step382HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850, 818],777⟩

private def s6Step382HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839, 890],775⟩

private def s6Step382FrontHead : WindowBank := ⟨s6Step382HeadFOut,s6Step382HeadGOut,s6Step382HeadFvOut,s6Step382HeadGvOut⟩

private def s6Step382EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step382EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩

private def s6Step382EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850],777⟩

private def s6Step382EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩

private def s6Step382FrontPair : WindowBank := ⟨s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut⟩

private def s6Step382FrontSigmaArena : Arena := ⟨s6Step382EntryGvAfter.live∪{814},Finset.union_subset s6Step382EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step382HeadFFresh : List Wire := [864]

private def s6Step382HeadFvFresh : List Wire := [863]

private def s6Step382HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382HeadGFresh : List Wire := [818]

private def s6Step382HeadGvFresh : List Wire := [890]

private def s6Step382FrontPlan : HmrSourceFront := ⟨s6Step382EntryGvAfter,s6Step382FrontPair,(growRow 795 s6Step382EntryFFresh ++ (growRow 777 s6Step382EntryGFresh ++ (growRow 776 s6Step382EntryFvFresh ++ (growRow 775 s6Step382EntryGvFresh ++ [])))),s6Step382FrontSigmaArena,[814],s6Step382HeadGBefore,[803],
  s6Step382HeadFvAfter,s6Step382FrontHead,(growRow 777 s6Step382HeadGFresh ++ (growRow 795 s6Step382HeadFFresh ++ (growRow 775 s6Step382HeadGvFresh ++ (growRow 776 s6Step382HeadFvFresh ++ [])))),s6Step382F4Plan,s6Step382CounterDuring,s6Step382CounterWork,s6Step382ExitGvAfter,s6Step382FrontOut,(shrinkRow 777 s6Step382ExitGExtra ++ (shrinkRow 795 s6Step382ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step382ExitGvExtra ++ []))))⟩

private def s6Step382CompletePlan : HmrEarlyStepPlan := ⟨s6Step382FrontPlan,s6Step382EarlyControlArena,s6Step382EarlyControlPlan,s6Step382CompleteMoves⟩

private theorem s6Step382Complete_apart : List.Disjoint (s6Step382CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [814, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step382CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[814, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step382Complete_owned : (s6Step382CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step382CompleteMoveArena : Arena := ⟨s6Step382ExitGvAfter.live∪{336},Finset.union_subset s6Step382ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step382Complete_repack : s6Step382ExitGvAfter.checkRepack s6Step382CompleteMoves=some s6Step382EarlyControlArena := by
  have owned : 868∈s6Step382ExitGvAfter.live := by norm_num [s6Step382ExitGvAfter,arenaWires]
  have reserve : s6Step382ExitGvAfter.reserve {336}=some s6Step382CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step382ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step382CompleteMoveArena.retireSet {868}=s6Step382EarlyControlArena := by
    unfold Arena.retireSet s6Step382EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step382CompleteMoveArena,s6Step382ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step382CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step382CompleteMoveArena.retireSet {868}).checkRepack []=some s6Step382EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step382EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s6Step382EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_branch : compileHmrBranchRetirement s6Step382EarlyControlSigmaArena 803=some s6Step382EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step382EarlyControl_branchOwned
  · ext q
    simp [s6Step382EarlyControlOutputArena,s6Step382EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step382EarlyControl_classEqualityBorrow : s6Step382EarlyControlPositiveArena.checkBorrow (([814, 857] : List Wire).length-1) s6Step382EarlyControlLog.classWork=some s6Step382EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step382EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step382EarlyControlEqualityArena,s6Step382EarlyControlPositiveArena,s6Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step382EarlyControl_classEqualityOwned : ([814, 857] : List Wire).toFinset⊆s6Step382EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_classEquality : compileHmrEqualityLog s6Step382EarlyControlPositiveArena [814, 857] 0 s6Step382EarlyControlLog.classWork=some (s6Step382EarlyControlEqualityArena,s6Step382EarlyControlLog.classWork,s6Step382EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step382EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step382EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step382EarlyControl_classOwned : ([769, 818, 814] : List Wire).toFinset⊆s6Step382EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_positiveBorrow : s6Step382EarlyControlZeroArena.checkBorrow (1) s6Step382EarlyControlLog.positiveWork=some s6Step382EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step382EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step382EarlyControlPositiveArena,s6Step382EarlyControlZeroArena,s6Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step382EarlyControl_class : compileHmrSourceClassLog s6Step382EarlyControlZeroArena false 769 s6Step382EarlyControlZeroPlan.top 0 814 s6Step382EarlyControlLog.positiveWork s6Step382EarlyControlLog.classWork=some s6Step382EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step382EarlyControlClassPlan s6Step382EarlyControlZeroArena false 769 s6Step382EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s6Step382EarlyControl_classOwned
  · exact s6Step382EarlyControl_positiveBorrow
  · exact s6Step382EarlyControl_classEquality

private theorem s6Step382EarlyControl_entryRecordOwned : ([803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s6Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_fitBorrow : s6Step382EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step382EarlyControlLog.recordFresh=some s6Step382EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step382EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step382EarlyControlFittedArena,s6Step382EarlyControlFlagArena,s6Step382EarlyControlLog,arenaWires]

private theorem s6Step382EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step382EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_fit : compileHmrRecordGrowLog s6Step382EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step382EarlyControlLog.recordFresh=some s6Step382EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step382EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step382EarlyControl_fitBorrow

private theorem s6Step382EarlyControl_flagsBorrow : s6Step382EarlyControlEqualityArena.checkBorrow (6) s6Step382EarlyControlLog.flagWork=some s6Step382EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step382EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step382EarlyControlFlagArena,s6Step382EarlyControlEqualityArena,s6Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step382EarlyControl_flagsOwned : ([821, 253, 252, 251] : List Wire).toFinset⊆s6Step382EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_flags : compileHmrFlagsLog s6Step382EarlyControlClassPlan.equalityArena s6Step382EarlyControlClassPlan.equality.top 253 252 251 s6Step382EarlyControlLog.flagWork=some s6Step382EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step382EarlyControl_flagsOwned⟩
  · exact s6Step382EarlyControl_flagsBorrow

private theorem s6Step382EarlyControl_historyBorrow : s6Step382EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step382EarlyControlLog.recordFresh=some s6Step382EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step382EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step382EarlyControlHistoryArena,s6Step382EarlyControlArena,s6Step382EarlyControlLog,arenaWires]

private theorem s6Step382EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_history : compileHmrRecordGrowLog s6Step382EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step382EarlyControlLog.recordFresh=some s6Step382EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step382EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step382EarlyControl_historyBorrow

private theorem s6Step382EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s6Step382EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s6Step382EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_sigmaRelease : s6Step382EarlyControlHistoryArena.release {814} (fun _ => false)=some s6Step382EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step382EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step382EarlyControlSigmaArena,s6Step382EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step382EarlyControl_sigma : compileHmrSigmaDropLog s6Step382EarlyControlHistoryArena false 0 0 254 814 []=some s6Step382EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step382EarlyControl_sigmaOwned⟩
  · exact s6Step382EarlyControl_sigmaRelease

private theorem s6Step382EarlyControl_zeroBorrow : s6Step382EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step382EarlyControlLog.zeroWork=some s6Step382EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step382EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step382EarlyControlZeroArena,s6Step382EarlyControlArena,s6Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step382EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step382EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EarlyControl_zero : compileHmrEqualityLog s6Step382EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step382EarlyControlLog.zeroWork=some (s6Step382EarlyControlZeroArena,s6Step382EarlyControlLog.zeroWork,s6Step382EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step382EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step382EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step382EarlyControl_logged : s6Step382EarlyControlPlan.Logged s6Step382EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 254 253 252 251 803 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step382EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step382EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step382EarlyControl_zero
  · exact s6Step382EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step382EarlyControl_flags
  · exact s6Step382EarlyControl_fit
  · exact s6Step382EarlyControl_history
  · exact s6Step382EarlyControl_sigma
  · exact s6Step382EarlyControl_branch

private theorem s6Step382EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step382EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 254 253 252 251 803 60 s6Step382EarlyControlLog=some s6Step382EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step382EarlyControlPlan s6Step382EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 254 253 252 251 803 60 s6Step382EarlyControl_logged

private def s6Step382EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step382EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩

private def s6Step382EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],777⟩

private def s6Step382EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩

private def s6Step382FrontBank : WindowBank := ⟨s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow⟩

private def s6Step382Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 864, 795]

private def s6Step382Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850, 818, 777]

private def s6Step382Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876, 863, 776]

private def s6Step382Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839, 890, 775]

private theorem s6Step382Counter_apart : Disjoint s6Step382HeadFvAfter.live s6Step382CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step382HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382Counter_borrowed : s6Step382HeadFvAfter.checkBorrow 4 s6Step382CounterWork=some s6Step382CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step382HeadFvAfter s6Step382CounterDuring s6Step382CounterWork.toFinset s6Step382Counter_bounded s6Step382Counter_apart rfl

private theorem s6Step382Counter_owned : (814::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step382HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step382HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382Counter_checked : compileHmrCounterStepLog s6Step382HeadFvAfter true 814 [774, 773, 772, 771, 770, 769] s6Step382CounterWork=some s6Step382CounterDuring := by
  have owned : ∀q∈814::[774, 773, 772, 771, 770, 769],q∈s6Step382HeadFvAfter.live := fun q hq => s6Step382Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step382Counter_borrowed

private def s6Step382EntryFAfter : Arena := s6Step382EntryFBefore

private theorem s6Step382EntryBank_incomingDistinct : ([s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382EntryF_Incoming : rowsOwned s6Step382EntryFBefore [s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow] 0 s6Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382EntryBank_outgoingOwned : rowsOwned s6Step382EntryGvAfter [s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step382EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382EntryF_Outgoing : rowsOwned s6Step382EntryGvAfter [s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut] :=
  hmrRows_owned_drop s6Step382EntryGvAfter [s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut] 0 s6Step382EntryBank_outgoingOwned

private theorem s6Step382EntryF_distinct : (s6Step382EntryFRow.sign::s6Step382EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382EntryF_owned : (s6Step382EntryFRow.sign::s6Step382EntryFRow.payload).toFinset⊆s6Step382EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EntryF_reserved : s6Step382EntryFBefore.reserve s6Step382EntryFFresh.toFinset=some s6Step382EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382EntryFFresh,arenaWires]
  · norm_num [s6Step382EntryFBefore,s6Step382EntryFFresh,arenaWires]
  · simp only [s6Step382EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step382EntryF_checked : planRowResizeLog s6Step382EntryFBefore s6Step382EntryFRow 81 s6Step382EntryFFresh=
    some (s6Step382EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩,growRow 795 s6Step382EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step382EntryFBefore s6Step382EntryFAfter s6Step382EntryFRow 81 s6Step382EntryFFresh
    s6Step382EntryF_distinct s6Step382EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382EntryF_reserved
  have rowEq : WindowRow.mk (s6Step382EntryFRow.payload++s6Step382EntryFFresh) s6Step382EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step382EntryFvAfter : Arena := s6Step382EntryGAfter

private def s6Step382EntryFvBefore : Arena := s6Step382EntryGAfter

private theorem s6Step382EntryFv_Incoming : rowsOwned s6Step382EntryFvBefore [s6Step382EntryFvRow,s6Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow] 2 s6Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382EntryFv_Outgoing : rowsOwned s6Step382EntryGvAfter [s6Step382EntryFvOut,s6Step382EntryGvOut] :=
  hmrRows_owned_drop s6Step382EntryGvAfter [s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut] 2 s6Step382EntryBank_outgoingOwned

private theorem s6Step382EntryFv_distinct : (s6Step382EntryFvRow.sign::s6Step382EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382EntryFv_owned : (s6Step382EntryFvRow.sign::s6Step382EntryFvRow.payload).toFinset⊆s6Step382EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EntryFv_reserved : s6Step382EntryFvBefore.reserve s6Step382EntryFvFresh.toFinset=some s6Step382EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382EntryFvFresh,arenaWires]
  · norm_num [s6Step382EntryFvBefore,s6Step382EntryGAfter,s6Step382EntryFvFresh,arenaWires]
  · simp only [s6Step382EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step382EntryFv_checked : planRowResizeLog s6Step382EntryFvBefore s6Step382EntryFvRow 207 s6Step382EntryFvFresh=
    some (s6Step382EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩,growRow 776 s6Step382EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step382EntryFvBefore s6Step382EntryFvAfter s6Step382EntryFvRow 207 s6Step382EntryFvFresh
    s6Step382EntryFv_distinct s6Step382EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step382EntryFvRow.payload++s6Step382EntryFvFresh) s6Step382EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step382EntryGBefore : Arena := s6Step382EntryFBefore

private theorem s6Step382EntryG_Incoming : rowsOwned s6Step382EntryGBefore [s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow] 1 s6Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382EntryG_Outgoing : rowsOwned s6Step382EntryGvAfter [s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut] :=
  hmrRows_owned_drop s6Step382EntryGvAfter [s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut] 1 s6Step382EntryBank_outgoingOwned

private theorem s6Step382EntryG_distinct : (s6Step382EntryGRow.sign::s6Step382EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382EntryG_owned : (s6Step382EntryGRow.sign::s6Step382EntryGRow.payload).toFinset⊆s6Step382EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EntryG_reserved : s6Step382EntryGBefore.reserve s6Step382EntryGFresh.toFinset=some s6Step382EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382EntryGFresh,arenaWires]
  · norm_num [s6Step382EntryGBefore,s6Step382EntryFBefore,s6Step382EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step382EntryGAfter,s6Step382EntryGBefore,s6Step382EntryFBefore,s6Step382EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step382EntryG_checked : planRowResizeLog s6Step382EntryGBefore s6Step382EntryGRow 81 s6Step382EntryGFresh=
    some (s6Step382EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850],777⟩,growRow 777 s6Step382EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step382EntryGBefore s6Step382EntryGAfter s6Step382EntryGRow 81 s6Step382EntryGFresh
    s6Step382EntryG_distinct s6Step382EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382EntryG_reserved
  have rowEq : WindowRow.mk (s6Step382EntryGRow.payload++s6Step382EntryGFresh) s6Step382EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step382EntryGvBefore : Arena := s6Step382EntryGAfter

private theorem s6Step382EntryGv_Incoming : rowsOwned s6Step382EntryGvBefore [s6Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow] 3 s6Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382EntryGv_Outgoing : rowsOwned s6Step382EntryGvAfter [s6Step382EntryGvOut] :=
  hmrRows_owned_drop s6Step382EntryGvAfter [s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut] 3 s6Step382EntryBank_outgoingOwned

private theorem s6Step382EntryGv_distinct : (s6Step382EntryGvRow.sign::s6Step382EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382EntryGv_owned : (s6Step382EntryGvRow.sign::s6Step382EntryGvRow.payload).toFinset⊆s6Step382EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382EntryGv_reserved : s6Step382EntryGvBefore.reserve s6Step382EntryGvFresh.toFinset=some s6Step382EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382EntryGvFresh,arenaWires]
  · norm_num [s6Step382EntryGvBefore,s6Step382EntryGAfter,s6Step382EntryGvFresh,arenaWires]
  · simp only [s6Step382EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step382EntryGv_checked : planRowResizeLog s6Step382EntryGvBefore s6Step382EntryGvRow 207 s6Step382EntryGvFresh=
    some (s6Step382EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩,growRow 775 s6Step382EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step382EntryGvBefore s6Step382EntryGvAfter s6Step382EntryGvRow 207 s6Step382EntryGvFresh
    s6Step382EntryGv_distinct s6Step382EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step382EntryGvRow.payload++s6Step382EntryGvFresh) s6Step382EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step382EntryBank_rows : planWindowRowsLog s6Step382EntryFBefore [(s6Step382EntryFRow,81),(s6Step382EntryGRow,81),(s6Step382EntryFvRow,207),(s6Step382EntryGvRow,207)] [s6Step382EntryFFresh,s6Step382EntryGFresh,s6Step382EntryFvFresh,s6Step382EntryGvFresh]=
    some (s6Step382EntryGvAfter,[s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut],(growRow 795 s6Step382EntryFFresh ++ (growRow 777 s6Step382EntryGFresh ++ (growRow 776 s6Step382EntryFvFresh ++ (growRow 775 s6Step382EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step382EntryGvAfter [] []=some (s6Step382EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step382EntryGvBefore s6Step382EntryGvAfter s6Step382EntryGvAfter
    s6Step382EntryGvRow s6Step382EntryGvOut 207 s6Step382EntryGvFresh [] [] []
    (growRow 775 s6Step382EntryGvFresh) ([]) s6Step382EntryGv_Incoming s6Step382EntryGv_checked h4 s6Step382EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step382EntryFvBefore s6Step382EntryFvAfter s6Step382EntryGvAfter
    s6Step382EntryFvRow s6Step382EntryFvOut 207 s6Step382EntryFvFresh [(s6Step382EntryGvRow,207)] [s6Step382EntryGvFresh] [s6Step382EntryGvOut]
    (growRow 776 s6Step382EntryFvFresh) ((growRow 775 s6Step382EntryGvFresh ++ [])) s6Step382EntryFv_Incoming s6Step382EntryFv_checked h3 s6Step382EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step382EntryGBefore s6Step382EntryGAfter s6Step382EntryGvAfter
    s6Step382EntryGRow s6Step382EntryGOut 81 s6Step382EntryGFresh [(s6Step382EntryFvRow,207),(s6Step382EntryGvRow,207)] [s6Step382EntryFvFresh,s6Step382EntryGvFresh] [s6Step382EntryFvOut,s6Step382EntryGvOut]
    (growRow 777 s6Step382EntryGFresh) ((growRow 776 s6Step382EntryFvFresh ++ (growRow 775 s6Step382EntryGvFresh ++ []))) s6Step382EntryG_Incoming s6Step382EntryG_checked h2 s6Step382EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step382EntryFBefore s6Step382EntryFAfter s6Step382EntryGvAfter
    s6Step382EntryFRow s6Step382EntryFOut 81 s6Step382EntryFFresh [(s6Step382EntryGRow,81),(s6Step382EntryFvRow,207),(s6Step382EntryGvRow,207)] [s6Step382EntryGFresh,s6Step382EntryFvFresh,s6Step382EntryGvFresh] [s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut]
    (growRow 795 s6Step382EntryFFresh) ((growRow 777 s6Step382EntryGFresh ++ (growRow 776 s6Step382EntryFvFresh ++ (growRow 775 s6Step382EntryGvFresh ++ [])))) s6Step382EntryF_Incoming s6Step382EntryF_checked h1 s6Step382EntryF_Outgoing
  exact h0

private theorem s6Step382EntryBank_checked : compileHmrBankResizeLog .entry s6Step382EntryFBefore ⟨s6Step382EntryFRow,s6Step382EntryGRow,s6Step382EntryFvRow,s6Step382EntryGvRow⟩ ⟨81,81,207,207⟩ [s6Step382EntryFFresh,s6Step382EntryGFresh,s6Step382EntryFvFresh,s6Step382EntryGvFresh]=
    some (s6Step382EntryGvAfter,⟨s6Step382EntryFOut,s6Step382EntryGOut,s6Step382EntryFvOut,s6Step382EntryGvOut⟩,(growRow 795 s6Step382EntryFFresh ++ (growRow 777 s6Step382EntryGFresh ++ (growRow 776 s6Step382EntryFvFresh ++ (growRow 775 s6Step382EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step382EntryBank_rows]
  rfl

private def s6Step382ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<336) ∨ (337≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382ExitFBefore : Arena := s6Step382ExitGAfter

private def s6Step382ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 864],795⟩

private def s6Step382ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876, 863],776⟩

private def s6Step382ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850, 818],777⟩

private def s6Step382ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839, 890],775⟩

private theorem s6Step382ExitBank_incomingDistinct : ([s6Step382ExitGRow,s6Step382ExitFRow,s6Step382ExitFvRow,s6Step382ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382ExitF_Incoming : rowsOwned s6Step382ExitFBefore [s6Step382ExitFRow,s6Step382ExitFvRow,s6Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382ExitGRow,s6Step382ExitFRow,s6Step382ExitFvRow,s6Step382ExitGvRow] 1 s6Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382ExitBank_outgoingOwned : rowsOwned s6Step382ExitGvAfter [s6Step382ExitGOut,s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step382ExitGvAfter (fun q => (0≤q ∧ q<336) ∨ (337≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382ExitF_Outgoing : rowsOwned s6Step382ExitGvAfter [s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut] :=
  hmrRows_owned_drop s6Step382ExitGvAfter [s6Step382ExitGOut,s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut] 1 s6Step382ExitBank_outgoingOwned

private theorem s6Step382ExitF_distinct : (s6Step382ExitFRow.sign::s6Step382ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382ExitF_owned : (s6Step382ExitFRow.sign::s6Step382ExitFRow.payload).toFinset⊆s6Step382ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382ExitF_retired : s6Step382ExitFBefore.retireSet s6Step382ExitFExtra.toFinset=s6Step382ExitFAfter := by
  unfold Arena.retireSet s6Step382ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step382ExitFBefore,s6Step382ExitGAfter,s6Step382ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step382ExitF_checked : planRowResizeLog s6Step382ExitFBefore s6Step382ExitFRow 80 []=
    some (s6Step382ExitFAfter,s6Step382ExitFOut,shrinkRow 795 s6Step382ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step382ExitFBefore s6Step382ExitFRow 80 s6Step382ExitF_distinct s6Step382ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step382ExitFRow.payload.take 80) s6Step382ExitFRow.sign=s6Step382ExitFOut := by decide +kernel
  have hi : s6Step382ExitFRow.payload.drop 80=s6Step382ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step382ExitF_retired] at result
  exact result

private def s6Step382ExitFvAfter : Arena := s6Step382ExitFAfter

private def s6Step382ExitFvBefore : Arena := s6Step382ExitFAfter

private theorem s6Step382ExitFv_Incoming : rowsOwned s6Step382ExitFvBefore [s6Step382ExitFvRow,s6Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382ExitGRow,s6Step382ExitFRow,s6Step382ExitFvRow,s6Step382ExitGvRow] 2 s6Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382ExitFvBefore (fun q => (0≤q ∧ q<336) ∨ (337≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382ExitFv_Outgoing : rowsOwned s6Step382ExitGvAfter [s6Step382ExitFvOut,s6Step382ExitGvOut] :=
  hmrRows_owned_drop s6Step382ExitGvAfter [s6Step382ExitGOut,s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut] 2 s6Step382ExitBank_outgoingOwned

private theorem s6Step382ExitFv_distinct : (s6Step382ExitFvRow.sign::s6Step382ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382ExitFv_owned : (s6Step382ExitFvRow.sign::s6Step382ExitFvRow.payload).toFinset⊆s6Step382ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382ExitFvBefore (fun q => (0≤q ∧ q<336) ∨ (337≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382ExitFv_reserved : s6Step382ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step382ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step382ExitFv_checked : planRowResizeLog s6Step382ExitFvBefore s6Step382ExitFvRow 208 []=
    some (s6Step382ExitFvAfter,s6Step382ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step382ExitFvBefore s6Step382ExitFvAfter s6Step382ExitFvRow 208 []
    s6Step382ExitFv_distinct s6Step382ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step382ExitFvRow.payload++[]) s6Step382ExitFvRow.sign=s6Step382ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step382ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step382ExitG_Incoming : rowsOwned s6Step382ExitGBefore [s6Step382ExitGRow,s6Step382ExitFRow,s6Step382ExitFvRow,s6Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382ExitGRow,s6Step382ExitFRow,s6Step382ExitFvRow,s6Step382ExitGvRow] 0 s6Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382ExitG_Outgoing : rowsOwned s6Step382ExitGvAfter [s6Step382ExitGOut,s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut] :=
  hmrRows_owned_drop s6Step382ExitGvAfter [s6Step382ExitGOut,s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut] 0 s6Step382ExitBank_outgoingOwned

private theorem s6Step382ExitG_distinct : (s6Step382ExitGRow.sign::s6Step382ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382ExitG_owned : (s6Step382ExitGRow.sign::s6Step382ExitGRow.payload).toFinset⊆s6Step382ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382ExitG_retired : s6Step382ExitGBefore.retireSet s6Step382ExitGExtra.toFinset=s6Step382ExitGAfter := by
  unfold Arena.retireSet s6Step382ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step382ExitGBefore,s6Step382ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step382ExitG_checked : planRowResizeLog s6Step382ExitGBefore s6Step382ExitGRow 80 []=
    some (s6Step382ExitGAfter,s6Step382ExitGOut,shrinkRow 777 s6Step382ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step382ExitGBefore s6Step382ExitGRow 80 s6Step382ExitG_distinct s6Step382ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step382ExitGRow.payload.take 80) s6Step382ExitGRow.sign=s6Step382ExitGOut := by decide +kernel
  have hi : s6Step382ExitGRow.payload.drop 80=s6Step382ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step382ExitG_retired] at result
  exact result

private def s6Step382ExitGvBefore : Arena := s6Step382ExitFAfter

private theorem s6Step382ExitGv_Incoming : rowsOwned s6Step382ExitGvBefore [s6Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382ExitGRow,s6Step382ExitFRow,s6Step382ExitFvRow,s6Step382ExitGvRow] 3 s6Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382ExitGvBefore (fun q => (0≤q ∧ q<336) ∨ (337≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382ExitGv_Outgoing : rowsOwned s6Step382ExitGvAfter [s6Step382ExitGvOut] :=
  hmrRows_owned_drop s6Step382ExitGvAfter [s6Step382ExitGOut,s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut] 3 s6Step382ExitBank_outgoingOwned

private theorem s6Step382ExitGv_distinct : (s6Step382ExitGvRow.sign::s6Step382ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382ExitGv_owned : (s6Step382ExitGvRow.sign::s6Step382ExitGvRow.payload).toFinset⊆s6Step382ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382ExitGvBefore (fun q => (0≤q ∧ q<336) ∨ (337≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382ExitGv_retired : s6Step382ExitGvBefore.retireSet s6Step382ExitGvExtra.toFinset=s6Step382ExitGvAfter := by
  unfold Arena.retireSet s6Step382ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step382ExitGvBefore,s6Step382ExitFAfter,s6Step382ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step382ExitGv_checked : planRowResizeLog s6Step382ExitGvBefore s6Step382ExitGvRow 207 []=
    some (s6Step382ExitGvAfter,s6Step382ExitGvOut,shrinkRow 775 s6Step382ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step382ExitGvBefore s6Step382ExitGvRow 207 s6Step382ExitGv_distinct s6Step382ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step382ExitGvRow.payload.take 207) s6Step382ExitGvRow.sign=s6Step382ExitGvOut := by decide +kernel
  have hi : s6Step382ExitGvRow.payload.drop 207=s6Step382ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step382ExitGv_retired] at result
  exact result

private theorem s6Step382ExitBank_rows : planWindowRowsLog s6Step382ExitGBefore [(s6Step382ExitGRow,80),(s6Step382ExitFRow,80),(s6Step382ExitFvRow,208),(s6Step382ExitGvRow,207)] [[],[],[],[]]=
    some (s6Step382ExitGvAfter,[s6Step382ExitGOut,s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut],(shrinkRow 777 s6Step382ExitGExtra ++ (shrinkRow 795 s6Step382ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step382ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step382ExitGvAfter [] []=some (s6Step382ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step382ExitGvBefore s6Step382ExitGvAfter s6Step382ExitGvAfter
    s6Step382ExitGvRow s6Step382ExitGvOut 207 [] [] [] []
    (shrinkRow 775 s6Step382ExitGvExtra) ([]) s6Step382ExitGv_Incoming s6Step382ExitGv_checked h4 s6Step382ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step382ExitFvBefore s6Step382ExitFvAfter s6Step382ExitGvAfter
    s6Step382ExitFvRow s6Step382ExitFvOut 208 [] [(s6Step382ExitGvRow,207)] [[]] [s6Step382ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step382ExitGvExtra ++ [])) s6Step382ExitFv_Incoming s6Step382ExitFv_checked h3 s6Step382ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step382ExitFBefore s6Step382ExitFAfter s6Step382ExitGvAfter
    s6Step382ExitFRow s6Step382ExitFOut 80 [] [(s6Step382ExitFvRow,208),(s6Step382ExitGvRow,207)] [[],[]] [s6Step382ExitFvOut,s6Step382ExitGvOut]
    (shrinkRow 795 s6Step382ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step382ExitGvExtra ++ []))) s6Step382ExitF_Incoming s6Step382ExitF_checked h2 s6Step382ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step382ExitGBefore s6Step382ExitGAfter s6Step382ExitGvAfter
    s6Step382ExitGRow s6Step382ExitGOut 80 [] [(s6Step382ExitFRow,80),(s6Step382ExitFvRow,208),(s6Step382ExitGvRow,207)] [[],[],[]] [s6Step382ExitFOut,s6Step382ExitFvOut,s6Step382ExitGvOut]
    (shrinkRow 777 s6Step382ExitGExtra) ((shrinkRow 795 s6Step382ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step382ExitGvExtra ++ [])))) s6Step382ExitG_Incoming s6Step382ExitG_checked h1 s6Step382ExitG_Outgoing
  exact h0

private theorem s6Step382ExitBank_checked : compileHmrBankResizeLog .exit s6Step382ExitGBefore ⟨s6Step382ExitFRow,s6Step382ExitGRow,s6Step382ExitFvRow,s6Step382ExitGvRow⟩ ⟨80,80,208,207⟩ [[],[],[],[]]=
    some (s6Step382ExitGvAfter,⟨s6Step382ExitFOut,s6Step382ExitGOut,s6Step382ExitFvOut,s6Step382ExitGvOut⟩,(shrinkRow 777 s6Step382ExitGExtra ++ (shrinkRow 795 s6Step382ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step382ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step382ExitBank_rows]
  rfl

private theorem s6Step382Add0_apart : Disjoint s6Step382Add0Arena.live s6Step382Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step382Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382Add0_card : s6Step382Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step382Add0_borrowed : s6Step382Add0Arena.checkBorrow (hmrHybridCount s6Step382Add0Arena s6Step382Add0B.length) s6Step382Add0Work=some s6Step382Add0During := by
  have len : s6Step382Add0Work.length=hmrHybridCount s6Step382Add0Arena s6Step382Add0B.length := by
    rw [hmrHybridCount,s6Step382Add0_card]
    decide +kernel
  have nd : s6Step382Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step382Add0Arena s6Step382Add0During s6Step382Add0Work.toFinset s6Step382Add0_bounded s6Step382Add0_apart rfl

private theorem s6Step382Add0_distinct : (857::803::821::(s6Step382Add0A++s6Step382Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382Add0_owned : (857::803::821::(s6Step382Add0A++s6Step382Add0B)).toFinset⊆s6Step382Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step382Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382Add0_checked : compileHmrHybridCinLog s6Step382Add0Arena 803 857 821 s6Step382Add0A s6Step382Add0B s6Step382Add0Work=some s6Step382Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step382Add0Arena s6Step382Add0During 803 857 821 s6Step382Add0A s6Step382Add0B s6Step382Add0Work
    (by decide +kernel) (by decide +kernel) s6Step382Add0_distinct
    (fun q hq => s6Step382Add0_owned (List.mem_toFinset.mpr hq)) s6Step382Add0_borrowed

private theorem s6Step382Add1_apart : Disjoint s6Step382Add1Arena.live s6Step382Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step382Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382Add1_card : s6Step382Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step382Add1_borrowed : s6Step382Add1Arena.checkBorrow (hmrHybridCount s6Step382Add1Arena s6Step382Add1B.length) s6Step382Add1Work=some s6Step382Add1During := by
  have len : s6Step382Add1Work.length=hmrHybridCount s6Step382Add1Arena s6Step382Add1B.length := by
    rw [hmrHybridCount,s6Step382Add1_card]
    decide +kernel
  have nd : s6Step382Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step382Add1Arena s6Step382Add1During s6Step382Add1Work.toFinset s6Step382Add1_bounded s6Step382Add1_apart rfl

private theorem s6Step382Add1_distinct : (857::803::821::(s6Step382Add1A++s6Step382Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382Add1_owned : (857::803::821::(s6Step382Add1A++s6Step382Add1B)).toFinset⊆s6Step382Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step382Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382Add1_checked : compileHmrHybridCinLog s6Step382Add1Arena 803 857 821 s6Step382Add1A s6Step382Add1B s6Step382Add1Work=some s6Step382Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step382Add1Arena s6Step382Add1During 803 857 821 s6Step382Add1A s6Step382Add1B s6Step382Add1Work
    (by decide +kernel) (by decide +kernel) s6Step382Add1_distinct
    (fun q hq => s6Step382Add1_owned (List.mem_toFinset.mpr hq)) s6Step382Add1_borrowed

private theorem s6Step382F4_apart : Disjoint (s6Step382Add0A++s6Step382Add0B).toFinset (s6Step382Add1A++s6Step382Add1B).toFinset := by
  have nd : ((s6Step382Add0A++s6Step382Add0B)++(s6Step382Add1A++s6Step382Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step382F4_carry : s6Step382F4FlagArena.checkBorrow 1 [821]=some s6Step382Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step382F4FlagArena,s6Step382HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step382F4FlagArena,s6Step382HeadFvAfter,s6Step382Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step382F4_distinct : (814::803::857::821::((s6Step382Add0A++s6Step382Add1A)++(s6Step382Add0B++s6Step382Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382F4_flag : s6Step382HeadFvAfter.checkBorrow 1 [857]=some s6Step382F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step382HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step382F4_owned : (814::803::((s6Step382Add0A++s6Step382Add1A)++(s6Step382Add0B++s6Step382Add1B))).toFinset⊆s6Step382HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step382HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382F4_checked : compileHmrHybridF4Log s6Step382HeadFvAfter 814 803 s6Step382Add0A s6Step382Add0B s6Step382Add1A s6Step382Add1B [857] [821] s6Step382Add0Work s6Step382Add1Work=some s6Step382F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step382HeadFvAfter s6Step382F4FlagArena s6Step382Add0Arena s6Step382Add0During s6Step382Add1During 814 803
    s6Step382Add0A s6Step382Add0B s6Step382Add1A s6Step382Add1B [857] [821] s6Step382Add0Work s6Step382Add1Work
    (fun q hq => s6Step382F4_owned (List.mem_toFinset.mpr hq)) s6Step382F4_flag s6Step382F4_carry
    s6Step382F4_distinct s6Step382F4_apart s6Step382Add0_checked s6Step382Add1_checked

private theorem s6Step382Front_branch : s6Step382FrontSigmaArena.checkBorrow 1 [803]=some s6Step382HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step382FrontSigmaArena,s6Step382EntryGvAfter,s6Step382EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step382FrontSigmaArena,s6Step382EntryGvAfter,s6Step382EntryGAfter,s6Step382HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step382Front_entry : HmrFrontEntryValid s6Step382EntryFBefore s6Step382FrontBank 81 207 ⟨80,80,208,207⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step382FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step382EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step382EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step382FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step382Front_sigma : s6Step382EntryGvAfter.checkBorrow 1 [814]=some s6Step382FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step382EntryGvAfter,s6Step382EntryGAfter,arenaWires]
  · rfl

private def s6Step382HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382HeadFBefore : Arena := s6Step382HeadGAfter

private def s6Step382HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step382HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩

private def s6Step382HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850],777⟩

private def s6Step382HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩

private theorem s6Step382HeadBank_incomingDistinct : ([s6Step382HeadGRow,s6Step382HeadFRow,s6Step382HeadGvRow,s6Step382HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382HeadF_Incoming : rowsOwned s6Step382HeadFBefore [s6Step382HeadFRow,s6Step382HeadGvRow,s6Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382HeadGRow,s6Step382HeadFRow,s6Step382HeadGvRow,s6Step382HeadFvRow] 1 s6Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382HeadBank_outgoingOwned : rowsOwned s6Step382HeadFvAfter [s6Step382HeadGOut,s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step382HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382HeadF_Outgoing : rowsOwned s6Step382HeadFvAfter [s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut] :=
  hmrRows_owned_drop s6Step382HeadFvAfter [s6Step382HeadGOut,s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut] 1 s6Step382HeadBank_outgoingOwned

private theorem s6Step382HeadF_distinct : (s6Step382HeadFRow.sign::s6Step382HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382HeadF_owned : (s6Step382HeadFRow.sign::s6Step382HeadFRow.payload).toFinset⊆s6Step382HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382HeadF_reserved : s6Step382HeadFBefore.reserve s6Step382HeadFFresh.toFinset=some s6Step382HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382HeadFFresh,arenaWires]
  · norm_num [s6Step382HeadFBefore,s6Step382HeadGAfter,s6Step382HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step382HeadFAfter,s6Step382HeadFBefore,s6Step382HeadGAfter,s6Step382HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step382HeadF_checked : planRowResizeLog s6Step382HeadFBefore s6Step382HeadFRow 82 s6Step382HeadFFresh=
    some (s6Step382HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 864],795⟩,growRow 795 s6Step382HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step382HeadFBefore s6Step382HeadFAfter s6Step382HeadFRow 82 s6Step382HeadFFresh
    s6Step382HeadF_distinct s6Step382HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382HeadF_reserved
  have rowEq : WindowRow.mk (s6Step382HeadFRow.payload++s6Step382HeadFFresh) s6Step382HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 864],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step382HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step382HeadFvBefore : Arena := s6Step382HeadGvAfter

private theorem s6Step382HeadFv_Incoming : rowsOwned s6Step382HeadFvBefore [s6Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382HeadGRow,s6Step382HeadFRow,s6Step382HeadGvRow,s6Step382HeadFvRow] 3 s6Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382HeadFv_Outgoing : rowsOwned s6Step382HeadFvAfter [s6Step382HeadFvOut] :=
  hmrRows_owned_drop s6Step382HeadFvAfter [s6Step382HeadGOut,s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut] 3 s6Step382HeadBank_outgoingOwned

private theorem s6Step382HeadFv_distinct : (s6Step382HeadFvRow.sign::s6Step382HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382HeadFv_owned : (s6Step382HeadFvRow.sign::s6Step382HeadFvRow.payload).toFinset⊆s6Step382HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382HeadFv_reserved : s6Step382HeadFvBefore.reserve s6Step382HeadFvFresh.toFinset=some s6Step382HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382HeadFvFresh,arenaWires]
  · norm_num [s6Step382HeadFvBefore,s6Step382HeadGvAfter,s6Step382HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step382HeadFvAfter,s6Step382HeadFvBefore,s6Step382HeadGvAfter,s6Step382HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step382HeadFv_checked : planRowResizeLog s6Step382HeadFvBefore s6Step382HeadFvRow 208 s6Step382HeadFvFresh=
    some (s6Step382HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876, 863],776⟩,growRow 776 s6Step382HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step382HeadFvBefore s6Step382HeadFvAfter s6Step382HeadFvRow 208 s6Step382HeadFvFresh
    s6Step382HeadFv_distinct s6Step382HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step382HeadFvRow.payload++s6Step382HeadFvFresh) s6Step382HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step382HeadG_Incoming : rowsOwned s6Step382HeadGBefore [s6Step382HeadGRow,s6Step382HeadFRow,s6Step382HeadGvRow,s6Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382HeadGRow,s6Step382HeadFRow,s6Step382HeadGvRow,s6Step382HeadFvRow] 0 s6Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382HeadG_Outgoing : rowsOwned s6Step382HeadFvAfter [s6Step382HeadGOut,s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut] :=
  hmrRows_owned_drop s6Step382HeadFvAfter [s6Step382HeadGOut,s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut] 0 s6Step382HeadBank_outgoingOwned

private theorem s6Step382HeadG_distinct : (s6Step382HeadGRow.sign::s6Step382HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382HeadG_owned : (s6Step382HeadGRow.sign::s6Step382HeadGRow.payload).toFinset⊆s6Step382HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382HeadG_reserved : s6Step382HeadGBefore.reserve s6Step382HeadGFresh.toFinset=some s6Step382HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382HeadGFresh,arenaWires]
  · norm_num [s6Step382HeadGBefore,s6Step382HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step382HeadGAfter,s6Step382HeadGBefore,s6Step382HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step382HeadG_checked : planRowResizeLog s6Step382HeadGBefore s6Step382HeadGRow 82 s6Step382HeadGFresh=
    some (s6Step382HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850, 818],777⟩,growRow 777 s6Step382HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step382HeadGBefore s6Step382HeadGAfter s6Step382HeadGRow 82 s6Step382HeadGFresh
    s6Step382HeadG_distinct s6Step382HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382HeadG_reserved
  have rowEq : WindowRow.mk (s6Step382HeadGRow.payload++s6Step382HeadGFresh) s6Step382HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 850, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step382HeadGvBefore : Arena := s6Step382HeadFAfter

private theorem s6Step382HeadGv_Incoming : rowsOwned s6Step382HeadGvBefore [s6Step382HeadGvRow,s6Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step382HeadGRow,s6Step382HeadFRow,s6Step382HeadGvRow,s6Step382HeadFvRow] 2 s6Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step382HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step382HeadGv_Outgoing : rowsOwned s6Step382HeadFvAfter [s6Step382HeadGvOut,s6Step382HeadFvOut] :=
  hmrRows_owned_drop s6Step382HeadFvAfter [s6Step382HeadGOut,s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut] 2 s6Step382HeadBank_outgoingOwned

private theorem s6Step382HeadGv_distinct : (s6Step382HeadGvRow.sign::s6Step382HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step382HeadGv_owned : (s6Step382HeadGvRow.sign::s6Step382HeadGvRow.payload).toFinset⊆s6Step382HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step382HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step382HeadGv_reserved : s6Step382HeadGvBefore.reserve s6Step382HeadGvFresh.toFinset=some s6Step382HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step382HeadGvFresh,arenaWires]
  · norm_num [s6Step382HeadGvBefore,s6Step382HeadFAfter,s6Step382HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step382HeadGvAfter,s6Step382HeadGvBefore,s6Step382HeadFAfter,s6Step382HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step382HeadGv_checked : planRowResizeLog s6Step382HeadGvBefore s6Step382HeadGvRow 208 s6Step382HeadGvFresh=
    some (s6Step382HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839, 890],775⟩,growRow 775 s6Step382HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step382HeadGvBefore s6Step382HeadGvAfter s6Step382HeadGvRow 208 s6Step382HeadGvFresh
    s6Step382HeadGv_distinct s6Step382HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step382HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step382HeadGvRow.payload++s6Step382HeadGvFresh) s6Step382HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step382HeadBank_rows : planWindowRowsLog s6Step382HeadGBefore [(s6Step382HeadGRow,82),(s6Step382HeadFRow,82),(s6Step382HeadGvRow,208),(s6Step382HeadFvRow,208)] [s6Step382HeadGFresh,s6Step382HeadFFresh,s6Step382HeadGvFresh,s6Step382HeadFvFresh]=
    some (s6Step382HeadFvAfter,[s6Step382HeadGOut,s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut],(growRow 777 s6Step382HeadGFresh ++ (growRow 795 s6Step382HeadFFresh ++ (growRow 775 s6Step382HeadGvFresh ++ (growRow 776 s6Step382HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step382HeadFvAfter [] []=some (s6Step382HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step382HeadFvBefore s6Step382HeadFvAfter s6Step382HeadFvAfter
    s6Step382HeadFvRow s6Step382HeadFvOut 208 s6Step382HeadFvFresh [] [] []
    (growRow 776 s6Step382HeadFvFresh) ([]) s6Step382HeadFv_Incoming s6Step382HeadFv_checked h4 s6Step382HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step382HeadGvBefore s6Step382HeadGvAfter s6Step382HeadFvAfter
    s6Step382HeadGvRow s6Step382HeadGvOut 208 s6Step382HeadGvFresh [(s6Step382HeadFvRow,208)] [s6Step382HeadFvFresh] [s6Step382HeadFvOut]
    (growRow 775 s6Step382HeadGvFresh) ((growRow 776 s6Step382HeadFvFresh ++ [])) s6Step382HeadGv_Incoming s6Step382HeadGv_checked h3 s6Step382HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step382HeadFBefore s6Step382HeadFAfter s6Step382HeadFvAfter
    s6Step382HeadFRow s6Step382HeadFOut 82 s6Step382HeadFFresh [(s6Step382HeadGvRow,208),(s6Step382HeadFvRow,208)] [s6Step382HeadGvFresh,s6Step382HeadFvFresh] [s6Step382HeadGvOut,s6Step382HeadFvOut]
    (growRow 795 s6Step382HeadFFresh) ((growRow 775 s6Step382HeadGvFresh ++ (growRow 776 s6Step382HeadFvFresh ++ []))) s6Step382HeadF_Incoming s6Step382HeadF_checked h2 s6Step382HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step382HeadGBefore s6Step382HeadGAfter s6Step382HeadFvAfter
    s6Step382HeadGRow s6Step382HeadGOut 82 s6Step382HeadGFresh [(s6Step382HeadFRow,82),(s6Step382HeadGvRow,208),(s6Step382HeadFvRow,208)] [s6Step382HeadFFresh,s6Step382HeadGvFresh,s6Step382HeadFvFresh] [s6Step382HeadFOut,s6Step382HeadGvOut,s6Step382HeadFvOut]
    (growRow 777 s6Step382HeadGFresh) ((growRow 795 s6Step382HeadFFresh ++ (growRow 775 s6Step382HeadGvFresh ++ (growRow 776 s6Step382HeadFvFresh ++ [])))) s6Step382HeadG_Incoming s6Step382HeadG_checked h1 s6Step382HeadG_Outgoing
  exact h0

private theorem s6Step382HeadBank_checked : compileHmrBankResizeLog .headroom s6Step382HeadGBefore ⟨s6Step382HeadFRow,s6Step382HeadGRow,s6Step382HeadFvRow,s6Step382HeadGvRow⟩ ⟨82,82,208,208⟩ [s6Step382HeadGFresh,s6Step382HeadFFresh,s6Step382HeadGvFresh,s6Step382HeadFvFresh]=
    some (s6Step382HeadFvAfter,⟨s6Step382HeadFOut,s6Step382HeadGOut,s6Step382HeadFvOut,s6Step382HeadGvOut⟩,(growRow 777 s6Step382HeadGFresh ++ (growRow 795 s6Step382HeadFFresh ++ (growRow 775 s6Step382HeadGvFresh ++ (growRow 776 s6Step382HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step382HeadBank_rows]
  rfl

private theorem s6Step382Front_checked : compileHmrSourceFrontLog s6Step382EntryFBefore s6Step382FrontBank 81 207 ⟨80,80,208,207⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step382FrontLog=some s6Step382FrontPlan := by
  have pairEq : s6Step382FrontPair=⟨s6Step382HeadFRow,s6Step382HeadGRow,s6Step382HeadFvRow,s6Step382HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step382FrontHead=⟨s6Step382ExitFRow,s6Step382ExitGRow,s6Step382ExitFvRow,s6Step382ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step382Add0A=s6Step382FrontHead.f.wires := by decide +kernel
  have gEq : s6Step382Add0B=s6Step382FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step382Add1A=s6Step382FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step382Add1B=s6Step382FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step382EntryFBefore s6Step382FrontBank 81 207 ⟨80,80,208,207⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step382FrontLog s6Step382FrontPlan
  · exact s6Step382Front_entry
  · exact s6Step382EntryBank_checked
  · exact s6Step382Front_sigma
  · rfl
  · exact s6Step382Front_branch
  · rfl
  · simpa only [s6Step382FrontPlan,pairEq] using s6Step382HeadBank_checked
  · simpa only [s6Step382FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step382F4_checked
  · exact s6Step382Counter_checked
  · rfl
  · simpa only [s6Step382FrontPlan,headEq] using s6Step382ExitBank_checked

private theorem s6Step382Complete_explicit_checked : compileHmrEarlyStepLog s6Step382EntryFBefore s6Step382FrontBank 81 207 ⟨80,80,208,207⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step382CompleteLog=some s6Step382CompletePlan := by
  let Q := s6Step382EarlyControlPlan
  have hq := s6Step382EarlyControl_plan_checked
  have fv1 : s6Step382CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step382CompleteOut.fv.payload[2]?.getD s6Step382CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step382CompleteOut.fv.payload[3]?.getD s6Step382CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step382CompleteOut.fv.payload[4]?.getD s6Step382CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step382EntryFBefore s6Step382EarlyControlArena s6Step382FrontBank 81 207 ⟨80,80,208,207⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step382CompleteLog s6Step382FrontPlan Q
    s6Step382Front_checked s6Step382Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step382Complete_owned s6Step382Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step382EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 s6Step382CompleteOut.fv.second (s6Step382CompleteOut.fv.payload[2]?.getD s6Step382CompleteOut.fv.sign) (s6Step382CompleteOut.fv.payload[3]?.getD s6Step382CompleteOut.fv.sign) (s6Step382CompleteOut.fv.payload[4]?.getD s6Step382CompleteOut.fv.sign) 803 60 s6Step382EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep382Arena : Arena := s6Step382EntryFBefore
def s6PrivateStep382Bank : WindowBank := s6Step382FrontBank
def s6PrivateStep382Spec : HmrSourceWalkStepLog := ⟨81,207,⟨80,80,208,207⟩,60,.early s6Step382CompleteLog⟩
def s6PrivateStep382Plan : HmrSourceStepPlan := .early s6Step382CompletePlan
theorem s6PrivateStep382_source : s6PrivateStep382Spec=s6ObservedLogs368[14] := rfl
theorem s6PrivateStep382_checked : compileHmrSourceStepLog s6PrivateStep382Arena s6PrivateStep382Bank
    s6PrivateStep382Spec.fgWidth s6PrivateStep382Spec.vWidth s6PrivateStep382Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 382 s6PrivateStep382Spec.need none s6PrivateStep382Spec.log=some s6PrivateStep382Plan := by
  change compileHmrSourceStepLog s6Step382EntryFBefore s6Step382FrontBank 81 207 ⟨80,80,208,207⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 382 60 none (.early s6Step382CompleteLog)=some (.early s6Step382CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 382<498)]
  rw [s6Step382Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
