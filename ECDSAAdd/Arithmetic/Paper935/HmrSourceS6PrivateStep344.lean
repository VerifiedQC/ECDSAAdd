import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep342
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

private def s6Step344CompleteMoves : List (Wire × Wire) := []

private def s6Step344EarlyControlLog : HmrEarlyControlLog := ⟨[845, 903, 915, 906, 805],[817],[877],[802, 792, 816, 819, 920, 842],[]⟩

private def s6Step344FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [817, 877], [], [845, 903]],[[802], [805], [915], [906]],[[], [], [], []]⟩,[881],[843],[792],[816],[819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[792, 816, 819, 920]⟩

private def s6Step344CompleteLog : HmrEarlyStepLog := ⟨s6Step344FrontLog,s6Step344CompleteMoves,s6Step344EarlyControlLog⟩

private def s6Step344ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step344ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step344ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩

private def s6Step344ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private def s6Step344FrontOut : WindowBank := ⟨s6Step344ExitFOut,s6Step344ExitGOut,s6Step344ExitFvOut,s6Step344ExitGvOut⟩

private def s6Step344CompleteOut : WindowBank := s6Step344FrontOut.repacked s6Step344CompleteMoves

private def s6Step344EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step344EarlyControlPositiveArena,[817],s6Step344EarlyControlEqualityArena,[877],⟨⟨881,false⟩,[⟨⟨817,false⟩,877⟩]⟩⟩

private def s6Step344EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨772,false⟩,903⟩,⟨⟨771,false⟩,915⟩,⟨⟨770,false⟩,906⟩,⟨⟨769,false⟩,805⟩]⟩

private def s6Step344EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step344EarlyControlZeroArena,s6Step344EarlyControlZeroPlan,s6Step344EarlyControlClassPlan,s6Step344EarlyControlFlagArena,s6Step344EarlyControlFittedArena,s6Step344EarlyControlHistoryArena,s6Step344EarlyControlSigmaArena,s6Step344EarlyControlOutputArena,s6Step344EarlyControlLog⟩

private def s6Step344CounterWork : List Wire := [792, 816, 819, 920]

private theorem s6Step344Counter_bounded : s6Step344CounterWork.toFinset⊆arenaWires := by norm_num [s6Step344CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step344HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344CounterDuring : Arena := ⟨s6Step344HeadFvAfter.live∪s6Step344CounterWork.toFinset,Finset.union_subset s6Step344HeadFvAfter.bounded s6Step344Counter_bounded⟩

private def s6Step344EntryFFresh : List Wire := []

private def s6Step344EntryFvFresh : List Wire := []

private def s6Step344EntryGFresh : List Wire := [817, 877]

private def s6Step344EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EntryGvFresh : List Wire := [845, 903]

private def s6Step344ExitFExtra : List Wire := [805]

private def s6Step344ExitFvExtra : List Wire := [906]

private def s6Step344ExitGExtra : List Wire := [817, 877, 802]

private def s6Step344ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344ExitGvExtra : List Wire := [845, 903, 915]

private def s6Step344Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344Add0Work : List Wire := [819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step344Add0_bounded : s6Step344Add0Work.toFinset⊆arenaWires := by
  have h : s6Step344Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step344Add0During : Arena := ⟨s6Step344Add0Arena.live∪s6Step344Add0Work.toFinset,Finset.union_subset s6Step344Add0Arena.bounded s6Step344Add0_bounded⟩

private def s6Step344Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344Add1Work : List Wire := [819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step344Add1_bounded : s6Step344Add1Work.toFinset⊆arenaWires := by
  have h : s6Step344Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step344Add1During : Arena := ⟨s6Step344Add1Arena.live∪s6Step344Add1Work.toFinset,Finset.union_subset s6Step344Add1Arena.bounded s6Step344Add1_bounded⟩

private def s6Step344F4FlagArena : Arena := ⟨s6Step344HeadFvAfter.live∪{792},Finset.union_subset s6Step344HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step344F4Plan : HmrHybridF4Plan := ⟨s6Step344F4FlagArena,[792],s6Step344Add0Arena,[816],s6Step344Add0During,s6Step344Add0Work,s6Step344Add1During,s6Step344Add1Work⟩

private def s6Step344HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 805],795⟩

private def s6Step344HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 906],776⟩

private def s6Step344HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877, 802],777⟩

private def s6Step344HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step344FrontHead : WindowBank := ⟨s6Step344HeadFOut,s6Step344HeadGOut,s6Step344HeadFvOut,s6Step344HeadGvOut⟩

private def s6Step344EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step344EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step344EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877],777⟩

private def s6Step344EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903],775⟩

private def s6Step344FrontPair : WindowBank := ⟨s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut⟩

private def s6Step344FrontSigmaArena : Arena := ⟨s6Step344EntryGvAfter.live∪{881},Finset.union_subset s6Step344EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step344HeadFFresh : List Wire := [805]

private def s6Step344HeadFvFresh : List Wire := [906]

private def s6Step344HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344HeadGFresh : List Wire := [802]

private def s6Step344HeadGvFresh : List Wire := [915]

private def s6Step344FrontPlan : HmrSourceFront := ⟨s6Step344EntryGvAfter,s6Step344FrontPair,(growRow 795 s6Step344EntryFFresh ++ (growRow 777 s6Step344EntryGFresh ++ (growRow 776 s6Step344EntryFvFresh ++ (growRow 775 s6Step344EntryGvFresh ++ [])))),s6Step344FrontSigmaArena,[881],s6Step344HeadGBefore,[843],
  s6Step344HeadFvAfter,s6Step344FrontHead,(growRow 777 s6Step344HeadGFresh ++ (growRow 795 s6Step344HeadFFresh ++ (growRow 775 s6Step344HeadGvFresh ++ (growRow 776 s6Step344HeadFvFresh ++ [])))),s6Step344F4Plan,s6Step344CounterDuring,s6Step344CounterWork,s6Step344ExitGvAfter,s6Step344FrontOut,(shrinkRow 777 s6Step344ExitGExtra ++ (shrinkRow 795 s6Step344ExitFExtra ++ (shrinkRow 776 s6Step344ExitFvExtra ++ (shrinkRow 775 s6Step344ExitGvExtra ++ []))))⟩

private def s6Step344CompletePlan : HmrEarlyStepPlan := ⟨s6Step344FrontPlan,s6Step344EarlyControlArena,s6Step344EarlyControlPlan,s6Step344CompleteMoves⟩

private theorem s6Step344Complete_apart : List.Disjoint (s6Step344CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [881, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step344CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[881, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step344Complete_owned : (s6Step344CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344Complete_repack : s6Step344ExitGvAfter.checkRepack s6Step344CompleteMoves=some s6Step344EarlyControlArena := by rfl

private theorem s6Step344EarlyControl_branchOwned : ([843] : List Wire).toFinset⊆s6Step344EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_branch : compileHmrBranchRetirement s6Step344EarlyControlSigmaArena 843=some s6Step344EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step344EarlyControl_branchOwned
  · ext q
    simp [s6Step344EarlyControlOutputArena,s6Step344EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step344EarlyControl_classEqualityBorrow : s6Step344EarlyControlPositiveArena.checkBorrow (([881, 817] : List Wire).length-1) s6Step344EarlyControlLog.classWork=some s6Step344EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step344EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step344EarlyControlEqualityArena,s6Step344EarlyControlPositiveArena,s6Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step344EarlyControl_classEqualityOwned : ([881, 817] : List Wire).toFinset⊆s6Step344EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_classEquality : compileHmrEqualityLog s6Step344EarlyControlPositiveArena [881, 817] 0 s6Step344EarlyControlLog.classWork=some (s6Step344EarlyControlEqualityArena,s6Step344EarlyControlLog.classWork,s6Step344EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step344EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step344EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step344EarlyControl_classOwned : ([769, 805, 881] : List Wire).toFinset⊆s6Step344EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_positiveBorrow : s6Step344EarlyControlZeroArena.checkBorrow (1) s6Step344EarlyControlLog.positiveWork=some s6Step344EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step344EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step344EarlyControlPositiveArena,s6Step344EarlyControlZeroArena,s6Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step344EarlyControl_class : compileHmrSourceClassLog s6Step344EarlyControlZeroArena false 769 s6Step344EarlyControlZeroPlan.top 0 881 s6Step344EarlyControlLog.positiveWork s6Step344EarlyControlLog.classWork=some s6Step344EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step344EarlyControlClassPlan s6Step344EarlyControlZeroArena false 769 s6Step344EarlyControlZeroPlan.top 0 881
  constructor
  · decide +kernel
  · exact s6Step344EarlyControl_classOwned
  · exact s6Step344EarlyControl_positiveBorrow
  · exact s6Step344EarlyControl_classEquality

private theorem s6Step344EarlyControl_entryRecordOwned : ([843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_entrySigmaOwned : ([881, 254] : List Wire).toFinset⊆s6Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_fitBorrow : s6Step344EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step344EarlyControlLog.recordFresh=some s6Step344EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step344EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step344EarlyControlFittedArena,s6Step344EarlyControlFlagArena,s6Step344EarlyControlLog,arenaWires]

private theorem s6Step344EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step344EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_fit : compileHmrRecordGrowLog s6Step344EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step344EarlyControlLog.recordFresh=some s6Step344EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step344EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step344EarlyControl_fitBorrow

private theorem s6Step344EarlyControl_flagsBorrow : s6Step344EarlyControlEqualityArena.checkBorrow (6) s6Step344EarlyControlLog.flagWork=some s6Step344EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step344EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step344EarlyControlFlagArena,s6Step344EarlyControlEqualityArena,s6Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step344EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step344EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_flags : compileHmrFlagsLog s6Step344EarlyControlClassPlan.equalityArena s6Step344EarlyControlClassPlan.equality.top 253 252 251 s6Step344EarlyControlLog.flagWork=some s6Step344EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step344EarlyControl_flagsOwned⟩
  · exact s6Step344EarlyControl_flagsBorrow

private theorem s6Step344EarlyControl_historyBorrow : s6Step344EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step344EarlyControlLog.recordFresh=some s6Step344EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step344EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step344EarlyControlHistoryArena,s6Step344EarlyControlArena,s6Step344EarlyControlLog,arenaWires]

private theorem s6Step344EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_history : compileHmrRecordGrowLog s6Step344EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step344EarlyControlLog.recordFresh=some s6Step344EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step344EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step344EarlyControl_historyBorrow

private theorem s6Step344EarlyControl_sigmaOwned : ([254, 881] : List Wire).toFinset⊆s6Step344EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_sigmaReleaseOwned : ([881] : List Wire).toFinset⊆s6Step344EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_sigmaRelease : s6Step344EarlyControlHistoryArena.release {881} (fun _ => false)=some s6Step344EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step344EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step344EarlyControlSigmaArena,s6Step344EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step344EarlyControl_sigma : compileHmrSigmaDropLog s6Step344EarlyControlHistoryArena false 0 0 254 881 []=some s6Step344EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step344EarlyControl_sigmaOwned⟩
  · exact s6Step344EarlyControl_sigmaRelease

private theorem s6Step344EarlyControl_zeroBorrow : s6Step344EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step344EarlyControlLog.zeroWork=some s6Step344EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step344EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step344EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step344EarlyControlZeroArena,s6Step344EarlyControlArena,s6Step344EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step344EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step344EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step344EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EarlyControl_zero : compileHmrEqualityLog s6Step344EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step344EarlyControlLog.zeroWork=some (s6Step344EarlyControlZeroArena,s6Step344EarlyControlLog.zeroWork,s6Step344EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step344EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step344EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step344EarlyControl_logged : s6Step344EarlyControlPlan.Logged s6Step344EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 254 253 252 251 843 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step344EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step344EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step344EarlyControl_zero
  · exact s6Step344EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step344EarlyControl_flags
  · exact s6Step344EarlyControl_fit
  · exact s6Step344EarlyControl_history
  · exact s6Step344EarlyControl_sigma
  · exact s6Step344EarlyControl_branch

private theorem s6Step344EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step344EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 254 253 252 251 843 60 s6Step344EarlyControlLog=some s6Step344EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step344EarlyControlPlan s6Step344EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 254 253 252 251 843 60 s6Step344EarlyControl_logged

private def s6Step344EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step344EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step344EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩

private def s6Step344EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private def s6Step344FrontBank : WindowBank := ⟨s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow⟩

private def s6Step344Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 805, 795]

private def s6Step344Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877, 802, 777]

private def s6Step344Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 906, 776]

private def s6Step344Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 775]

private theorem s6Step344Counter_apart : Disjoint s6Step344HeadFvAfter.live s6Step344CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step344HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344Counter_borrowed : s6Step344HeadFvAfter.checkBorrow 4 s6Step344CounterWork=some s6Step344CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step344HeadFvAfter s6Step344CounterDuring s6Step344CounterWork.toFinset s6Step344Counter_bounded s6Step344Counter_apart rfl

private theorem s6Step344Counter_owned : (881::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step344HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step344HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344Counter_checked : compileHmrCounterStepLog s6Step344HeadFvAfter true 881 [774, 773, 772, 771, 770, 769] s6Step344CounterWork=some s6Step344CounterDuring := by
  have owned : ∀q∈881::[774, 773, 772, 771, 770, 769],q∈s6Step344HeadFvAfter.live := fun q hq => s6Step344Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step344Counter_borrowed

private def s6Step344EntryFAfter : Arena := s6Step344EntryFBefore

private theorem s6Step344EntryBank_incomingDistinct : ([s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344EntryF_Incoming : rowsOwned s6Step344EntryFBefore [s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow] 0 s6Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344EntryBank_outgoingOwned : rowsOwned s6Step344EntryGvAfter [s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step344EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344EntryF_Outgoing : rowsOwned s6Step344EntryGvAfter [s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut] :=
  hmrRows_owned_drop s6Step344EntryGvAfter [s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut] 0 s6Step344EntryBank_outgoingOwned

private theorem s6Step344EntryF_distinct : (s6Step344EntryFRow.sign::s6Step344EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344EntryF_owned : (s6Step344EntryFRow.sign::s6Step344EntryFRow.payload).toFinset⊆s6Step344EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EntryF_reserved : s6Step344EntryFBefore.reserve s6Step344EntryFFresh.toFinset=some s6Step344EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344EntryFFresh,arenaWires]
  · norm_num [s6Step344EntryFBefore,s6Step344EntryFFresh,arenaWires]
  · simp only [s6Step344EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step344EntryF_checked : planRowResizeLog s6Step344EntryFBefore s6Step344EntryFRow 101 s6Step344EntryFFresh=
    some (s6Step344EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩,growRow 795 s6Step344EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step344EntryFBefore s6Step344EntryFAfter s6Step344EntryFRow 101 s6Step344EntryFFresh
    s6Step344EntryF_distinct s6Step344EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344EntryF_reserved
  have rowEq : WindowRow.mk (s6Step344EntryFRow.payload++s6Step344EntryFFresh) s6Step344EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step344EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344EntryFvAfter : Arena := s6Step344EntryGAfter

private def s6Step344EntryFvBefore : Arena := s6Step344EntryGAfter

private theorem s6Step344EntryFv_Incoming : rowsOwned s6Step344EntryFvBefore [s6Step344EntryFvRow,s6Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow] 2 s6Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344EntryFv_Outgoing : rowsOwned s6Step344EntryGvAfter [s6Step344EntryFvOut,s6Step344EntryGvOut] :=
  hmrRows_owned_drop s6Step344EntryGvAfter [s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut] 2 s6Step344EntryBank_outgoingOwned

private theorem s6Step344EntryFv_distinct : (s6Step344EntryFvRow.sign::s6Step344EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344EntryFv_owned : (s6Step344EntryFvRow.sign::s6Step344EntryFvRow.payload).toFinset⊆s6Step344EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EntryFv_reserved : s6Step344EntryFvBefore.reserve s6Step344EntryFvFresh.toFinset=some s6Step344EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344EntryFvFresh,arenaWires]
  · norm_num [s6Step344EntryFvBefore,s6Step344EntryGAfter,s6Step344EntryFvFresh,arenaWires]
  · simp only [s6Step344EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step344EntryFv_checked : planRowResizeLog s6Step344EntryFvBefore s6Step344EntryFvRow 189 s6Step344EntryFvFresh=
    some (s6Step344EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩,growRow 776 s6Step344EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step344EntryFvBefore s6Step344EntryFvAfter s6Step344EntryFvRow 189 s6Step344EntryFvFresh
    s6Step344EntryFv_distinct s6Step344EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step344EntryFvRow.payload++s6Step344EntryFvFresh) s6Step344EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step344EntryGBefore : Arena := s6Step344EntryFBefore

private theorem s6Step344EntryG_Incoming : rowsOwned s6Step344EntryGBefore [s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow] 1 s6Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344EntryG_Outgoing : rowsOwned s6Step344EntryGvAfter [s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut] :=
  hmrRows_owned_drop s6Step344EntryGvAfter [s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut] 1 s6Step344EntryBank_outgoingOwned

private theorem s6Step344EntryG_distinct : (s6Step344EntryGRow.sign::s6Step344EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344EntryG_owned : (s6Step344EntryGRow.sign::s6Step344EntryGRow.payload).toFinset⊆s6Step344EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EntryG_reserved : s6Step344EntryGBefore.reserve s6Step344EntryGFresh.toFinset=some s6Step344EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step344EntryGBefore,s6Step344EntryFBefore,s6Step344EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step344EntryGAfter,s6Step344EntryGBefore,s6Step344EntryFBefore,s6Step344EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344EntryG_checked : planRowResizeLog s6Step344EntryGBefore s6Step344EntryGRow 101 s6Step344EntryGFresh=
    some (s6Step344EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877],777⟩,growRow 777 s6Step344EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step344EntryGBefore s6Step344EntryGAfter s6Step344EntryGRow 101 s6Step344EntryGFresh
    s6Step344EntryG_distinct s6Step344EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344EntryG_reserved
  have rowEq : WindowRow.mk (s6Step344EntryGRow.payload++s6Step344EntryGFresh) s6Step344EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step344EntryGvBefore : Arena := s6Step344EntryGAfter

private theorem s6Step344EntryGv_Incoming : rowsOwned s6Step344EntryGvBefore [s6Step344EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow] 3 s6Step344EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344EntryGv_Outgoing : rowsOwned s6Step344EntryGvAfter [s6Step344EntryGvOut] :=
  hmrRows_owned_drop s6Step344EntryGvAfter [s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut] 3 s6Step344EntryBank_outgoingOwned

private theorem s6Step344EntryGv_distinct : (s6Step344EntryGvRow.sign::s6Step344EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344EntryGv_owned : (s6Step344EntryGvRow.sign::s6Step344EntryGvRow.payload).toFinset⊆s6Step344EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344EntryGv_reserved : s6Step344EntryGvBefore.reserve s6Step344EntryGvFresh.toFinset=some s6Step344EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step344EntryGvBefore,s6Step344EntryGAfter,s6Step344EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step344EntryGvAfter,s6Step344EntryGvBefore,s6Step344EntryGAfter,s6Step344EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344EntryGv_checked : planRowResizeLog s6Step344EntryGvBefore s6Step344EntryGvRow 189 s6Step344EntryGvFresh=
    some (s6Step344EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903],775⟩,growRow 775 s6Step344EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step344EntryGvBefore s6Step344EntryGvAfter s6Step344EntryGvRow 189 s6Step344EntryGvFresh
    s6Step344EntryGv_distinct s6Step344EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step344EntryGvRow.payload++s6Step344EntryGvFresh) s6Step344EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step344EntryBank_rows : planWindowRowsLog s6Step344EntryFBefore [(s6Step344EntryFRow,101),(s6Step344EntryGRow,101),(s6Step344EntryFvRow,189),(s6Step344EntryGvRow,189)] [s6Step344EntryFFresh,s6Step344EntryGFresh,s6Step344EntryFvFresh,s6Step344EntryGvFresh]=
    some (s6Step344EntryGvAfter,[s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut],(growRow 795 s6Step344EntryFFresh ++ (growRow 777 s6Step344EntryGFresh ++ (growRow 776 s6Step344EntryFvFresh ++ (growRow 775 s6Step344EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step344EntryGvAfter [] []=some (s6Step344EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step344EntryGvBefore s6Step344EntryGvAfter s6Step344EntryGvAfter
    s6Step344EntryGvRow s6Step344EntryGvOut 189 s6Step344EntryGvFresh [] [] []
    (growRow 775 s6Step344EntryGvFresh) ([]) s6Step344EntryGv_Incoming s6Step344EntryGv_checked h4 s6Step344EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step344EntryFvBefore s6Step344EntryFvAfter s6Step344EntryGvAfter
    s6Step344EntryFvRow s6Step344EntryFvOut 189 s6Step344EntryFvFresh [(s6Step344EntryGvRow,189)] [s6Step344EntryGvFresh] [s6Step344EntryGvOut]
    (growRow 776 s6Step344EntryFvFresh) ((growRow 775 s6Step344EntryGvFresh ++ [])) s6Step344EntryFv_Incoming s6Step344EntryFv_checked h3 s6Step344EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step344EntryGBefore s6Step344EntryGAfter s6Step344EntryGvAfter
    s6Step344EntryGRow s6Step344EntryGOut 101 s6Step344EntryGFresh [(s6Step344EntryFvRow,189),(s6Step344EntryGvRow,189)] [s6Step344EntryFvFresh,s6Step344EntryGvFresh] [s6Step344EntryFvOut,s6Step344EntryGvOut]
    (growRow 777 s6Step344EntryGFresh) ((growRow 776 s6Step344EntryFvFresh ++ (growRow 775 s6Step344EntryGvFresh ++ []))) s6Step344EntryG_Incoming s6Step344EntryG_checked h2 s6Step344EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step344EntryFBefore s6Step344EntryFAfter s6Step344EntryGvAfter
    s6Step344EntryFRow s6Step344EntryFOut 101 s6Step344EntryFFresh [(s6Step344EntryGRow,101),(s6Step344EntryFvRow,189),(s6Step344EntryGvRow,189)] [s6Step344EntryGFresh,s6Step344EntryFvFresh,s6Step344EntryGvFresh] [s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut]
    (growRow 795 s6Step344EntryFFresh) ((growRow 777 s6Step344EntryGFresh ++ (growRow 776 s6Step344EntryFvFresh ++ (growRow 775 s6Step344EntryGvFresh ++ [])))) s6Step344EntryF_Incoming s6Step344EntryF_checked h1 s6Step344EntryF_Outgoing
  exact h0

private theorem s6Step344EntryBank_checked : compileHmrBankResizeLog .entry s6Step344EntryFBefore ⟨s6Step344EntryFRow,s6Step344EntryGRow,s6Step344EntryFvRow,s6Step344EntryGvRow⟩ ⟨101,101,189,189⟩ [s6Step344EntryFFresh,s6Step344EntryGFresh,s6Step344EntryFvFresh,s6Step344EntryGvFresh]=
    some (s6Step344EntryGvAfter,⟨s6Step344EntryFOut,s6Step344EntryGOut,s6Step344EntryFvOut,s6Step344EntryGvOut⟩,(growRow 795 s6Step344EntryFFresh ++ (growRow 777 s6Step344EntryGFresh ++ (growRow 776 s6Step344EntryFvFresh ++ (growRow 775 s6Step344EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step344EntryBank_rows]
  rfl

private def s6Step344ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344ExitFBefore : Arena := s6Step344ExitGAfter

private def s6Step344ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 805],795⟩

private def s6Step344ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 906],776⟩

private def s6Step344ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877, 802],777⟩

private def s6Step344ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private theorem s6Step344ExitBank_incomingDistinct : ([s6Step344ExitGRow,s6Step344ExitFRow,s6Step344ExitFvRow,s6Step344ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344ExitF_Incoming : rowsOwned s6Step344ExitFBefore [s6Step344ExitFRow,s6Step344ExitFvRow,s6Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344ExitGRow,s6Step344ExitFRow,s6Step344ExitFvRow,s6Step344ExitGvRow] 1 s6Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344ExitBank_outgoingOwned : rowsOwned s6Step344ExitGvAfter [s6Step344ExitGOut,s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step344ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344ExitF_Outgoing : rowsOwned s6Step344ExitGvAfter [s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut] :=
  hmrRows_owned_drop s6Step344ExitGvAfter [s6Step344ExitGOut,s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut] 1 s6Step344ExitBank_outgoingOwned

private theorem s6Step344ExitF_distinct : (s6Step344ExitFRow.sign::s6Step344ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344ExitF_owned : (s6Step344ExitFRow.sign::s6Step344ExitFRow.payload).toFinset⊆s6Step344ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344ExitF_retired : s6Step344ExitFBefore.retireSet s6Step344ExitFExtra.toFinset=s6Step344ExitFAfter := by
  unfold Arena.retireSet s6Step344ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step344ExitFBefore,s6Step344ExitGAfter,s6Step344ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step344ExitF_checked : planRowResizeLog s6Step344ExitFBefore s6Step344ExitFRow 101 []=
    some (s6Step344ExitFAfter,s6Step344ExitFOut,shrinkRow 795 s6Step344ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step344ExitFBefore s6Step344ExitFRow 101 s6Step344ExitF_distinct s6Step344ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step344ExitFRow.payload.take 101) s6Step344ExitFRow.sign=s6Step344ExitFOut := by decide +kernel
  have hi : s6Step344ExitFRow.payload.drop 101=s6Step344ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step344ExitF_retired] at result
  exact result

private def s6Step344ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344ExitFvBefore : Arena := s6Step344ExitFAfter

private theorem s6Step344ExitFv_Incoming : rowsOwned s6Step344ExitFvBefore [s6Step344ExitFvRow,s6Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344ExitGRow,s6Step344ExitFRow,s6Step344ExitFvRow,s6Step344ExitGvRow] 2 s6Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344ExitFv_Outgoing : rowsOwned s6Step344ExitGvAfter [s6Step344ExitFvOut,s6Step344ExitGvOut] :=
  hmrRows_owned_drop s6Step344ExitGvAfter [s6Step344ExitGOut,s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut] 2 s6Step344ExitBank_outgoingOwned

private theorem s6Step344ExitFv_distinct : (s6Step344ExitFvRow.sign::s6Step344ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344ExitFv_owned : (s6Step344ExitFvRow.sign::s6Step344ExitFvRow.payload).toFinset⊆s6Step344ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344ExitFv_retired : s6Step344ExitFvBefore.retireSet s6Step344ExitFvExtra.toFinset=s6Step344ExitFvAfter := by
  unfold Arena.retireSet s6Step344ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step344ExitFvBefore,s6Step344ExitFAfter,s6Step344ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step344ExitFv_checked : planRowResizeLog s6Step344ExitFvBefore s6Step344ExitFvRow 189 []=
    some (s6Step344ExitFvAfter,s6Step344ExitFvOut,shrinkRow 776 s6Step344ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step344ExitFvBefore s6Step344ExitFvRow 189 s6Step344ExitFv_distinct s6Step344ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step344ExitFvRow.payload.take 189) s6Step344ExitFvRow.sign=s6Step344ExitFvOut := by decide +kernel
  have hi : s6Step344ExitFvRow.payload.drop 189=s6Step344ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step344ExitFv_retired] at result
  exact result

private def s6Step344ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step344ExitG_Incoming : rowsOwned s6Step344ExitGBefore [s6Step344ExitGRow,s6Step344ExitFRow,s6Step344ExitFvRow,s6Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344ExitGRow,s6Step344ExitFRow,s6Step344ExitFvRow,s6Step344ExitGvRow] 0 s6Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344ExitG_Outgoing : rowsOwned s6Step344ExitGvAfter [s6Step344ExitGOut,s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut] :=
  hmrRows_owned_drop s6Step344ExitGvAfter [s6Step344ExitGOut,s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut] 0 s6Step344ExitBank_outgoingOwned

private theorem s6Step344ExitG_distinct : (s6Step344ExitGRow.sign::s6Step344ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344ExitG_owned : (s6Step344ExitGRow.sign::s6Step344ExitGRow.payload).toFinset⊆s6Step344ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344ExitG_retired : s6Step344ExitGBefore.retireSet s6Step344ExitGExtra.toFinset=s6Step344ExitGAfter := by
  unfold Arena.retireSet s6Step344ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step344ExitGBefore,s6Step344ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step344ExitG_checked : planRowResizeLog s6Step344ExitGBefore s6Step344ExitGRow 99 []=
    some (s6Step344ExitGAfter,s6Step344ExitGOut,shrinkRow 777 s6Step344ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step344ExitGBefore s6Step344ExitGRow 99 s6Step344ExitG_distinct s6Step344ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step344ExitGRow.payload.take 99) s6Step344ExitGRow.sign=s6Step344ExitGOut := by decide +kernel
  have hi : s6Step344ExitGRow.payload.drop 99=s6Step344ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step344ExitG_retired] at result
  exact result

private def s6Step344ExitGvBefore : Arena := s6Step344ExitFvAfter

private theorem s6Step344ExitGv_Incoming : rowsOwned s6Step344ExitGvBefore [s6Step344ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344ExitGRow,s6Step344ExitFRow,s6Step344ExitFvRow,s6Step344ExitGvRow] 3 s6Step344ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344ExitGv_Outgoing : rowsOwned s6Step344ExitGvAfter [s6Step344ExitGvOut] :=
  hmrRows_owned_drop s6Step344ExitGvAfter [s6Step344ExitGOut,s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut] 3 s6Step344ExitBank_outgoingOwned

private theorem s6Step344ExitGv_distinct : (s6Step344ExitGvRow.sign::s6Step344ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344ExitGv_owned : (s6Step344ExitGvRow.sign::s6Step344ExitGvRow.payload).toFinset⊆s6Step344ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344ExitGv_retired : s6Step344ExitGvBefore.retireSet s6Step344ExitGvExtra.toFinset=s6Step344ExitGvAfter := by
  unfold Arena.retireSet s6Step344ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step344ExitGvBefore,s6Step344ExitFvAfter,s6Step344ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step344ExitGv_checked : planRowResizeLog s6Step344ExitGvBefore s6Step344ExitGvRow 187 []=
    some (s6Step344ExitGvAfter,s6Step344ExitGvOut,shrinkRow 775 s6Step344ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step344ExitGvBefore s6Step344ExitGvRow 187 s6Step344ExitGv_distinct s6Step344ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step344ExitGvRow.payload.take 187) s6Step344ExitGvRow.sign=s6Step344ExitGvOut := by decide +kernel
  have hi : s6Step344ExitGvRow.payload.drop 187=s6Step344ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step344ExitGv_retired] at result
  exact result

private theorem s6Step344ExitBank_rows : planWindowRowsLog s6Step344ExitGBefore [(s6Step344ExitGRow,99),(s6Step344ExitFRow,101),(s6Step344ExitFvRow,189),(s6Step344ExitGvRow,187)] [[],[],[],[]]=
    some (s6Step344ExitGvAfter,[s6Step344ExitGOut,s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut],(shrinkRow 777 s6Step344ExitGExtra ++ (shrinkRow 795 s6Step344ExitFExtra ++ (shrinkRow 776 s6Step344ExitFvExtra ++ (shrinkRow 775 s6Step344ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step344ExitGvAfter [] []=some (s6Step344ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step344ExitGvBefore s6Step344ExitGvAfter s6Step344ExitGvAfter
    s6Step344ExitGvRow s6Step344ExitGvOut 187 [] [] [] []
    (shrinkRow 775 s6Step344ExitGvExtra) ([]) s6Step344ExitGv_Incoming s6Step344ExitGv_checked h4 s6Step344ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step344ExitFvBefore s6Step344ExitFvAfter s6Step344ExitGvAfter
    s6Step344ExitFvRow s6Step344ExitFvOut 189 [] [(s6Step344ExitGvRow,187)] [[]] [s6Step344ExitGvOut]
    (shrinkRow 776 s6Step344ExitFvExtra) ((shrinkRow 775 s6Step344ExitGvExtra ++ [])) s6Step344ExitFv_Incoming s6Step344ExitFv_checked h3 s6Step344ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step344ExitFBefore s6Step344ExitFAfter s6Step344ExitGvAfter
    s6Step344ExitFRow s6Step344ExitFOut 101 [] [(s6Step344ExitFvRow,189),(s6Step344ExitGvRow,187)] [[],[]] [s6Step344ExitFvOut,s6Step344ExitGvOut]
    (shrinkRow 795 s6Step344ExitFExtra) ((shrinkRow 776 s6Step344ExitFvExtra ++ (shrinkRow 775 s6Step344ExitGvExtra ++ []))) s6Step344ExitF_Incoming s6Step344ExitF_checked h2 s6Step344ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step344ExitGBefore s6Step344ExitGAfter s6Step344ExitGvAfter
    s6Step344ExitGRow s6Step344ExitGOut 99 [] [(s6Step344ExitFRow,101),(s6Step344ExitFvRow,189),(s6Step344ExitGvRow,187)] [[],[],[]] [s6Step344ExitFOut,s6Step344ExitFvOut,s6Step344ExitGvOut]
    (shrinkRow 777 s6Step344ExitGExtra) ((shrinkRow 795 s6Step344ExitFExtra ++ (shrinkRow 776 s6Step344ExitFvExtra ++ (shrinkRow 775 s6Step344ExitGvExtra ++ [])))) s6Step344ExitG_Incoming s6Step344ExitG_checked h1 s6Step344ExitG_Outgoing
  exact h0

private theorem s6Step344ExitBank_checked : compileHmrBankResizeLog .exit s6Step344ExitGBefore ⟨s6Step344ExitFRow,s6Step344ExitGRow,s6Step344ExitFvRow,s6Step344ExitGvRow⟩ ⟨101,99,189,187⟩ [[],[],[],[]]=
    some (s6Step344ExitGvAfter,⟨s6Step344ExitFOut,s6Step344ExitGOut,s6Step344ExitFvOut,s6Step344ExitGvOut⟩,(shrinkRow 777 s6Step344ExitGExtra ++ (shrinkRow 795 s6Step344ExitFExtra ++ (shrinkRow 776 s6Step344ExitFvExtra ++ (shrinkRow 775 s6Step344ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step344ExitBank_rows]
  rfl

private theorem s6Step344Add0_apart : Disjoint s6Step344Add0Arena.live s6Step344Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step344Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344Add0_card : s6Step344Add0Arena.live.card=914 := by
  decide +kernel

private theorem s6Step344Add0_borrowed : s6Step344Add0Arena.checkBorrow (hmrHybridCount s6Step344Add0Arena s6Step344Add0B.length) s6Step344Add0Work=some s6Step344Add0During := by
  have len : s6Step344Add0Work.length=hmrHybridCount s6Step344Add0Arena s6Step344Add0B.length := by
    rw [hmrHybridCount,s6Step344Add0_card]
    decide +kernel
  have nd : s6Step344Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step344Add0Arena s6Step344Add0During s6Step344Add0Work.toFinset s6Step344Add0_bounded s6Step344Add0_apart rfl

private theorem s6Step344Add0_distinct : (792::843::816::(s6Step344Add0A++s6Step344Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344Add0_owned : (792::843::816::(s6Step344Add0A++s6Step344Add0B)).toFinset⊆s6Step344Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step344Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344Add0_checked : compileHmrHybridCinLog s6Step344Add0Arena 843 792 816 s6Step344Add0A s6Step344Add0B s6Step344Add0Work=some s6Step344Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step344Add0Arena s6Step344Add0During 843 792 816 s6Step344Add0A s6Step344Add0B s6Step344Add0Work
    (by decide +kernel) (by decide +kernel) s6Step344Add0_distinct
    (fun q hq => s6Step344Add0_owned (List.mem_toFinset.mpr hq)) s6Step344Add0_borrowed

private theorem s6Step344Add1_apart : Disjoint s6Step344Add1Arena.live s6Step344Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step344Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344Add1_card : s6Step344Add1Arena.live.card=914 := by
  decide +kernel

private theorem s6Step344Add1_borrowed : s6Step344Add1Arena.checkBorrow (hmrHybridCount s6Step344Add1Arena s6Step344Add1B.length) s6Step344Add1Work=some s6Step344Add1During := by
  have len : s6Step344Add1Work.length=hmrHybridCount s6Step344Add1Arena s6Step344Add1B.length := by
    rw [hmrHybridCount,s6Step344Add1_card]
    decide +kernel
  have nd : s6Step344Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step344Add1Arena s6Step344Add1During s6Step344Add1Work.toFinset s6Step344Add1_bounded s6Step344Add1_apart rfl

private theorem s6Step344Add1_distinct : (792::843::816::(s6Step344Add1A++s6Step344Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344Add1_owned : (792::843::816::(s6Step344Add1A++s6Step344Add1B)).toFinset⊆s6Step344Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step344Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344Add1_checked : compileHmrHybridCinLog s6Step344Add1Arena 843 792 816 s6Step344Add1A s6Step344Add1B s6Step344Add1Work=some s6Step344Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step344Add1Arena s6Step344Add1During 843 792 816 s6Step344Add1A s6Step344Add1B s6Step344Add1Work
    (by decide +kernel) (by decide +kernel) s6Step344Add1_distinct
    (fun q hq => s6Step344Add1_owned (List.mem_toFinset.mpr hq)) s6Step344Add1_borrowed

private theorem s6Step344F4_apart : Disjoint (s6Step344Add0A++s6Step344Add0B).toFinset (s6Step344Add1A++s6Step344Add1B).toFinset := by
  have nd : ((s6Step344Add0A++s6Step344Add0B)++(s6Step344Add1A++s6Step344Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step344F4_carry : s6Step344F4FlagArena.checkBorrow 1 [816]=some s6Step344Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step344F4FlagArena,s6Step344HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step344F4FlagArena,s6Step344HeadFvAfter,s6Step344Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344F4_distinct : (881::843::792::816::((s6Step344Add0A++s6Step344Add1A)++(s6Step344Add0B++s6Step344Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344F4_flag : s6Step344HeadFvAfter.checkBorrow 1 [792]=some s6Step344F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step344HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step344F4_owned : (881::843::((s6Step344Add0A++s6Step344Add1A)++(s6Step344Add0B++s6Step344Add1B))).toFinset⊆s6Step344HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step344HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344F4_checked : compileHmrHybridF4Log s6Step344HeadFvAfter 881 843 s6Step344Add0A s6Step344Add0B s6Step344Add1A s6Step344Add1B [792] [816] s6Step344Add0Work s6Step344Add1Work=some s6Step344F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step344HeadFvAfter s6Step344F4FlagArena s6Step344Add0Arena s6Step344Add0During s6Step344Add1During 881 843
    s6Step344Add0A s6Step344Add0B s6Step344Add1A s6Step344Add1B [792] [816] s6Step344Add0Work s6Step344Add1Work
    (fun q hq => s6Step344F4_owned (List.mem_toFinset.mpr hq)) s6Step344F4_flag s6Step344F4_carry
    s6Step344F4_distinct s6Step344F4_apart s6Step344Add0_checked s6Step344Add1_checked

private theorem s6Step344Front_branch : s6Step344FrontSigmaArena.checkBorrow 1 [843]=some s6Step344HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step344FrontSigmaArena,s6Step344EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step344FrontSigmaArena,s6Step344EntryGvAfter,s6Step344HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344Front_entry : HmrFrontEntryValid s6Step344EntryFBefore s6Step344FrontBank 101 189 ⟨101,99,189,187⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step344FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step344EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step344EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step344FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step344Front_sigma : s6Step344EntryGvAfter.checkBorrow 1 [881]=some s6Step344FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step344EntryGvAfter,arenaWires]
  · rfl

private def s6Step344HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344HeadFBefore : Arena := s6Step344HeadGAfter

private def s6Step344HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step344HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step344HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877],777⟩

private def s6Step344HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903],775⟩

private theorem s6Step344HeadBank_incomingDistinct : ([s6Step344HeadGRow,s6Step344HeadFRow,s6Step344HeadGvRow,s6Step344HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344HeadF_Incoming : rowsOwned s6Step344HeadFBefore [s6Step344HeadFRow,s6Step344HeadGvRow,s6Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344HeadGRow,s6Step344HeadFRow,s6Step344HeadGvRow,s6Step344HeadFvRow] 1 s6Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344HeadBank_outgoingOwned : rowsOwned s6Step344HeadFvAfter [s6Step344HeadGOut,s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step344HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344HeadF_Outgoing : rowsOwned s6Step344HeadFvAfter [s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut] :=
  hmrRows_owned_drop s6Step344HeadFvAfter [s6Step344HeadGOut,s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut] 1 s6Step344HeadBank_outgoingOwned

private theorem s6Step344HeadF_distinct : (s6Step344HeadFRow.sign::s6Step344HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344HeadF_owned : (s6Step344HeadFRow.sign::s6Step344HeadFRow.payload).toFinset⊆s6Step344HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344HeadF_reserved : s6Step344HeadFBefore.reserve s6Step344HeadFFresh.toFinset=some s6Step344HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344HeadFFresh,arenaWires]
  · norm_num [s6Step344HeadFBefore,s6Step344HeadGAfter,s6Step344HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step344HeadFAfter,s6Step344HeadFBefore,s6Step344HeadGAfter,s6Step344HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344HeadF_checked : planRowResizeLog s6Step344HeadFBefore s6Step344HeadFRow 102 s6Step344HeadFFresh=
    some (s6Step344HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 805],795⟩,growRow 795 s6Step344HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step344HeadFBefore s6Step344HeadFAfter s6Step344HeadFRow 102 s6Step344HeadFFresh
    s6Step344HeadF_distinct s6Step344HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344HeadF_reserved
  have rowEq : WindowRow.mk (s6Step344HeadFRow.payload++s6Step344HeadFFresh) s6Step344HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step344HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step344HeadFvBefore : Arena := s6Step344HeadGvAfter

private theorem s6Step344HeadFv_Incoming : rowsOwned s6Step344HeadFvBefore [s6Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344HeadGRow,s6Step344HeadFRow,s6Step344HeadGvRow,s6Step344HeadFvRow] 3 s6Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344HeadFv_Outgoing : rowsOwned s6Step344HeadFvAfter [s6Step344HeadFvOut] :=
  hmrRows_owned_drop s6Step344HeadFvAfter [s6Step344HeadGOut,s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut] 3 s6Step344HeadBank_outgoingOwned

private theorem s6Step344HeadFv_distinct : (s6Step344HeadFvRow.sign::s6Step344HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344HeadFv_owned : (s6Step344HeadFvRow.sign::s6Step344HeadFvRow.payload).toFinset⊆s6Step344HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344HeadFv_reserved : s6Step344HeadFvBefore.reserve s6Step344HeadFvFresh.toFinset=some s6Step344HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344HeadFvFresh,arenaWires]
  · norm_num [s6Step344HeadFvBefore,s6Step344HeadGvAfter,s6Step344HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step344HeadFvAfter,s6Step344HeadFvBefore,s6Step344HeadGvAfter,s6Step344HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344HeadFv_checked : planRowResizeLog s6Step344HeadFvBefore s6Step344HeadFvRow 190 s6Step344HeadFvFresh=
    some (s6Step344HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 906],776⟩,growRow 776 s6Step344HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step344HeadFvBefore s6Step344HeadFvAfter s6Step344HeadFvRow 190 s6Step344HeadFvFresh
    s6Step344HeadFv_distinct s6Step344HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step344HeadFvRow.payload++s6Step344HeadFvFresh) s6Step344HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 906],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step344HeadG_Incoming : rowsOwned s6Step344HeadGBefore [s6Step344HeadGRow,s6Step344HeadFRow,s6Step344HeadGvRow,s6Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344HeadGRow,s6Step344HeadFRow,s6Step344HeadGvRow,s6Step344HeadFvRow] 0 s6Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344HeadG_Outgoing : rowsOwned s6Step344HeadFvAfter [s6Step344HeadGOut,s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut] :=
  hmrRows_owned_drop s6Step344HeadFvAfter [s6Step344HeadGOut,s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut] 0 s6Step344HeadBank_outgoingOwned

private theorem s6Step344HeadG_distinct : (s6Step344HeadGRow.sign::s6Step344HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344HeadG_owned : (s6Step344HeadGRow.sign::s6Step344HeadGRow.payload).toFinset⊆s6Step344HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344HeadG_reserved : s6Step344HeadGBefore.reserve s6Step344HeadGFresh.toFinset=some s6Step344HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344HeadGFresh,arenaWires]
  · norm_num [s6Step344HeadGBefore,s6Step344HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step344HeadGAfter,s6Step344HeadGBefore,s6Step344HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344HeadG_checked : planRowResizeLog s6Step344HeadGBefore s6Step344HeadGRow 102 s6Step344HeadGFresh=
    some (s6Step344HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877, 802],777⟩,growRow 777 s6Step344HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step344HeadGBefore s6Step344HeadGAfter s6Step344HeadGRow 102 s6Step344HeadGFresh
    s6Step344HeadG_distinct s6Step344HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344HeadG_reserved
  have rowEq : WindowRow.mk (s6Step344HeadGRow.payload++s6Step344HeadGFresh) s6Step344HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 817, 877, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step344HeadGvBefore : Arena := s6Step344HeadFAfter

private theorem s6Step344HeadGv_Incoming : rowsOwned s6Step344HeadGvBefore [s6Step344HeadGvRow,s6Step344HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step344HeadGRow,s6Step344HeadFRow,s6Step344HeadGvRow,s6Step344HeadFvRow] 2 s6Step344HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step344HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step344HeadGv_Outgoing : rowsOwned s6Step344HeadFvAfter [s6Step344HeadGvOut,s6Step344HeadFvOut] :=
  hmrRows_owned_drop s6Step344HeadFvAfter [s6Step344HeadGOut,s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut] 2 s6Step344HeadBank_outgoingOwned

private theorem s6Step344HeadGv_distinct : (s6Step344HeadGvRow.sign::s6Step344HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step344HeadGv_owned : (s6Step344HeadGvRow.sign::s6Step344HeadGvRow.payload).toFinset⊆s6Step344HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step344HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step344HeadGv_reserved : s6Step344HeadGvBefore.reserve s6Step344HeadGvFresh.toFinset=some s6Step344HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step344HeadGvFresh,arenaWires]
  · norm_num [s6Step344HeadGvBefore,s6Step344HeadFAfter,s6Step344HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step344HeadGvAfter,s6Step344HeadGvBefore,s6Step344HeadFAfter,s6Step344HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step344HeadGv_checked : planRowResizeLog s6Step344HeadGvBefore s6Step344HeadGvRow 190 s6Step344HeadGvFresh=
    some (s6Step344HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩,growRow 775 s6Step344HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step344HeadGvBefore s6Step344HeadGvAfter s6Step344HeadGvRow 190 s6Step344HeadGvFresh
    s6Step344HeadGv_distinct s6Step344HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step344HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step344HeadGvRow.payload++s6Step344HeadGvFresh) s6Step344HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step344HeadBank_rows : planWindowRowsLog s6Step344HeadGBefore [(s6Step344HeadGRow,102),(s6Step344HeadFRow,102),(s6Step344HeadGvRow,190),(s6Step344HeadFvRow,190)] [s6Step344HeadGFresh,s6Step344HeadFFresh,s6Step344HeadGvFresh,s6Step344HeadFvFresh]=
    some (s6Step344HeadFvAfter,[s6Step344HeadGOut,s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut],(growRow 777 s6Step344HeadGFresh ++ (growRow 795 s6Step344HeadFFresh ++ (growRow 775 s6Step344HeadGvFresh ++ (growRow 776 s6Step344HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step344HeadFvAfter [] []=some (s6Step344HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step344HeadFvBefore s6Step344HeadFvAfter s6Step344HeadFvAfter
    s6Step344HeadFvRow s6Step344HeadFvOut 190 s6Step344HeadFvFresh [] [] []
    (growRow 776 s6Step344HeadFvFresh) ([]) s6Step344HeadFv_Incoming s6Step344HeadFv_checked h4 s6Step344HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step344HeadGvBefore s6Step344HeadGvAfter s6Step344HeadFvAfter
    s6Step344HeadGvRow s6Step344HeadGvOut 190 s6Step344HeadGvFresh [(s6Step344HeadFvRow,190)] [s6Step344HeadFvFresh] [s6Step344HeadFvOut]
    (growRow 775 s6Step344HeadGvFresh) ((growRow 776 s6Step344HeadFvFresh ++ [])) s6Step344HeadGv_Incoming s6Step344HeadGv_checked h3 s6Step344HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step344HeadFBefore s6Step344HeadFAfter s6Step344HeadFvAfter
    s6Step344HeadFRow s6Step344HeadFOut 102 s6Step344HeadFFresh [(s6Step344HeadGvRow,190),(s6Step344HeadFvRow,190)] [s6Step344HeadGvFresh,s6Step344HeadFvFresh] [s6Step344HeadGvOut,s6Step344HeadFvOut]
    (growRow 795 s6Step344HeadFFresh) ((growRow 775 s6Step344HeadGvFresh ++ (growRow 776 s6Step344HeadFvFresh ++ []))) s6Step344HeadF_Incoming s6Step344HeadF_checked h2 s6Step344HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step344HeadGBefore s6Step344HeadGAfter s6Step344HeadFvAfter
    s6Step344HeadGRow s6Step344HeadGOut 102 s6Step344HeadGFresh [(s6Step344HeadFRow,102),(s6Step344HeadGvRow,190),(s6Step344HeadFvRow,190)] [s6Step344HeadFFresh,s6Step344HeadGvFresh,s6Step344HeadFvFresh] [s6Step344HeadFOut,s6Step344HeadGvOut,s6Step344HeadFvOut]
    (growRow 777 s6Step344HeadGFresh) ((growRow 795 s6Step344HeadFFresh ++ (growRow 775 s6Step344HeadGvFresh ++ (growRow 776 s6Step344HeadFvFresh ++ [])))) s6Step344HeadG_Incoming s6Step344HeadG_checked h1 s6Step344HeadG_Outgoing
  exact h0

private theorem s6Step344HeadBank_checked : compileHmrBankResizeLog .headroom s6Step344HeadGBefore ⟨s6Step344HeadFRow,s6Step344HeadGRow,s6Step344HeadFvRow,s6Step344HeadGvRow⟩ ⟨102,102,190,190⟩ [s6Step344HeadGFresh,s6Step344HeadFFresh,s6Step344HeadGvFresh,s6Step344HeadFvFresh]=
    some (s6Step344HeadFvAfter,⟨s6Step344HeadFOut,s6Step344HeadGOut,s6Step344HeadFvOut,s6Step344HeadGvOut⟩,(growRow 777 s6Step344HeadGFresh ++ (growRow 795 s6Step344HeadFFresh ++ (growRow 775 s6Step344HeadGvFresh ++ (growRow 776 s6Step344HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step344HeadBank_rows]
  rfl

private theorem s6Step344Front_checked : compileHmrSourceFrontLog s6Step344EntryFBefore s6Step344FrontBank 101 189 ⟨101,99,189,187⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step344FrontLog=some s6Step344FrontPlan := by
  have pairEq : s6Step344FrontPair=⟨s6Step344HeadFRow,s6Step344HeadGRow,s6Step344HeadFvRow,s6Step344HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step344FrontHead=⟨s6Step344ExitFRow,s6Step344ExitGRow,s6Step344ExitFvRow,s6Step344ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step344Add0A=s6Step344FrontHead.f.wires := by decide +kernel
  have gEq : s6Step344Add0B=s6Step344FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step344Add1A=s6Step344FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step344Add1B=s6Step344FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step344EntryFBefore s6Step344FrontBank 101 189 ⟨101,99,189,187⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step344FrontLog s6Step344FrontPlan
  · exact s6Step344Front_entry
  · exact s6Step344EntryBank_checked
  · exact s6Step344Front_sigma
  · rfl
  · exact s6Step344Front_branch
  · rfl
  · simpa only [s6Step344FrontPlan,pairEq] using s6Step344HeadBank_checked
  · simpa only [s6Step344FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step344F4_checked
  · exact s6Step344Counter_checked
  · rfl
  · simpa only [s6Step344FrontPlan,headEq] using s6Step344ExitBank_checked

private theorem s6Step344Complete_explicit_checked : compileHmrEarlyStepLog s6Step344EntryFBefore s6Step344FrontBank 101 189 ⟨101,99,189,187⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step344CompleteLog=some s6Step344CompletePlan := by
  let Q := s6Step344EarlyControlPlan
  have hq := s6Step344EarlyControl_plan_checked
  have fv1 : s6Step344CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step344CompleteOut.fv.payload[2]?.getD s6Step344CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step344CompleteOut.fv.payload[3]?.getD s6Step344CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step344CompleteOut.fv.payload[4]?.getD s6Step344CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step344EntryFBefore s6Step344EarlyControlArena s6Step344FrontBank 101 189 ⟨101,99,189,187⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step344CompleteLog s6Step344FrontPlan Q
    s6Step344Front_checked s6Step344Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step344Complete_owned s6Step344Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step344EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 s6Step344CompleteOut.fv.second (s6Step344CompleteOut.fv.payload[2]?.getD s6Step344CompleteOut.fv.sign) (s6Step344CompleteOut.fv.payload[3]?.getD s6Step344CompleteOut.fv.sign) (s6Step344CompleteOut.fv.payload[4]?.getD s6Step344CompleteOut.fv.sign) 843 60 s6Step344EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep344Arena : Arena := s6Step344EntryFBefore
def s6PrivateStep344Bank : WindowBank := s6Step344FrontBank
def s6PrivateStep344Spec : HmrSourceWalkStepLog := ⟨101,189,⟨101,99,189,187⟩,60,.early s6Step344CompleteLog⟩
def s6PrivateStep344Plan : HmrSourceStepPlan := .early s6Step344CompletePlan
theorem s6PrivateStep344_source : s6PrivateStep344Spec=s6ObservedLogs336[8] := rfl
theorem s6PrivateStep344_checked : compileHmrSourceStepLog s6PrivateStep344Arena s6PrivateStep344Bank
    s6PrivateStep344Spec.fgWidth s6PrivateStep344Spec.vWidth s6PrivateStep344Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 344 s6PrivateStep344Spec.need none s6PrivateStep344Spec.log=some s6PrivateStep344Plan := by
  change compileHmrSourceStepLog s6Step344EntryFBefore s6Step344FrontBank 101 189 ⟨101,99,189,187⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 344 60 none (.early s6Step344CompleteLog)=some (.early s6Step344CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 344<498)]
  rw [s6Step344Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
