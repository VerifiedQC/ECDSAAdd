import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep355
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

private def s6Step357CompleteMoves : List (Wire × Wire) := [(848,348)]

private def s6Step357EarlyControlLog : HmrEarlyControlLog := ⟨[848, 875, 906, 778, 892],[881],[805],[802, 843, 877, 792, 816, 819],[]⟩

private def s6Step357FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [892], [], [789]],[[881], [778], [875], [906]],[[], [], [], []]⟩,[876],[858],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step357CompleteLog : HmrEarlyStepLog := ⟨s6Step357FrontLog,s6Step357CompleteMoves,s6Step357EarlyControlLog⟩

private def s6Step357ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step357ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step357ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩

private def s6Step357ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private def s6Step357FrontOut : WindowBank := ⟨s6Step357ExitFOut,s6Step357ExitGOut,s6Step357ExitFvOut,s6Step357ExitGvOut⟩

private def s6Step357CompleteOut : WindowBank := s6Step357FrontOut.repacked s6Step357CompleteMoves

private def s6Step357EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step357EarlyControlPositiveArena,[881],s6Step357EarlyControlEqualityArena,[805],⟨⟨876,false⟩,[⟨⟨881,false⟩,805⟩]⟩⟩

private def s6Step357EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,848⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,906⟩,⟨⟨770,false⟩,778⟩,⟨⟨769,false⟩,892⟩]⟩

private def s6Step357EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step357EarlyControlZeroArena,s6Step357EarlyControlZeroPlan,s6Step357EarlyControlClassPlan,s6Step357EarlyControlFlagArena,s6Step357EarlyControlFittedArena,s6Step357EarlyControlHistoryArena,s6Step357EarlyControlSigmaArena,s6Step357EarlyControlOutputArena,s6Step357EarlyControlLog⟩

private def s6Step357CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step357Counter_bounded : s6Step357CounterWork.toFinset⊆arenaWires := by norm_num [s6Step357CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step357HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357CounterDuring : Arena := ⟨s6Step357HeadFvAfter.live∪s6Step357CounterWork.toFinset,Finset.union_subset s6Step357HeadFvAfter.bounded s6Step357Counter_bounded⟩

private def s6Step357EntryFFresh : List Wire := []

private def s6Step357EntryFvFresh : List Wire := []

private def s6Step357EntryGFresh : List Wire := [892]

private def s6Step357EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EntryGvFresh : List Wire := [789]

private def s6Step357ExitFExtra : List Wire := [348, 778]

private def s6Step357ExitFvExtra : List Wire := [906]

private def s6Step357ExitGExtra : List Wire := [892, 881]

private def s6Step357ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357ExitGvExtra : List Wire := [875]

private def s6Step357Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step357Add0_bounded : s6Step357Add0Work.toFinset⊆arenaWires := by
  have h : s6Step357Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step357Add0During : Arena := ⟨s6Step357Add0Arena.live∪s6Step357Add0Work.toFinset,Finset.union_subset s6Step357Add0Arena.bounded s6Step357Add0_bounded⟩

private def s6Step357Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step357Add1_bounded : s6Step357Add1Work.toFinset⊆arenaWires := by
  have h : s6Step357Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step357Add1During : Arena := ⟨s6Step357Add1Arena.live∪s6Step357Add1Work.toFinset,Finset.union_subset s6Step357Add1Arena.bounded s6Step357Add1_bounded⟩

private def s6Step357F4FlagArena : Arena := ⟨s6Step357HeadFvAfter.live∪{805},Finset.union_subset s6Step357HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step357F4Plan : HmrHybridF4Plan := ⟨s6Step357F4FlagArena,[805],s6Step357Add0Arena,[802],s6Step357Add0During,s6Step357Add0Work,s6Step357Add1During,s6Step357Add1Work⟩

private def s6Step357HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 778],795⟩

private def s6Step357HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 906],776⟩

private def s6Step357HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892, 881],777⟩

private def s6Step357HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private def s6Step357FrontHead : WindowBank := ⟨s6Step357HeadFOut,s6Step357HeadGOut,s6Step357HeadFvOut,s6Step357HeadGvOut⟩

private def s6Step357EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step357EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step357EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892],777⟩

private def s6Step357EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private def s6Step357FrontPair : WindowBank := ⟨s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut⟩

private def s6Step357FrontSigmaArena : Arena := ⟨s6Step357EntryGvAfter.live∪{876},Finset.union_subset s6Step357EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step357HeadFFresh : List Wire := [778]

private def s6Step357HeadFvFresh : List Wire := [906]

private def s6Step357HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357HeadGFresh : List Wire := [881]

private def s6Step357HeadGvFresh : List Wire := [875]

private def s6Step357FrontPlan : HmrSourceFront := ⟨s6Step357EntryGvAfter,s6Step357FrontPair,(growRow 795 s6Step357EntryFFresh ++ (growRow 777 s6Step357EntryGFresh ++ (growRow 776 s6Step357EntryFvFresh ++ (growRow 775 s6Step357EntryGvFresh ++ [])))),s6Step357FrontSigmaArena,[876],s6Step357HeadGBefore,[858],
  s6Step357HeadFvAfter,s6Step357FrontHead,(growRow 777 s6Step357HeadGFresh ++ (growRow 795 s6Step357HeadFFresh ++ (growRow 775 s6Step357HeadGvFresh ++ (growRow 776 s6Step357HeadFvFresh ++ [])))),s6Step357F4Plan,s6Step357CounterDuring,s6Step357CounterWork,s6Step357ExitGvAfter,s6Step357FrontOut,(shrinkRow 777 s6Step357ExitGExtra ++ (shrinkRow 795 s6Step357ExitFExtra ++ (shrinkRow 776 s6Step357ExitFvExtra ++ (shrinkRow 775 s6Step357ExitGvExtra ++ []))))⟩

private def s6Step357CompletePlan : HmrEarlyStepPlan := ⟨s6Step357FrontPlan,s6Step357EarlyControlArena,s6Step357EarlyControlPlan,s6Step357CompleteMoves⟩

private theorem s6Step357Complete_apart : List.Disjoint (s6Step357CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [876, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step357CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[876, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step357Complete_owned : (s6Step357CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step357CompleteMoveArena : Arena := ⟨s6Step357ExitGvAfter.live∪{348},Finset.union_subset s6Step357ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step357Complete_repack : s6Step357ExitGvAfter.checkRepack s6Step357CompleteMoves=some s6Step357EarlyControlArena := by
  have owned : 848∈s6Step357ExitGvAfter.live := by norm_num [s6Step357ExitGvAfter,arenaWires]
  have reserve : s6Step357ExitGvAfter.reserve {348}=some s6Step357CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step357ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step357CompleteMoveArena.retireSet {848}=s6Step357EarlyControlArena := by
    unfold Arena.retireSet s6Step357EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step357CompleteMoveArena,s6Step357ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step357CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step357CompleteMoveArena.retireSet {848}).checkRepack []=some s6Step357EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step357EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step357EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_branch : compileHmrBranchRetirement s6Step357EarlyControlSigmaArena 858=some s6Step357EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step357EarlyControl_branchOwned
  · ext q
    simp [s6Step357EarlyControlOutputArena,s6Step357EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step357EarlyControl_classEqualityBorrow : s6Step357EarlyControlPositiveArena.checkBorrow (([876, 881] : List Wire).length-1) s6Step357EarlyControlLog.classWork=some s6Step357EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step357EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step357EarlyControlEqualityArena,s6Step357EarlyControlPositiveArena,s6Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step357EarlyControl_classEqualityOwned : ([876, 881] : List Wire).toFinset⊆s6Step357EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_classEquality : compileHmrEqualityLog s6Step357EarlyControlPositiveArena [876, 881] 0 s6Step357EarlyControlLog.classWork=some (s6Step357EarlyControlEqualityArena,s6Step357EarlyControlLog.classWork,s6Step357EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step357EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step357EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step357EarlyControl_classOwned : ([769, 892, 876] : List Wire).toFinset⊆s6Step357EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_positiveBorrow : s6Step357EarlyControlZeroArena.checkBorrow (1) s6Step357EarlyControlLog.positiveWork=some s6Step357EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step357EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step357EarlyControlPositiveArena,s6Step357EarlyControlZeroArena,s6Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step357EarlyControl_class : compileHmrSourceClassLog s6Step357EarlyControlZeroArena false 769 s6Step357EarlyControlZeroPlan.top 0 876 s6Step357EarlyControlLog.positiveWork s6Step357EarlyControlLog.classWork=some s6Step357EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step357EarlyControlClassPlan s6Step357EarlyControlZeroArena false 769 s6Step357EarlyControlZeroPlan.top 0 876
  constructor
  · decide +kernel
  · exact s6Step357EarlyControl_classOwned
  · exact s6Step357EarlyControl_positiveBorrow
  · exact s6Step357EarlyControl_classEquality

private theorem s6Step357EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_entrySigmaOwned : ([876, 254] : List Wire).toFinset⊆s6Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_fitBorrow : s6Step357EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step357EarlyControlLog.recordFresh=some s6Step357EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step357EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step357EarlyControlFittedArena,s6Step357EarlyControlFlagArena,s6Step357EarlyControlLog,arenaWires]

private theorem s6Step357EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step357EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_fit : compileHmrRecordGrowLog s6Step357EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step357EarlyControlLog.recordFresh=some s6Step357EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step357EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step357EarlyControl_fitBorrow

private theorem s6Step357EarlyControl_flagsBorrow : s6Step357EarlyControlEqualityArena.checkBorrow (6) s6Step357EarlyControlLog.flagWork=some s6Step357EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step357EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step357EarlyControlFlagArena,s6Step357EarlyControlEqualityArena,s6Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step357EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step357EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_flags : compileHmrFlagsLog s6Step357EarlyControlClassPlan.equalityArena s6Step357EarlyControlClassPlan.equality.top 253 252 251 s6Step357EarlyControlLog.flagWork=some s6Step357EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step357EarlyControl_flagsOwned⟩
  · exact s6Step357EarlyControl_flagsBorrow

private theorem s6Step357EarlyControl_historyBorrow : s6Step357EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step357EarlyControlLog.recordFresh=some s6Step357EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step357EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step357EarlyControlHistoryArena,s6Step357EarlyControlArena,s6Step357EarlyControlLog,arenaWires]

private theorem s6Step357EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_history : compileHmrRecordGrowLog s6Step357EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step357EarlyControlLog.recordFresh=some s6Step357EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step357EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step357EarlyControl_historyBorrow

private theorem s6Step357EarlyControl_sigmaOwned : ([254, 876] : List Wire).toFinset⊆s6Step357EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_sigmaReleaseOwned : ([876] : List Wire).toFinset⊆s6Step357EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_sigmaRelease : s6Step357EarlyControlHistoryArena.release {876} (fun _ => false)=some s6Step357EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step357EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step357EarlyControlSigmaArena,s6Step357EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step357EarlyControl_sigma : compileHmrSigmaDropLog s6Step357EarlyControlHistoryArena false 0 0 254 876 []=some s6Step357EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step357EarlyControl_sigmaOwned⟩
  · exact s6Step357EarlyControl_sigmaRelease

private theorem s6Step357EarlyControl_zeroBorrow : s6Step357EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step357EarlyControlLog.zeroWork=some s6Step357EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step357EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step357EarlyControlZeroArena,s6Step357EarlyControlArena,s6Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step357EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step357EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EarlyControl_zero : compileHmrEqualityLog s6Step357EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step357EarlyControlLog.zeroWork=some (s6Step357EarlyControlZeroArena,s6Step357EarlyControlLog.zeroWork,s6Step357EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step357EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step357EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step357EarlyControl_logged : s6Step357EarlyControlPlan.Logged s6Step357EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 876 254 253 252 251 858 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step357EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step357EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step357EarlyControl_zero
  · exact s6Step357EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step357EarlyControl_flags
  · exact s6Step357EarlyControl_fit
  · exact s6Step357EarlyControl_history
  · exact s6Step357EarlyControl_sigma
  · exact s6Step357EarlyControl_branch

private theorem s6Step357EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step357EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 876 254 253 252 251 858 60 s6Step357EarlyControlLog=some s6Step357EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step357EarlyControlPlan s6Step357EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 876 254 253 252 251 858 60 s6Step357EarlyControl_logged

private def s6Step357EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step357EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step357EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩

private def s6Step357EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879],775⟩

private def s6Step357FrontBank : WindowBank := ⟨s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow⟩

private def s6Step357Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 778, 795]

private def s6Step357Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892, 881, 777]

private def s6Step357Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 906, 776]

private def s6Step357Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 775]

private theorem s6Step357Counter_apart : Disjoint s6Step357HeadFvAfter.live s6Step357CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step357HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357Counter_borrowed : s6Step357HeadFvAfter.checkBorrow 4 s6Step357CounterWork=some s6Step357CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step357HeadFvAfter s6Step357CounterDuring s6Step357CounterWork.toFinset s6Step357Counter_bounded s6Step357Counter_apart rfl

private theorem s6Step357Counter_owned : (876::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step357HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step357HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357Counter_checked : compileHmrCounterStepLog s6Step357HeadFvAfter true 876 [774, 773, 772, 771, 770, 769] s6Step357CounterWork=some s6Step357CounterDuring := by
  have owned : ∀q∈876::[774, 773, 772, 771, 770, 769],q∈s6Step357HeadFvAfter.live := fun q hq => s6Step357Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step357Counter_borrowed

private def s6Step357EntryFAfter : Arena := s6Step357EntryFBefore

private theorem s6Step357EntryBank_incomingDistinct : ([s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357EntryF_Incoming : rowsOwned s6Step357EntryFBefore [s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow] 0 s6Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357EntryBank_outgoingOwned : rowsOwned s6Step357EntryGvAfter [s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step357EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357EntryF_Outgoing : rowsOwned s6Step357EntryGvAfter [s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut] :=
  hmrRows_owned_drop s6Step357EntryGvAfter [s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut] 0 s6Step357EntryBank_outgoingOwned

private theorem s6Step357EntryF_distinct : (s6Step357EntryFRow.sign::s6Step357EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357EntryF_owned : (s6Step357EntryFRow.sign::s6Step357EntryFRow.payload).toFinset⊆s6Step357EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EntryF_reserved : s6Step357EntryFBefore.reserve s6Step357EntryFFresh.toFinset=some s6Step357EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357EntryFFresh,arenaWires]
  · norm_num [s6Step357EntryFBefore,s6Step357EntryFFresh,arenaWires]
  · simp only [s6Step357EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step357EntryF_checked : planRowResizeLog s6Step357EntryFBefore s6Step357EntryFRow 93 s6Step357EntryFFresh=
    some (s6Step357EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩,growRow 795 s6Step357EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step357EntryFBefore s6Step357EntryFAfter s6Step357EntryFRow 93 s6Step357EntryFFresh
    s6Step357EntryF_distinct s6Step357EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357EntryF_reserved
  have rowEq : WindowRow.mk (s6Step357EntryFRow.payload++s6Step357EntryFFresh) s6Step357EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step357EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357EntryFvAfter : Arena := s6Step357EntryGAfter

private def s6Step357EntryFvBefore : Arena := s6Step357EntryGAfter

private theorem s6Step357EntryFv_Incoming : rowsOwned s6Step357EntryFvBefore [s6Step357EntryFvRow,s6Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow] 2 s6Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357EntryFv_Outgoing : rowsOwned s6Step357EntryGvAfter [s6Step357EntryFvOut,s6Step357EntryGvOut] :=
  hmrRows_owned_drop s6Step357EntryGvAfter [s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut] 2 s6Step357EntryBank_outgoingOwned

private theorem s6Step357EntryFv_distinct : (s6Step357EntryFvRow.sign::s6Step357EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357EntryFv_owned : (s6Step357EntryFvRow.sign::s6Step357EntryFvRow.payload).toFinset⊆s6Step357EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EntryFv_reserved : s6Step357EntryFvBefore.reserve s6Step357EntryFvFresh.toFinset=some s6Step357EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357EntryFvFresh,arenaWires]
  · norm_num [s6Step357EntryFvBefore,s6Step357EntryGAfter,s6Step357EntryFvFresh,arenaWires]
  · simp only [s6Step357EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step357EntryFv_checked : planRowResizeLog s6Step357EntryFvBefore s6Step357EntryFvRow 195 s6Step357EntryFvFresh=
    some (s6Step357EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩,growRow 776 s6Step357EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step357EntryFvBefore s6Step357EntryFvAfter s6Step357EntryFvRow 195 s6Step357EntryFvFresh
    s6Step357EntryFv_distinct s6Step357EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step357EntryFvRow.payload++s6Step357EntryFvFresh) s6Step357EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step357EntryGBefore : Arena := s6Step357EntryFBefore

private theorem s6Step357EntryG_Incoming : rowsOwned s6Step357EntryGBefore [s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow] 1 s6Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357EntryG_Outgoing : rowsOwned s6Step357EntryGvAfter [s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut] :=
  hmrRows_owned_drop s6Step357EntryGvAfter [s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut] 1 s6Step357EntryBank_outgoingOwned

private theorem s6Step357EntryG_distinct : (s6Step357EntryGRow.sign::s6Step357EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357EntryG_owned : (s6Step357EntryGRow.sign::s6Step357EntryGRow.payload).toFinset⊆s6Step357EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EntryG_reserved : s6Step357EntryGBefore.reserve s6Step357EntryGFresh.toFinset=some s6Step357EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357EntryGFresh,arenaWires]
  · norm_num [s6Step357EntryGBefore,s6Step357EntryFBefore,s6Step357EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step357EntryGAfter,s6Step357EntryGBefore,s6Step357EntryFBefore,s6Step357EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357EntryG_checked : planRowResizeLog s6Step357EntryGBefore s6Step357EntryGRow 93 s6Step357EntryGFresh=
    some (s6Step357EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892],777⟩,growRow 777 s6Step357EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step357EntryGBefore s6Step357EntryGAfter s6Step357EntryGRow 93 s6Step357EntryGFresh
    s6Step357EntryG_distinct s6Step357EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357EntryG_reserved
  have rowEq : WindowRow.mk (s6Step357EntryGRow.payload++s6Step357EntryGFresh) s6Step357EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step357EntryGvBefore : Arena := s6Step357EntryGAfter

private theorem s6Step357EntryGv_Incoming : rowsOwned s6Step357EntryGvBefore [s6Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow] 3 s6Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357EntryGv_Outgoing : rowsOwned s6Step357EntryGvAfter [s6Step357EntryGvOut] :=
  hmrRows_owned_drop s6Step357EntryGvAfter [s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut] 3 s6Step357EntryBank_outgoingOwned

private theorem s6Step357EntryGv_distinct : (s6Step357EntryGvRow.sign::s6Step357EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357EntryGv_owned : (s6Step357EntryGvRow.sign::s6Step357EntryGvRow.payload).toFinset⊆s6Step357EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357EntryGv_reserved : s6Step357EntryGvBefore.reserve s6Step357EntryGvFresh.toFinset=some s6Step357EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357EntryGvFresh,arenaWires]
  · norm_num [s6Step357EntryGvBefore,s6Step357EntryGAfter,s6Step357EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step357EntryGvAfter,s6Step357EntryGvBefore,s6Step357EntryGAfter,s6Step357EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357EntryGv_checked : planRowResizeLog s6Step357EntryGvBefore s6Step357EntryGvRow 195 s6Step357EntryGvFresh=
    some (s6Step357EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩,growRow 775 s6Step357EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step357EntryGvBefore s6Step357EntryGvAfter s6Step357EntryGvRow 195 s6Step357EntryGvFresh
    s6Step357EntryGv_distinct s6Step357EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step357EntryGvRow.payload++s6Step357EntryGvFresh) s6Step357EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step357EntryBank_rows : planWindowRowsLog s6Step357EntryFBefore [(s6Step357EntryFRow,93),(s6Step357EntryGRow,93),(s6Step357EntryFvRow,195),(s6Step357EntryGvRow,195)] [s6Step357EntryFFresh,s6Step357EntryGFresh,s6Step357EntryFvFresh,s6Step357EntryGvFresh]=
    some (s6Step357EntryGvAfter,[s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut],(growRow 795 s6Step357EntryFFresh ++ (growRow 777 s6Step357EntryGFresh ++ (growRow 776 s6Step357EntryFvFresh ++ (growRow 775 s6Step357EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step357EntryGvAfter [] []=some (s6Step357EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step357EntryGvBefore s6Step357EntryGvAfter s6Step357EntryGvAfter
    s6Step357EntryGvRow s6Step357EntryGvOut 195 s6Step357EntryGvFresh [] [] []
    (growRow 775 s6Step357EntryGvFresh) ([]) s6Step357EntryGv_Incoming s6Step357EntryGv_checked h4 s6Step357EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step357EntryFvBefore s6Step357EntryFvAfter s6Step357EntryGvAfter
    s6Step357EntryFvRow s6Step357EntryFvOut 195 s6Step357EntryFvFresh [(s6Step357EntryGvRow,195)] [s6Step357EntryGvFresh] [s6Step357EntryGvOut]
    (growRow 776 s6Step357EntryFvFresh) ((growRow 775 s6Step357EntryGvFresh ++ [])) s6Step357EntryFv_Incoming s6Step357EntryFv_checked h3 s6Step357EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step357EntryGBefore s6Step357EntryGAfter s6Step357EntryGvAfter
    s6Step357EntryGRow s6Step357EntryGOut 93 s6Step357EntryGFresh [(s6Step357EntryFvRow,195),(s6Step357EntryGvRow,195)] [s6Step357EntryFvFresh,s6Step357EntryGvFresh] [s6Step357EntryFvOut,s6Step357EntryGvOut]
    (growRow 777 s6Step357EntryGFresh) ((growRow 776 s6Step357EntryFvFresh ++ (growRow 775 s6Step357EntryGvFresh ++ []))) s6Step357EntryG_Incoming s6Step357EntryG_checked h2 s6Step357EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step357EntryFBefore s6Step357EntryFAfter s6Step357EntryGvAfter
    s6Step357EntryFRow s6Step357EntryFOut 93 s6Step357EntryFFresh [(s6Step357EntryGRow,93),(s6Step357EntryFvRow,195),(s6Step357EntryGvRow,195)] [s6Step357EntryGFresh,s6Step357EntryFvFresh,s6Step357EntryGvFresh] [s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut]
    (growRow 795 s6Step357EntryFFresh) ((growRow 777 s6Step357EntryGFresh ++ (growRow 776 s6Step357EntryFvFresh ++ (growRow 775 s6Step357EntryGvFresh ++ [])))) s6Step357EntryF_Incoming s6Step357EntryF_checked h1 s6Step357EntryF_Outgoing
  exact h0

private theorem s6Step357EntryBank_checked : compileHmrBankResizeLog .entry s6Step357EntryFBefore ⟨s6Step357EntryFRow,s6Step357EntryGRow,s6Step357EntryFvRow,s6Step357EntryGvRow⟩ ⟨93,93,195,195⟩ [s6Step357EntryFFresh,s6Step357EntryGFresh,s6Step357EntryFvFresh,s6Step357EntryGvFresh]=
    some (s6Step357EntryGvAfter,⟨s6Step357EntryFOut,s6Step357EntryGOut,s6Step357EntryFvOut,s6Step357EntryGvOut⟩,(growRow 795 s6Step357EntryFFresh ++ (growRow 777 s6Step357EntryGFresh ++ (growRow 776 s6Step357EntryFvFresh ++ (growRow 775 s6Step357EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step357EntryBank_rows]
  rfl

private def s6Step357ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357ExitFBefore : Arena := s6Step357ExitGAfter

private def s6Step357ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 778],795⟩

private def s6Step357ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 906],776⟩

private def s6Step357ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892, 881],777⟩

private def s6Step357ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private theorem s6Step357ExitBank_incomingDistinct : ([s6Step357ExitGRow,s6Step357ExitFRow,s6Step357ExitFvRow,s6Step357ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357ExitF_Incoming : rowsOwned s6Step357ExitFBefore [s6Step357ExitFRow,s6Step357ExitFvRow,s6Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357ExitGRow,s6Step357ExitFRow,s6Step357ExitFvRow,s6Step357ExitGvRow] 1 s6Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357ExitBank_outgoingOwned : rowsOwned s6Step357ExitGvAfter [s6Step357ExitGOut,s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step357ExitGvAfter (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357ExitF_Outgoing : rowsOwned s6Step357ExitGvAfter [s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut] :=
  hmrRows_owned_drop s6Step357ExitGvAfter [s6Step357ExitGOut,s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut] 1 s6Step357ExitBank_outgoingOwned

private theorem s6Step357ExitF_distinct : (s6Step357ExitFRow.sign::s6Step357ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357ExitF_owned : (s6Step357ExitFRow.sign::s6Step357ExitFRow.payload).toFinset⊆s6Step357ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357ExitF_retired : s6Step357ExitFBefore.retireSet s6Step357ExitFExtra.toFinset=s6Step357ExitFAfter := by
  unfold Arena.retireSet s6Step357ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step357ExitFBefore,s6Step357ExitGAfter,s6Step357ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step357ExitF_checked : planRowResizeLog s6Step357ExitFBefore s6Step357ExitFRow 92 []=
    some (s6Step357ExitFAfter,s6Step357ExitFOut,shrinkRow 795 s6Step357ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step357ExitFBefore s6Step357ExitFRow 92 s6Step357ExitF_distinct s6Step357ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step357ExitFRow.payload.take 92) s6Step357ExitFRow.sign=s6Step357ExitFOut := by decide +kernel
  have hi : s6Step357ExitFRow.payload.drop 92=s6Step357ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step357ExitF_retired] at result
  exact result

private def s6Step357ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357ExitFvBefore : Arena := s6Step357ExitFAfter

private theorem s6Step357ExitFv_Incoming : rowsOwned s6Step357ExitFvBefore [s6Step357ExitFvRow,s6Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357ExitGRow,s6Step357ExitFRow,s6Step357ExitFvRow,s6Step357ExitGvRow] 2 s6Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357ExitFvBefore (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357ExitFv_Outgoing : rowsOwned s6Step357ExitGvAfter [s6Step357ExitFvOut,s6Step357ExitGvOut] :=
  hmrRows_owned_drop s6Step357ExitGvAfter [s6Step357ExitGOut,s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut] 2 s6Step357ExitBank_outgoingOwned

private theorem s6Step357ExitFv_distinct : (s6Step357ExitFvRow.sign::s6Step357ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357ExitFv_owned : (s6Step357ExitFvRow.sign::s6Step357ExitFvRow.payload).toFinset⊆s6Step357ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357ExitFvBefore (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357ExitFv_retired : s6Step357ExitFvBefore.retireSet s6Step357ExitFvExtra.toFinset=s6Step357ExitFvAfter := by
  unfold Arena.retireSet s6Step357ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step357ExitFvBefore,s6Step357ExitFAfter,s6Step357ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step357ExitFv_checked : planRowResizeLog s6Step357ExitFvBefore s6Step357ExitFvRow 195 []=
    some (s6Step357ExitFvAfter,s6Step357ExitFvOut,shrinkRow 776 s6Step357ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step357ExitFvBefore s6Step357ExitFvRow 195 s6Step357ExitFv_distinct s6Step357ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step357ExitFvRow.payload.take 195) s6Step357ExitFvRow.sign=s6Step357ExitFvOut := by decide +kernel
  have hi : s6Step357ExitFvRow.payload.drop 195=s6Step357ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step357ExitFv_retired] at result
  exact result

private def s6Step357ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step357ExitG_Incoming : rowsOwned s6Step357ExitGBefore [s6Step357ExitGRow,s6Step357ExitFRow,s6Step357ExitFvRow,s6Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357ExitGRow,s6Step357ExitFRow,s6Step357ExitFvRow,s6Step357ExitGvRow] 0 s6Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357ExitG_Outgoing : rowsOwned s6Step357ExitGvAfter [s6Step357ExitGOut,s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut] :=
  hmrRows_owned_drop s6Step357ExitGvAfter [s6Step357ExitGOut,s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut] 0 s6Step357ExitBank_outgoingOwned

private theorem s6Step357ExitG_distinct : (s6Step357ExitGRow.sign::s6Step357ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357ExitG_owned : (s6Step357ExitGRow.sign::s6Step357ExitGRow.payload).toFinset⊆s6Step357ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357ExitG_retired : s6Step357ExitGBefore.retireSet s6Step357ExitGExtra.toFinset=s6Step357ExitGAfter := by
  unfold Arena.retireSet s6Step357ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step357ExitGBefore,s6Step357ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step357ExitG_checked : planRowResizeLog s6Step357ExitGBefore s6Step357ExitGRow 92 []=
    some (s6Step357ExitGAfter,s6Step357ExitGOut,shrinkRow 777 s6Step357ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step357ExitGBefore s6Step357ExitGRow 92 s6Step357ExitG_distinct s6Step357ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step357ExitGRow.payload.take 92) s6Step357ExitGRow.sign=s6Step357ExitGOut := by decide +kernel
  have hi : s6Step357ExitGRow.payload.drop 92=s6Step357ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step357ExitG_retired] at result
  exact result

private def s6Step357ExitGvBefore : Arena := s6Step357ExitFvAfter

private theorem s6Step357ExitGv_Incoming : rowsOwned s6Step357ExitGvBefore [s6Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357ExitGRow,s6Step357ExitFRow,s6Step357ExitFvRow,s6Step357ExitGvRow] 3 s6Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357ExitGvBefore (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357ExitGv_Outgoing : rowsOwned s6Step357ExitGvAfter [s6Step357ExitGvOut] :=
  hmrRows_owned_drop s6Step357ExitGvAfter [s6Step357ExitGOut,s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut] 3 s6Step357ExitBank_outgoingOwned

private theorem s6Step357ExitGv_distinct : (s6Step357ExitGvRow.sign::s6Step357ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357ExitGv_owned : (s6Step357ExitGvRow.sign::s6Step357ExitGvRow.payload).toFinset⊆s6Step357ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357ExitGvBefore (fun q => (0≤q ∧ q<348) ∨ (349≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357ExitGv_retired : s6Step357ExitGvBefore.retireSet s6Step357ExitGvExtra.toFinset=s6Step357ExitGvAfter := by
  unfold Arena.retireSet s6Step357ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step357ExitGvBefore,s6Step357ExitFvAfter,s6Step357ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step357ExitGv_checked : planRowResizeLog s6Step357ExitGvBefore s6Step357ExitGvRow 195 []=
    some (s6Step357ExitGvAfter,s6Step357ExitGvOut,shrinkRow 775 s6Step357ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step357ExitGvBefore s6Step357ExitGvRow 195 s6Step357ExitGv_distinct s6Step357ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step357ExitGvRow.payload.take 195) s6Step357ExitGvRow.sign=s6Step357ExitGvOut := by decide +kernel
  have hi : s6Step357ExitGvRow.payload.drop 195=s6Step357ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step357ExitGv_retired] at result
  exact result

private theorem s6Step357ExitBank_rows : planWindowRowsLog s6Step357ExitGBefore [(s6Step357ExitGRow,92),(s6Step357ExitFRow,92),(s6Step357ExitFvRow,195),(s6Step357ExitGvRow,195)] [[],[],[],[]]=
    some (s6Step357ExitGvAfter,[s6Step357ExitGOut,s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut],(shrinkRow 777 s6Step357ExitGExtra ++ (shrinkRow 795 s6Step357ExitFExtra ++ (shrinkRow 776 s6Step357ExitFvExtra ++ (shrinkRow 775 s6Step357ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step357ExitGvAfter [] []=some (s6Step357ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step357ExitGvBefore s6Step357ExitGvAfter s6Step357ExitGvAfter
    s6Step357ExitGvRow s6Step357ExitGvOut 195 [] [] [] []
    (shrinkRow 775 s6Step357ExitGvExtra) ([]) s6Step357ExitGv_Incoming s6Step357ExitGv_checked h4 s6Step357ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step357ExitFvBefore s6Step357ExitFvAfter s6Step357ExitGvAfter
    s6Step357ExitFvRow s6Step357ExitFvOut 195 [] [(s6Step357ExitGvRow,195)] [[]] [s6Step357ExitGvOut]
    (shrinkRow 776 s6Step357ExitFvExtra) ((shrinkRow 775 s6Step357ExitGvExtra ++ [])) s6Step357ExitFv_Incoming s6Step357ExitFv_checked h3 s6Step357ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step357ExitFBefore s6Step357ExitFAfter s6Step357ExitGvAfter
    s6Step357ExitFRow s6Step357ExitFOut 92 [] [(s6Step357ExitFvRow,195),(s6Step357ExitGvRow,195)] [[],[]] [s6Step357ExitFvOut,s6Step357ExitGvOut]
    (shrinkRow 795 s6Step357ExitFExtra) ((shrinkRow 776 s6Step357ExitFvExtra ++ (shrinkRow 775 s6Step357ExitGvExtra ++ []))) s6Step357ExitF_Incoming s6Step357ExitF_checked h2 s6Step357ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step357ExitGBefore s6Step357ExitGAfter s6Step357ExitGvAfter
    s6Step357ExitGRow s6Step357ExitGOut 92 [] [(s6Step357ExitFRow,92),(s6Step357ExitFvRow,195),(s6Step357ExitGvRow,195)] [[],[],[]] [s6Step357ExitFOut,s6Step357ExitFvOut,s6Step357ExitGvOut]
    (shrinkRow 777 s6Step357ExitGExtra) ((shrinkRow 795 s6Step357ExitFExtra ++ (shrinkRow 776 s6Step357ExitFvExtra ++ (shrinkRow 775 s6Step357ExitGvExtra ++ [])))) s6Step357ExitG_Incoming s6Step357ExitG_checked h1 s6Step357ExitG_Outgoing
  exact h0

private theorem s6Step357ExitBank_checked : compileHmrBankResizeLog .exit s6Step357ExitGBefore ⟨s6Step357ExitFRow,s6Step357ExitGRow,s6Step357ExitFvRow,s6Step357ExitGvRow⟩ ⟨92,92,195,195⟩ [[],[],[],[]]=
    some (s6Step357ExitGvAfter,⟨s6Step357ExitFOut,s6Step357ExitGOut,s6Step357ExitFvOut,s6Step357ExitGvOut⟩,(shrinkRow 777 s6Step357ExitGExtra ++ (shrinkRow 795 s6Step357ExitFExtra ++ (shrinkRow 776 s6Step357ExitFvExtra ++ (shrinkRow 775 s6Step357ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step357ExitBank_rows]
  rfl

private theorem s6Step357Add0_apart : Disjoint s6Step357Add0Arena.live s6Step357Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step357Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357Add0_card : s6Step357Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step357Add0_borrowed : s6Step357Add0Arena.checkBorrow (hmrHybridCount s6Step357Add0Arena s6Step357Add0B.length) s6Step357Add0Work=some s6Step357Add0During := by
  have len : s6Step357Add0Work.length=hmrHybridCount s6Step357Add0Arena s6Step357Add0B.length := by
    rw [hmrHybridCount,s6Step357Add0_card]
    decide +kernel
  have nd : s6Step357Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step357Add0Arena s6Step357Add0During s6Step357Add0Work.toFinset s6Step357Add0_bounded s6Step357Add0_apart rfl

private theorem s6Step357Add0_distinct : (805::858::802::(s6Step357Add0A++s6Step357Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357Add0_owned : (805::858::802::(s6Step357Add0A++s6Step357Add0B)).toFinset⊆s6Step357Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step357Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357Add0_checked : compileHmrHybridCinLog s6Step357Add0Arena 858 805 802 s6Step357Add0A s6Step357Add0B s6Step357Add0Work=some s6Step357Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step357Add0Arena s6Step357Add0During 858 805 802 s6Step357Add0A s6Step357Add0B s6Step357Add0Work
    (by decide +kernel) (by decide +kernel) s6Step357Add0_distinct
    (fun q hq => s6Step357Add0_owned (List.mem_toFinset.mpr hq)) s6Step357Add0_borrowed

private theorem s6Step357Add1_apart : Disjoint s6Step357Add1Arena.live s6Step357Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step357Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357Add1_card : s6Step357Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step357Add1_borrowed : s6Step357Add1Arena.checkBorrow (hmrHybridCount s6Step357Add1Arena s6Step357Add1B.length) s6Step357Add1Work=some s6Step357Add1During := by
  have len : s6Step357Add1Work.length=hmrHybridCount s6Step357Add1Arena s6Step357Add1B.length := by
    rw [hmrHybridCount,s6Step357Add1_card]
    decide +kernel
  have nd : s6Step357Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step357Add1Arena s6Step357Add1During s6Step357Add1Work.toFinset s6Step357Add1_bounded s6Step357Add1_apart rfl

private theorem s6Step357Add1_distinct : (805::858::802::(s6Step357Add1A++s6Step357Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357Add1_owned : (805::858::802::(s6Step357Add1A++s6Step357Add1B)).toFinset⊆s6Step357Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step357Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357Add1_checked : compileHmrHybridCinLog s6Step357Add1Arena 858 805 802 s6Step357Add1A s6Step357Add1B s6Step357Add1Work=some s6Step357Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step357Add1Arena s6Step357Add1During 858 805 802 s6Step357Add1A s6Step357Add1B s6Step357Add1Work
    (by decide +kernel) (by decide +kernel) s6Step357Add1_distinct
    (fun q hq => s6Step357Add1_owned (List.mem_toFinset.mpr hq)) s6Step357Add1_borrowed

private theorem s6Step357F4_apart : Disjoint (s6Step357Add0A++s6Step357Add0B).toFinset (s6Step357Add1A++s6Step357Add1B).toFinset := by
  have nd : ((s6Step357Add0A++s6Step357Add0B)++(s6Step357Add1A++s6Step357Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step357F4_carry : s6Step357F4FlagArena.checkBorrow 1 [802]=some s6Step357Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step357F4FlagArena,s6Step357HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step357F4FlagArena,s6Step357HeadFvAfter,s6Step357Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357F4_distinct : (876::858::805::802::((s6Step357Add0A++s6Step357Add1A)++(s6Step357Add0B++s6Step357Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357F4_flag : s6Step357HeadFvAfter.checkBorrow 1 [805]=some s6Step357F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step357HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step357F4_owned : (876::858::((s6Step357Add0A++s6Step357Add1A)++(s6Step357Add0B++s6Step357Add1B))).toFinset⊆s6Step357HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step357HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357F4_checked : compileHmrHybridF4Log s6Step357HeadFvAfter 876 858 s6Step357Add0A s6Step357Add0B s6Step357Add1A s6Step357Add1B [805] [802] s6Step357Add0Work s6Step357Add1Work=some s6Step357F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step357HeadFvAfter s6Step357F4FlagArena s6Step357Add0Arena s6Step357Add0During s6Step357Add1During 876 858
    s6Step357Add0A s6Step357Add0B s6Step357Add1A s6Step357Add1B [805] [802] s6Step357Add0Work s6Step357Add1Work
    (fun q hq => s6Step357F4_owned (List.mem_toFinset.mpr hq)) s6Step357F4_flag s6Step357F4_carry
    s6Step357F4_distinct s6Step357F4_apart s6Step357Add0_checked s6Step357Add1_checked

private theorem s6Step357Front_branch : s6Step357FrontSigmaArena.checkBorrow 1 [858]=some s6Step357HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step357FrontSigmaArena,s6Step357EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step357FrontSigmaArena,s6Step357EntryGvAfter,s6Step357HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357Front_entry : HmrFrontEntryValid s6Step357EntryFBefore s6Step357FrontBank 93 195 ⟨92,92,195,195⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step357FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step357EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step357EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step357FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step357Front_sigma : s6Step357EntryGvAfter.checkBorrow 1 [876]=some s6Step357FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step357EntryGvAfter,arenaWires]
  · rfl

private def s6Step357HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357HeadFBefore : Arena := s6Step357HeadGAfter

private def s6Step357HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step357HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step357HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892],777⟩

private def s6Step357HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private theorem s6Step357HeadBank_incomingDistinct : ([s6Step357HeadGRow,s6Step357HeadFRow,s6Step357HeadGvRow,s6Step357HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357HeadF_Incoming : rowsOwned s6Step357HeadFBefore [s6Step357HeadFRow,s6Step357HeadGvRow,s6Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357HeadGRow,s6Step357HeadFRow,s6Step357HeadGvRow,s6Step357HeadFvRow] 1 s6Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357HeadBank_outgoingOwned : rowsOwned s6Step357HeadFvAfter [s6Step357HeadGOut,s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step357HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357HeadF_Outgoing : rowsOwned s6Step357HeadFvAfter [s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut] :=
  hmrRows_owned_drop s6Step357HeadFvAfter [s6Step357HeadGOut,s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut] 1 s6Step357HeadBank_outgoingOwned

private theorem s6Step357HeadF_distinct : (s6Step357HeadFRow.sign::s6Step357HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357HeadF_owned : (s6Step357HeadFRow.sign::s6Step357HeadFRow.payload).toFinset⊆s6Step357HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357HeadF_reserved : s6Step357HeadFBefore.reserve s6Step357HeadFFresh.toFinset=some s6Step357HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357HeadFFresh,arenaWires]
  · norm_num [s6Step357HeadFBefore,s6Step357HeadGAfter,s6Step357HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step357HeadFAfter,s6Step357HeadFBefore,s6Step357HeadGAfter,s6Step357HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357HeadF_checked : planRowResizeLog s6Step357HeadFBefore s6Step357HeadFRow 94 s6Step357HeadFFresh=
    some (s6Step357HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 778],795⟩,growRow 795 s6Step357HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step357HeadFBefore s6Step357HeadFAfter s6Step357HeadFRow 94 s6Step357HeadFFresh
    s6Step357HeadF_distinct s6Step357HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357HeadF_reserved
  have rowEq : WindowRow.mk (s6Step357HeadFRow.payload++s6Step357HeadFFresh) s6Step357HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 778],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step357HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step357HeadFvBefore : Arena := s6Step357HeadGvAfter

private theorem s6Step357HeadFv_Incoming : rowsOwned s6Step357HeadFvBefore [s6Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357HeadGRow,s6Step357HeadFRow,s6Step357HeadGvRow,s6Step357HeadFvRow] 3 s6Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357HeadFv_Outgoing : rowsOwned s6Step357HeadFvAfter [s6Step357HeadFvOut] :=
  hmrRows_owned_drop s6Step357HeadFvAfter [s6Step357HeadGOut,s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut] 3 s6Step357HeadBank_outgoingOwned

private theorem s6Step357HeadFv_distinct : (s6Step357HeadFvRow.sign::s6Step357HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357HeadFv_owned : (s6Step357HeadFvRow.sign::s6Step357HeadFvRow.payload).toFinset⊆s6Step357HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357HeadFv_reserved : s6Step357HeadFvBefore.reserve s6Step357HeadFvFresh.toFinset=some s6Step357HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357HeadFvFresh,arenaWires]
  · norm_num [s6Step357HeadFvBefore,s6Step357HeadGvAfter,s6Step357HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step357HeadFvAfter,s6Step357HeadFvBefore,s6Step357HeadGvAfter,s6Step357HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357HeadFv_checked : planRowResizeLog s6Step357HeadFvBefore s6Step357HeadFvRow 196 s6Step357HeadFvFresh=
    some (s6Step357HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 906],776⟩,growRow 776 s6Step357HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step357HeadFvBefore s6Step357HeadFvAfter s6Step357HeadFvRow 196 s6Step357HeadFvFresh
    s6Step357HeadFv_distinct s6Step357HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step357HeadFvRow.payload++s6Step357HeadFvFresh) s6Step357HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 906],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step357HeadG_Incoming : rowsOwned s6Step357HeadGBefore [s6Step357HeadGRow,s6Step357HeadFRow,s6Step357HeadGvRow,s6Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357HeadGRow,s6Step357HeadFRow,s6Step357HeadGvRow,s6Step357HeadFvRow] 0 s6Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357HeadG_Outgoing : rowsOwned s6Step357HeadFvAfter [s6Step357HeadGOut,s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut] :=
  hmrRows_owned_drop s6Step357HeadFvAfter [s6Step357HeadGOut,s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut] 0 s6Step357HeadBank_outgoingOwned

private theorem s6Step357HeadG_distinct : (s6Step357HeadGRow.sign::s6Step357HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357HeadG_owned : (s6Step357HeadGRow.sign::s6Step357HeadGRow.payload).toFinset⊆s6Step357HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357HeadG_reserved : s6Step357HeadGBefore.reserve s6Step357HeadGFresh.toFinset=some s6Step357HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357HeadGFresh,arenaWires]
  · norm_num [s6Step357HeadGBefore,s6Step357HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step357HeadGAfter,s6Step357HeadGBefore,s6Step357HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357HeadG_checked : planRowResizeLog s6Step357HeadGBefore s6Step357HeadGRow 94 s6Step357HeadGFresh=
    some (s6Step357HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892, 881],777⟩,growRow 777 s6Step357HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step357HeadGBefore s6Step357HeadGAfter s6Step357HeadGRow 94 s6Step357HeadGFresh
    s6Step357HeadG_distinct s6Step357HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357HeadG_reserved
  have rowEq : WindowRow.mk (s6Step357HeadGRow.payload++s6Step357HeadGFresh) s6Step357HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 892, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step357HeadGvBefore : Arena := s6Step357HeadFAfter

private theorem s6Step357HeadGv_Incoming : rowsOwned s6Step357HeadGvBefore [s6Step357HeadGvRow,s6Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step357HeadGRow,s6Step357HeadFRow,s6Step357HeadGvRow,s6Step357HeadFvRow] 2 s6Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step357HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step357HeadGv_Outgoing : rowsOwned s6Step357HeadFvAfter [s6Step357HeadGvOut,s6Step357HeadFvOut] :=
  hmrRows_owned_drop s6Step357HeadFvAfter [s6Step357HeadGOut,s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut] 2 s6Step357HeadBank_outgoingOwned

private theorem s6Step357HeadGv_distinct : (s6Step357HeadGvRow.sign::s6Step357HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step357HeadGv_owned : (s6Step357HeadGvRow.sign::s6Step357HeadGvRow.payload).toFinset⊆s6Step357HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step357HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step357HeadGv_reserved : s6Step357HeadGvBefore.reserve s6Step357HeadGvFresh.toFinset=some s6Step357HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step357HeadGvFresh,arenaWires]
  · norm_num [s6Step357HeadGvBefore,s6Step357HeadFAfter,s6Step357HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step357HeadGvAfter,s6Step357HeadGvBefore,s6Step357HeadFAfter,s6Step357HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step357HeadGv_checked : planRowResizeLog s6Step357HeadGvBefore s6Step357HeadGvRow 196 s6Step357HeadGvFresh=
    some (s6Step357HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩,growRow 775 s6Step357HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step357HeadGvBefore s6Step357HeadGvAfter s6Step357HeadGvRow 196 s6Step357HeadGvFresh
    s6Step357HeadGv_distinct s6Step357HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step357HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step357HeadGvRow.payload++s6Step357HeadGvFresh) s6Step357HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step357HeadBank_rows : planWindowRowsLog s6Step357HeadGBefore [(s6Step357HeadGRow,94),(s6Step357HeadFRow,94),(s6Step357HeadGvRow,196),(s6Step357HeadFvRow,196)] [s6Step357HeadGFresh,s6Step357HeadFFresh,s6Step357HeadGvFresh,s6Step357HeadFvFresh]=
    some (s6Step357HeadFvAfter,[s6Step357HeadGOut,s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut],(growRow 777 s6Step357HeadGFresh ++ (growRow 795 s6Step357HeadFFresh ++ (growRow 775 s6Step357HeadGvFresh ++ (growRow 776 s6Step357HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step357HeadFvAfter [] []=some (s6Step357HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step357HeadFvBefore s6Step357HeadFvAfter s6Step357HeadFvAfter
    s6Step357HeadFvRow s6Step357HeadFvOut 196 s6Step357HeadFvFresh [] [] []
    (growRow 776 s6Step357HeadFvFresh) ([]) s6Step357HeadFv_Incoming s6Step357HeadFv_checked h4 s6Step357HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step357HeadGvBefore s6Step357HeadGvAfter s6Step357HeadFvAfter
    s6Step357HeadGvRow s6Step357HeadGvOut 196 s6Step357HeadGvFresh [(s6Step357HeadFvRow,196)] [s6Step357HeadFvFresh] [s6Step357HeadFvOut]
    (growRow 775 s6Step357HeadGvFresh) ((growRow 776 s6Step357HeadFvFresh ++ [])) s6Step357HeadGv_Incoming s6Step357HeadGv_checked h3 s6Step357HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step357HeadFBefore s6Step357HeadFAfter s6Step357HeadFvAfter
    s6Step357HeadFRow s6Step357HeadFOut 94 s6Step357HeadFFresh [(s6Step357HeadGvRow,196),(s6Step357HeadFvRow,196)] [s6Step357HeadGvFresh,s6Step357HeadFvFresh] [s6Step357HeadGvOut,s6Step357HeadFvOut]
    (growRow 795 s6Step357HeadFFresh) ((growRow 775 s6Step357HeadGvFresh ++ (growRow 776 s6Step357HeadFvFresh ++ []))) s6Step357HeadF_Incoming s6Step357HeadF_checked h2 s6Step357HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step357HeadGBefore s6Step357HeadGAfter s6Step357HeadFvAfter
    s6Step357HeadGRow s6Step357HeadGOut 94 s6Step357HeadGFresh [(s6Step357HeadFRow,94),(s6Step357HeadGvRow,196),(s6Step357HeadFvRow,196)] [s6Step357HeadFFresh,s6Step357HeadGvFresh,s6Step357HeadFvFresh] [s6Step357HeadFOut,s6Step357HeadGvOut,s6Step357HeadFvOut]
    (growRow 777 s6Step357HeadGFresh) ((growRow 795 s6Step357HeadFFresh ++ (growRow 775 s6Step357HeadGvFresh ++ (growRow 776 s6Step357HeadFvFresh ++ [])))) s6Step357HeadG_Incoming s6Step357HeadG_checked h1 s6Step357HeadG_Outgoing
  exact h0

private theorem s6Step357HeadBank_checked : compileHmrBankResizeLog .headroom s6Step357HeadGBefore ⟨s6Step357HeadFRow,s6Step357HeadGRow,s6Step357HeadFvRow,s6Step357HeadGvRow⟩ ⟨94,94,196,196⟩ [s6Step357HeadGFresh,s6Step357HeadFFresh,s6Step357HeadGvFresh,s6Step357HeadFvFresh]=
    some (s6Step357HeadFvAfter,⟨s6Step357HeadFOut,s6Step357HeadGOut,s6Step357HeadFvOut,s6Step357HeadGvOut⟩,(growRow 777 s6Step357HeadGFresh ++ (growRow 795 s6Step357HeadFFresh ++ (growRow 775 s6Step357HeadGvFresh ++ (growRow 776 s6Step357HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step357HeadBank_rows]
  rfl

private theorem s6Step357Front_checked : compileHmrSourceFrontLog s6Step357EntryFBefore s6Step357FrontBank 93 195 ⟨92,92,195,195⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step357FrontLog=some s6Step357FrontPlan := by
  have pairEq : s6Step357FrontPair=⟨s6Step357HeadFRow,s6Step357HeadGRow,s6Step357HeadFvRow,s6Step357HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step357FrontHead=⟨s6Step357ExitFRow,s6Step357ExitGRow,s6Step357ExitFvRow,s6Step357ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step357Add0A=s6Step357FrontHead.f.wires := by decide +kernel
  have gEq : s6Step357Add0B=s6Step357FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step357Add1A=s6Step357FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step357Add1B=s6Step357FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step357EntryFBefore s6Step357FrontBank 93 195 ⟨92,92,195,195⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step357FrontLog s6Step357FrontPlan
  · exact s6Step357Front_entry
  · exact s6Step357EntryBank_checked
  · exact s6Step357Front_sigma
  · rfl
  · exact s6Step357Front_branch
  · rfl
  · simpa only [s6Step357FrontPlan,pairEq] using s6Step357HeadBank_checked
  · simpa only [s6Step357FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step357F4_checked
  · exact s6Step357Counter_checked
  · rfl
  · simpa only [s6Step357FrontPlan,headEq] using s6Step357ExitBank_checked

private theorem s6Step357Complete_explicit_checked : compileHmrEarlyStepLog s6Step357EntryFBefore s6Step357FrontBank 93 195 ⟨92,92,195,195⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step357CompleteLog=some s6Step357CompletePlan := by
  let Q := s6Step357EarlyControlPlan
  have hq := s6Step357EarlyControl_plan_checked
  have fv1 : s6Step357CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step357CompleteOut.fv.payload[2]?.getD s6Step357CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step357CompleteOut.fv.payload[3]?.getD s6Step357CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step357CompleteOut.fv.payload[4]?.getD s6Step357CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step357EntryFBefore s6Step357EarlyControlArena s6Step357FrontBank 93 195 ⟨92,92,195,195⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step357CompleteLog s6Step357FrontPlan Q
    s6Step357Front_checked s6Step357Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step357Complete_owned s6Step357Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step357EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 876 s6Step357CompleteOut.fv.second (s6Step357CompleteOut.fv.payload[2]?.getD s6Step357CompleteOut.fv.sign) (s6Step357CompleteOut.fv.payload[3]?.getD s6Step357CompleteOut.fv.sign) (s6Step357CompleteOut.fv.payload[4]?.getD s6Step357CompleteOut.fv.sign) 858 60 s6Step357EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep357Arena : Arena := s6Step357EntryFBefore
def s6PrivateStep357Bank : WindowBank := s6Step357FrontBank
def s6PrivateStep357Spec : HmrSourceWalkStepLog := ⟨93,195,⟨92,92,195,195⟩,60,.early s6Step357CompleteLog⟩
def s6PrivateStep357Plan : HmrSourceStepPlan := .early s6Step357CompletePlan
theorem s6PrivateStep357_source : s6PrivateStep357Spec=s6ObservedLogs352[5] := rfl
theorem s6PrivateStep357_checked : compileHmrSourceStepLog s6PrivateStep357Arena s6PrivateStep357Bank
    s6PrivateStep357Spec.fgWidth s6PrivateStep357Spec.vWidth s6PrivateStep357Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 357 s6PrivateStep357Spec.need none s6PrivateStep357Spec.log=some s6PrivateStep357Plan := by
  change compileHmrSourceStepLog s6Step357EntryFBefore s6Step357FrontBank 93 195 ⟨92,92,195,195⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 357 60 none (.early s6Step357CompleteLog)=some (.early s6Step357CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 357<498)]
  rw [s6Step357Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
