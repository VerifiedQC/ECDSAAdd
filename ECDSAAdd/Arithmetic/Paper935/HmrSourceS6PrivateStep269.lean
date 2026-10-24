import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep267
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

private def s6Step269CompleteMoves : List (Wire × Wire) := []

private def s6Step269EarlyControlLog : HmrEarlyControlLog := ⟨[874, 877, 927, 859, 794],[830],[805],[817, 812, 915, 906, 899, 926],[787]⟩

private def s6Step269FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [859], [], [833]],[[794], [927], [874], [877]],[[], [], [], []]⟩,[780],[809],[830],[805],[817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step269CompleteLog : HmrEarlyStepLog := ⟨s6Step269FrontLog,s6Step269CompleteMoves,s6Step269EarlyControlLog⟩

private def s6Step269ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩

private def s6Step269ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩

private def s6Step269ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step269ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩

private def s6Step269FrontOut : WindowBank := ⟨s6Step269ExitFOut,s6Step269ExitGOut,s6Step269ExitFvOut,s6Step269ExitGvOut⟩

private def s6Step269CompleteOut : WindowBank := s6Step269FrontOut.repacked s6Step269CompleteMoves

private def s6Step269EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step269EarlyControlPositiveArena,[830],s6Step269EarlyControlEqualityArena,[805],⟨⟨780,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step269EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,877⟩,⟨⟨771,false⟩,927⟩,⟨⟨770,false⟩,859⟩,⟨⟨769,false⟩,794⟩]⟩

private def s6Step269EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step269EarlyControlZeroArena,s6Step269EarlyControlZeroPlan,s6Step269EarlyControlClassPlan,s6Step269EarlyControlFlagArena,s6Step269EarlyControlFittedArena,s6Step269EarlyControlHistoryArena,s6Step269EarlyControlSigmaArena,s6Step269EarlyControlOutputArena,s6Step269EarlyControlLog⟩

private def s6Step269CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step269Counter_bounded : s6Step269CounterWork.toFinset⊆arenaWires := by norm_num [s6Step269CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step269HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269CounterDuring : Arena := ⟨s6Step269HeadFvAfter.live∪s6Step269CounterWork.toFinset,Finset.union_subset s6Step269HeadFvAfter.bounded s6Step269Counter_bounded⟩

private def s6Step269EntryFFresh : List Wire := []

private def s6Step269EntryFvFresh : List Wire := []

private def s6Step269EntryGFresh : List Wire := [859]

private def s6Step269EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EntryGvFresh : List Wire := [833]

private def s6Step269ExitFExtra : List Wire := [927]

private def s6Step269ExitFvExtra : List Wire := [877]

private def s6Step269ExitGExtra : List Wire := [859, 794]

private def s6Step269ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269ExitGvExtra : List Wire := [874]

private def s6Step269Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269Add0Work : List Wire := [817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step269Add0_bounded : s6Step269Add0Work.toFinset⊆arenaWires := by
  have h : s6Step269Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step269Add0During : Arena := ⟨s6Step269Add0Arena.live∪s6Step269Add0Work.toFinset,Finset.union_subset s6Step269Add0Arena.bounded s6Step269Add0_bounded⟩

private def s6Step269Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269Add1Work : List Wire := [817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step269Add1_bounded : s6Step269Add1Work.toFinset⊆arenaWires := by
  have h : s6Step269Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step269Add1During : Arena := ⟨s6Step269Add1Arena.live∪s6Step269Add1Work.toFinset,Finset.union_subset s6Step269Add1Arena.bounded s6Step269Add1_bounded⟩

private def s6Step269F4FlagArena : Arena := ⟨s6Step269HeadFvAfter.live∪{830},Finset.union_subset s6Step269HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step269F4Plan : HmrHybridF4Plan := ⟨s6Step269F4FlagArena,[830],s6Step269Add0Arena,[805],s6Step269Add0During,s6Step269Add0Work,s6Step269Add1During,s6Step269Add1Work⟩

private def s6Step269HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩

private def s6Step269HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 877],776⟩

private def s6Step269HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859, 794],777⟩

private def s6Step269HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 874],775⟩

private def s6Step269FrontHead : WindowBank := ⟨s6Step269HeadFOut,s6Step269HeadGOut,s6Step269HeadFvOut,s6Step269HeadGvOut⟩

private def s6Step269EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩

private def s6Step269EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩

private def s6Step269EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859],777⟩

private def s6Step269EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩

private def s6Step269FrontPair : WindowBank := ⟨s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut⟩

private def s6Step269FrontSigmaArena : Arena := ⟨s6Step269EntryGvAfter.live∪{780},Finset.union_subset s6Step269EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step269HeadFFresh : List Wire := [927]

private def s6Step269HeadFvFresh : List Wire := [877]

private def s6Step269HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269HeadGFresh : List Wire := [794]

private def s6Step269HeadGvFresh : List Wire := [874]

private def s6Step269FrontPlan : HmrSourceFront := ⟨s6Step269EntryGvAfter,s6Step269FrontPair,(growRow 795 s6Step269EntryFFresh ++ (growRow 777 s6Step269EntryGFresh ++ (growRow 776 s6Step269EntryFvFresh ++ (growRow 775 s6Step269EntryGvFresh ++ [])))),s6Step269FrontSigmaArena,[780],s6Step269HeadGBefore,[809],
  s6Step269HeadFvAfter,s6Step269FrontHead,(growRow 777 s6Step269HeadGFresh ++ (growRow 795 s6Step269HeadFFresh ++ (growRow 775 s6Step269HeadGvFresh ++ (growRow 776 s6Step269HeadFvFresh ++ [])))),s6Step269F4Plan,s6Step269CounterDuring,s6Step269CounterWork,s6Step269ExitGvAfter,s6Step269FrontOut,(shrinkRow 777 s6Step269ExitGExtra ++ (shrinkRow 795 s6Step269ExitFExtra ++ (shrinkRow 776 s6Step269ExitFvExtra ++ (shrinkRow 775 s6Step269ExitGvExtra ++ []))))⟩

private def s6Step269CompletePlan : HmrEarlyStepPlan := ⟨s6Step269FrontPlan,s6Step269EarlyControlArena,s6Step269EarlyControlPlan,s6Step269CompleteMoves⟩

private theorem s6Step269Complete_apart : List.Disjoint (s6Step269CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [780, 809, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] := by
  have nd : ((s6Step269CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[780, 809, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step269Complete_owned : (s6Step269CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269Complete_repack : s6Step269ExitGvAfter.checkRepack s6Step269CompleteMoves=some s6Step269EarlyControlArena := by rfl

private theorem s6Step269EarlyControl_branchOwned : ([809] : List Wire).toFinset⊆s6Step269EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_branch : compileHmrBranchRetirement s6Step269EarlyControlSigmaArena 809=some s6Step269EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step269EarlyControl_branchOwned
  · ext q
    simp [s6Step269EarlyControlOutputArena,s6Step269EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step269EarlyControl_classEqualityBorrow : s6Step269EarlyControlPositiveArena.checkBorrow (([780, 830] : List Wire).length-1) s6Step269EarlyControlLog.classWork=some s6Step269EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step269EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step269EarlyControlEqualityArena,s6Step269EarlyControlPositiveArena,s6Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step269EarlyControl_classEqualityOwned : ([780, 830] : List Wire).toFinset⊆s6Step269EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_classEquality : compileHmrEqualityLog s6Step269EarlyControlPositiveArena [780, 830] 0 s6Step269EarlyControlLog.classWork=some (s6Step269EarlyControlEqualityArena,s6Step269EarlyControlLog.classWork,s6Step269EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step269EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step269EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step269EarlyControl_classOwned : ([769, 794, 780] : List Wire).toFinset⊆s6Step269EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_positiveBorrow : s6Step269EarlyControlZeroArena.checkBorrow (1) s6Step269EarlyControlLog.positiveWork=some s6Step269EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step269EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step269EarlyControlPositiveArena,s6Step269EarlyControlZeroArena,s6Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step269EarlyControl_class : compileHmrSourceClassLog s6Step269EarlyControlZeroArena false 769 s6Step269EarlyControlZeroPlan.top 0 780 s6Step269EarlyControlLog.positiveWork s6Step269EarlyControlLog.classWork=some s6Step269EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step269EarlyControlClassPlan s6Step269EarlyControlZeroArena false 769 s6Step269EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s6Step269EarlyControl_classOwned
  · exact s6Step269EarlyControl_positiveBorrow
  · exact s6Step269EarlyControl_classEquality

private theorem s6Step269EarlyControl_entryRecordOwned : ([809, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s6Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_fitBorrow : s6Step269EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step269EarlyControlLog.recordFresh=some s6Step269EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step269EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step269EarlyControlFittedArena,s6Step269EarlyControlFlagArena,s6Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step269EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step269EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_fit : compileHmrRecordGrowLog s6Step269EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 53 s6Step269EarlyControlLog.recordFresh=some s6Step269EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step269EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step269EarlyControl_fitBorrow

private theorem s6Step269EarlyControl_flagsBorrow : s6Step269EarlyControlEqualityArena.checkBorrow (6) s6Step269EarlyControlLog.flagWork=some s6Step269EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step269EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step269EarlyControlFlagArena,s6Step269EarlyControlEqualityArena,s6Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step269EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step269EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_flags : compileHmrFlagsLog s6Step269EarlyControlClassPlan.equalityArena s6Step269EarlyControlClassPlan.equality.top 253 252 251 s6Step269EarlyControlLog.flagWork=some s6Step269EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step269EarlyControl_flagsOwned⟩
  · exact s6Step269EarlyControl_flagsBorrow

private theorem s6Step269EarlyControl_historyBorrow : s6Step269EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step269EarlyControlLog.recordFresh=some s6Step269EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step269EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step269EarlyControlHistoryArena,s6Step269EarlyControlArena,s6Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step269EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_history : compileHmrRecordGrowLog s6Step269EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 53 s6Step269EarlyControlLog.recordFresh=some s6Step269EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step269EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step269EarlyControl_historyBorrow

private theorem s6Step269EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s6Step269EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s6Step269EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_sigmaRelease : s6Step269EarlyControlHistoryArena.release {780} (fun _ => false)=some s6Step269EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step269EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step269EarlyControlSigmaArena,s6Step269EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step269EarlyControl_sigma : compileHmrSigmaDropLog s6Step269EarlyControlHistoryArena false 0 0 254 780 []=some s6Step269EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step269EarlyControl_sigmaOwned⟩
  · exact s6Step269EarlyControl_sigmaRelease

private theorem s6Step269EarlyControl_zeroBorrow : s6Step269EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step269EarlyControlLog.zeroWork=some s6Step269EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step269EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step269EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step269EarlyControlZeroArena,s6Step269EarlyControlArena,s6Step269EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step269EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step269EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step269EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EarlyControl_zero : compileHmrEqualityLog s6Step269EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step269EarlyControlLog.zeroWork=some (s6Step269EarlyControlZeroArena,s6Step269EarlyControlLog.zeroWork,s6Step269EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step269EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step269EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step269EarlyControl_logged : s6Step269EarlyControlPlan.Logged s6Step269EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 780 254 253 252 251 809 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step269EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step269EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step269EarlyControl_zero
  · exact s6Step269EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step269EarlyControl_flags
  · exact s6Step269EarlyControl_fit
  · exact s6Step269EarlyControl_history
  · exact s6Step269EarlyControl_sigma
  · exact s6Step269EarlyControl_branch

private theorem s6Step269EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step269EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 780 254 253 252 251 809 53 s6Step269EarlyControlLog=some s6Step269EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step269EarlyControlPlan s6Step269EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 780 254 253 252 251 809 53 s6Step269EarlyControl_logged

private def s6Step269EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩

private def s6Step269EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩

private def s6Step269EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step269EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903],775⟩

private def s6Step269FrontBank : WindowBank := ⟨s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow⟩

private def s6Step269Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927, 795]

private def s6Step269Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859, 794, 777]

private def s6Step269Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 877, 776]

private def s6Step269Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 874, 775]

private theorem s6Step269Counter_apart : Disjoint s6Step269HeadFvAfter.live s6Step269CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step269HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269Counter_borrowed : s6Step269HeadFvAfter.checkBorrow 4 s6Step269CounterWork=some s6Step269CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step269HeadFvAfter s6Step269CounterDuring s6Step269CounterWork.toFinset s6Step269Counter_bounded s6Step269Counter_apart rfl

private theorem s6Step269Counter_owned : (780::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step269HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step269HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269Counter_checked : compileHmrCounterStepLog s6Step269HeadFvAfter true 780 [774, 773, 772, 771, 770, 769] s6Step269CounterWork=some s6Step269CounterDuring := by
  have owned : ∀q∈780::[774, 773, 772, 771, 770, 769],q∈s6Step269HeadFvAfter.live := fun q hq => s6Step269Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step269Counter_borrowed

private def s6Step269EntryFAfter : Arena := s6Step269EntryFBefore

private theorem s6Step269EntryBank_incomingDistinct : ([s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269EntryF_Incoming : rowsOwned s6Step269EntryFBefore [s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow] 0 s6Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269EntryBank_outgoingOwned : rowsOwned s6Step269EntryGvAfter [s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step269EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269EntryF_Outgoing : rowsOwned s6Step269EntryGvAfter [s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut] :=
  hmrRows_owned_drop s6Step269EntryGvAfter [s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut] 0 s6Step269EntryBank_outgoingOwned

private theorem s6Step269EntryF_distinct : (s6Step269EntryFRow.sign::s6Step269EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269EntryF_owned : (s6Step269EntryFRow.sign::s6Step269EntryFRow.payload).toFinset⊆s6Step269EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EntryF_reserved : s6Step269EntryFBefore.reserve s6Step269EntryFFresh.toFinset=some s6Step269EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269EntryFFresh,arenaWires]
  · norm_num [s6Step269EntryFBefore,s6Step269EntryFFresh,arenaWires]
  · simp only [s6Step269EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step269EntryF_checked : planRowResizeLog s6Step269EntryFBefore s6Step269EntryFRow 137 s6Step269EntryFFresh=
    some (s6Step269EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩,growRow 795 s6Step269EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step269EntryFBefore s6Step269EntryFAfter s6Step269EntryFRow 137 s6Step269EntryFFresh
    s6Step269EntryF_distinct s6Step269EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269EntryF_reserved
  have rowEq : WindowRow.mk (s6Step269EntryFRow.payload++s6Step269EntryFFresh) s6Step269EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step269EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269EntryFvAfter : Arena := s6Step269EntryGAfter

private def s6Step269EntryFvBefore : Arena := s6Step269EntryGAfter

private theorem s6Step269EntryFv_Incoming : rowsOwned s6Step269EntryFvBefore [s6Step269EntryFvRow,s6Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow] 2 s6Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269EntryFv_Outgoing : rowsOwned s6Step269EntryGvAfter [s6Step269EntryFvOut,s6Step269EntryGvOut] :=
  hmrRows_owned_drop s6Step269EntryGvAfter [s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut] 2 s6Step269EntryBank_outgoingOwned

private theorem s6Step269EntryFv_distinct : (s6Step269EntryFvRow.sign::s6Step269EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269EntryFv_owned : (s6Step269EntryFvRow.sign::s6Step269EntryFvRow.payload).toFinset⊆s6Step269EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EntryFv_reserved : s6Step269EntryFvBefore.reserve s6Step269EntryFvFresh.toFinset=some s6Step269EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269EntryFvFresh,arenaWires]
  · norm_num [s6Step269EntryFvBefore,s6Step269EntryGAfter,s6Step269EntryFvFresh,arenaWires]
  · simp only [s6Step269EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step269EntryFv_checked : planRowResizeLog s6Step269EntryFvBefore s6Step269EntryFvRow 150 s6Step269EntryFvFresh=
    some (s6Step269EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩,growRow 776 s6Step269EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step269EntryFvBefore s6Step269EntryFvAfter s6Step269EntryFvRow 150 s6Step269EntryFvFresh
    s6Step269EntryFv_distinct s6Step269EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step269EntryFvRow.payload++s6Step269EntryFvFresh) s6Step269EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step269EntryGBefore : Arena := s6Step269EntryFBefore

private theorem s6Step269EntryG_Incoming : rowsOwned s6Step269EntryGBefore [s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow] 1 s6Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269EntryG_Outgoing : rowsOwned s6Step269EntryGvAfter [s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut] :=
  hmrRows_owned_drop s6Step269EntryGvAfter [s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut] 1 s6Step269EntryBank_outgoingOwned

private theorem s6Step269EntryG_distinct : (s6Step269EntryGRow.sign::s6Step269EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269EntryG_owned : (s6Step269EntryGRow.sign::s6Step269EntryGRow.payload).toFinset⊆s6Step269EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EntryG_reserved : s6Step269EntryGBefore.reserve s6Step269EntryGFresh.toFinset=some s6Step269EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269EntryGFresh,arenaWires]
  · norm_num [s6Step269EntryGBefore,s6Step269EntryFBefore,s6Step269EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step269EntryGAfter,s6Step269EntryGBefore,s6Step269EntryFBefore,s6Step269EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269EntryG_checked : planRowResizeLog s6Step269EntryGBefore s6Step269EntryGRow 137 s6Step269EntryGFresh=
    some (s6Step269EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859],777⟩,growRow 777 s6Step269EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step269EntryGBefore s6Step269EntryGAfter s6Step269EntryGRow 137 s6Step269EntryGFresh
    s6Step269EntryG_distinct s6Step269EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269EntryG_reserved
  have rowEq : WindowRow.mk (s6Step269EntryGRow.payload++s6Step269EntryGFresh) s6Step269EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step269EntryGvBefore : Arena := s6Step269EntryGAfter

private theorem s6Step269EntryGv_Incoming : rowsOwned s6Step269EntryGvBefore [s6Step269EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow] 3 s6Step269EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269EntryGv_Outgoing : rowsOwned s6Step269EntryGvAfter [s6Step269EntryGvOut] :=
  hmrRows_owned_drop s6Step269EntryGvAfter [s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut] 3 s6Step269EntryBank_outgoingOwned

private theorem s6Step269EntryGv_distinct : (s6Step269EntryGvRow.sign::s6Step269EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269EntryGv_owned : (s6Step269EntryGvRow.sign::s6Step269EntryGvRow.payload).toFinset⊆s6Step269EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269EntryGv_reserved : s6Step269EntryGvBefore.reserve s6Step269EntryGvFresh.toFinset=some s6Step269EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269EntryGvFresh,arenaWires]
  · norm_num [s6Step269EntryGvBefore,s6Step269EntryGAfter,s6Step269EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step269EntryGvAfter,s6Step269EntryGvBefore,s6Step269EntryGAfter,s6Step269EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269EntryGv_checked : planRowResizeLog s6Step269EntryGvBefore s6Step269EntryGvRow 150 s6Step269EntryGvFresh=
    some (s6Step269EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩,growRow 775 s6Step269EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step269EntryGvBefore s6Step269EntryGvAfter s6Step269EntryGvRow 150 s6Step269EntryGvFresh
    s6Step269EntryGv_distinct s6Step269EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step269EntryGvRow.payload++s6Step269EntryGvFresh) s6Step269EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step269EntryBank_rows : planWindowRowsLog s6Step269EntryFBefore [(s6Step269EntryFRow,137),(s6Step269EntryGRow,137),(s6Step269EntryFvRow,150),(s6Step269EntryGvRow,150)] [s6Step269EntryFFresh,s6Step269EntryGFresh,s6Step269EntryFvFresh,s6Step269EntryGvFresh]=
    some (s6Step269EntryGvAfter,[s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut],(growRow 795 s6Step269EntryFFresh ++ (growRow 777 s6Step269EntryGFresh ++ (growRow 776 s6Step269EntryFvFresh ++ (growRow 775 s6Step269EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step269EntryGvAfter [] []=some (s6Step269EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step269EntryGvBefore s6Step269EntryGvAfter s6Step269EntryGvAfter
    s6Step269EntryGvRow s6Step269EntryGvOut 150 s6Step269EntryGvFresh [] [] []
    (growRow 775 s6Step269EntryGvFresh) ([]) s6Step269EntryGv_Incoming s6Step269EntryGv_checked h4 s6Step269EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step269EntryFvBefore s6Step269EntryFvAfter s6Step269EntryGvAfter
    s6Step269EntryFvRow s6Step269EntryFvOut 150 s6Step269EntryFvFresh [(s6Step269EntryGvRow,150)] [s6Step269EntryGvFresh] [s6Step269EntryGvOut]
    (growRow 776 s6Step269EntryFvFresh) ((growRow 775 s6Step269EntryGvFresh ++ [])) s6Step269EntryFv_Incoming s6Step269EntryFv_checked h3 s6Step269EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step269EntryGBefore s6Step269EntryGAfter s6Step269EntryGvAfter
    s6Step269EntryGRow s6Step269EntryGOut 137 s6Step269EntryGFresh [(s6Step269EntryFvRow,150),(s6Step269EntryGvRow,150)] [s6Step269EntryFvFresh,s6Step269EntryGvFresh] [s6Step269EntryFvOut,s6Step269EntryGvOut]
    (growRow 777 s6Step269EntryGFresh) ((growRow 776 s6Step269EntryFvFresh ++ (growRow 775 s6Step269EntryGvFresh ++ []))) s6Step269EntryG_Incoming s6Step269EntryG_checked h2 s6Step269EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step269EntryFBefore s6Step269EntryFAfter s6Step269EntryGvAfter
    s6Step269EntryFRow s6Step269EntryFOut 137 s6Step269EntryFFresh [(s6Step269EntryGRow,137),(s6Step269EntryFvRow,150),(s6Step269EntryGvRow,150)] [s6Step269EntryGFresh,s6Step269EntryFvFresh,s6Step269EntryGvFresh] [s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut]
    (growRow 795 s6Step269EntryFFresh) ((growRow 777 s6Step269EntryGFresh ++ (growRow 776 s6Step269EntryFvFresh ++ (growRow 775 s6Step269EntryGvFresh ++ [])))) s6Step269EntryF_Incoming s6Step269EntryF_checked h1 s6Step269EntryF_Outgoing
  exact h0

private theorem s6Step269EntryBank_checked : compileHmrBankResizeLog .entry s6Step269EntryFBefore ⟨s6Step269EntryFRow,s6Step269EntryGRow,s6Step269EntryFvRow,s6Step269EntryGvRow⟩ ⟨137,137,150,150⟩ [s6Step269EntryFFresh,s6Step269EntryGFresh,s6Step269EntryFvFresh,s6Step269EntryGvFresh]=
    some (s6Step269EntryGvAfter,⟨s6Step269EntryFOut,s6Step269EntryGOut,s6Step269EntryFvOut,s6Step269EntryGvOut⟩,(growRow 795 s6Step269EntryFFresh ++ (growRow 777 s6Step269EntryGFresh ++ (growRow 776 s6Step269EntryFvFresh ++ (growRow 775 s6Step269EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step269EntryBank_rows]
  rfl

private def s6Step269ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269ExitFBefore : Arena := s6Step269ExitGAfter

private def s6Step269ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩

private def s6Step269ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 877],776⟩

private def s6Step269ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859, 794],777⟩

private def s6Step269ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 874],775⟩

private theorem s6Step269ExitBank_incomingDistinct : ([s6Step269ExitGRow,s6Step269ExitFRow,s6Step269ExitFvRow,s6Step269ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269ExitF_Incoming : rowsOwned s6Step269ExitFBefore [s6Step269ExitFRow,s6Step269ExitFvRow,s6Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269ExitGRow,s6Step269ExitFRow,s6Step269ExitFvRow,s6Step269ExitGvRow] 1 s6Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269ExitBank_outgoingOwned : rowsOwned s6Step269ExitGvAfter [s6Step269ExitGOut,s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step269ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269ExitF_Outgoing : rowsOwned s6Step269ExitGvAfter [s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut] :=
  hmrRows_owned_drop s6Step269ExitGvAfter [s6Step269ExitGOut,s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut] 1 s6Step269ExitBank_outgoingOwned

private theorem s6Step269ExitF_distinct : (s6Step269ExitFRow.sign::s6Step269ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269ExitF_owned : (s6Step269ExitFRow.sign::s6Step269ExitFRow.payload).toFinset⊆s6Step269ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269ExitF_retired : s6Step269ExitFBefore.retireSet s6Step269ExitFExtra.toFinset=s6Step269ExitFAfter := by
  unfold Arena.retireSet s6Step269ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step269ExitFBefore,s6Step269ExitGAfter,s6Step269ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step269ExitF_checked : planRowResizeLog s6Step269ExitFBefore s6Step269ExitFRow 137 []=
    some (s6Step269ExitFAfter,s6Step269ExitFOut,shrinkRow 795 s6Step269ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step269ExitFBefore s6Step269ExitFRow 137 s6Step269ExitF_distinct s6Step269ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step269ExitFRow.payload.take 137) s6Step269ExitFRow.sign=s6Step269ExitFOut := by decide +kernel
  have hi : s6Step269ExitFRow.payload.drop 137=s6Step269ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step269ExitF_retired] at result
  exact result

private def s6Step269ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269ExitFvBefore : Arena := s6Step269ExitFAfter

private theorem s6Step269ExitFv_Incoming : rowsOwned s6Step269ExitFvBefore [s6Step269ExitFvRow,s6Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269ExitGRow,s6Step269ExitFRow,s6Step269ExitFvRow,s6Step269ExitGvRow] 2 s6Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269ExitFv_Outgoing : rowsOwned s6Step269ExitGvAfter [s6Step269ExitFvOut,s6Step269ExitGvOut] :=
  hmrRows_owned_drop s6Step269ExitGvAfter [s6Step269ExitGOut,s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut] 2 s6Step269ExitBank_outgoingOwned

private theorem s6Step269ExitFv_distinct : (s6Step269ExitFvRow.sign::s6Step269ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269ExitFv_owned : (s6Step269ExitFvRow.sign::s6Step269ExitFvRow.payload).toFinset⊆s6Step269ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269ExitFv_retired : s6Step269ExitFvBefore.retireSet s6Step269ExitFvExtra.toFinset=s6Step269ExitFvAfter := by
  unfold Arena.retireSet s6Step269ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step269ExitFvBefore,s6Step269ExitFAfter,s6Step269ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step269ExitFv_checked : planRowResizeLog s6Step269ExitFvBefore s6Step269ExitFvRow 150 []=
    some (s6Step269ExitFvAfter,s6Step269ExitFvOut,shrinkRow 776 s6Step269ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step269ExitFvBefore s6Step269ExitFvRow 150 s6Step269ExitFv_distinct s6Step269ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step269ExitFvRow.payload.take 150) s6Step269ExitFvRow.sign=s6Step269ExitFvOut := by decide +kernel
  have hi : s6Step269ExitFvRow.payload.drop 150=s6Step269ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step269ExitFv_retired] at result
  exact result

private def s6Step269ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step269ExitG_Incoming : rowsOwned s6Step269ExitGBefore [s6Step269ExitGRow,s6Step269ExitFRow,s6Step269ExitFvRow,s6Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269ExitGRow,s6Step269ExitFRow,s6Step269ExitFvRow,s6Step269ExitGvRow] 0 s6Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269ExitG_Outgoing : rowsOwned s6Step269ExitGvAfter [s6Step269ExitGOut,s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut] :=
  hmrRows_owned_drop s6Step269ExitGvAfter [s6Step269ExitGOut,s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut] 0 s6Step269ExitBank_outgoingOwned

private theorem s6Step269ExitG_distinct : (s6Step269ExitGRow.sign::s6Step269ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269ExitG_owned : (s6Step269ExitGRow.sign::s6Step269ExitGRow.payload).toFinset⊆s6Step269ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269ExitG_retired : s6Step269ExitGBefore.retireSet s6Step269ExitGExtra.toFinset=s6Step269ExitGAfter := by
  unfold Arena.retireSet s6Step269ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step269ExitGBefore,s6Step269ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step269ExitG_checked : planRowResizeLog s6Step269ExitGBefore s6Step269ExitGRow 136 []=
    some (s6Step269ExitGAfter,s6Step269ExitGOut,shrinkRow 777 s6Step269ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step269ExitGBefore s6Step269ExitGRow 136 s6Step269ExitG_distinct s6Step269ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step269ExitGRow.payload.take 136) s6Step269ExitGRow.sign=s6Step269ExitGOut := by decide +kernel
  have hi : s6Step269ExitGRow.payload.drop 136=s6Step269ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step269ExitG_retired] at result
  exact result

private def s6Step269ExitGvBefore : Arena := s6Step269ExitFvAfter

private theorem s6Step269ExitGv_Incoming : rowsOwned s6Step269ExitGvBefore [s6Step269ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269ExitGRow,s6Step269ExitFRow,s6Step269ExitFvRow,s6Step269ExitGvRow] 3 s6Step269ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269ExitGv_Outgoing : rowsOwned s6Step269ExitGvAfter [s6Step269ExitGvOut] :=
  hmrRows_owned_drop s6Step269ExitGvAfter [s6Step269ExitGOut,s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut] 3 s6Step269ExitBank_outgoingOwned

private theorem s6Step269ExitGv_distinct : (s6Step269ExitGvRow.sign::s6Step269ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269ExitGv_owned : (s6Step269ExitGvRow.sign::s6Step269ExitGvRow.payload).toFinset⊆s6Step269ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269ExitGv_retired : s6Step269ExitGvBefore.retireSet s6Step269ExitGvExtra.toFinset=s6Step269ExitGvAfter := by
  unfold Arena.retireSet s6Step269ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step269ExitGvBefore,s6Step269ExitFvAfter,s6Step269ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step269ExitGv_checked : planRowResizeLog s6Step269ExitGvBefore s6Step269ExitGvRow 150 []=
    some (s6Step269ExitGvAfter,s6Step269ExitGvOut,shrinkRow 775 s6Step269ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step269ExitGvBefore s6Step269ExitGvRow 150 s6Step269ExitGv_distinct s6Step269ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step269ExitGvRow.payload.take 150) s6Step269ExitGvRow.sign=s6Step269ExitGvOut := by decide +kernel
  have hi : s6Step269ExitGvRow.payload.drop 150=s6Step269ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step269ExitGv_retired] at result
  exact result

private theorem s6Step269ExitBank_rows : planWindowRowsLog s6Step269ExitGBefore [(s6Step269ExitGRow,136),(s6Step269ExitFRow,137),(s6Step269ExitFvRow,150),(s6Step269ExitGvRow,150)] [[],[],[],[]]=
    some (s6Step269ExitGvAfter,[s6Step269ExitGOut,s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut],(shrinkRow 777 s6Step269ExitGExtra ++ (shrinkRow 795 s6Step269ExitFExtra ++ (shrinkRow 776 s6Step269ExitFvExtra ++ (shrinkRow 775 s6Step269ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step269ExitGvAfter [] []=some (s6Step269ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step269ExitGvBefore s6Step269ExitGvAfter s6Step269ExitGvAfter
    s6Step269ExitGvRow s6Step269ExitGvOut 150 [] [] [] []
    (shrinkRow 775 s6Step269ExitGvExtra) ([]) s6Step269ExitGv_Incoming s6Step269ExitGv_checked h4 s6Step269ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step269ExitFvBefore s6Step269ExitFvAfter s6Step269ExitGvAfter
    s6Step269ExitFvRow s6Step269ExitFvOut 150 [] [(s6Step269ExitGvRow,150)] [[]] [s6Step269ExitGvOut]
    (shrinkRow 776 s6Step269ExitFvExtra) ((shrinkRow 775 s6Step269ExitGvExtra ++ [])) s6Step269ExitFv_Incoming s6Step269ExitFv_checked h3 s6Step269ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step269ExitFBefore s6Step269ExitFAfter s6Step269ExitGvAfter
    s6Step269ExitFRow s6Step269ExitFOut 137 [] [(s6Step269ExitFvRow,150),(s6Step269ExitGvRow,150)] [[],[]] [s6Step269ExitFvOut,s6Step269ExitGvOut]
    (shrinkRow 795 s6Step269ExitFExtra) ((shrinkRow 776 s6Step269ExitFvExtra ++ (shrinkRow 775 s6Step269ExitGvExtra ++ []))) s6Step269ExitF_Incoming s6Step269ExitF_checked h2 s6Step269ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step269ExitGBefore s6Step269ExitGAfter s6Step269ExitGvAfter
    s6Step269ExitGRow s6Step269ExitGOut 136 [] [(s6Step269ExitFRow,137),(s6Step269ExitFvRow,150),(s6Step269ExitGvRow,150)] [[],[],[]] [s6Step269ExitFOut,s6Step269ExitFvOut,s6Step269ExitGvOut]
    (shrinkRow 777 s6Step269ExitGExtra) ((shrinkRow 795 s6Step269ExitFExtra ++ (shrinkRow 776 s6Step269ExitFvExtra ++ (shrinkRow 775 s6Step269ExitGvExtra ++ [])))) s6Step269ExitG_Incoming s6Step269ExitG_checked h1 s6Step269ExitG_Outgoing
  exact h0

private theorem s6Step269ExitBank_checked : compileHmrBankResizeLog .exit s6Step269ExitGBefore ⟨s6Step269ExitFRow,s6Step269ExitGRow,s6Step269ExitFvRow,s6Step269ExitGvRow⟩ ⟨137,136,150,150⟩ [[],[],[],[]]=
    some (s6Step269ExitGvAfter,⟨s6Step269ExitFOut,s6Step269ExitGOut,s6Step269ExitFvOut,s6Step269ExitGvOut⟩,(shrinkRow 777 s6Step269ExitGExtra ++ (shrinkRow 795 s6Step269ExitFExtra ++ (shrinkRow 776 s6Step269ExitFvExtra ++ (shrinkRow 775 s6Step269ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step269ExitBank_rows]
  rfl

private theorem s6Step269Add0_apart : Disjoint s6Step269Add0Arena.live s6Step269Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step269Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269Add0_card : s6Step269Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step269Add0_borrowed : s6Step269Add0Arena.checkBorrow (hmrHybridCount s6Step269Add0Arena s6Step269Add0B.length) s6Step269Add0Work=some s6Step269Add0During := by
  have len : s6Step269Add0Work.length=hmrHybridCount s6Step269Add0Arena s6Step269Add0B.length := by
    rw [hmrHybridCount,s6Step269Add0_card]
    decide +kernel
  have nd : s6Step269Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step269Add0Arena s6Step269Add0During s6Step269Add0Work.toFinset s6Step269Add0_bounded s6Step269Add0_apart rfl

private theorem s6Step269Add0_distinct : (830::809::805::(s6Step269Add0A++s6Step269Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269Add0_owned : (830::809::805::(s6Step269Add0A++s6Step269Add0B)).toFinset⊆s6Step269Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step269Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269Add0_checked : compileHmrHybridCinLog s6Step269Add0Arena 809 830 805 s6Step269Add0A s6Step269Add0B s6Step269Add0Work=some s6Step269Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step269Add0Arena s6Step269Add0During 809 830 805 s6Step269Add0A s6Step269Add0B s6Step269Add0Work
    (by decide +kernel) (by decide +kernel) s6Step269Add0_distinct
    (fun q hq => s6Step269Add0_owned (List.mem_toFinset.mpr hq)) s6Step269Add0_borrowed

private theorem s6Step269Add1_apart : Disjoint s6Step269Add1Arena.live s6Step269Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step269Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269Add1_card : s6Step269Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step269Add1_borrowed : s6Step269Add1Arena.checkBorrow (hmrHybridCount s6Step269Add1Arena s6Step269Add1B.length) s6Step269Add1Work=some s6Step269Add1During := by
  have len : s6Step269Add1Work.length=hmrHybridCount s6Step269Add1Arena s6Step269Add1B.length := by
    rw [hmrHybridCount,s6Step269Add1_card]
    decide +kernel
  have nd : s6Step269Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step269Add1Arena s6Step269Add1During s6Step269Add1Work.toFinset s6Step269Add1_bounded s6Step269Add1_apart rfl

private theorem s6Step269Add1_distinct : (830::809::805::(s6Step269Add1A++s6Step269Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269Add1_owned : (830::809::805::(s6Step269Add1A++s6Step269Add1B)).toFinset⊆s6Step269Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step269Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269Add1_checked : compileHmrHybridCinLog s6Step269Add1Arena 809 830 805 s6Step269Add1A s6Step269Add1B s6Step269Add1Work=some s6Step269Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step269Add1Arena s6Step269Add1During 809 830 805 s6Step269Add1A s6Step269Add1B s6Step269Add1Work
    (by decide +kernel) (by decide +kernel) s6Step269Add1_distinct
    (fun q hq => s6Step269Add1_owned (List.mem_toFinset.mpr hq)) s6Step269Add1_borrowed

private theorem s6Step269F4_apart : Disjoint (s6Step269Add0A++s6Step269Add0B).toFinset (s6Step269Add1A++s6Step269Add1B).toFinset := by
  have nd : ((s6Step269Add0A++s6Step269Add0B)++(s6Step269Add1A++s6Step269Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step269F4_carry : s6Step269F4FlagArena.checkBorrow 1 [805]=some s6Step269Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step269F4FlagArena,s6Step269HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step269F4FlagArena,s6Step269HeadFvAfter,s6Step269Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269F4_distinct : (780::809::830::805::((s6Step269Add0A++s6Step269Add1A)++(s6Step269Add0B++s6Step269Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269F4_flag : s6Step269HeadFvAfter.checkBorrow 1 [830]=some s6Step269F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step269HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step269F4_owned : (780::809::((s6Step269Add0A++s6Step269Add1A)++(s6Step269Add0B++s6Step269Add1B))).toFinset⊆s6Step269HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step269HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269F4_checked : compileHmrHybridF4Log s6Step269HeadFvAfter 780 809 s6Step269Add0A s6Step269Add0B s6Step269Add1A s6Step269Add1B [830] [805] s6Step269Add0Work s6Step269Add1Work=some s6Step269F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step269HeadFvAfter s6Step269F4FlagArena s6Step269Add0Arena s6Step269Add0During s6Step269Add1During 780 809
    s6Step269Add0A s6Step269Add0B s6Step269Add1A s6Step269Add1B [830] [805] s6Step269Add0Work s6Step269Add1Work
    (fun q hq => s6Step269F4_owned (List.mem_toFinset.mpr hq)) s6Step269F4_flag s6Step269F4_carry
    s6Step269F4_distinct s6Step269F4_apart s6Step269Add0_checked s6Step269Add1_checked

private theorem s6Step269Front_branch : s6Step269FrontSigmaArena.checkBorrow 1 [809]=some s6Step269HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step269FrontSigmaArena,s6Step269EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step269FrontSigmaArena,s6Step269EntryGvAfter,s6Step269HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269Front_entry : HmrFrontEntryValid s6Step269EntryFBefore s6Step269FrontBank 137 150 ⟨137,136,150,150⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step269FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step269EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step269EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step269FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step269Front_sigma : s6Step269EntryGvAfter.checkBorrow 1 [780]=some s6Step269FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step269EntryGvAfter,arenaWires]
  · rfl

private def s6Step269HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269HeadFBefore : Arena := s6Step269HeadGAfter

private def s6Step269HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩

private def s6Step269HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩

private def s6Step269HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859],777⟩

private def s6Step269HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩

private theorem s6Step269HeadBank_incomingDistinct : ([s6Step269HeadGRow,s6Step269HeadFRow,s6Step269HeadGvRow,s6Step269HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269HeadF_Incoming : rowsOwned s6Step269HeadFBefore [s6Step269HeadFRow,s6Step269HeadGvRow,s6Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269HeadGRow,s6Step269HeadFRow,s6Step269HeadGvRow,s6Step269HeadFvRow] 1 s6Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269HeadBank_outgoingOwned : rowsOwned s6Step269HeadFvAfter [s6Step269HeadGOut,s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step269HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269HeadF_Outgoing : rowsOwned s6Step269HeadFvAfter [s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut] :=
  hmrRows_owned_drop s6Step269HeadFvAfter [s6Step269HeadGOut,s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut] 1 s6Step269HeadBank_outgoingOwned

private theorem s6Step269HeadF_distinct : (s6Step269HeadFRow.sign::s6Step269HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269HeadF_owned : (s6Step269HeadFRow.sign::s6Step269HeadFRow.payload).toFinset⊆s6Step269HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269HeadF_reserved : s6Step269HeadFBefore.reserve s6Step269HeadFFresh.toFinset=some s6Step269HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269HeadFFresh,arenaWires]
  · norm_num [s6Step269HeadFBefore,s6Step269HeadGAfter,s6Step269HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step269HeadFAfter,s6Step269HeadFBefore,s6Step269HeadGAfter,s6Step269HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269HeadF_checked : planRowResizeLog s6Step269HeadFBefore s6Step269HeadFRow 138 s6Step269HeadFFresh=
    some (s6Step269HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩,growRow 795 s6Step269HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step269HeadFBefore s6Step269HeadFAfter s6Step269HeadFRow 138 s6Step269HeadFFresh
    s6Step269HeadF_distinct s6Step269HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269HeadF_reserved
  have rowEq : WindowRow.mk (s6Step269HeadFRow.payload++s6Step269HeadFFresh) s6Step269HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step269HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step269HeadFvBefore : Arena := s6Step269HeadGvAfter

private theorem s6Step269HeadFv_Incoming : rowsOwned s6Step269HeadFvBefore [s6Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269HeadGRow,s6Step269HeadFRow,s6Step269HeadGvRow,s6Step269HeadFvRow] 3 s6Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269HeadFv_Outgoing : rowsOwned s6Step269HeadFvAfter [s6Step269HeadFvOut] :=
  hmrRows_owned_drop s6Step269HeadFvAfter [s6Step269HeadGOut,s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut] 3 s6Step269HeadBank_outgoingOwned

private theorem s6Step269HeadFv_distinct : (s6Step269HeadFvRow.sign::s6Step269HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269HeadFv_owned : (s6Step269HeadFvRow.sign::s6Step269HeadFvRow.payload).toFinset⊆s6Step269HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269HeadFv_reserved : s6Step269HeadFvBefore.reserve s6Step269HeadFvFresh.toFinset=some s6Step269HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269HeadFvFresh,arenaWires]
  · norm_num [s6Step269HeadFvBefore,s6Step269HeadGvAfter,s6Step269HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step269HeadFvAfter,s6Step269HeadFvBefore,s6Step269HeadGvAfter,s6Step269HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269HeadFv_checked : planRowResizeLog s6Step269HeadFvBefore s6Step269HeadFvRow 151 s6Step269HeadFvFresh=
    some (s6Step269HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 877],776⟩,growRow 776 s6Step269HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step269HeadFvBefore s6Step269HeadFvAfter s6Step269HeadFvRow 151 s6Step269HeadFvFresh
    s6Step269HeadFv_distinct s6Step269HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step269HeadFvRow.payload++s6Step269HeadFvFresh) s6Step269HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step269HeadG_Incoming : rowsOwned s6Step269HeadGBefore [s6Step269HeadGRow,s6Step269HeadFRow,s6Step269HeadGvRow,s6Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269HeadGRow,s6Step269HeadFRow,s6Step269HeadGvRow,s6Step269HeadFvRow] 0 s6Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269HeadG_Outgoing : rowsOwned s6Step269HeadFvAfter [s6Step269HeadGOut,s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut] :=
  hmrRows_owned_drop s6Step269HeadFvAfter [s6Step269HeadGOut,s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut] 0 s6Step269HeadBank_outgoingOwned

private theorem s6Step269HeadG_distinct : (s6Step269HeadGRow.sign::s6Step269HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269HeadG_owned : (s6Step269HeadGRow.sign::s6Step269HeadGRow.payload).toFinset⊆s6Step269HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269HeadG_reserved : s6Step269HeadGBefore.reserve s6Step269HeadGFresh.toFinset=some s6Step269HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269HeadGFresh,arenaWires]
  · norm_num [s6Step269HeadGBefore,s6Step269HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step269HeadGAfter,s6Step269HeadGBefore,s6Step269HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269HeadG_checked : planRowResizeLog s6Step269HeadGBefore s6Step269HeadGRow 138 s6Step269HeadGFresh=
    some (s6Step269HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859, 794],777⟩,growRow 777 s6Step269HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step269HeadGBefore s6Step269HeadGAfter s6Step269HeadGRow 138 s6Step269HeadGFresh
    s6Step269HeadG_distinct s6Step269HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269HeadG_reserved
  have rowEq : WindowRow.mk (s6Step269HeadGRow.payload++s6Step269HeadGFresh) s6Step269HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 859, 794],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step269HeadGvBefore : Arena := s6Step269HeadFAfter

private theorem s6Step269HeadGv_Incoming : rowsOwned s6Step269HeadGvBefore [s6Step269HeadGvRow,s6Step269HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step269HeadGRow,s6Step269HeadFRow,s6Step269HeadGvRow,s6Step269HeadFvRow] 2 s6Step269HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step269HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step269HeadGv_Outgoing : rowsOwned s6Step269HeadFvAfter [s6Step269HeadGvOut,s6Step269HeadFvOut] :=
  hmrRows_owned_drop s6Step269HeadFvAfter [s6Step269HeadGOut,s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut] 2 s6Step269HeadBank_outgoingOwned

private theorem s6Step269HeadGv_distinct : (s6Step269HeadGvRow.sign::s6Step269HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step269HeadGv_owned : (s6Step269HeadGvRow.sign::s6Step269HeadGvRow.payload).toFinset⊆s6Step269HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step269HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step269HeadGv_reserved : s6Step269HeadGvBefore.reserve s6Step269HeadGvFresh.toFinset=some s6Step269HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step269HeadGvFresh,arenaWires]
  · norm_num [s6Step269HeadGvBefore,s6Step269HeadFAfter,s6Step269HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step269HeadGvAfter,s6Step269HeadGvBefore,s6Step269HeadFAfter,s6Step269HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step269HeadGv_checked : planRowResizeLog s6Step269HeadGvBefore s6Step269HeadGvRow 151 s6Step269HeadGvFresh=
    some (s6Step269HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 874],775⟩,growRow 775 s6Step269HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step269HeadGvBefore s6Step269HeadGvAfter s6Step269HeadGvRow 151 s6Step269HeadGvFresh
    s6Step269HeadGv_distinct s6Step269HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step269HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step269HeadGvRow.payload++s6Step269HeadGvFresh) s6Step269HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 874],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step269HeadBank_rows : planWindowRowsLog s6Step269HeadGBefore [(s6Step269HeadGRow,138),(s6Step269HeadFRow,138),(s6Step269HeadGvRow,151),(s6Step269HeadFvRow,151)] [s6Step269HeadGFresh,s6Step269HeadFFresh,s6Step269HeadGvFresh,s6Step269HeadFvFresh]=
    some (s6Step269HeadFvAfter,[s6Step269HeadGOut,s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut],(growRow 777 s6Step269HeadGFresh ++ (growRow 795 s6Step269HeadFFresh ++ (growRow 775 s6Step269HeadGvFresh ++ (growRow 776 s6Step269HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step269HeadFvAfter [] []=some (s6Step269HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step269HeadFvBefore s6Step269HeadFvAfter s6Step269HeadFvAfter
    s6Step269HeadFvRow s6Step269HeadFvOut 151 s6Step269HeadFvFresh [] [] []
    (growRow 776 s6Step269HeadFvFresh) ([]) s6Step269HeadFv_Incoming s6Step269HeadFv_checked h4 s6Step269HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step269HeadGvBefore s6Step269HeadGvAfter s6Step269HeadFvAfter
    s6Step269HeadGvRow s6Step269HeadGvOut 151 s6Step269HeadGvFresh [(s6Step269HeadFvRow,151)] [s6Step269HeadFvFresh] [s6Step269HeadFvOut]
    (growRow 775 s6Step269HeadGvFresh) ((growRow 776 s6Step269HeadFvFresh ++ [])) s6Step269HeadGv_Incoming s6Step269HeadGv_checked h3 s6Step269HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step269HeadFBefore s6Step269HeadFAfter s6Step269HeadFvAfter
    s6Step269HeadFRow s6Step269HeadFOut 138 s6Step269HeadFFresh [(s6Step269HeadGvRow,151),(s6Step269HeadFvRow,151)] [s6Step269HeadGvFresh,s6Step269HeadFvFresh] [s6Step269HeadGvOut,s6Step269HeadFvOut]
    (growRow 795 s6Step269HeadFFresh) ((growRow 775 s6Step269HeadGvFresh ++ (growRow 776 s6Step269HeadFvFresh ++ []))) s6Step269HeadF_Incoming s6Step269HeadF_checked h2 s6Step269HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step269HeadGBefore s6Step269HeadGAfter s6Step269HeadFvAfter
    s6Step269HeadGRow s6Step269HeadGOut 138 s6Step269HeadGFresh [(s6Step269HeadFRow,138),(s6Step269HeadGvRow,151),(s6Step269HeadFvRow,151)] [s6Step269HeadFFresh,s6Step269HeadGvFresh,s6Step269HeadFvFresh] [s6Step269HeadFOut,s6Step269HeadGvOut,s6Step269HeadFvOut]
    (growRow 777 s6Step269HeadGFresh) ((growRow 795 s6Step269HeadFFresh ++ (growRow 775 s6Step269HeadGvFresh ++ (growRow 776 s6Step269HeadFvFresh ++ [])))) s6Step269HeadG_Incoming s6Step269HeadG_checked h1 s6Step269HeadG_Outgoing
  exact h0

private theorem s6Step269HeadBank_checked : compileHmrBankResizeLog .headroom s6Step269HeadGBefore ⟨s6Step269HeadFRow,s6Step269HeadGRow,s6Step269HeadFvRow,s6Step269HeadGvRow⟩ ⟨138,138,151,151⟩ [s6Step269HeadGFresh,s6Step269HeadFFresh,s6Step269HeadGvFresh,s6Step269HeadFvFresh]=
    some (s6Step269HeadFvAfter,⟨s6Step269HeadFOut,s6Step269HeadGOut,s6Step269HeadFvOut,s6Step269HeadGvOut⟩,(growRow 777 s6Step269HeadGFresh ++ (growRow 795 s6Step269HeadFFresh ++ (growRow 775 s6Step269HeadGvFresh ++ (growRow 776 s6Step269HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step269HeadBank_rows]
  rfl

private theorem s6Step269Front_checked : compileHmrSourceFrontLog s6Step269EntryFBefore s6Step269FrontBank 137 150 ⟨137,136,150,150⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step269FrontLog=some s6Step269FrontPlan := by
  have pairEq : s6Step269FrontPair=⟨s6Step269HeadFRow,s6Step269HeadGRow,s6Step269HeadFvRow,s6Step269HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step269FrontHead=⟨s6Step269ExitFRow,s6Step269ExitGRow,s6Step269ExitFvRow,s6Step269ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step269Add0A=s6Step269FrontHead.f.wires := by decide +kernel
  have gEq : s6Step269Add0B=s6Step269FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step269Add1A=s6Step269FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step269Add1B=s6Step269FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step269EntryFBefore s6Step269FrontBank 137 150 ⟨137,136,150,150⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step269FrontLog s6Step269FrontPlan
  · exact s6Step269Front_entry
  · exact s6Step269EntryBank_checked
  · exact s6Step269Front_sigma
  · rfl
  · exact s6Step269Front_branch
  · rfl
  · simpa only [s6Step269FrontPlan,pairEq] using s6Step269HeadBank_checked
  · simpa only [s6Step269FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step269F4_checked
  · exact s6Step269Counter_checked
  · rfl
  · simpa only [s6Step269FrontPlan,headEq] using s6Step269ExitBank_checked

private theorem s6Step269Complete_explicit_checked : compileHmrEarlyStepLog s6Step269EntryFBefore s6Step269FrontBank 137 150 ⟨137,136,150,150⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 53 s6Step269CompleteLog=some s6Step269CompletePlan := by
  let Q := s6Step269EarlyControlPlan
  have hq := s6Step269EarlyControl_plan_checked
  have fv1 : s6Step269CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step269CompleteOut.fv.payload[2]?.getD s6Step269CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step269CompleteOut.fv.payload[3]?.getD s6Step269CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step269CompleteOut.fv.payload[4]?.getD s6Step269CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step269EntryFBefore s6Step269EarlyControlArena s6Step269FrontBank 137 150 ⟨137,136,150,150⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 53 s6Step269CompleteLog s6Step269FrontPlan Q
    s6Step269Front_checked s6Step269Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step269Complete_owned s6Step269Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step269EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 780 s6Step269CompleteOut.fv.second (s6Step269CompleteOut.fv.payload[2]?.getD s6Step269CompleteOut.fv.sign) (s6Step269CompleteOut.fv.payload[3]?.getD s6Step269CompleteOut.fv.sign) (s6Step269CompleteOut.fv.payload[4]?.getD s6Step269CompleteOut.fv.sign) 809 53 s6Step269EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep269Arena : Arena := s6Step269EntryFBefore
def s6PrivateStep269Bank : WindowBank := s6Step269FrontBank
def s6PrivateStep269Spec : HmrSourceWalkStepLog := ⟨137,150,⟨137,136,150,150⟩,53,.early s6Step269CompleteLog⟩
def s6PrivateStep269Plan : HmrSourceStepPlan := .early s6Step269CompletePlan
theorem s6PrivateStep269_source : s6PrivateStep269Spec=s6ObservedLogs256[13] := rfl
theorem s6PrivateStep269_checked : compileHmrSourceStepLog s6PrivateStep269Arena s6PrivateStep269Bank
    s6PrivateStep269Spec.fgWidth s6PrivateStep269Spec.vWidth s6PrivateStep269Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]
    6 498 269 s6PrivateStep269Spec.need none s6PrivateStep269Spec.log=some s6PrivateStep269Plan := by
  change compileHmrSourceStepLog s6Step269EntryFBefore s6Step269FrontBank 137 150 ⟨137,136,150,150⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 6 498 269 53 none (.early s6Step269CompleteLog)=some (.early s6Step269CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 269<498)]
  rw [s6Step269Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
