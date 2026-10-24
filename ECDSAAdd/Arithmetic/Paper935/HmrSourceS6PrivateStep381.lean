import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep379
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

private def s6Step381CompleteMoves : List (Wire × Wire) := [(803,80)]

private def s6Step381EarlyControlLog : HmrEarlyControlLog := ⟨[803, 818, 864, 890, 863],[857],[821],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step381FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[864], [818], [839], [876]],[[], [], [], []]⟩,[814],[850],[890],[863],[857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[890, 863, 857, 821]⟩

private def s6Step381CompleteLog : HmrEarlyStepLog := ⟨s6Step381FrontLog,s6Step381CompleteMoves,s6Step381EarlyControlLog⟩

private def s6Step381ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step381ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩

private def s6Step381ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],777⟩

private def s6Step381ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩

private def s6Step381FrontOut : WindowBank := ⟨s6Step381ExitFOut,s6Step381ExitGOut,s6Step381ExitFvOut,s6Step381ExitGvOut⟩

private def s6Step381CompleteOut : WindowBank := s6Step381FrontOut.repacked s6Step381CompleteMoves

private def s6Step381EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step381EarlyControlPositiveArena,[857],s6Step381EarlyControlEqualityArena,[821],⟨⟨814,false⟩,[⟨⟨857,false⟩,821⟩]⟩⟩

private def s6Step381EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,864⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,863⟩]⟩

private def s6Step381EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step381EarlyControlZeroArena,s6Step381EarlyControlZeroPlan,s6Step381EarlyControlClassPlan,s6Step381EarlyControlFlagArena,s6Step381EarlyControlFittedArena,s6Step381EarlyControlHistoryArena,s6Step381EarlyControlSigmaArena,s6Step381EarlyControlOutputArena,s6Step381EarlyControlLog⟩

private def s6Step381CounterWork : List Wire := [890, 863, 857, 821]

private theorem s6Step381Counter_bounded : s6Step381CounterWork.toFinset⊆arenaWires := by norm_num [s6Step381CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step381HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381CounterDuring : Arena := ⟨s6Step381HeadFvAfter.live∪s6Step381CounterWork.toFinset,Finset.union_subset s6Step381HeadFvAfter.bounded s6Step381Counter_bounded⟩

private def s6Step381EntryFFresh : List Wire := []

private def s6Step381EntryFvFresh : List Wire := []

private def s6Step381EntryGFresh : List Wire := []

private def s6Step381EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381EntryGvAfter : Arena := s6Step381EntryFBefore

private def s6Step381EntryGvFresh : List Wire := []

private def s6Step381ExitFExtra : List Wire := [818]

private def s6Step381ExitGExtra : List Wire := [80, 864]

private def s6Step381ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381ExitGvAfter : Arena := s6Step381ExitFAfter

private def s6Step381Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381Add0Work : List Wire := [857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step381Add0_bounded : s6Step381Add0Work.toFinset⊆arenaWires := by
  have h : s6Step381Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step381Add0During : Arena := ⟨s6Step381Add0Arena.live∪s6Step381Add0Work.toFinset,Finset.union_subset s6Step381Add0Arena.bounded s6Step381Add0_bounded⟩

private def s6Step381Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381Add1Work : List Wire := [857, 821, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step381Add1_bounded : s6Step381Add1Work.toFinset⊆arenaWires := by
  have h : s6Step381Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step381Add1During : Arena := ⟨s6Step381Add1Arena.live∪s6Step381Add1Work.toFinset,Finset.union_subset s6Step381Add1Arena.bounded s6Step381Add1_bounded⟩

private def s6Step381F4FlagArena : Arena := ⟨s6Step381HeadFvAfter.live∪{890},Finset.union_subset s6Step381HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step381F4Plan : HmrHybridF4Plan := ⟨s6Step381F4FlagArena,[890],s6Step381Add0Arena,[863],s6Step381Add0During,s6Step381Add0Work,s6Step381Add1During,s6Step381Add1Work⟩

private def s6Step381HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 818],795⟩

private def s6Step381HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩

private def s6Step381HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 864],777⟩

private def s6Step381HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩

private def s6Step381FrontHead : WindowBank := ⟨s6Step381HeadFOut,s6Step381HeadGOut,s6Step381HeadFvOut,s6Step381HeadGvOut⟩

private def s6Step381EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step381EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step381EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩

private def s6Step381EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩

private def s6Step381FrontPair : WindowBank := ⟨s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut⟩

private def s6Step381FrontSigmaArena : Arena := ⟨s6Step381EntryGvAfter.live∪{814},Finset.union_subset s6Step381EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step381HeadFFresh : List Wire := [818]

private def s6Step381HeadFvFresh : List Wire := [876]

private def s6Step381HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381HeadGFresh : List Wire := [864]

private def s6Step381HeadGvFresh : List Wire := [839]

private def s6Step381FrontPlan : HmrSourceFront := ⟨s6Step381EntryGvAfter,s6Step381FrontPair,(growRow 795 s6Step381EntryFFresh ++ (growRow 777 s6Step381EntryGFresh ++ (growRow 776 s6Step381EntryFvFresh ++ (growRow 775 s6Step381EntryGvFresh ++ [])))),s6Step381FrontSigmaArena,[814],s6Step381HeadGBefore,[850],
  s6Step381HeadFvAfter,s6Step381FrontHead,(growRow 777 s6Step381HeadGFresh ++ (growRow 795 s6Step381HeadFFresh ++ (growRow 775 s6Step381HeadGvFresh ++ (growRow 776 s6Step381HeadFvFresh ++ [])))),s6Step381F4Plan,s6Step381CounterDuring,s6Step381CounterWork,s6Step381ExitGvAfter,s6Step381FrontOut,(shrinkRow 777 s6Step381ExitGExtra ++ (shrinkRow 795 s6Step381ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step381CompletePlan : HmrEarlyStepPlan := ⟨s6Step381FrontPlan,s6Step381EarlyControlArena,s6Step381EarlyControlPlan,s6Step381CompleteMoves⟩

private theorem s6Step381Complete_apart : List.Disjoint (s6Step381CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [814, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step381CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[814, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step381Complete_owned : (s6Step381CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step381CompleteMoveArena : Arena := ⟨s6Step381ExitGvAfter.live∪{80},Finset.union_subset s6Step381ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step381Complete_repack : s6Step381ExitGvAfter.checkRepack s6Step381CompleteMoves=some s6Step381EarlyControlArena := by
  have owned : 803∈s6Step381ExitGvAfter.live := by norm_num [s6Step381ExitGvAfter,s6Step381ExitFAfter,arenaWires]
  have reserve : s6Step381ExitGvAfter.reserve {80}=some s6Step381CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step381ExitGvAfter,s6Step381ExitFAfter,arenaWires]
    · rfl
  have retired : s6Step381CompleteMoveArena.retireSet {803}=s6Step381EarlyControlArena := by
    unfold Arena.retireSet s6Step381EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step381CompleteMoveArena,s6Step381ExitGvAfter,s6Step381ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step381CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step381CompleteMoveArena.retireSet {803}).checkRepack []=some s6Step381EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step381EarlyControl_branchOwned : ([850] : List Wire).toFinset⊆s6Step381EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_branch : compileHmrBranchRetirement s6Step381EarlyControlSigmaArena 850=some s6Step381EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step381EarlyControl_branchOwned
  · ext q
    simp [s6Step381EarlyControlOutputArena,s6Step381EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step381EarlyControl_classEqualityBorrow : s6Step381EarlyControlPositiveArena.checkBorrow (([814, 857] : List Wire).length-1) s6Step381EarlyControlLog.classWork=some s6Step381EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step381EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step381EarlyControlEqualityArena,s6Step381EarlyControlPositiveArena,s6Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step381EarlyControl_classEqualityOwned : ([814, 857] : List Wire).toFinset⊆s6Step381EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_classEquality : compileHmrEqualityLog s6Step381EarlyControlPositiveArena [814, 857] 0 s6Step381EarlyControlLog.classWork=some (s6Step381EarlyControlEqualityArena,s6Step381EarlyControlLog.classWork,s6Step381EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step381EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step381EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step381EarlyControl_classOwned : ([769, 863, 814] : List Wire).toFinset⊆s6Step381EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_positiveBorrow : s6Step381EarlyControlZeroArena.checkBorrow (1) s6Step381EarlyControlLog.positiveWork=some s6Step381EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step381EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step381EarlyControlPositiveArena,s6Step381EarlyControlZeroArena,s6Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step381EarlyControl_class : compileHmrSourceClassLog s6Step381EarlyControlZeroArena false 769 s6Step381EarlyControlZeroPlan.top 0 814 s6Step381EarlyControlLog.positiveWork s6Step381EarlyControlLog.classWork=some s6Step381EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step381EarlyControlClassPlan s6Step381EarlyControlZeroArena false 769 s6Step381EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s6Step381EarlyControl_classOwned
  · exact s6Step381EarlyControl_positiveBorrow
  · exact s6Step381EarlyControl_classEquality

private theorem s6Step381EarlyControl_entryRecordOwned : ([850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s6Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_fitBorrow : s6Step381EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step381EarlyControlLog.recordFresh=some s6Step381EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step381EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step381EarlyControlFittedArena,s6Step381EarlyControlFlagArena,s6Step381EarlyControlLog,arenaWires]

private theorem s6Step381EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step381EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_fit : compileHmrRecordGrowLog s6Step381EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step381EarlyControlLog.recordFresh=some s6Step381EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step381EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step381EarlyControl_fitBorrow

private theorem s6Step381EarlyControl_flagsBorrow : s6Step381EarlyControlEqualityArena.checkBorrow (6) s6Step381EarlyControlLog.flagWork=some s6Step381EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step381EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step381EarlyControlFlagArena,s6Step381EarlyControlEqualityArena,s6Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step381EarlyControl_flagsOwned : ([821, 253, 252, 251] : List Wire).toFinset⊆s6Step381EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_flags : compileHmrFlagsLog s6Step381EarlyControlClassPlan.equalityArena s6Step381EarlyControlClassPlan.equality.top 253 252 251 s6Step381EarlyControlLog.flagWork=some s6Step381EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step381EarlyControl_flagsOwned⟩
  · exact s6Step381EarlyControl_flagsBorrow

private theorem s6Step381EarlyControl_historyBorrow : s6Step381EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step381EarlyControlLog.recordFresh=some s6Step381EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step381EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step381EarlyControlHistoryArena,s6Step381EarlyControlArena,s6Step381EarlyControlLog,arenaWires]

private theorem s6Step381EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_history : compileHmrRecordGrowLog s6Step381EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step381EarlyControlLog.recordFresh=some s6Step381EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step381EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step381EarlyControl_historyBorrow

private theorem s6Step381EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s6Step381EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s6Step381EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_sigmaRelease : s6Step381EarlyControlHistoryArena.release {814} (fun _ => false)=some s6Step381EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step381EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step381EarlyControlSigmaArena,s6Step381EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step381EarlyControl_sigma : compileHmrSigmaDropLog s6Step381EarlyControlHistoryArena false 0 0 254 814 []=some s6Step381EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step381EarlyControl_sigmaOwned⟩
  · exact s6Step381EarlyControl_sigmaRelease

private theorem s6Step381EarlyControl_zeroBorrow : s6Step381EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step381EarlyControlLog.zeroWork=some s6Step381EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step381EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step381EarlyControlZeroArena,s6Step381EarlyControlArena,s6Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step381EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step381EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EarlyControl_zero : compileHmrEqualityLog s6Step381EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step381EarlyControlLog.zeroWork=some (s6Step381EarlyControlZeroArena,s6Step381EarlyControlLog.zeroWork,s6Step381EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step381EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step381EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step381EarlyControl_logged : s6Step381EarlyControlPlan.Logged s6Step381EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 254 253 252 251 850 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step381EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step381EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step381EarlyControl_zero
  · exact s6Step381EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step381EarlyControl_flags
  · exact s6Step381EarlyControl_fit
  · exact s6Step381EarlyControl_history
  · exact s6Step381EarlyControl_sigma
  · exact s6Step381EarlyControl_branch

private theorem s6Step381EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step381EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 254 253 252 251 850 60 s6Step381EarlyControlLog=some s6Step381EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step381EarlyControlPlan s6Step381EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 254 253 252 251 850 60 s6Step381EarlyControl_logged

private def s6Step381EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step381EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step381EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩

private def s6Step381EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩

private def s6Step381FrontBank : WindowBank := ⟨s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow⟩

private def s6Step381Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 818, 795]

private def s6Step381Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 864, 777]

private def s6Step381Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876, 776]

private def s6Step381Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839, 775]

private theorem s6Step381Counter_apart : Disjoint s6Step381HeadFvAfter.live s6Step381CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step381HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381Counter_borrowed : s6Step381HeadFvAfter.checkBorrow 4 s6Step381CounterWork=some s6Step381CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step381HeadFvAfter s6Step381CounterDuring s6Step381CounterWork.toFinset s6Step381Counter_bounded s6Step381Counter_apart rfl

private theorem s6Step381Counter_owned : (814::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step381HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step381HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381Counter_checked : compileHmrCounterStepLog s6Step381HeadFvAfter true 814 [774, 773, 772, 771, 770, 769] s6Step381CounterWork=some s6Step381CounterDuring := by
  have owned : ∀q∈814::[774, 773, 772, 771, 770, 769],q∈s6Step381HeadFvAfter.live := fun q hq => s6Step381Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step381Counter_borrowed

private def s6Step381EntryFAfter : Arena := s6Step381EntryFBefore

private theorem s6Step381EntryBank_incomingDistinct : ([s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381EntryF_Incoming : rowsOwned s6Step381EntryFBefore [s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow] 0 s6Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381EntryBank_outgoingOwned : rowsOwned s6Step381EntryGvAfter [s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step381EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381EntryF_Outgoing : rowsOwned s6Step381EntryGvAfter [s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut] :=
  hmrRows_owned_drop s6Step381EntryGvAfter [s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut] 0 s6Step381EntryBank_outgoingOwned

private theorem s6Step381EntryF_distinct : (s6Step381EntryFRow.sign::s6Step381EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381EntryF_owned : (s6Step381EntryFRow.sign::s6Step381EntryFRow.payload).toFinset⊆s6Step381EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EntryF_reserved : s6Step381EntryFBefore.reserve s6Step381EntryFFresh.toFinset=some s6Step381EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381EntryFFresh,arenaWires]
  · norm_num [s6Step381EntryFBefore,s6Step381EntryFFresh,arenaWires]
  · simp only [s6Step381EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step381EntryF_checked : planRowResizeLog s6Step381EntryFBefore s6Step381EntryFRow 81 s6Step381EntryFFresh=
    some (s6Step381EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩,growRow 795 s6Step381EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step381EntryFBefore s6Step381EntryFAfter s6Step381EntryFRow 81 s6Step381EntryFFresh
    s6Step381EntryF_distinct s6Step381EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381EntryF_reserved
  have rowEq : WindowRow.mk (s6Step381EntryFRow.payload++s6Step381EntryFFresh) s6Step381EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step381EntryFvAfter : Arena := s6Step381EntryFBefore

private def s6Step381EntryFvBefore : Arena := s6Step381EntryFBefore

private theorem s6Step381EntryFv_Incoming : rowsOwned s6Step381EntryFvBefore [s6Step381EntryFvRow,s6Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow] 2 s6Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381EntryFv_Outgoing : rowsOwned s6Step381EntryGvAfter [s6Step381EntryFvOut,s6Step381EntryGvOut] :=
  hmrRows_owned_drop s6Step381EntryGvAfter [s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut] 2 s6Step381EntryBank_outgoingOwned

private theorem s6Step381EntryFv_distinct : (s6Step381EntryFvRow.sign::s6Step381EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381EntryFv_owned : (s6Step381EntryFvRow.sign::s6Step381EntryFvRow.payload).toFinset⊆s6Step381EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EntryFv_reserved : s6Step381EntryFvBefore.reserve s6Step381EntryFvFresh.toFinset=some s6Step381EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381EntryFvFresh,arenaWires]
  · norm_num [s6Step381EntryFvBefore,s6Step381EntryFBefore,s6Step381EntryFvFresh,arenaWires]
  · simp only [s6Step381EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step381EntryFv_checked : planRowResizeLog s6Step381EntryFvBefore s6Step381EntryFvRow 206 s6Step381EntryFvFresh=
    some (s6Step381EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩,growRow 776 s6Step381EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step381EntryFvBefore s6Step381EntryFvAfter s6Step381EntryFvRow 206 s6Step381EntryFvFresh
    s6Step381EntryFv_distinct s6Step381EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step381EntryFvRow.payload++s6Step381EntryFvFresh) s6Step381EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step381EntryGAfter : Arena := s6Step381EntryFBefore

private def s6Step381EntryGBefore : Arena := s6Step381EntryFBefore

private theorem s6Step381EntryG_Incoming : rowsOwned s6Step381EntryGBefore [s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow] 1 s6Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381EntryG_Outgoing : rowsOwned s6Step381EntryGvAfter [s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut] :=
  hmrRows_owned_drop s6Step381EntryGvAfter [s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut] 1 s6Step381EntryBank_outgoingOwned

private theorem s6Step381EntryG_distinct : (s6Step381EntryGRow.sign::s6Step381EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381EntryG_owned : (s6Step381EntryGRow.sign::s6Step381EntryGRow.payload).toFinset⊆s6Step381EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EntryG_reserved : s6Step381EntryGBefore.reserve s6Step381EntryGFresh.toFinset=some s6Step381EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381EntryGFresh,arenaWires]
  · norm_num [s6Step381EntryGBefore,s6Step381EntryFBefore,s6Step381EntryGFresh,arenaWires]
  · simp only [s6Step381EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step381EntryG_checked : planRowResizeLog s6Step381EntryGBefore s6Step381EntryGRow 81 s6Step381EntryGFresh=
    some (s6Step381EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩,growRow 777 s6Step381EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step381EntryGBefore s6Step381EntryGAfter s6Step381EntryGRow 81 s6Step381EntryGFresh
    s6Step381EntryG_distinct s6Step381EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381EntryG_reserved
  have rowEq : WindowRow.mk (s6Step381EntryGRow.payload++s6Step381EntryGFresh) s6Step381EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step381EntryGvBefore : Arena := s6Step381EntryFBefore

private theorem s6Step381EntryGv_Incoming : rowsOwned s6Step381EntryGvBefore [s6Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow] 3 s6Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381EntryGv_Outgoing : rowsOwned s6Step381EntryGvAfter [s6Step381EntryGvOut] :=
  hmrRows_owned_drop s6Step381EntryGvAfter [s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut] 3 s6Step381EntryBank_outgoingOwned

private theorem s6Step381EntryGv_distinct : (s6Step381EntryGvRow.sign::s6Step381EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381EntryGv_owned : (s6Step381EntryGvRow.sign::s6Step381EntryGvRow.payload).toFinset⊆s6Step381EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381EntryGv_reserved : s6Step381EntryGvBefore.reserve s6Step381EntryGvFresh.toFinset=some s6Step381EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381EntryGvFresh,arenaWires]
  · norm_num [s6Step381EntryGvBefore,s6Step381EntryFBefore,s6Step381EntryGvFresh,arenaWires]
  · simp only [s6Step381EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step381EntryGv_checked : planRowResizeLog s6Step381EntryGvBefore s6Step381EntryGvRow 206 s6Step381EntryGvFresh=
    some (s6Step381EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩,growRow 775 s6Step381EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step381EntryGvBefore s6Step381EntryGvAfter s6Step381EntryGvRow 206 s6Step381EntryGvFresh
    s6Step381EntryGv_distinct s6Step381EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step381EntryGvRow.payload++s6Step381EntryGvFresh) s6Step381EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step381EntryBank_rows : planWindowRowsLog s6Step381EntryFBefore [(s6Step381EntryFRow,81),(s6Step381EntryGRow,81),(s6Step381EntryFvRow,206),(s6Step381EntryGvRow,206)] [s6Step381EntryFFresh,s6Step381EntryGFresh,s6Step381EntryFvFresh,s6Step381EntryGvFresh]=
    some (s6Step381EntryGvAfter,[s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut],(growRow 795 s6Step381EntryFFresh ++ (growRow 777 s6Step381EntryGFresh ++ (growRow 776 s6Step381EntryFvFresh ++ (growRow 775 s6Step381EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step381EntryGvAfter [] []=some (s6Step381EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step381EntryGvBefore s6Step381EntryGvAfter s6Step381EntryGvAfter
    s6Step381EntryGvRow s6Step381EntryGvOut 206 s6Step381EntryGvFresh [] [] []
    (growRow 775 s6Step381EntryGvFresh) ([]) s6Step381EntryGv_Incoming s6Step381EntryGv_checked h4 s6Step381EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step381EntryFvBefore s6Step381EntryFvAfter s6Step381EntryGvAfter
    s6Step381EntryFvRow s6Step381EntryFvOut 206 s6Step381EntryFvFresh [(s6Step381EntryGvRow,206)] [s6Step381EntryGvFresh] [s6Step381EntryGvOut]
    (growRow 776 s6Step381EntryFvFresh) ((growRow 775 s6Step381EntryGvFresh ++ [])) s6Step381EntryFv_Incoming s6Step381EntryFv_checked h3 s6Step381EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step381EntryGBefore s6Step381EntryGAfter s6Step381EntryGvAfter
    s6Step381EntryGRow s6Step381EntryGOut 81 s6Step381EntryGFresh [(s6Step381EntryFvRow,206),(s6Step381EntryGvRow,206)] [s6Step381EntryFvFresh,s6Step381EntryGvFresh] [s6Step381EntryFvOut,s6Step381EntryGvOut]
    (growRow 777 s6Step381EntryGFresh) ((growRow 776 s6Step381EntryFvFresh ++ (growRow 775 s6Step381EntryGvFresh ++ []))) s6Step381EntryG_Incoming s6Step381EntryG_checked h2 s6Step381EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step381EntryFBefore s6Step381EntryFAfter s6Step381EntryGvAfter
    s6Step381EntryFRow s6Step381EntryFOut 81 s6Step381EntryFFresh [(s6Step381EntryGRow,81),(s6Step381EntryFvRow,206),(s6Step381EntryGvRow,206)] [s6Step381EntryGFresh,s6Step381EntryFvFresh,s6Step381EntryGvFresh] [s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut]
    (growRow 795 s6Step381EntryFFresh) ((growRow 777 s6Step381EntryGFresh ++ (growRow 776 s6Step381EntryFvFresh ++ (growRow 775 s6Step381EntryGvFresh ++ [])))) s6Step381EntryF_Incoming s6Step381EntryF_checked h1 s6Step381EntryF_Outgoing
  exact h0

private theorem s6Step381EntryBank_checked : compileHmrBankResizeLog .entry s6Step381EntryFBefore ⟨s6Step381EntryFRow,s6Step381EntryGRow,s6Step381EntryFvRow,s6Step381EntryGvRow⟩ ⟨81,81,206,206⟩ [s6Step381EntryFFresh,s6Step381EntryGFresh,s6Step381EntryFvFresh,s6Step381EntryGvFresh]=
    some (s6Step381EntryGvAfter,⟨s6Step381EntryFOut,s6Step381EntryGOut,s6Step381EntryFvOut,s6Step381EntryGvOut⟩,(growRow 795 s6Step381EntryFFresh ++ (growRow 777 s6Step381EntryGFresh ++ (growRow 776 s6Step381EntryFvFresh ++ (growRow 775 s6Step381EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step381EntryBank_rows]
  rfl

private def s6Step381ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381ExitFBefore : Arena := s6Step381ExitGAfter

private def s6Step381ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 818],795⟩

private def s6Step381ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩

private def s6Step381ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 864],777⟩

private def s6Step381ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩

private theorem s6Step381ExitBank_incomingDistinct : ([s6Step381ExitGRow,s6Step381ExitFRow,s6Step381ExitFvRow,s6Step381ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381ExitF_Incoming : rowsOwned s6Step381ExitFBefore [s6Step381ExitFRow,s6Step381ExitFvRow,s6Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381ExitGRow,s6Step381ExitFRow,s6Step381ExitFvRow,s6Step381ExitGvRow] 1 s6Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381ExitFBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381ExitBank_outgoingOwned : rowsOwned s6Step381ExitGvAfter [s6Step381ExitGOut,s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step381ExitGvAfter (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381ExitF_Outgoing : rowsOwned s6Step381ExitGvAfter [s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut] :=
  hmrRows_owned_drop s6Step381ExitGvAfter [s6Step381ExitGOut,s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut] 1 s6Step381ExitBank_outgoingOwned

private theorem s6Step381ExitF_distinct : (s6Step381ExitFRow.sign::s6Step381ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381ExitF_owned : (s6Step381ExitFRow.sign::s6Step381ExitFRow.payload).toFinset⊆s6Step381ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381ExitFBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381ExitF_retired : s6Step381ExitFBefore.retireSet s6Step381ExitFExtra.toFinset=s6Step381ExitFAfter := by
  unfold Arena.retireSet s6Step381ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step381ExitFBefore,s6Step381ExitGAfter,s6Step381ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step381ExitF_checked : planRowResizeLog s6Step381ExitFBefore s6Step381ExitFRow 81 []=
    some (s6Step381ExitFAfter,s6Step381ExitFOut,shrinkRow 795 s6Step381ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step381ExitFBefore s6Step381ExitFRow 81 s6Step381ExitF_distinct s6Step381ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step381ExitFRow.payload.take 81) s6Step381ExitFRow.sign=s6Step381ExitFOut := by decide +kernel
  have hi : s6Step381ExitFRow.payload.drop 81=s6Step381ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step381ExitF_retired] at result
  exact result

private def s6Step381ExitFvAfter : Arena := s6Step381ExitFAfter

private def s6Step381ExitFvBefore : Arena := s6Step381ExitFAfter

private theorem s6Step381ExitFv_Incoming : rowsOwned s6Step381ExitFvBefore [s6Step381ExitFvRow,s6Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381ExitGRow,s6Step381ExitFRow,s6Step381ExitFvRow,s6Step381ExitGvRow] 2 s6Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381ExitFvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381ExitFv_Outgoing : rowsOwned s6Step381ExitGvAfter [s6Step381ExitFvOut,s6Step381ExitGvOut] :=
  hmrRows_owned_drop s6Step381ExitGvAfter [s6Step381ExitGOut,s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut] 2 s6Step381ExitBank_outgoingOwned

private theorem s6Step381ExitFv_distinct : (s6Step381ExitFvRow.sign::s6Step381ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381ExitFv_owned : (s6Step381ExitFvRow.sign::s6Step381ExitFvRow.payload).toFinset⊆s6Step381ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381ExitFvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381ExitFv_reserved : s6Step381ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step381ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step381ExitFv_checked : planRowResizeLog s6Step381ExitFvBefore s6Step381ExitFvRow 207 []=
    some (s6Step381ExitFvAfter,s6Step381ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step381ExitFvBefore s6Step381ExitFvAfter s6Step381ExitFvRow 207 []
    s6Step381ExitFv_distinct s6Step381ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step381ExitFvRow.payload++[]) s6Step381ExitFvRow.sign=s6Step381ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step381ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step381ExitG_Incoming : rowsOwned s6Step381ExitGBefore [s6Step381ExitGRow,s6Step381ExitFRow,s6Step381ExitFvRow,s6Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381ExitGRow,s6Step381ExitFRow,s6Step381ExitFvRow,s6Step381ExitGvRow] 0 s6Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381ExitG_Outgoing : rowsOwned s6Step381ExitGvAfter [s6Step381ExitGOut,s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut] :=
  hmrRows_owned_drop s6Step381ExitGvAfter [s6Step381ExitGOut,s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut] 0 s6Step381ExitBank_outgoingOwned

private theorem s6Step381ExitG_distinct : (s6Step381ExitGRow.sign::s6Step381ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381ExitG_owned : (s6Step381ExitGRow.sign::s6Step381ExitGRow.payload).toFinset⊆s6Step381ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381ExitG_retired : s6Step381ExitGBefore.retireSet s6Step381ExitGExtra.toFinset=s6Step381ExitGAfter := by
  unfold Arena.retireSet s6Step381ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step381ExitGBefore,s6Step381ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step381ExitG_checked : planRowResizeLog s6Step381ExitGBefore s6Step381ExitGRow 80 []=
    some (s6Step381ExitGAfter,s6Step381ExitGOut,shrinkRow 777 s6Step381ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step381ExitGBefore s6Step381ExitGRow 80 s6Step381ExitG_distinct s6Step381ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step381ExitGRow.payload.take 80) s6Step381ExitGRow.sign=s6Step381ExitGOut := by decide +kernel
  have hi : s6Step381ExitGRow.payload.drop 80=s6Step381ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step381ExitG_retired] at result
  exact result

private def s6Step381ExitGvBefore : Arena := s6Step381ExitFAfter

private theorem s6Step381ExitGv_Incoming : rowsOwned s6Step381ExitGvBefore [s6Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381ExitGRow,s6Step381ExitFRow,s6Step381ExitFvRow,s6Step381ExitGvRow] 3 s6Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381ExitGvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381ExitGv_Outgoing : rowsOwned s6Step381ExitGvAfter [s6Step381ExitGvOut] :=
  hmrRows_owned_drop s6Step381ExitGvAfter [s6Step381ExitGOut,s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut] 3 s6Step381ExitBank_outgoingOwned

private theorem s6Step381ExitGv_distinct : (s6Step381ExitGvRow.sign::s6Step381ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381ExitGv_owned : (s6Step381ExitGvRow.sign::s6Step381ExitGvRow.payload).toFinset⊆s6Step381ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381ExitGvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381ExitGv_reserved : s6Step381ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step381ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step381ExitGv_checked : planRowResizeLog s6Step381ExitGvBefore s6Step381ExitGvRow 207 []=
    some (s6Step381ExitGvAfter,s6Step381ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step381ExitGvBefore s6Step381ExitGvAfter s6Step381ExitGvRow 207 []
    s6Step381ExitGv_distinct s6Step381ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step381ExitGvRow.payload++[]) s6Step381ExitGvRow.sign=s6Step381ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step381ExitBank_rows : planWindowRowsLog s6Step381ExitGBefore [(s6Step381ExitGRow,80),(s6Step381ExitFRow,81),(s6Step381ExitFvRow,207),(s6Step381ExitGvRow,207)] [[],[],[],[]]=
    some (s6Step381ExitGvAfter,[s6Step381ExitGOut,s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut],(shrinkRow 777 s6Step381ExitGExtra ++ (shrinkRow 795 s6Step381ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step381ExitGvAfter [] []=some (s6Step381ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step381ExitGvBefore s6Step381ExitGvAfter s6Step381ExitGvAfter
    s6Step381ExitGvRow s6Step381ExitGvOut 207 [] [] [] []
    (growRow 775 []) ([]) s6Step381ExitGv_Incoming s6Step381ExitGv_checked h4 s6Step381ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step381ExitFvBefore s6Step381ExitFvAfter s6Step381ExitGvAfter
    s6Step381ExitFvRow s6Step381ExitFvOut 207 [] [(s6Step381ExitGvRow,207)] [[]] [s6Step381ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step381ExitFv_Incoming s6Step381ExitFv_checked h3 s6Step381ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step381ExitFBefore s6Step381ExitFAfter s6Step381ExitGvAfter
    s6Step381ExitFRow s6Step381ExitFOut 81 [] [(s6Step381ExitFvRow,207),(s6Step381ExitGvRow,207)] [[],[]] [s6Step381ExitFvOut,s6Step381ExitGvOut]
    (shrinkRow 795 s6Step381ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step381ExitF_Incoming s6Step381ExitF_checked h2 s6Step381ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step381ExitGBefore s6Step381ExitGAfter s6Step381ExitGvAfter
    s6Step381ExitGRow s6Step381ExitGOut 80 [] [(s6Step381ExitFRow,81),(s6Step381ExitFvRow,207),(s6Step381ExitGvRow,207)] [[],[],[]] [s6Step381ExitFOut,s6Step381ExitFvOut,s6Step381ExitGvOut]
    (shrinkRow 777 s6Step381ExitGExtra) ((shrinkRow 795 s6Step381ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step381ExitG_Incoming s6Step381ExitG_checked h1 s6Step381ExitG_Outgoing
  exact h0

private theorem s6Step381ExitBank_checked : compileHmrBankResizeLog .exit s6Step381ExitGBefore ⟨s6Step381ExitFRow,s6Step381ExitGRow,s6Step381ExitFvRow,s6Step381ExitGvRow⟩ ⟨81,80,207,207⟩ [[],[],[],[]]=
    some (s6Step381ExitGvAfter,⟨s6Step381ExitFOut,s6Step381ExitGOut,s6Step381ExitFvOut,s6Step381ExitGvOut⟩,(shrinkRow 777 s6Step381ExitGExtra ++ (shrinkRow 795 s6Step381ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step381ExitBank_rows]
  rfl

private theorem s6Step381Add0_apart : Disjoint s6Step381Add0Arena.live s6Step381Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step381Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381Add0_card : s6Step381Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step381Add0_borrowed : s6Step381Add0Arena.checkBorrow (hmrHybridCount s6Step381Add0Arena s6Step381Add0B.length) s6Step381Add0Work=some s6Step381Add0During := by
  have len : s6Step381Add0Work.length=hmrHybridCount s6Step381Add0Arena s6Step381Add0B.length := by
    rw [hmrHybridCount,s6Step381Add0_card]
    decide +kernel
  have nd : s6Step381Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step381Add0Arena s6Step381Add0During s6Step381Add0Work.toFinset s6Step381Add0_bounded s6Step381Add0_apart rfl

private theorem s6Step381Add0_distinct : (890::850::863::(s6Step381Add0A++s6Step381Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381Add0_owned : (890::850::863::(s6Step381Add0A++s6Step381Add0B)).toFinset⊆s6Step381Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step381Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381Add0_checked : compileHmrHybridCinLog s6Step381Add0Arena 850 890 863 s6Step381Add0A s6Step381Add0B s6Step381Add0Work=some s6Step381Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step381Add0Arena s6Step381Add0During 850 890 863 s6Step381Add0A s6Step381Add0B s6Step381Add0Work
    (by decide +kernel) (by decide +kernel) s6Step381Add0_distinct
    (fun q hq => s6Step381Add0_owned (List.mem_toFinset.mpr hq)) s6Step381Add0_borrowed

private theorem s6Step381Add1_apart : Disjoint s6Step381Add1Arena.live s6Step381Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step381Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381Add1_card : s6Step381Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step381Add1_borrowed : s6Step381Add1Arena.checkBorrow (hmrHybridCount s6Step381Add1Arena s6Step381Add1B.length) s6Step381Add1Work=some s6Step381Add1During := by
  have len : s6Step381Add1Work.length=hmrHybridCount s6Step381Add1Arena s6Step381Add1B.length := by
    rw [hmrHybridCount,s6Step381Add1_card]
    decide +kernel
  have nd : s6Step381Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step381Add1Arena s6Step381Add1During s6Step381Add1Work.toFinset s6Step381Add1_bounded s6Step381Add1_apart rfl

private theorem s6Step381Add1_distinct : (890::850::863::(s6Step381Add1A++s6Step381Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381Add1_owned : (890::850::863::(s6Step381Add1A++s6Step381Add1B)).toFinset⊆s6Step381Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step381Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381Add1_checked : compileHmrHybridCinLog s6Step381Add1Arena 850 890 863 s6Step381Add1A s6Step381Add1B s6Step381Add1Work=some s6Step381Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step381Add1Arena s6Step381Add1During 850 890 863 s6Step381Add1A s6Step381Add1B s6Step381Add1Work
    (by decide +kernel) (by decide +kernel) s6Step381Add1_distinct
    (fun q hq => s6Step381Add1_owned (List.mem_toFinset.mpr hq)) s6Step381Add1_borrowed

private theorem s6Step381F4_apart : Disjoint (s6Step381Add0A++s6Step381Add0B).toFinset (s6Step381Add1A++s6Step381Add1B).toFinset := by
  have nd : ((s6Step381Add0A++s6Step381Add0B)++(s6Step381Add1A++s6Step381Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step381F4_carry : s6Step381F4FlagArena.checkBorrow 1 [863]=some s6Step381Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step381F4FlagArena,s6Step381HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step381F4FlagArena,s6Step381HeadFvAfter,s6Step381Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step381F4_distinct : (814::850::890::863::((s6Step381Add0A++s6Step381Add1A)++(s6Step381Add0B++s6Step381Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381F4_flag : s6Step381HeadFvAfter.checkBorrow 1 [890]=some s6Step381F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step381HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step381F4_owned : (814::850::((s6Step381Add0A++s6Step381Add1A)++(s6Step381Add0B++s6Step381Add1B))).toFinset⊆s6Step381HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step381HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381F4_checked : compileHmrHybridF4Log s6Step381HeadFvAfter 814 850 s6Step381Add0A s6Step381Add0B s6Step381Add1A s6Step381Add1B [890] [863] s6Step381Add0Work s6Step381Add1Work=some s6Step381F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step381HeadFvAfter s6Step381F4FlagArena s6Step381Add0Arena s6Step381Add0During s6Step381Add1During 814 850
    s6Step381Add0A s6Step381Add0B s6Step381Add1A s6Step381Add1B [890] [863] s6Step381Add0Work s6Step381Add1Work
    (fun q hq => s6Step381F4_owned (List.mem_toFinset.mpr hq)) s6Step381F4_flag s6Step381F4_carry
    s6Step381F4_distinct s6Step381F4_apart s6Step381Add0_checked s6Step381Add1_checked

private theorem s6Step381Front_branch : s6Step381FrontSigmaArena.checkBorrow 1 [850]=some s6Step381HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step381FrontSigmaArena,s6Step381EntryGvAfter,s6Step381EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step381FrontSigmaArena,s6Step381EntryGvAfter,s6Step381EntryFBefore,s6Step381HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step381Front_entry : HmrFrontEntryValid s6Step381EntryFBefore s6Step381FrontBank 81 206 ⟨81,80,207,207⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step381FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step381EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step381EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<850) ∨ (851≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step381FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step381Front_sigma : s6Step381EntryGvAfter.checkBorrow 1 [814]=some s6Step381FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step381EntryGvAfter,s6Step381EntryFBefore,arenaWires]
  · rfl

private def s6Step381HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381HeadFBefore : Arena := s6Step381HeadGAfter

private def s6Step381HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336],795⟩

private def s6Step381HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786],776⟩

private def s6Step381HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],777⟩

private def s6Step381HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908],775⟩

private theorem s6Step381HeadBank_incomingDistinct : ([s6Step381HeadGRow,s6Step381HeadFRow,s6Step381HeadGvRow,s6Step381HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381HeadF_Incoming : rowsOwned s6Step381HeadFBefore [s6Step381HeadFRow,s6Step381HeadGvRow,s6Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381HeadGRow,s6Step381HeadFRow,s6Step381HeadGvRow,s6Step381HeadFvRow] 1 s6Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381HeadBank_outgoingOwned : rowsOwned s6Step381HeadFvAfter [s6Step381HeadGOut,s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step381HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<877) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381HeadF_Outgoing : rowsOwned s6Step381HeadFvAfter [s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut] :=
  hmrRows_owned_drop s6Step381HeadFvAfter [s6Step381HeadGOut,s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut] 1 s6Step381HeadBank_outgoingOwned

private theorem s6Step381HeadF_distinct : (s6Step381HeadFRow.sign::s6Step381HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381HeadF_owned : (s6Step381HeadFRow.sign::s6Step381HeadFRow.payload).toFinset⊆s6Step381HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381HeadF_reserved : s6Step381HeadFBefore.reserve s6Step381HeadFFresh.toFinset=some s6Step381HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381HeadFFresh,arenaWires]
  · norm_num [s6Step381HeadFBefore,s6Step381HeadGAfter,s6Step381HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step381HeadFAfter,s6Step381HeadFBefore,s6Step381HeadGAfter,s6Step381HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step381HeadF_checked : planRowResizeLog s6Step381HeadFBefore s6Step381HeadFRow 82 s6Step381HeadFFresh=
    some (s6Step381HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 818],795⟩,growRow 795 s6Step381HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step381HeadFBefore s6Step381HeadFAfter s6Step381HeadFRow 82 s6Step381HeadFFresh
    s6Step381HeadF_distinct s6Step381HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381HeadF_reserved
  have rowEq : WindowRow.mk (s6Step381HeadFRow.payload++s6Step381HeadFFresh) s6Step381HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 818],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step381HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step381HeadFvBefore : Arena := s6Step381HeadGvAfter

private theorem s6Step381HeadFv_Incoming : rowsOwned s6Step381HeadFvBefore [s6Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381HeadGRow,s6Step381HeadFRow,s6Step381HeadGvRow,s6Step381HeadFvRow] 3 s6Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381HeadFv_Outgoing : rowsOwned s6Step381HeadFvAfter [s6Step381HeadFvOut] :=
  hmrRows_owned_drop s6Step381HeadFvAfter [s6Step381HeadGOut,s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut] 3 s6Step381HeadBank_outgoingOwned

private theorem s6Step381HeadFv_distinct : (s6Step381HeadFvRow.sign::s6Step381HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381HeadFv_owned : (s6Step381HeadFvRow.sign::s6Step381HeadFvRow.payload).toFinset⊆s6Step381HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381HeadFv_reserved : s6Step381HeadFvBefore.reserve s6Step381HeadFvFresh.toFinset=some s6Step381HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381HeadFvFresh,arenaWires]
  · norm_num [s6Step381HeadFvBefore,s6Step381HeadGvAfter,s6Step381HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step381HeadFvAfter,s6Step381HeadFvBefore,s6Step381HeadGvAfter,s6Step381HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step381HeadFv_checked : planRowResizeLog s6Step381HeadFvBefore s6Step381HeadFvRow 207 s6Step381HeadFvFresh=
    some (s6Step381HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩,growRow 776 s6Step381HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step381HeadFvBefore s6Step381HeadFvAfter s6Step381HeadFvRow 207 s6Step381HeadFvFresh
    s6Step381HeadFv_distinct s6Step381HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step381HeadFvRow.payload++s6Step381HeadFvFresh) s6Step381HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 805, 786, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step381HeadG_Incoming : rowsOwned s6Step381HeadGBefore [s6Step381HeadGRow,s6Step381HeadFRow,s6Step381HeadGvRow,s6Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381HeadGRow,s6Step381HeadFRow,s6Step381HeadGvRow,s6Step381HeadFvRow] 0 s6Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381HeadG_Outgoing : rowsOwned s6Step381HeadFvAfter [s6Step381HeadGOut,s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut] :=
  hmrRows_owned_drop s6Step381HeadFvAfter [s6Step381HeadGOut,s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut] 0 s6Step381HeadBank_outgoingOwned

private theorem s6Step381HeadG_distinct : (s6Step381HeadGRow.sign::s6Step381HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381HeadG_owned : (s6Step381HeadGRow.sign::s6Step381HeadGRow.payload).toFinset⊆s6Step381HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<818) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (865≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381HeadG_reserved : s6Step381HeadGBefore.reserve s6Step381HeadGFresh.toFinset=some s6Step381HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381HeadGFresh,arenaWires]
  · norm_num [s6Step381HeadGBefore,s6Step381HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step381HeadGAfter,s6Step381HeadGBefore,s6Step381HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step381HeadG_checked : planRowResizeLog s6Step381HeadGBefore s6Step381HeadGRow 82 s6Step381HeadGFresh=
    some (s6Step381HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 864],777⟩,growRow 777 s6Step381HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step381HeadGBefore s6Step381HeadGAfter s6Step381HeadGRow 82 s6Step381HeadGFresh
    s6Step381HeadG_distinct s6Step381HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381HeadG_reserved
  have rowEq : WindowRow.mk (s6Step381HeadGRow.payload++s6Step381HeadGFresh) s6Step381HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 864],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step381HeadGvBefore : Arena := s6Step381HeadFAfter

private theorem s6Step381HeadGv_Incoming : rowsOwned s6Step381HeadGvBefore [s6Step381HeadGvRow,s6Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step381HeadGRow,s6Step381HeadFRow,s6Step381HeadGvRow,s6Step381HeadFvRow] 2 s6Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step381HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step381HeadGv_Outgoing : rowsOwned s6Step381HeadFvAfter [s6Step381HeadGvOut,s6Step381HeadFvOut] :=
  hmrRows_owned_drop s6Step381HeadFvAfter [s6Step381HeadGOut,s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut] 2 s6Step381HeadBank_outgoingOwned

private theorem s6Step381HeadGv_distinct : (s6Step381HeadGvRow.sign::s6Step381HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step381HeadGv_owned : (s6Step381HeadGvRow.sign::s6Step381HeadGvRow.payload).toFinset⊆s6Step381HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step381HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step381HeadGv_reserved : s6Step381HeadGvBefore.reserve s6Step381HeadGvFresh.toFinset=some s6Step381HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step381HeadGvFresh,arenaWires]
  · norm_num [s6Step381HeadGvBefore,s6Step381HeadFAfter,s6Step381HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step381HeadGvAfter,s6Step381HeadGvBefore,s6Step381HeadFAfter,s6Step381HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step381HeadGv_checked : planRowResizeLog s6Step381HeadGvBefore s6Step381HeadGvRow 207 s6Step381HeadGvFresh=
    some (s6Step381HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩,growRow 775 s6Step381HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step381HeadGvBefore s6Step381HeadGvAfter s6Step381HeadGvRow 207 s6Step381HeadGvFresh
    s6Step381HeadGv_distinct s6Step381HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step381HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step381HeadGvRow.payload++s6Step381HeadGvFresh) s6Step381HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 796, 908, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step381HeadBank_rows : planWindowRowsLog s6Step381HeadGBefore [(s6Step381HeadGRow,82),(s6Step381HeadFRow,82),(s6Step381HeadGvRow,207),(s6Step381HeadFvRow,207)] [s6Step381HeadGFresh,s6Step381HeadFFresh,s6Step381HeadGvFresh,s6Step381HeadFvFresh]=
    some (s6Step381HeadFvAfter,[s6Step381HeadGOut,s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut],(growRow 777 s6Step381HeadGFresh ++ (growRow 795 s6Step381HeadFFresh ++ (growRow 775 s6Step381HeadGvFresh ++ (growRow 776 s6Step381HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step381HeadFvAfter [] []=some (s6Step381HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step381HeadFvBefore s6Step381HeadFvAfter s6Step381HeadFvAfter
    s6Step381HeadFvRow s6Step381HeadFvOut 207 s6Step381HeadFvFresh [] [] []
    (growRow 776 s6Step381HeadFvFresh) ([]) s6Step381HeadFv_Incoming s6Step381HeadFv_checked h4 s6Step381HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step381HeadGvBefore s6Step381HeadGvAfter s6Step381HeadFvAfter
    s6Step381HeadGvRow s6Step381HeadGvOut 207 s6Step381HeadGvFresh [(s6Step381HeadFvRow,207)] [s6Step381HeadFvFresh] [s6Step381HeadFvOut]
    (growRow 775 s6Step381HeadGvFresh) ((growRow 776 s6Step381HeadFvFresh ++ [])) s6Step381HeadGv_Incoming s6Step381HeadGv_checked h3 s6Step381HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step381HeadFBefore s6Step381HeadFAfter s6Step381HeadFvAfter
    s6Step381HeadFRow s6Step381HeadFOut 82 s6Step381HeadFFresh [(s6Step381HeadGvRow,207),(s6Step381HeadFvRow,207)] [s6Step381HeadGvFresh,s6Step381HeadFvFresh] [s6Step381HeadGvOut,s6Step381HeadFvOut]
    (growRow 795 s6Step381HeadFFresh) ((growRow 775 s6Step381HeadGvFresh ++ (growRow 776 s6Step381HeadFvFresh ++ []))) s6Step381HeadF_Incoming s6Step381HeadF_checked h2 s6Step381HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step381HeadGBefore s6Step381HeadGAfter s6Step381HeadFvAfter
    s6Step381HeadGRow s6Step381HeadGOut 82 s6Step381HeadGFresh [(s6Step381HeadFRow,82),(s6Step381HeadGvRow,207),(s6Step381HeadFvRow,207)] [s6Step381HeadFFresh,s6Step381HeadGvFresh,s6Step381HeadFvFresh] [s6Step381HeadFOut,s6Step381HeadGvOut,s6Step381HeadFvOut]
    (growRow 777 s6Step381HeadGFresh) ((growRow 795 s6Step381HeadFFresh ++ (growRow 775 s6Step381HeadGvFresh ++ (growRow 776 s6Step381HeadFvFresh ++ [])))) s6Step381HeadG_Incoming s6Step381HeadG_checked h1 s6Step381HeadG_Outgoing
  exact h0

private theorem s6Step381HeadBank_checked : compileHmrBankResizeLog .headroom s6Step381HeadGBefore ⟨s6Step381HeadFRow,s6Step381HeadGRow,s6Step381HeadFvRow,s6Step381HeadGvRow⟩ ⟨82,82,207,207⟩ [s6Step381HeadGFresh,s6Step381HeadFFresh,s6Step381HeadGvFresh,s6Step381HeadFvFresh]=
    some (s6Step381HeadFvAfter,⟨s6Step381HeadFOut,s6Step381HeadGOut,s6Step381HeadFvOut,s6Step381HeadGvOut⟩,(growRow 777 s6Step381HeadGFresh ++ (growRow 795 s6Step381HeadFFresh ++ (growRow 775 s6Step381HeadGvFresh ++ (growRow 776 s6Step381HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step381HeadBank_rows]
  rfl

private theorem s6Step381Front_checked : compileHmrSourceFrontLog s6Step381EntryFBefore s6Step381FrontBank 81 206 ⟨81,80,207,207⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step381FrontLog=some s6Step381FrontPlan := by
  have pairEq : s6Step381FrontPair=⟨s6Step381HeadFRow,s6Step381HeadGRow,s6Step381HeadFvRow,s6Step381HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step381FrontHead=⟨s6Step381ExitFRow,s6Step381ExitGRow,s6Step381ExitFvRow,s6Step381ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step381Add0A=s6Step381FrontHead.f.wires := by decide +kernel
  have gEq : s6Step381Add0B=s6Step381FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step381Add1A=s6Step381FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step381Add1B=s6Step381FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step381EntryFBefore s6Step381FrontBank 81 206 ⟨81,80,207,207⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step381FrontLog s6Step381FrontPlan
  · exact s6Step381Front_entry
  · exact s6Step381EntryBank_checked
  · exact s6Step381Front_sigma
  · rfl
  · exact s6Step381Front_branch
  · rfl
  · simpa only [s6Step381FrontPlan,pairEq] using s6Step381HeadBank_checked
  · simpa only [s6Step381FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step381F4_checked
  · exact s6Step381Counter_checked
  · rfl
  · simpa only [s6Step381FrontPlan,headEq] using s6Step381ExitBank_checked

private theorem s6Step381Complete_explicit_checked : compileHmrEarlyStepLog s6Step381EntryFBefore s6Step381FrontBank 81 206 ⟨81,80,207,207⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step381CompleteLog=some s6Step381CompletePlan := by
  let Q := s6Step381EarlyControlPlan
  have hq := s6Step381EarlyControl_plan_checked
  have fv1 : s6Step381CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step381CompleteOut.fv.payload[2]?.getD s6Step381CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step381CompleteOut.fv.payload[3]?.getD s6Step381CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step381CompleteOut.fv.payload[4]?.getD s6Step381CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step381EntryFBefore s6Step381EarlyControlArena s6Step381FrontBank 81 206 ⟨81,80,207,207⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step381CompleteLog s6Step381FrontPlan Q
    s6Step381Front_checked s6Step381Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step381Complete_owned s6Step381Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step381EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 814 s6Step381CompleteOut.fv.second (s6Step381CompleteOut.fv.payload[2]?.getD s6Step381CompleteOut.fv.sign) (s6Step381CompleteOut.fv.payload[3]?.getD s6Step381CompleteOut.fv.sign) (s6Step381CompleteOut.fv.payload[4]?.getD s6Step381CompleteOut.fv.sign) 850 60 s6Step381EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep381Arena : Arena := s6Step381EntryFBefore
def s6PrivateStep381Bank : WindowBank := s6Step381FrontBank
def s6PrivateStep381Spec : HmrSourceWalkStepLog := ⟨81,206,⟨81,80,207,207⟩,60,.early s6Step381CompleteLog⟩
def s6PrivateStep381Plan : HmrSourceStepPlan := .early s6Step381CompletePlan
theorem s6PrivateStep381_source : s6PrivateStep381Spec=s6ObservedLogs368[13] := rfl
theorem s6PrivateStep381_checked : compileHmrSourceStepLog s6PrivateStep381Arena s6PrivateStep381Bank
    s6PrivateStep381Spec.fgWidth s6PrivateStep381Spec.vWidth s6PrivateStep381Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 381 s6PrivateStep381Spec.need none s6PrivateStep381Spec.log=some s6PrivateStep381Plan := by
  change compileHmrSourceStepLog s6Step381EntryFBefore s6Step381FrontBank 81 206 ⟨81,80,207,207⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 381 60 none (.early s6Step381CompleteLog)=some (.early s6Step381CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 381<498)]
  rw [s6Step381Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
