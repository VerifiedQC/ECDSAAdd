import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep369
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

private def s6Step371CompleteMoves : List (Wire × Wire) := [(890,341),(828,342)]

private def s6Step371EarlyControlLog : HmrEarlyControlLog := ⟨[828, 890, 805, 802, 869],[876],[796],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step371FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [876], [], [888]],[[796], [869], [805], [802]],[[], [], [], []]⟩,[858],[908],[843],[877],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816]⟩

private def s6Step371CompleteLog : HmrEarlyStepLog := ⟨s6Step371FrontLog,s6Step371CompleteMoves,s6Step371EarlyControlLog⟩

private def s6Step371ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step371ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step371ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step371ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private def s6Step371FrontOut : WindowBank := ⟨s6Step371ExitFOut,s6Step371ExitGOut,s6Step371ExitFvOut,s6Step371ExitGvOut⟩

private def s6Step371CompleteOut : WindowBank := s6Step371FrontOut.repacked s6Step371CompleteMoves

private def s6Step371EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step371EarlyControlPositiveArena,[876],s6Step371EarlyControlEqualityArena,[796],⟨⟨858,false⟩,[⟨⟨876,false⟩,796⟩]⟩⟩

private def s6Step371EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,828⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,805⟩,⟨⟨770,false⟩,802⟩,⟨⟨769,false⟩,869⟩]⟩

private def s6Step371EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step371EarlyControlZeroArena,s6Step371EarlyControlZeroPlan,s6Step371EarlyControlClassPlan,s6Step371EarlyControlFlagArena,s6Step371EarlyControlFittedArena,s6Step371EarlyControlHistoryArena,s6Step371EarlyControlSigmaArena,s6Step371EarlyControlOutputArena,s6Step371EarlyControlLog⟩

private def s6Step371CounterWork : List Wire := [843, 877, 792, 816]

private theorem s6Step371Counter_bounded : s6Step371CounterWork.toFinset⊆arenaWires := by norm_num [s6Step371CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step371HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371CounterDuring : Arena := ⟨s6Step371HeadFvAfter.live∪s6Step371CounterWork.toFinset,Finset.union_subset s6Step371HeadFvAfter.bounded s6Step371Counter_bounded⟩

private def s6Step371EntryFFresh : List Wire := []

private def s6Step371EntryFvFresh : List Wire := []

private def s6Step371EntryGFresh : List Wire := [876]

private def s6Step371EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EntryGvFresh : List Wire := [888]

private def s6Step371ExitFExtra : List Wire := [341, 342, 869]

private def s6Step371ExitFvExtra : List Wire := [802]

private def s6Step371ExitGExtra : List Wire := [876, 796]

private def s6Step371ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371ExitGvExtra : List Wire := [805]

private def s6Step371Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371Add0Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step371Add0_bounded : s6Step371Add0Work.toFinset⊆arenaWires := by
  have h : s6Step371Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step371Add0During : Arena := ⟨s6Step371Add0Arena.live∪s6Step371Add0Work.toFinset,Finset.union_subset s6Step371Add0Arena.bounded s6Step371Add0_bounded⟩

private def s6Step371Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371Add1Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step371Add1_bounded : s6Step371Add1Work.toFinset⊆arenaWires := by
  have h : s6Step371Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step371Add1During : Arena := ⟨s6Step371Add1Arena.live∪s6Step371Add1Work.toFinset,Finset.union_subset s6Step371Add1Arena.bounded s6Step371Add1_bounded⟩

private def s6Step371F4FlagArena : Arena := ⟨s6Step371HeadFvAfter.live∪{843},Finset.union_subset s6Step371HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step371F4Plan : HmrHybridF4Plan := ⟨s6Step371F4FlagArena,[843],s6Step371Add0Arena,[877],s6Step371Add0During,s6Step371Add0Work,s6Step371Add1During,s6Step371Add1Work⟩

private def s6Step371HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 869],795⟩

private def s6Step371HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 802],776⟩

private def s6Step371HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876, 796],777⟩

private def s6Step371HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 805],775⟩

private def s6Step371FrontHead : WindowBank := ⟨s6Step371HeadFOut,s6Step371HeadGOut,s6Step371HeadFvOut,s6Step371HeadGvOut⟩

private def s6Step371EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step371EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step371EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876],777⟩

private def s6Step371EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private def s6Step371FrontPair : WindowBank := ⟨s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut⟩

private def s6Step371FrontSigmaArena : Arena := ⟨s6Step371EntryGvAfter.live∪{858},Finset.union_subset s6Step371EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step371HeadFFresh : List Wire := [869]

private def s6Step371HeadFvFresh : List Wire := [802]

private def s6Step371HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371HeadGFresh : List Wire := [796]

private def s6Step371HeadGvFresh : List Wire := [805]

private def s6Step371FrontPlan : HmrSourceFront := ⟨s6Step371EntryGvAfter,s6Step371FrontPair,(growRow 795 s6Step371EntryFFresh ++ (growRow 777 s6Step371EntryGFresh ++ (growRow 776 s6Step371EntryFvFresh ++ (growRow 775 s6Step371EntryGvFresh ++ [])))),s6Step371FrontSigmaArena,[858],s6Step371HeadGBefore,[908],
  s6Step371HeadFvAfter,s6Step371FrontHead,(growRow 777 s6Step371HeadGFresh ++ (growRow 795 s6Step371HeadFFresh ++ (growRow 775 s6Step371HeadGvFresh ++ (growRow 776 s6Step371HeadFvFresh ++ [])))),s6Step371F4Plan,s6Step371CounterDuring,s6Step371CounterWork,s6Step371ExitGvAfter,s6Step371FrontOut,(shrinkRow 777 s6Step371ExitGExtra ++ (shrinkRow 795 s6Step371ExitFExtra ++ (shrinkRow 776 s6Step371ExitFvExtra ++ (shrinkRow 775 s6Step371ExitGvExtra ++ []))))⟩

private def s6Step371CompletePlan : HmrEarlyStepPlan := ⟨s6Step371FrontPlan,s6Step371EarlyControlArena,s6Step371EarlyControlPlan,s6Step371CompleteMoves⟩

private theorem s6Step371Complete_apart : List.Disjoint (s6Step371CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step371CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step371Complete_owned : (s6Step371CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step371CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,342),(343,782),(783,790),(791,792),(793,796),(799,800),(801,802),(803,805),(806,808),(809,816),(817,819),(821,832),(833,842),(844,869),(870,876),(878,890),(891,896),(897,914),(915,916),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step371CompleteRelocationMove0Borrowed : Arena := ⟨s6Step371ExitGvAfter.live∪{341},Finset.union_subset s6Step371ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step371CompleteRelocationMove1Borrowed : Arena := ⟨s6Step371CompleteRelocationMove0After.live∪{342},Finset.union_subset s6Step371CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step371CompleteRelocation_move0_owned : 890∈s6Step371ExitGvAfter.live := by norm_num [s6Step371ExitGvAfter,arenaWires]

private theorem s6Step371CompleteRelocation_move0_reserve : s6Step371ExitGvAfter.reserve {341}=some s6Step371CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step371ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step371CompleteRelocation_move0_retire : s6Step371CompleteRelocationMove0Borrowed.retireSet {890}=s6Step371CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step371CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step371CompleteRelocationMove0Borrowed,s6Step371ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step371CompleteRelocation_move1_owned : 828∈s6Step371CompleteRelocationMove0After.live := by norm_num [s6Step371CompleteRelocationMove0After,arenaWires]

private theorem s6Step371CompleteRelocation_move1_reserve : s6Step371CompleteRelocationMove0After.reserve {342}=some s6Step371CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step371CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step371CompleteRelocation_move1_retire : s6Step371CompleteRelocationMove1Borrowed.retireSet {828}=s6Step371EarlyControlArena := by
  unfold Arena.retireSet s6Step371EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step371CompleteRelocationMove1Borrowed,s6Step371CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step371CompleteRelocation_checked : s6Step371ExitGvAfter.checkRepack [(890,341),(828,342)]=some s6Step371EarlyControlArena := by
  have tail2 : s6Step371EarlyControlArena.checkRepack []=some s6Step371EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step371CompleteRelocationMove0After s6Step371CompleteRelocationMove1Borrowed s6Step371EarlyControlArena s6Step371EarlyControlArena 828 342 []
    s6Step371CompleteRelocation_move1_owned s6Step371CompleteRelocation_move1_reserve s6Step371CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step371ExitGvAfter s6Step371CompleteRelocationMove0Borrowed s6Step371CompleteRelocationMove0After s6Step371EarlyControlArena 890 341 [(828,342)]
    s6Step371CompleteRelocation_move0_owned s6Step371CompleteRelocation_move0_reserve s6Step371CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step371Complete_repack : s6Step371ExitGvAfter.checkRepack s6Step371CompleteMoves=some s6Step371EarlyControlArena := by
  simpa only [s6Step371CompleteMoves] using s6Step371CompleteRelocation_checked

private theorem s6Step371EarlyControl_branchOwned : ([908] : List Wire).toFinset⊆s6Step371EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_branch : compileHmrBranchRetirement s6Step371EarlyControlSigmaArena 908=some s6Step371EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step371EarlyControl_branchOwned
  · ext q
    simp [s6Step371EarlyControlOutputArena,s6Step371EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step371EarlyControl_classEqualityBorrow : s6Step371EarlyControlPositiveArena.checkBorrow (([858, 876] : List Wire).length-1) s6Step371EarlyControlLog.classWork=some s6Step371EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step371EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step371EarlyControlEqualityArena,s6Step371EarlyControlPositiveArena,s6Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step371EarlyControl_classEqualityOwned : ([858, 876] : List Wire).toFinset⊆s6Step371EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_classEquality : compileHmrEqualityLog s6Step371EarlyControlPositiveArena [858, 876] 0 s6Step371EarlyControlLog.classWork=some (s6Step371EarlyControlEqualityArena,s6Step371EarlyControlLog.classWork,s6Step371EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step371EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step371EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step371EarlyControl_classOwned : ([769, 869, 858] : List Wire).toFinset⊆s6Step371EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_positiveBorrow : s6Step371EarlyControlZeroArena.checkBorrow (1) s6Step371EarlyControlLog.positiveWork=some s6Step371EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step371EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step371EarlyControlPositiveArena,s6Step371EarlyControlZeroArena,s6Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step371EarlyControl_class : compileHmrSourceClassLog s6Step371EarlyControlZeroArena false 769 s6Step371EarlyControlZeroPlan.top 0 858 s6Step371EarlyControlLog.positiveWork s6Step371EarlyControlLog.classWork=some s6Step371EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step371EarlyControlClassPlan s6Step371EarlyControlZeroArena false 769 s6Step371EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step371EarlyControl_classOwned
  · exact s6Step371EarlyControl_positiveBorrow
  · exact s6Step371EarlyControl_classEquality

private theorem s6Step371EarlyControl_entryRecordOwned : ([908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_fitBorrow : s6Step371EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step371EarlyControlLog.recordFresh=some s6Step371EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step371EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step371EarlyControlFittedArena,s6Step371EarlyControlFlagArena,s6Step371EarlyControlLog,arenaWires]

private theorem s6Step371EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step371EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_fit : compileHmrRecordGrowLog s6Step371EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step371EarlyControlLog.recordFresh=some s6Step371EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step371EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step371EarlyControl_fitBorrow

private theorem s6Step371EarlyControl_flagsBorrow : s6Step371EarlyControlEqualityArena.checkBorrow (6) s6Step371EarlyControlLog.flagWork=some s6Step371EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step371EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step371EarlyControlFlagArena,s6Step371EarlyControlEqualityArena,s6Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step371EarlyControl_flagsOwned : ([796, 253, 252, 251] : List Wire).toFinset⊆s6Step371EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_flags : compileHmrFlagsLog s6Step371EarlyControlClassPlan.equalityArena s6Step371EarlyControlClassPlan.equality.top 253 252 251 s6Step371EarlyControlLog.flagWork=some s6Step371EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step371EarlyControl_flagsOwned⟩
  · exact s6Step371EarlyControl_flagsBorrow

private theorem s6Step371EarlyControl_historyBorrow : s6Step371EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step371EarlyControlLog.recordFresh=some s6Step371EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step371EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step371EarlyControlHistoryArena,s6Step371EarlyControlArena,s6Step371EarlyControlLog,arenaWires]

private theorem s6Step371EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_history : compileHmrRecordGrowLog s6Step371EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step371EarlyControlLog.recordFresh=some s6Step371EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step371EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step371EarlyControl_historyBorrow

private theorem s6Step371EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step371EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step371EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_sigmaRelease : s6Step371EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step371EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step371EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step371EarlyControlSigmaArena,s6Step371EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step371EarlyControl_sigma : compileHmrSigmaDropLog s6Step371EarlyControlHistoryArena false 0 0 254 858 []=some s6Step371EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step371EarlyControl_sigmaOwned⟩
  · exact s6Step371EarlyControl_sigmaRelease

private theorem s6Step371EarlyControl_zeroBorrow : s6Step371EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step371EarlyControlLog.zeroWork=some s6Step371EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step371EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step371EarlyControlZeroArena,s6Step371EarlyControlArena,s6Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step371EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step371EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EarlyControl_zero : compileHmrEqualityLog s6Step371EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step371EarlyControlLog.zeroWork=some (s6Step371EarlyControlZeroArena,s6Step371EarlyControlLog.zeroWork,s6Step371EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step371EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step371EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step371EarlyControl_logged : s6Step371EarlyControlPlan.Logged s6Step371EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 908 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step371EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step371EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step371EarlyControl_zero
  · exact s6Step371EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step371EarlyControl_flags
  · exact s6Step371EarlyControl_fit
  · exact s6Step371EarlyControl_history
  · exact s6Step371EarlyControl_sigma
  · exact s6Step371EarlyControl_branch

private theorem s6Step371EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step371EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 908 60 s6Step371EarlyControlLog=some s6Step371EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step371EarlyControlPlan s6Step371EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 908 60 s6Step371EarlyControl_logged

private def s6Step371EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step371EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step371EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step371EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823],775⟩

private def s6Step371FrontBank : WindowBank := ⟨s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow⟩

private def s6Step371Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 869, 795]

private def s6Step371Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876, 796, 777]

private def s6Step371Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 802, 776]

private def s6Step371Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 805, 775]

private theorem s6Step371Counter_apart : Disjoint s6Step371HeadFvAfter.live s6Step371CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step371HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371Counter_borrowed : s6Step371HeadFvAfter.checkBorrow 4 s6Step371CounterWork=some s6Step371CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step371HeadFvAfter s6Step371CounterDuring s6Step371CounterWork.toFinset s6Step371Counter_bounded s6Step371Counter_apart rfl

private theorem s6Step371Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step371HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step371HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371Counter_checked : compileHmrCounterStepLog s6Step371HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step371CounterWork=some s6Step371CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step371HeadFvAfter.live := fun q hq => s6Step371Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step371Counter_borrowed

private def s6Step371EntryFAfter : Arena := s6Step371EntryFBefore

private theorem s6Step371EntryBank_incomingDistinct : ([s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371EntryF_Incoming : rowsOwned s6Step371EntryFBefore [s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow] 0 s6Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371EntryBank_outgoingOwned : rowsOwned s6Step371EntryGvAfter [s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step371EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371EntryF_Outgoing : rowsOwned s6Step371EntryGvAfter [s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut] :=
  hmrRows_owned_drop s6Step371EntryGvAfter [s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut] 0 s6Step371EntryBank_outgoingOwned

private theorem s6Step371EntryF_distinct : (s6Step371EntryFRow.sign::s6Step371EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371EntryF_owned : (s6Step371EntryFRow.sign::s6Step371EntryFRow.payload).toFinset⊆s6Step371EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EntryF_reserved : s6Step371EntryFBefore.reserve s6Step371EntryFFresh.toFinset=some s6Step371EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371EntryFFresh,arenaWires]
  · norm_num [s6Step371EntryFBefore,s6Step371EntryFFresh,arenaWires]
  · simp only [s6Step371EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step371EntryF_checked : planRowResizeLog s6Step371EntryFBefore s6Step371EntryFRow 87 s6Step371EntryFFresh=
    some (s6Step371EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩,growRow 795 s6Step371EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step371EntryFBefore s6Step371EntryFAfter s6Step371EntryFRow 87 s6Step371EntryFFresh
    s6Step371EntryF_distinct s6Step371EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371EntryF_reserved
  have rowEq : WindowRow.mk (s6Step371EntryFRow.payload++s6Step371EntryFFresh) s6Step371EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step371EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371EntryFvAfter : Arena := s6Step371EntryGAfter

private def s6Step371EntryFvBefore : Arena := s6Step371EntryGAfter

private theorem s6Step371EntryFv_Incoming : rowsOwned s6Step371EntryFvBefore [s6Step371EntryFvRow,s6Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow] 2 s6Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371EntryFv_Outgoing : rowsOwned s6Step371EntryGvAfter [s6Step371EntryFvOut,s6Step371EntryGvOut] :=
  hmrRows_owned_drop s6Step371EntryGvAfter [s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut] 2 s6Step371EntryBank_outgoingOwned

private theorem s6Step371EntryFv_distinct : (s6Step371EntryFvRow.sign::s6Step371EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371EntryFv_owned : (s6Step371EntryFvRow.sign::s6Step371EntryFvRow.payload).toFinset⊆s6Step371EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EntryFv_reserved : s6Step371EntryFvBefore.reserve s6Step371EntryFvFresh.toFinset=some s6Step371EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371EntryFvFresh,arenaWires]
  · norm_num [s6Step371EntryFvBefore,s6Step371EntryGAfter,s6Step371EntryFvFresh,arenaWires]
  · simp only [s6Step371EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step371EntryFv_checked : planRowResizeLog s6Step371EntryFvBefore s6Step371EntryFvRow 202 s6Step371EntryFvFresh=
    some (s6Step371EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩,growRow 776 s6Step371EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step371EntryFvBefore s6Step371EntryFvAfter s6Step371EntryFvRow 202 s6Step371EntryFvFresh
    s6Step371EntryFv_distinct s6Step371EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step371EntryFvRow.payload++s6Step371EntryFvFresh) s6Step371EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step371EntryGBefore : Arena := s6Step371EntryFBefore

private theorem s6Step371EntryG_Incoming : rowsOwned s6Step371EntryGBefore [s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow] 1 s6Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371EntryG_Outgoing : rowsOwned s6Step371EntryGvAfter [s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut] :=
  hmrRows_owned_drop s6Step371EntryGvAfter [s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut] 1 s6Step371EntryBank_outgoingOwned

private theorem s6Step371EntryG_distinct : (s6Step371EntryGRow.sign::s6Step371EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371EntryG_owned : (s6Step371EntryGRow.sign::s6Step371EntryGRow.payload).toFinset⊆s6Step371EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EntryG_reserved : s6Step371EntryGBefore.reserve s6Step371EntryGFresh.toFinset=some s6Step371EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371EntryGFresh,arenaWires]
  · norm_num [s6Step371EntryGBefore,s6Step371EntryFBefore,s6Step371EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step371EntryGAfter,s6Step371EntryGBefore,s6Step371EntryFBefore,s6Step371EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371EntryG_checked : planRowResizeLog s6Step371EntryGBefore s6Step371EntryGRow 87 s6Step371EntryGFresh=
    some (s6Step371EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876],777⟩,growRow 777 s6Step371EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step371EntryGBefore s6Step371EntryGAfter s6Step371EntryGRow 87 s6Step371EntryGFresh
    s6Step371EntryG_distinct s6Step371EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371EntryG_reserved
  have rowEq : WindowRow.mk (s6Step371EntryGRow.payload++s6Step371EntryGFresh) s6Step371EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step371EntryGvBefore : Arena := s6Step371EntryGAfter

private theorem s6Step371EntryGv_Incoming : rowsOwned s6Step371EntryGvBefore [s6Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow] 3 s6Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371EntryGv_Outgoing : rowsOwned s6Step371EntryGvAfter [s6Step371EntryGvOut] :=
  hmrRows_owned_drop s6Step371EntryGvAfter [s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut] 3 s6Step371EntryBank_outgoingOwned

private theorem s6Step371EntryGv_distinct : (s6Step371EntryGvRow.sign::s6Step371EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371EntryGv_owned : (s6Step371EntryGvRow.sign::s6Step371EntryGvRow.payload).toFinset⊆s6Step371EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371EntryGv_reserved : s6Step371EntryGvBefore.reserve s6Step371EntryGvFresh.toFinset=some s6Step371EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371EntryGvFresh,arenaWires]
  · norm_num [s6Step371EntryGvBefore,s6Step371EntryGAfter,s6Step371EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step371EntryGvAfter,s6Step371EntryGvBefore,s6Step371EntryGAfter,s6Step371EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371EntryGv_checked : planRowResizeLog s6Step371EntryGvBefore s6Step371EntryGvRow 202 s6Step371EntryGvFresh=
    some (s6Step371EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩,growRow 775 s6Step371EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step371EntryGvBefore s6Step371EntryGvAfter s6Step371EntryGvRow 202 s6Step371EntryGvFresh
    s6Step371EntryGv_distinct s6Step371EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step371EntryGvRow.payload++s6Step371EntryGvFresh) s6Step371EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step371EntryBank_rows : planWindowRowsLog s6Step371EntryFBefore [(s6Step371EntryFRow,87),(s6Step371EntryGRow,87),(s6Step371EntryFvRow,202),(s6Step371EntryGvRow,202)] [s6Step371EntryFFresh,s6Step371EntryGFresh,s6Step371EntryFvFresh,s6Step371EntryGvFresh]=
    some (s6Step371EntryGvAfter,[s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut],(growRow 795 s6Step371EntryFFresh ++ (growRow 777 s6Step371EntryGFresh ++ (growRow 776 s6Step371EntryFvFresh ++ (growRow 775 s6Step371EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step371EntryGvAfter [] []=some (s6Step371EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step371EntryGvBefore s6Step371EntryGvAfter s6Step371EntryGvAfter
    s6Step371EntryGvRow s6Step371EntryGvOut 202 s6Step371EntryGvFresh [] [] []
    (growRow 775 s6Step371EntryGvFresh) ([]) s6Step371EntryGv_Incoming s6Step371EntryGv_checked h4 s6Step371EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step371EntryFvBefore s6Step371EntryFvAfter s6Step371EntryGvAfter
    s6Step371EntryFvRow s6Step371EntryFvOut 202 s6Step371EntryFvFresh [(s6Step371EntryGvRow,202)] [s6Step371EntryGvFresh] [s6Step371EntryGvOut]
    (growRow 776 s6Step371EntryFvFresh) ((growRow 775 s6Step371EntryGvFresh ++ [])) s6Step371EntryFv_Incoming s6Step371EntryFv_checked h3 s6Step371EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step371EntryGBefore s6Step371EntryGAfter s6Step371EntryGvAfter
    s6Step371EntryGRow s6Step371EntryGOut 87 s6Step371EntryGFresh [(s6Step371EntryFvRow,202),(s6Step371EntryGvRow,202)] [s6Step371EntryFvFresh,s6Step371EntryGvFresh] [s6Step371EntryFvOut,s6Step371EntryGvOut]
    (growRow 777 s6Step371EntryGFresh) ((growRow 776 s6Step371EntryFvFresh ++ (growRow 775 s6Step371EntryGvFresh ++ []))) s6Step371EntryG_Incoming s6Step371EntryG_checked h2 s6Step371EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step371EntryFBefore s6Step371EntryFAfter s6Step371EntryGvAfter
    s6Step371EntryFRow s6Step371EntryFOut 87 s6Step371EntryFFresh [(s6Step371EntryGRow,87),(s6Step371EntryFvRow,202),(s6Step371EntryGvRow,202)] [s6Step371EntryGFresh,s6Step371EntryFvFresh,s6Step371EntryGvFresh] [s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut]
    (growRow 795 s6Step371EntryFFresh) ((growRow 777 s6Step371EntryGFresh ++ (growRow 776 s6Step371EntryFvFresh ++ (growRow 775 s6Step371EntryGvFresh ++ [])))) s6Step371EntryF_Incoming s6Step371EntryF_checked h1 s6Step371EntryF_Outgoing
  exact h0

private theorem s6Step371EntryBank_checked : compileHmrBankResizeLog .entry s6Step371EntryFBefore ⟨s6Step371EntryFRow,s6Step371EntryGRow,s6Step371EntryFvRow,s6Step371EntryGvRow⟩ ⟨87,87,202,202⟩ [s6Step371EntryFFresh,s6Step371EntryGFresh,s6Step371EntryFvFresh,s6Step371EntryGvFresh]=
    some (s6Step371EntryGvAfter,⟨s6Step371EntryFOut,s6Step371EntryGOut,s6Step371EntryFvOut,s6Step371EntryGvOut⟩,(growRow 795 s6Step371EntryFFresh ++ (growRow 777 s6Step371EntryGFresh ++ (growRow 776 s6Step371EntryFvFresh ++ (growRow 775 s6Step371EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step371EntryBank_rows]
  rfl

private def s6Step371ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371ExitFBefore : Arena := s6Step371ExitGAfter

private def s6Step371ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 869],795⟩

private def s6Step371ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 802],776⟩

private def s6Step371ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876, 796],777⟩

private def s6Step371ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 805],775⟩

private theorem s6Step371ExitBank_incomingDistinct : ([s6Step371ExitGRow,s6Step371ExitFRow,s6Step371ExitFvRow,s6Step371ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371ExitF_Incoming : rowsOwned s6Step371ExitFBefore [s6Step371ExitFRow,s6Step371ExitFvRow,s6Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371ExitGRow,s6Step371ExitFRow,s6Step371ExitFvRow,s6Step371ExitGvRow] 1 s6Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371ExitBank_outgoingOwned : rowsOwned s6Step371ExitGvAfter [s6Step371ExitGOut,s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step371ExitGvAfter (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371ExitF_Outgoing : rowsOwned s6Step371ExitGvAfter [s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut] :=
  hmrRows_owned_drop s6Step371ExitGvAfter [s6Step371ExitGOut,s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut] 1 s6Step371ExitBank_outgoingOwned

private theorem s6Step371ExitF_distinct : (s6Step371ExitFRow.sign::s6Step371ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371ExitF_owned : (s6Step371ExitFRow.sign::s6Step371ExitFRow.payload).toFinset⊆s6Step371ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371ExitF_retired : s6Step371ExitFBefore.retireSet s6Step371ExitFExtra.toFinset=s6Step371ExitFAfter := by
  unfold Arena.retireSet s6Step371ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step371ExitFBefore,s6Step371ExitGAfter,s6Step371ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step371ExitF_checked : planRowResizeLog s6Step371ExitFBefore s6Step371ExitFRow 85 []=
    some (s6Step371ExitFAfter,s6Step371ExitFOut,shrinkRow 795 s6Step371ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step371ExitFBefore s6Step371ExitFRow 85 s6Step371ExitF_distinct s6Step371ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step371ExitFRow.payload.take 85) s6Step371ExitFRow.sign=s6Step371ExitFOut := by decide +kernel
  have hi : s6Step371ExitFRow.payload.drop 85=s6Step371ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step371ExitF_retired] at result
  exact result

private def s6Step371ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371ExitFvBefore : Arena := s6Step371ExitFAfter

private theorem s6Step371ExitFv_Incoming : rowsOwned s6Step371ExitFvBefore [s6Step371ExitFvRow,s6Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371ExitGRow,s6Step371ExitFRow,s6Step371ExitFvRow,s6Step371ExitGvRow] 2 s6Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371ExitFvBefore (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371ExitFv_Outgoing : rowsOwned s6Step371ExitGvAfter [s6Step371ExitFvOut,s6Step371ExitGvOut] :=
  hmrRows_owned_drop s6Step371ExitGvAfter [s6Step371ExitGOut,s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut] 2 s6Step371ExitBank_outgoingOwned

private theorem s6Step371ExitFv_distinct : (s6Step371ExitFvRow.sign::s6Step371ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371ExitFv_owned : (s6Step371ExitFvRow.sign::s6Step371ExitFvRow.payload).toFinset⊆s6Step371ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371ExitFvBefore (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371ExitFv_retired : s6Step371ExitFvBefore.retireSet s6Step371ExitFvExtra.toFinset=s6Step371ExitFvAfter := by
  unfold Arena.retireSet s6Step371ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step371ExitFvBefore,s6Step371ExitFAfter,s6Step371ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step371ExitFv_checked : planRowResizeLog s6Step371ExitFvBefore s6Step371ExitFvRow 202 []=
    some (s6Step371ExitFvAfter,s6Step371ExitFvOut,shrinkRow 776 s6Step371ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step371ExitFvBefore s6Step371ExitFvRow 202 s6Step371ExitFv_distinct s6Step371ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step371ExitFvRow.payload.take 202) s6Step371ExitFvRow.sign=s6Step371ExitFvOut := by decide +kernel
  have hi : s6Step371ExitFvRow.payload.drop 202=s6Step371ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step371ExitFv_retired] at result
  exact result

private def s6Step371ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step371ExitG_Incoming : rowsOwned s6Step371ExitGBefore [s6Step371ExitGRow,s6Step371ExitFRow,s6Step371ExitFvRow,s6Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371ExitGRow,s6Step371ExitFRow,s6Step371ExitFvRow,s6Step371ExitGvRow] 0 s6Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371ExitG_Outgoing : rowsOwned s6Step371ExitGvAfter [s6Step371ExitGOut,s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut] :=
  hmrRows_owned_drop s6Step371ExitGvAfter [s6Step371ExitGOut,s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut] 0 s6Step371ExitBank_outgoingOwned

private theorem s6Step371ExitG_distinct : (s6Step371ExitGRow.sign::s6Step371ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371ExitG_owned : (s6Step371ExitGRow.sign::s6Step371ExitGRow.payload).toFinset⊆s6Step371ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371ExitG_retired : s6Step371ExitGBefore.retireSet s6Step371ExitGExtra.toFinset=s6Step371ExitGAfter := by
  unfold Arena.retireSet s6Step371ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step371ExitGBefore,s6Step371ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step371ExitG_checked : planRowResizeLog s6Step371ExitGBefore s6Step371ExitGRow 86 []=
    some (s6Step371ExitGAfter,s6Step371ExitGOut,shrinkRow 777 s6Step371ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step371ExitGBefore s6Step371ExitGRow 86 s6Step371ExitG_distinct s6Step371ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step371ExitGRow.payload.take 86) s6Step371ExitGRow.sign=s6Step371ExitGOut := by decide +kernel
  have hi : s6Step371ExitGRow.payload.drop 86=s6Step371ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step371ExitG_retired] at result
  exact result

private def s6Step371ExitGvBefore : Arena := s6Step371ExitFvAfter

private theorem s6Step371ExitGv_Incoming : rowsOwned s6Step371ExitGvBefore [s6Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371ExitGRow,s6Step371ExitFRow,s6Step371ExitFvRow,s6Step371ExitGvRow] 3 s6Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371ExitGvBefore (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371ExitGv_Outgoing : rowsOwned s6Step371ExitGvAfter [s6Step371ExitGvOut] :=
  hmrRows_owned_drop s6Step371ExitGvAfter [s6Step371ExitGOut,s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut] 3 s6Step371ExitBank_outgoingOwned

private theorem s6Step371ExitGv_distinct : (s6Step371ExitGvRow.sign::s6Step371ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371ExitGv_owned : (s6Step371ExitGvRow.sign::s6Step371ExitGvRow.payload).toFinset⊆s6Step371ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371ExitGvBefore (fun q => (0≤q ∧ q<341) ∨ (343≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371ExitGv_retired : s6Step371ExitGvBefore.retireSet s6Step371ExitGvExtra.toFinset=s6Step371ExitGvAfter := by
  unfold Arena.retireSet s6Step371ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step371ExitGvBefore,s6Step371ExitFvAfter,s6Step371ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step371ExitGv_checked : planRowResizeLog s6Step371ExitGvBefore s6Step371ExitGvRow 202 []=
    some (s6Step371ExitGvAfter,s6Step371ExitGvOut,shrinkRow 775 s6Step371ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step371ExitGvBefore s6Step371ExitGvRow 202 s6Step371ExitGv_distinct s6Step371ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step371ExitGvRow.payload.take 202) s6Step371ExitGvRow.sign=s6Step371ExitGvOut := by decide +kernel
  have hi : s6Step371ExitGvRow.payload.drop 202=s6Step371ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step371ExitGv_retired] at result
  exact result

private theorem s6Step371ExitBank_rows : planWindowRowsLog s6Step371ExitGBefore [(s6Step371ExitGRow,86),(s6Step371ExitFRow,85),(s6Step371ExitFvRow,202),(s6Step371ExitGvRow,202)] [[],[],[],[]]=
    some (s6Step371ExitGvAfter,[s6Step371ExitGOut,s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut],(shrinkRow 777 s6Step371ExitGExtra ++ (shrinkRow 795 s6Step371ExitFExtra ++ (shrinkRow 776 s6Step371ExitFvExtra ++ (shrinkRow 775 s6Step371ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step371ExitGvAfter [] []=some (s6Step371ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step371ExitGvBefore s6Step371ExitGvAfter s6Step371ExitGvAfter
    s6Step371ExitGvRow s6Step371ExitGvOut 202 [] [] [] []
    (shrinkRow 775 s6Step371ExitGvExtra) ([]) s6Step371ExitGv_Incoming s6Step371ExitGv_checked h4 s6Step371ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step371ExitFvBefore s6Step371ExitFvAfter s6Step371ExitGvAfter
    s6Step371ExitFvRow s6Step371ExitFvOut 202 [] [(s6Step371ExitGvRow,202)] [[]] [s6Step371ExitGvOut]
    (shrinkRow 776 s6Step371ExitFvExtra) ((shrinkRow 775 s6Step371ExitGvExtra ++ [])) s6Step371ExitFv_Incoming s6Step371ExitFv_checked h3 s6Step371ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step371ExitFBefore s6Step371ExitFAfter s6Step371ExitGvAfter
    s6Step371ExitFRow s6Step371ExitFOut 85 [] [(s6Step371ExitFvRow,202),(s6Step371ExitGvRow,202)] [[],[]] [s6Step371ExitFvOut,s6Step371ExitGvOut]
    (shrinkRow 795 s6Step371ExitFExtra) ((shrinkRow 776 s6Step371ExitFvExtra ++ (shrinkRow 775 s6Step371ExitGvExtra ++ []))) s6Step371ExitF_Incoming s6Step371ExitF_checked h2 s6Step371ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step371ExitGBefore s6Step371ExitGAfter s6Step371ExitGvAfter
    s6Step371ExitGRow s6Step371ExitGOut 86 [] [(s6Step371ExitFRow,85),(s6Step371ExitFvRow,202),(s6Step371ExitGvRow,202)] [[],[],[]] [s6Step371ExitFOut,s6Step371ExitFvOut,s6Step371ExitGvOut]
    (shrinkRow 777 s6Step371ExitGExtra) ((shrinkRow 795 s6Step371ExitFExtra ++ (shrinkRow 776 s6Step371ExitFvExtra ++ (shrinkRow 775 s6Step371ExitGvExtra ++ [])))) s6Step371ExitG_Incoming s6Step371ExitG_checked h1 s6Step371ExitG_Outgoing
  exact h0

private theorem s6Step371ExitBank_checked : compileHmrBankResizeLog .exit s6Step371ExitGBefore ⟨s6Step371ExitFRow,s6Step371ExitGRow,s6Step371ExitFvRow,s6Step371ExitGvRow⟩ ⟨85,86,202,202⟩ [[],[],[],[]]=
    some (s6Step371ExitGvAfter,⟨s6Step371ExitFOut,s6Step371ExitGOut,s6Step371ExitFvOut,s6Step371ExitGvOut⟩,(shrinkRow 777 s6Step371ExitGExtra ++ (shrinkRow 795 s6Step371ExitFExtra ++ (shrinkRow 776 s6Step371ExitFvExtra ++ (shrinkRow 775 s6Step371ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step371ExitBank_rows]
  rfl

private theorem s6Step371Add0_apart : Disjoint s6Step371Add0Arena.live s6Step371Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step371Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371Add0_card : s6Step371Add0Arena.live.card=912 := by
  decide +kernel

private theorem s6Step371Add0_borrowed : s6Step371Add0Arena.checkBorrow (hmrHybridCount s6Step371Add0Arena s6Step371Add0B.length) s6Step371Add0Work=some s6Step371Add0During := by
  have len : s6Step371Add0Work.length=hmrHybridCount s6Step371Add0Arena s6Step371Add0B.length := by
    rw [hmrHybridCount,s6Step371Add0_card]
    decide +kernel
  have nd : s6Step371Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step371Add0Arena s6Step371Add0During s6Step371Add0Work.toFinset s6Step371Add0_bounded s6Step371Add0_apart rfl

private theorem s6Step371Add0_distinct : (843::908::877::(s6Step371Add0A++s6Step371Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371Add0_owned : (843::908::877::(s6Step371Add0A++s6Step371Add0B)).toFinset⊆s6Step371Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step371Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371Add0_checked : compileHmrHybridCinLog s6Step371Add0Arena 908 843 877 s6Step371Add0A s6Step371Add0B s6Step371Add0Work=some s6Step371Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step371Add0Arena s6Step371Add0During 908 843 877 s6Step371Add0A s6Step371Add0B s6Step371Add0Work
    (by decide +kernel) (by decide +kernel) s6Step371Add0_distinct
    (fun q hq => s6Step371Add0_owned (List.mem_toFinset.mpr hq)) s6Step371Add0_borrowed

private theorem s6Step371Add1_apart : Disjoint s6Step371Add1Arena.live s6Step371Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step371Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371Add1_card : s6Step371Add1Arena.live.card=912 := by
  decide +kernel

private theorem s6Step371Add1_borrowed : s6Step371Add1Arena.checkBorrow (hmrHybridCount s6Step371Add1Arena s6Step371Add1B.length) s6Step371Add1Work=some s6Step371Add1During := by
  have len : s6Step371Add1Work.length=hmrHybridCount s6Step371Add1Arena s6Step371Add1B.length := by
    rw [hmrHybridCount,s6Step371Add1_card]
    decide +kernel
  have nd : s6Step371Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step371Add1Arena s6Step371Add1During s6Step371Add1Work.toFinset s6Step371Add1_bounded s6Step371Add1_apart rfl

private theorem s6Step371Add1_distinct : (843::908::877::(s6Step371Add1A++s6Step371Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371Add1_owned : (843::908::877::(s6Step371Add1A++s6Step371Add1B)).toFinset⊆s6Step371Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step371Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371Add1_checked : compileHmrHybridCinLog s6Step371Add1Arena 908 843 877 s6Step371Add1A s6Step371Add1B s6Step371Add1Work=some s6Step371Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step371Add1Arena s6Step371Add1During 908 843 877 s6Step371Add1A s6Step371Add1B s6Step371Add1Work
    (by decide +kernel) (by decide +kernel) s6Step371Add1_distinct
    (fun q hq => s6Step371Add1_owned (List.mem_toFinset.mpr hq)) s6Step371Add1_borrowed

private theorem s6Step371F4_apart : Disjoint (s6Step371Add0A++s6Step371Add0B).toFinset (s6Step371Add1A++s6Step371Add1B).toFinset := by
  have nd : ((s6Step371Add0A++s6Step371Add0B)++(s6Step371Add1A++s6Step371Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step371F4_carry : s6Step371F4FlagArena.checkBorrow 1 [877]=some s6Step371Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step371F4FlagArena,s6Step371HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step371F4FlagArena,s6Step371HeadFvAfter,s6Step371Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371F4_distinct : (858::908::843::877::((s6Step371Add0A++s6Step371Add1A)++(s6Step371Add0B++s6Step371Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371F4_flag : s6Step371HeadFvAfter.checkBorrow 1 [843]=some s6Step371F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step371HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step371F4_owned : (858::908::((s6Step371Add0A++s6Step371Add1A)++(s6Step371Add0B++s6Step371Add1B))).toFinset⊆s6Step371HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step371HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371F4_checked : compileHmrHybridF4Log s6Step371HeadFvAfter 858 908 s6Step371Add0A s6Step371Add0B s6Step371Add1A s6Step371Add1B [843] [877] s6Step371Add0Work s6Step371Add1Work=some s6Step371F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step371HeadFvAfter s6Step371F4FlagArena s6Step371Add0Arena s6Step371Add0During s6Step371Add1During 858 908
    s6Step371Add0A s6Step371Add0B s6Step371Add1A s6Step371Add1B [843] [877] s6Step371Add0Work s6Step371Add1Work
    (fun q hq => s6Step371F4_owned (List.mem_toFinset.mpr hq)) s6Step371F4_flag s6Step371F4_carry
    s6Step371F4_distinct s6Step371F4_apart s6Step371Add0_checked s6Step371Add1_checked

private theorem s6Step371Front_branch : s6Step371FrontSigmaArena.checkBorrow 1 [908]=some s6Step371HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step371FrontSigmaArena,s6Step371EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step371FrontSigmaArena,s6Step371EntryGvAfter,s6Step371HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371Front_entry : HmrFrontEntryValid s6Step371EntryFBefore s6Step371FrontBank 87 202 ⟨85,86,202,202⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step371FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step371EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step371EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step371FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step371Front_sigma : s6Step371EntryGvAfter.checkBorrow 1 [858]=some s6Step371FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step371EntryGvAfter,arenaWires]
  · rfl

private def s6Step371HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371HeadFBefore : Arena := s6Step371HeadGAfter

private def s6Step371HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step371HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step371HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876],777⟩

private def s6Step371HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private theorem s6Step371HeadBank_incomingDistinct : ([s6Step371HeadGRow,s6Step371HeadFRow,s6Step371HeadGvRow,s6Step371HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371HeadF_Incoming : rowsOwned s6Step371HeadFBefore [s6Step371HeadFRow,s6Step371HeadGvRow,s6Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371HeadGRow,s6Step371HeadFRow,s6Step371HeadGvRow,s6Step371HeadFvRow] 1 s6Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371HeadBank_outgoingOwned : rowsOwned s6Step371HeadFvAfter [s6Step371HeadGOut,s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step371HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371HeadF_Outgoing : rowsOwned s6Step371HeadFvAfter [s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut] :=
  hmrRows_owned_drop s6Step371HeadFvAfter [s6Step371HeadGOut,s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut] 1 s6Step371HeadBank_outgoingOwned

private theorem s6Step371HeadF_distinct : (s6Step371HeadFRow.sign::s6Step371HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371HeadF_owned : (s6Step371HeadFRow.sign::s6Step371HeadFRow.payload).toFinset⊆s6Step371HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371HeadF_reserved : s6Step371HeadFBefore.reserve s6Step371HeadFFresh.toFinset=some s6Step371HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371HeadFFresh,arenaWires]
  · norm_num [s6Step371HeadFBefore,s6Step371HeadGAfter,s6Step371HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step371HeadFAfter,s6Step371HeadFBefore,s6Step371HeadGAfter,s6Step371HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371HeadF_checked : planRowResizeLog s6Step371HeadFBefore s6Step371HeadFRow 88 s6Step371HeadFFresh=
    some (s6Step371HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 869],795⟩,growRow 795 s6Step371HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step371HeadFBefore s6Step371HeadFAfter s6Step371HeadFRow 88 s6Step371HeadFFresh
    s6Step371HeadF_distinct s6Step371HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371HeadF_reserved
  have rowEq : WindowRow.mk (s6Step371HeadFRow.payload++s6Step371HeadFFresh) s6Step371HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 869],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step371HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step371HeadFvBefore : Arena := s6Step371HeadGvAfter

private theorem s6Step371HeadFv_Incoming : rowsOwned s6Step371HeadFvBefore [s6Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371HeadGRow,s6Step371HeadFRow,s6Step371HeadGvRow,s6Step371HeadFvRow] 3 s6Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371HeadFv_Outgoing : rowsOwned s6Step371HeadFvAfter [s6Step371HeadFvOut] :=
  hmrRows_owned_drop s6Step371HeadFvAfter [s6Step371HeadGOut,s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut] 3 s6Step371HeadBank_outgoingOwned

private theorem s6Step371HeadFv_distinct : (s6Step371HeadFvRow.sign::s6Step371HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371HeadFv_owned : (s6Step371HeadFvRow.sign::s6Step371HeadFvRow.payload).toFinset⊆s6Step371HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371HeadFv_reserved : s6Step371HeadFvBefore.reserve s6Step371HeadFvFresh.toFinset=some s6Step371HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371HeadFvFresh,arenaWires]
  · norm_num [s6Step371HeadFvBefore,s6Step371HeadGvAfter,s6Step371HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step371HeadFvAfter,s6Step371HeadFvBefore,s6Step371HeadGvAfter,s6Step371HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371HeadFv_checked : planRowResizeLog s6Step371HeadFvBefore s6Step371HeadFvRow 203 s6Step371HeadFvFresh=
    some (s6Step371HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 802],776⟩,growRow 776 s6Step371HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step371HeadFvBefore s6Step371HeadFvAfter s6Step371HeadFvRow 203 s6Step371HeadFvFresh
    s6Step371HeadFv_distinct s6Step371HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step371HeadFvRow.payload++s6Step371HeadFvFresh) s6Step371HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step371HeadG_Incoming : rowsOwned s6Step371HeadGBefore [s6Step371HeadGRow,s6Step371HeadFRow,s6Step371HeadGvRow,s6Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371HeadGRow,s6Step371HeadFRow,s6Step371HeadGvRow,s6Step371HeadFvRow] 0 s6Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371HeadG_Outgoing : rowsOwned s6Step371HeadFvAfter [s6Step371HeadGOut,s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut] :=
  hmrRows_owned_drop s6Step371HeadFvAfter [s6Step371HeadGOut,s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut] 0 s6Step371HeadBank_outgoingOwned

private theorem s6Step371HeadG_distinct : (s6Step371HeadGRow.sign::s6Step371HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371HeadG_owned : (s6Step371HeadGRow.sign::s6Step371HeadGRow.payload).toFinset⊆s6Step371HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371HeadG_reserved : s6Step371HeadGBefore.reserve s6Step371HeadGFresh.toFinset=some s6Step371HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371HeadGFresh,arenaWires]
  · norm_num [s6Step371HeadGBefore,s6Step371HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step371HeadGAfter,s6Step371HeadGBefore,s6Step371HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371HeadG_checked : planRowResizeLog s6Step371HeadGBefore s6Step371HeadGRow 88 s6Step371HeadGFresh=
    some (s6Step371HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876, 796],777⟩,growRow 777 s6Step371HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step371HeadGBefore s6Step371HeadGAfter s6Step371HeadGRow 88 s6Step371HeadGFresh
    s6Step371HeadG_distinct s6Step371HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371HeadG_reserved
  have rowEq : WindowRow.mk (s6Step371HeadGRow.payload++s6Step371HeadGFresh) s6Step371HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 876, 796],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step371HeadGvBefore : Arena := s6Step371HeadFAfter

private theorem s6Step371HeadGv_Incoming : rowsOwned s6Step371HeadGvBefore [s6Step371HeadGvRow,s6Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step371HeadGRow,s6Step371HeadFRow,s6Step371HeadGvRow,s6Step371HeadFvRow] 2 s6Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step371HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step371HeadGv_Outgoing : rowsOwned s6Step371HeadFvAfter [s6Step371HeadGvOut,s6Step371HeadFvOut] :=
  hmrRows_owned_drop s6Step371HeadFvAfter [s6Step371HeadGOut,s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut] 2 s6Step371HeadBank_outgoingOwned

private theorem s6Step371HeadGv_distinct : (s6Step371HeadGvRow.sign::s6Step371HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step371HeadGv_owned : (s6Step371HeadGvRow.sign::s6Step371HeadGvRow.payload).toFinset⊆s6Step371HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step371HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step371HeadGv_reserved : s6Step371HeadGvBefore.reserve s6Step371HeadGvFresh.toFinset=some s6Step371HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step371HeadGvFresh,arenaWires]
  · norm_num [s6Step371HeadGvBefore,s6Step371HeadFAfter,s6Step371HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step371HeadGvAfter,s6Step371HeadGvBefore,s6Step371HeadFAfter,s6Step371HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step371HeadGv_checked : planRowResizeLog s6Step371HeadGvBefore s6Step371HeadGvRow 203 s6Step371HeadGvFresh=
    some (s6Step371HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 805],775⟩,growRow 775 s6Step371HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step371HeadGvBefore s6Step371HeadGvAfter s6Step371HeadGvRow 203 s6Step371HeadGvFresh
    s6Step371HeadGv_distinct s6Step371HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step371HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step371HeadGvRow.payload++s6Step371HeadGvFresh) s6Step371HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step371HeadBank_rows : planWindowRowsLog s6Step371HeadGBefore [(s6Step371HeadGRow,88),(s6Step371HeadFRow,88),(s6Step371HeadGvRow,203),(s6Step371HeadFvRow,203)] [s6Step371HeadGFresh,s6Step371HeadFFresh,s6Step371HeadGvFresh,s6Step371HeadFvFresh]=
    some (s6Step371HeadFvAfter,[s6Step371HeadGOut,s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut],(growRow 777 s6Step371HeadGFresh ++ (growRow 795 s6Step371HeadFFresh ++ (growRow 775 s6Step371HeadGvFresh ++ (growRow 776 s6Step371HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step371HeadFvAfter [] []=some (s6Step371HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step371HeadFvBefore s6Step371HeadFvAfter s6Step371HeadFvAfter
    s6Step371HeadFvRow s6Step371HeadFvOut 203 s6Step371HeadFvFresh [] [] []
    (growRow 776 s6Step371HeadFvFresh) ([]) s6Step371HeadFv_Incoming s6Step371HeadFv_checked h4 s6Step371HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step371HeadGvBefore s6Step371HeadGvAfter s6Step371HeadFvAfter
    s6Step371HeadGvRow s6Step371HeadGvOut 203 s6Step371HeadGvFresh [(s6Step371HeadFvRow,203)] [s6Step371HeadFvFresh] [s6Step371HeadFvOut]
    (growRow 775 s6Step371HeadGvFresh) ((growRow 776 s6Step371HeadFvFresh ++ [])) s6Step371HeadGv_Incoming s6Step371HeadGv_checked h3 s6Step371HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step371HeadFBefore s6Step371HeadFAfter s6Step371HeadFvAfter
    s6Step371HeadFRow s6Step371HeadFOut 88 s6Step371HeadFFresh [(s6Step371HeadGvRow,203),(s6Step371HeadFvRow,203)] [s6Step371HeadGvFresh,s6Step371HeadFvFresh] [s6Step371HeadGvOut,s6Step371HeadFvOut]
    (growRow 795 s6Step371HeadFFresh) ((growRow 775 s6Step371HeadGvFresh ++ (growRow 776 s6Step371HeadFvFresh ++ []))) s6Step371HeadF_Incoming s6Step371HeadF_checked h2 s6Step371HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step371HeadGBefore s6Step371HeadGAfter s6Step371HeadFvAfter
    s6Step371HeadGRow s6Step371HeadGOut 88 s6Step371HeadGFresh [(s6Step371HeadFRow,88),(s6Step371HeadGvRow,203),(s6Step371HeadFvRow,203)] [s6Step371HeadFFresh,s6Step371HeadGvFresh,s6Step371HeadFvFresh] [s6Step371HeadFOut,s6Step371HeadGvOut,s6Step371HeadFvOut]
    (growRow 777 s6Step371HeadGFresh) ((growRow 795 s6Step371HeadFFresh ++ (growRow 775 s6Step371HeadGvFresh ++ (growRow 776 s6Step371HeadFvFresh ++ [])))) s6Step371HeadG_Incoming s6Step371HeadG_checked h1 s6Step371HeadG_Outgoing
  exact h0

private theorem s6Step371HeadBank_checked : compileHmrBankResizeLog .headroom s6Step371HeadGBefore ⟨s6Step371HeadFRow,s6Step371HeadGRow,s6Step371HeadFvRow,s6Step371HeadGvRow⟩ ⟨88,88,203,203⟩ [s6Step371HeadGFresh,s6Step371HeadFFresh,s6Step371HeadGvFresh,s6Step371HeadFvFresh]=
    some (s6Step371HeadFvAfter,⟨s6Step371HeadFOut,s6Step371HeadGOut,s6Step371HeadFvOut,s6Step371HeadGvOut⟩,(growRow 777 s6Step371HeadGFresh ++ (growRow 795 s6Step371HeadFFresh ++ (growRow 775 s6Step371HeadGvFresh ++ (growRow 776 s6Step371HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step371HeadBank_rows]
  rfl

private theorem s6Step371Front_checked : compileHmrSourceFrontLog s6Step371EntryFBefore s6Step371FrontBank 87 202 ⟨85,86,202,202⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step371FrontLog=some s6Step371FrontPlan := by
  have pairEq : s6Step371FrontPair=⟨s6Step371HeadFRow,s6Step371HeadGRow,s6Step371HeadFvRow,s6Step371HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step371FrontHead=⟨s6Step371ExitFRow,s6Step371ExitGRow,s6Step371ExitFvRow,s6Step371ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step371Add0A=s6Step371FrontHead.f.wires := by decide +kernel
  have gEq : s6Step371Add0B=s6Step371FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step371Add1A=s6Step371FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step371Add1B=s6Step371FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step371EntryFBefore s6Step371FrontBank 87 202 ⟨85,86,202,202⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step371FrontLog s6Step371FrontPlan
  · exact s6Step371Front_entry
  · exact s6Step371EntryBank_checked
  · exact s6Step371Front_sigma
  · rfl
  · exact s6Step371Front_branch
  · rfl
  · simpa only [s6Step371FrontPlan,pairEq] using s6Step371HeadBank_checked
  · simpa only [s6Step371FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step371F4_checked
  · exact s6Step371Counter_checked
  · rfl
  · simpa only [s6Step371FrontPlan,headEq] using s6Step371ExitBank_checked

private theorem s6Step371Complete_explicit_checked : compileHmrEarlyStepLog s6Step371EntryFBefore s6Step371FrontBank 87 202 ⟨85,86,202,202⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step371CompleteLog=some s6Step371CompletePlan := by
  let Q := s6Step371EarlyControlPlan
  have hq := s6Step371EarlyControl_plan_checked
  have fv1 : s6Step371CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step371CompleteOut.fv.payload[2]?.getD s6Step371CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step371CompleteOut.fv.payload[3]?.getD s6Step371CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step371CompleteOut.fv.payload[4]?.getD s6Step371CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step371EntryFBefore s6Step371EarlyControlArena s6Step371FrontBank 87 202 ⟨85,86,202,202⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step371CompleteLog s6Step371FrontPlan Q
    s6Step371Front_checked s6Step371Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step371Complete_owned s6Step371Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step371EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step371CompleteOut.fv.second (s6Step371CompleteOut.fv.payload[2]?.getD s6Step371CompleteOut.fv.sign) (s6Step371CompleteOut.fv.payload[3]?.getD s6Step371CompleteOut.fv.sign) (s6Step371CompleteOut.fv.payload[4]?.getD s6Step371CompleteOut.fv.sign) 908 60 s6Step371EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep371Arena : Arena := s6Step371EntryFBefore
def s6PrivateStep371Bank : WindowBank := s6Step371FrontBank
def s6PrivateStep371Spec : HmrSourceWalkStepLog := ⟨87,202,⟨85,86,202,202⟩,60,.early s6Step371CompleteLog⟩
def s6PrivateStep371Plan : HmrSourceStepPlan := .early s6Step371CompletePlan
theorem s6PrivateStep371_source : s6PrivateStep371Spec=s6ObservedLogs368[3] := rfl
theorem s6PrivateStep371_checked : compileHmrSourceStepLog s6PrivateStep371Arena s6PrivateStep371Bank
    s6PrivateStep371Spec.fgWidth s6PrivateStep371Spec.vWidth s6PrivateStep371Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 371 s6PrivateStep371Spec.need none s6PrivateStep371Spec.log=some s6PrivateStep371Plan := by
  change compileHmrSourceStepLog s6Step371EntryFBefore s6Step371FrontBank 87 202 ⟨85,86,202,202⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 371 60 none (.early s6Step371CompleteLog)=some (.early s6Step371CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 371<498)]
  rw [s6Step371Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
