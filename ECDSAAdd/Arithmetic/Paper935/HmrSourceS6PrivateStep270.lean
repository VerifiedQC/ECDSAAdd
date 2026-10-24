import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep268
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

private def s6Step270CompleteMoves : List (Wire × Wire) := [(867,391),(838,392)]

private def s6Step270EarlyControlLog : HmrEarlyControlLog := ⟨[838, 867, 927, 809, 877],[830],[805],[817, 812, 915, 906, 899, 926],[]⟩

private def s6Step270FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [809], [], []],[[877], [927], [859], [794]],[[], [], [], []]⟩,[780],[874],[830],[805],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step270CompleteLog : HmrEarlyStepLog := ⟨s6Step270FrontLog,s6Step270CompleteMoves,s6Step270EarlyControlLog⟩

private def s6Step270ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩

private def s6Step270ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step270ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step270ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step270FrontOut : WindowBank := ⟨s6Step270ExitFOut,s6Step270ExitGOut,s6Step270ExitFvOut,s6Step270ExitGvOut⟩

private def s6Step270CompleteOut : WindowBank := s6Step270FrontOut.repacked s6Step270CompleteMoves

private def s6Step270EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step270EarlyControlPositiveArena,[830],s6Step270EarlyControlEqualityArena,[805],⟨⟨780,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step270EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,838⟩,⟨⟨772,false⟩,867⟩,⟨⟨771,false⟩,927⟩,⟨⟨770,false⟩,809⟩,⟨⟨769,false⟩,877⟩]⟩

private def s6Step270EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step270EarlyControlZeroArena,s6Step270EarlyControlZeroPlan,s6Step270EarlyControlClassPlan,s6Step270EarlyControlFlagArena,s6Step270EarlyControlFittedArena,s6Step270EarlyControlHistoryArena,s6Step270EarlyControlSigmaArena,s6Step270EarlyControlOutputArena,s6Step270EarlyControlLog⟩

private def s6Step270CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step270Counter_bounded : s6Step270CounterWork.toFinset⊆arenaWires := by norm_num [s6Step270CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step270HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270CounterDuring : Arena := ⟨s6Step270HeadFvAfter.live∪s6Step270CounterWork.toFinset,Finset.union_subset s6Step270HeadFvAfter.bounded s6Step270Counter_bounded⟩

private def s6Step270EntryFFresh : List Wire := []

private def s6Step270EntryFvFresh : List Wire := []

private def s6Step270EntryGFresh : List Wire := [809]

private def s6Step270EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EntryGvAfter : Arena := s6Step270EntryGAfter

private def s6Step270EntryGvFresh : List Wire := []

private def s6Step270ExitFExtra : List Wire := [391, 392, 927]

private def s6Step270ExitGExtra : List Wire := [809, 877]

private def s6Step270ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<391) ∨ (393≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270ExitGvAfter : Arena := s6Step270ExitFAfter

private def s6Step270Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270Add0Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step270Add0_bounded : s6Step270Add0Work.toFinset⊆arenaWires := by
  have h : s6Step270Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step270Add0During : Arena := ⟨s6Step270Add0Arena.live∪s6Step270Add0Work.toFinset,Finset.union_subset s6Step270Add0Arena.bounded s6Step270Add0_bounded⟩

private def s6Step270Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270Add1Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step270Add1_bounded : s6Step270Add1Work.toFinset⊆arenaWires := by
  have h : s6Step270Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step270Add1During : Arena := ⟨s6Step270Add1Arena.live∪s6Step270Add1Work.toFinset,Finset.union_subset s6Step270Add1Arena.bounded s6Step270Add1_bounded⟩

private def s6Step270F4FlagArena : Arena := ⟨s6Step270HeadFvAfter.live∪{830},Finset.union_subset s6Step270HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step270F4Plan : HmrHybridF4Plan := ⟨s6Step270F4FlagArena,[830],s6Step270Add0Arena,[805],s6Step270Add0During,s6Step270Add0Work,s6Step270Add1During,s6Step270Add1Work⟩

private def s6Step270HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩

private def s6Step270HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step270HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809, 877],777⟩

private def s6Step270HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step270FrontHead : WindowBank := ⟨s6Step270HeadFOut,s6Step270HeadGOut,s6Step270HeadFvOut,s6Step270HeadGvOut⟩

private def s6Step270EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩

private def s6Step270EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩

private def s6Step270EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809],777⟩

private def s6Step270EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩

private def s6Step270FrontPair : WindowBank := ⟨s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut⟩

private def s6Step270FrontSigmaArena : Arena := ⟨s6Step270EntryGvAfter.live∪{780},Finset.union_subset s6Step270EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step270HeadFFresh : List Wire := [927]

private def s6Step270HeadFvFresh : List Wire := [794]

private def s6Step270HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270HeadGFresh : List Wire := [877]

private def s6Step270HeadGvFresh : List Wire := [859]

private def s6Step270FrontPlan : HmrSourceFront := ⟨s6Step270EntryGvAfter,s6Step270FrontPair,(growRow 795 s6Step270EntryFFresh ++ (growRow 777 s6Step270EntryGFresh ++ (growRow 776 s6Step270EntryFvFresh ++ (growRow 775 s6Step270EntryGvFresh ++ [])))),s6Step270FrontSigmaArena,[780],s6Step270HeadGBefore,[874],
  s6Step270HeadFvAfter,s6Step270FrontHead,(growRow 777 s6Step270HeadGFresh ++ (growRow 795 s6Step270HeadFFresh ++ (growRow 775 s6Step270HeadGvFresh ++ (growRow 776 s6Step270HeadFvFresh ++ [])))),s6Step270F4Plan,s6Step270CounterDuring,s6Step270CounterWork,s6Step270ExitGvAfter,s6Step270FrontOut,(shrinkRow 777 s6Step270ExitGExtra ++ (shrinkRow 795 s6Step270ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step270CompletePlan : HmrEarlyStepPlan := ⟨s6Step270FrontPlan,s6Step270EarlyControlArena,s6Step270EarlyControlPlan,s6Step270CompleteMoves⟩

private theorem s6Step270Complete_apart : List.Disjoint (s6Step270CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [780, 874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step270CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[780, 874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step270Complete_owned : (s6Step270CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step270CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,392),(393,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(810,811),(813,815),(818,819),(821,830),(831,832),(833,842),(843,849),(850,867),(868,877),(878,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step270CompleteRelocationMove0Borrowed : Arena := ⟨s6Step270ExitGvAfter.live∪{391},Finset.union_subset s6Step270ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step270CompleteRelocationMove1Borrowed : Arena := ⟨s6Step270CompleteRelocationMove0After.live∪{392},Finset.union_subset s6Step270CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step270CompleteRelocation_move0_owned : 867∈s6Step270ExitGvAfter.live := by norm_num [s6Step270ExitGvAfter,s6Step270ExitFAfter,arenaWires]

private theorem s6Step270CompleteRelocation_move0_reserve : s6Step270ExitGvAfter.reserve {391}=some s6Step270CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step270ExitGvAfter,s6Step270ExitFAfter,arenaWires]
  · rfl

private theorem s6Step270CompleteRelocation_move0_retire : s6Step270CompleteRelocationMove0Borrowed.retireSet {867}=s6Step270CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step270CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step270CompleteRelocationMove0Borrowed,s6Step270ExitGvAfter,s6Step270ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step270CompleteRelocation_move1_owned : 838∈s6Step270CompleteRelocationMove0After.live := by norm_num [s6Step270CompleteRelocationMove0After,arenaWires]

private theorem s6Step270CompleteRelocation_move1_reserve : s6Step270CompleteRelocationMove0After.reserve {392}=some s6Step270CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step270CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step270CompleteRelocation_move1_retire : s6Step270CompleteRelocationMove1Borrowed.retireSet {838}=s6Step270EarlyControlArena := by
  unfold Arena.retireSet s6Step270EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step270CompleteRelocationMove1Borrowed,s6Step270CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step270CompleteRelocation_checked : s6Step270ExitGvAfter.checkRepack [(867,391),(838,392)]=some s6Step270EarlyControlArena := by
  have tail2 : s6Step270EarlyControlArena.checkRepack []=some s6Step270EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step270CompleteRelocationMove0After s6Step270CompleteRelocationMove1Borrowed s6Step270EarlyControlArena s6Step270EarlyControlArena 838 392 []
    s6Step270CompleteRelocation_move1_owned s6Step270CompleteRelocation_move1_reserve s6Step270CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step270ExitGvAfter s6Step270CompleteRelocationMove0Borrowed s6Step270CompleteRelocationMove0After s6Step270EarlyControlArena 867 391 [(838,392)]
    s6Step270CompleteRelocation_move0_owned s6Step270CompleteRelocation_move0_reserve s6Step270CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step270Complete_repack : s6Step270ExitGvAfter.checkRepack s6Step270CompleteMoves=some s6Step270EarlyControlArena := by
  simpa only [s6Step270CompleteMoves] using s6Step270CompleteRelocation_checked

private theorem s6Step270EarlyControl_branchOwned : ([874] : List Wire).toFinset⊆s6Step270EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_branch : compileHmrBranchRetirement s6Step270EarlyControlSigmaArena 874=some s6Step270EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step270EarlyControl_branchOwned
  · ext q
    simp [s6Step270EarlyControlOutputArena,s6Step270EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step270EarlyControl_classEqualityBorrow : s6Step270EarlyControlPositiveArena.checkBorrow (([780, 830] : List Wire).length-1) s6Step270EarlyControlLog.classWork=some s6Step270EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step270EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step270EarlyControlEqualityArena,s6Step270EarlyControlPositiveArena,s6Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step270EarlyControl_classEqualityOwned : ([780, 830] : List Wire).toFinset⊆s6Step270EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_classEquality : compileHmrEqualityLog s6Step270EarlyControlPositiveArena [780, 830] 0 s6Step270EarlyControlLog.classWork=some (s6Step270EarlyControlEqualityArena,s6Step270EarlyControlLog.classWork,s6Step270EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step270EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step270EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step270EarlyControl_classOwned : ([769, 877, 780] : List Wire).toFinset⊆s6Step270EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_positiveBorrow : s6Step270EarlyControlZeroArena.checkBorrow (1) s6Step270EarlyControlLog.positiveWork=some s6Step270EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step270EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step270EarlyControlPositiveArena,s6Step270EarlyControlZeroArena,s6Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step270EarlyControl_class : compileHmrSourceClassLog s6Step270EarlyControlZeroArena false 769 s6Step270EarlyControlZeroPlan.top 0 780 s6Step270EarlyControlLog.positiveWork s6Step270EarlyControlLog.classWork=some s6Step270EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step270EarlyControlClassPlan s6Step270EarlyControlZeroArena false 769 s6Step270EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s6Step270EarlyControl_classOwned
  · exact s6Step270EarlyControl_positiveBorrow
  · exact s6Step270EarlyControl_classEquality

private theorem s6Step270EarlyControl_entryRecordOwned : ([874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s6Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_fitBorrow : s6Step270EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step270EarlyControlLog.recordFresh=some s6Step270EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step270EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step270EarlyControlFittedArena,s6Step270EarlyControlFlagArena,s6Step270EarlyControlLog,arenaWires]

private theorem s6Step270EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step270EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_fit : compileHmrRecordGrowLog s6Step270EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step270EarlyControlLog.recordFresh=some s6Step270EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step270EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step270EarlyControl_fitBorrow

private theorem s6Step270EarlyControl_flagsBorrow : s6Step270EarlyControlEqualityArena.checkBorrow (6) s6Step270EarlyControlLog.flagWork=some s6Step270EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step270EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step270EarlyControlFlagArena,s6Step270EarlyControlEqualityArena,s6Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step270EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step270EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_flags : compileHmrFlagsLog s6Step270EarlyControlClassPlan.equalityArena s6Step270EarlyControlClassPlan.equality.top 253 252 251 s6Step270EarlyControlLog.flagWork=some s6Step270EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step270EarlyControl_flagsOwned⟩
  · exact s6Step270EarlyControl_flagsBorrow

private theorem s6Step270EarlyControl_historyBorrow : s6Step270EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step270EarlyControlLog.recordFresh=some s6Step270EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step270EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step270EarlyControlHistoryArena,s6Step270EarlyControlArena,s6Step270EarlyControlLog,arenaWires]

private theorem s6Step270EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_history : compileHmrRecordGrowLog s6Step270EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step270EarlyControlLog.recordFresh=some s6Step270EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step270EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step270EarlyControl_historyBorrow

private theorem s6Step270EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s6Step270EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s6Step270EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_sigmaRelease : s6Step270EarlyControlHistoryArena.release {780} (fun _ => false)=some s6Step270EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step270EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step270EarlyControlSigmaArena,s6Step270EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step270EarlyControl_sigma : compileHmrSigmaDropLog s6Step270EarlyControlHistoryArena false 0 0 254 780 []=some s6Step270EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step270EarlyControl_sigmaOwned⟩
  · exact s6Step270EarlyControl_sigmaRelease

private theorem s6Step270EarlyControl_zeroBorrow : s6Step270EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step270EarlyControlLog.zeroWork=some s6Step270EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step270EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step270EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step270EarlyControlZeroArena,s6Step270EarlyControlArena,s6Step270EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step270EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step270EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step270EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EarlyControl_zero : compileHmrEqualityLog s6Step270EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step270EarlyControlLog.zeroWork=some (s6Step270EarlyControlZeroArena,s6Step270EarlyControlLog.zeroWork,s6Step270EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step270EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step270EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step270EarlyControl_logged : s6Step270EarlyControlPlan.Logged s6Step270EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 254 253 252 251 874 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step270EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step270EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step270EarlyControl_zero
  · exact s6Step270EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step270EarlyControl_flags
  · exact s6Step270EarlyControl_fit
  · exact s6Step270EarlyControl_history
  · exact s6Step270EarlyControl_sigma
  · exact s6Step270EarlyControl_branch

private theorem s6Step270EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step270EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 254 253 252 251 874 53 s6Step270EarlyControlLog=some s6Step270EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step270EarlyControlPlan s6Step270EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 254 253 252 251 874 53 s6Step270EarlyControl_logged

private def s6Step270EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩

private def s6Step270EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩

private def s6Step270EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step270EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩

private def s6Step270FrontBank : WindowBank := ⟨s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow⟩

private def s6Step270Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927, 795]

private def s6Step270Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809, 877, 777]

private def s6Step270Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 776]

private def s6Step270Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 775]

private theorem s6Step270Counter_apart : Disjoint s6Step270HeadFvAfter.live s6Step270CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step270HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270Counter_borrowed : s6Step270HeadFvAfter.checkBorrow 4 s6Step270CounterWork=some s6Step270CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step270HeadFvAfter s6Step270CounterDuring s6Step270CounterWork.toFinset s6Step270Counter_bounded s6Step270Counter_apart rfl

private theorem s6Step270Counter_owned : (780::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step270HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step270HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270Counter_checked : compileHmrCounterStepLog s6Step270HeadFvAfter true 780 [774, 773, 772, 771, 770, 769] s6Step270CounterWork=some s6Step270CounterDuring := by
  have owned : ∀q∈780::[774, 773, 772, 771, 770, 769],q∈s6Step270HeadFvAfter.live := fun q hq => s6Step270Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step270Counter_borrowed

private def s6Step270EntryFAfter : Arena := s6Step270EntryFBefore

private theorem s6Step270EntryBank_incomingDistinct : ([s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270EntryF_Incoming : rowsOwned s6Step270EntryFBefore [s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow] 0 s6Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270EntryBank_outgoingOwned : rowsOwned s6Step270EntryGvAfter [s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step270EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270EntryF_Outgoing : rowsOwned s6Step270EntryGvAfter [s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut] :=
  hmrRows_owned_drop s6Step270EntryGvAfter [s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut] 0 s6Step270EntryBank_outgoingOwned

private theorem s6Step270EntryF_distinct : (s6Step270EntryFRow.sign::s6Step270EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270EntryF_owned : (s6Step270EntryFRow.sign::s6Step270EntryFRow.payload).toFinset⊆s6Step270EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EntryF_reserved : s6Step270EntryFBefore.reserve s6Step270EntryFFresh.toFinset=some s6Step270EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270EntryFFresh,arenaWires]
  · norm_num [s6Step270EntryFBefore,s6Step270EntryFFresh,arenaWires]
  · simp only [s6Step270EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step270EntryF_checked : planRowResizeLog s6Step270EntryFBefore s6Step270EntryFRow 137 s6Step270EntryFFresh=
    some (s6Step270EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩,growRow 795 s6Step270EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step270EntryFBefore s6Step270EntryFAfter s6Step270EntryFRow 137 s6Step270EntryFFresh
    s6Step270EntryF_distinct s6Step270EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270EntryF_reserved
  have rowEq : WindowRow.mk (s6Step270EntryFRow.payload++s6Step270EntryFFresh) s6Step270EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step270EntryFvAfter : Arena := s6Step270EntryGAfter

private def s6Step270EntryFvBefore : Arena := s6Step270EntryGAfter

private theorem s6Step270EntryFv_Incoming : rowsOwned s6Step270EntryFvBefore [s6Step270EntryFvRow,s6Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow] 2 s6Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270EntryFv_Outgoing : rowsOwned s6Step270EntryGvAfter [s6Step270EntryFvOut,s6Step270EntryGvOut] :=
  hmrRows_owned_drop s6Step270EntryGvAfter [s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut] 2 s6Step270EntryBank_outgoingOwned

private theorem s6Step270EntryFv_distinct : (s6Step270EntryFvRow.sign::s6Step270EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270EntryFv_owned : (s6Step270EntryFvRow.sign::s6Step270EntryFvRow.payload).toFinset⊆s6Step270EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EntryFv_reserved : s6Step270EntryFvBefore.reserve s6Step270EntryFvFresh.toFinset=some s6Step270EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270EntryFvFresh,arenaWires]
  · norm_num [s6Step270EntryFvBefore,s6Step270EntryGAfter,s6Step270EntryFvFresh,arenaWires]
  · simp only [s6Step270EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step270EntryFv_checked : planRowResizeLog s6Step270EntryFvBefore s6Step270EntryFvRow 150 s6Step270EntryFvFresh=
    some (s6Step270EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩,growRow 776 s6Step270EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step270EntryFvBefore s6Step270EntryFvAfter s6Step270EntryFvRow 150 s6Step270EntryFvFresh
    s6Step270EntryFv_distinct s6Step270EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step270EntryFvRow.payload++s6Step270EntryFvFresh) s6Step270EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step270EntryGBefore : Arena := s6Step270EntryFBefore

private theorem s6Step270EntryG_Incoming : rowsOwned s6Step270EntryGBefore [s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow] 1 s6Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270EntryG_Outgoing : rowsOwned s6Step270EntryGvAfter [s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut] :=
  hmrRows_owned_drop s6Step270EntryGvAfter [s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut] 1 s6Step270EntryBank_outgoingOwned

private theorem s6Step270EntryG_distinct : (s6Step270EntryGRow.sign::s6Step270EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270EntryG_owned : (s6Step270EntryGRow.sign::s6Step270EntryGRow.payload).toFinset⊆s6Step270EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EntryG_reserved : s6Step270EntryGBefore.reserve s6Step270EntryGFresh.toFinset=some s6Step270EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270EntryGFresh,arenaWires]
  · norm_num [s6Step270EntryGBefore,s6Step270EntryFBefore,s6Step270EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step270EntryGAfter,s6Step270EntryGBefore,s6Step270EntryFBefore,s6Step270EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step270EntryG_checked : planRowResizeLog s6Step270EntryGBefore s6Step270EntryGRow 137 s6Step270EntryGFresh=
    some (s6Step270EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809],777⟩,growRow 777 s6Step270EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step270EntryGBefore s6Step270EntryGAfter s6Step270EntryGRow 137 s6Step270EntryGFresh
    s6Step270EntryG_distinct s6Step270EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270EntryG_reserved
  have rowEq : WindowRow.mk (s6Step270EntryGRow.payload++s6Step270EntryGFresh) s6Step270EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step270EntryGvBefore : Arena := s6Step270EntryGAfter

private theorem s6Step270EntryGv_Incoming : rowsOwned s6Step270EntryGvBefore [s6Step270EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow] 3 s6Step270EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270EntryGv_Outgoing : rowsOwned s6Step270EntryGvAfter [s6Step270EntryGvOut] :=
  hmrRows_owned_drop s6Step270EntryGvAfter [s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut] 3 s6Step270EntryBank_outgoingOwned

private theorem s6Step270EntryGv_distinct : (s6Step270EntryGvRow.sign::s6Step270EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270EntryGv_owned : (s6Step270EntryGvRow.sign::s6Step270EntryGvRow.payload).toFinset⊆s6Step270EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270EntryGv_reserved : s6Step270EntryGvBefore.reserve s6Step270EntryGvFresh.toFinset=some s6Step270EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270EntryGvFresh,arenaWires]
  · norm_num [s6Step270EntryGvBefore,s6Step270EntryGAfter,s6Step270EntryGvFresh,arenaWires]
  · simp only [s6Step270EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step270EntryGv_checked : planRowResizeLog s6Step270EntryGvBefore s6Step270EntryGvRow 150 s6Step270EntryGvFresh=
    some (s6Step270EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩,growRow 775 s6Step270EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step270EntryGvBefore s6Step270EntryGvAfter s6Step270EntryGvRow 150 s6Step270EntryGvFresh
    s6Step270EntryGv_distinct s6Step270EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step270EntryGvRow.payload++s6Step270EntryGvFresh) s6Step270EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step270EntryBank_rows : planWindowRowsLog s6Step270EntryFBefore [(s6Step270EntryFRow,137),(s6Step270EntryGRow,137),(s6Step270EntryFvRow,150),(s6Step270EntryGvRow,150)] [s6Step270EntryFFresh,s6Step270EntryGFresh,s6Step270EntryFvFresh,s6Step270EntryGvFresh]=
    some (s6Step270EntryGvAfter,[s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut],(growRow 795 s6Step270EntryFFresh ++ (growRow 777 s6Step270EntryGFresh ++ (growRow 776 s6Step270EntryFvFresh ++ (growRow 775 s6Step270EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step270EntryGvAfter [] []=some (s6Step270EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step270EntryGvBefore s6Step270EntryGvAfter s6Step270EntryGvAfter
    s6Step270EntryGvRow s6Step270EntryGvOut 150 s6Step270EntryGvFresh [] [] []
    (growRow 775 s6Step270EntryGvFresh) ([]) s6Step270EntryGv_Incoming s6Step270EntryGv_checked h4 s6Step270EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step270EntryFvBefore s6Step270EntryFvAfter s6Step270EntryGvAfter
    s6Step270EntryFvRow s6Step270EntryFvOut 150 s6Step270EntryFvFresh [(s6Step270EntryGvRow,150)] [s6Step270EntryGvFresh] [s6Step270EntryGvOut]
    (growRow 776 s6Step270EntryFvFresh) ((growRow 775 s6Step270EntryGvFresh ++ [])) s6Step270EntryFv_Incoming s6Step270EntryFv_checked h3 s6Step270EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step270EntryGBefore s6Step270EntryGAfter s6Step270EntryGvAfter
    s6Step270EntryGRow s6Step270EntryGOut 137 s6Step270EntryGFresh [(s6Step270EntryFvRow,150),(s6Step270EntryGvRow,150)] [s6Step270EntryFvFresh,s6Step270EntryGvFresh] [s6Step270EntryFvOut,s6Step270EntryGvOut]
    (growRow 777 s6Step270EntryGFresh) ((growRow 776 s6Step270EntryFvFresh ++ (growRow 775 s6Step270EntryGvFresh ++ []))) s6Step270EntryG_Incoming s6Step270EntryG_checked h2 s6Step270EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step270EntryFBefore s6Step270EntryFAfter s6Step270EntryGvAfter
    s6Step270EntryFRow s6Step270EntryFOut 137 s6Step270EntryFFresh [(s6Step270EntryGRow,137),(s6Step270EntryFvRow,150),(s6Step270EntryGvRow,150)] [s6Step270EntryGFresh,s6Step270EntryFvFresh,s6Step270EntryGvFresh] [s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut]
    (growRow 795 s6Step270EntryFFresh) ((growRow 777 s6Step270EntryGFresh ++ (growRow 776 s6Step270EntryFvFresh ++ (growRow 775 s6Step270EntryGvFresh ++ [])))) s6Step270EntryF_Incoming s6Step270EntryF_checked h1 s6Step270EntryF_Outgoing
  exact h0

private theorem s6Step270EntryBank_checked : compileHmrBankResizeLog .entry s6Step270EntryFBefore ⟨s6Step270EntryFRow,s6Step270EntryGRow,s6Step270EntryFvRow,s6Step270EntryGvRow⟩ ⟨137,137,150,150⟩ [s6Step270EntryFFresh,s6Step270EntryGFresh,s6Step270EntryFvFresh,s6Step270EntryGvFresh]=
    some (s6Step270EntryGvAfter,⟨s6Step270EntryFOut,s6Step270EntryGOut,s6Step270EntryFvOut,s6Step270EntryGvOut⟩,(growRow 795 s6Step270EntryFFresh ++ (growRow 777 s6Step270EntryGFresh ++ (growRow 776 s6Step270EntryFvFresh ++ (growRow 775 s6Step270EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step270EntryBank_rows]
  rfl

private def s6Step270ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270ExitFBefore : Arena := s6Step270ExitGAfter

private def s6Step270ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩

private def s6Step270ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step270ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809, 877],777⟩

private def s6Step270ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private theorem s6Step270ExitBank_incomingDistinct : ([s6Step270ExitGRow,s6Step270ExitFRow,s6Step270ExitFvRow,s6Step270ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270ExitF_Incoming : rowsOwned s6Step270ExitFBefore [s6Step270ExitFRow,s6Step270ExitFvRow,s6Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270ExitGRow,s6Step270ExitFRow,s6Step270ExitFvRow,s6Step270ExitGvRow] 1 s6Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270ExitBank_outgoingOwned : rowsOwned s6Step270ExitGvAfter [s6Step270ExitGOut,s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step270ExitGvAfter (fun q => (0≤q ∧ q<391) ∨ (393≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270ExitF_Outgoing : rowsOwned s6Step270ExitGvAfter [s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut] :=
  hmrRows_owned_drop s6Step270ExitGvAfter [s6Step270ExitGOut,s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut] 1 s6Step270ExitBank_outgoingOwned

private theorem s6Step270ExitF_distinct : (s6Step270ExitFRow.sign::s6Step270ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270ExitF_owned : (s6Step270ExitFRow.sign::s6Step270ExitFRow.payload).toFinset⊆s6Step270ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270ExitF_retired : s6Step270ExitFBefore.retireSet s6Step270ExitFExtra.toFinset=s6Step270ExitFAfter := by
  unfold Arena.retireSet s6Step270ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step270ExitFBefore,s6Step270ExitGAfter,s6Step270ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step270ExitF_checked : planRowResizeLog s6Step270ExitFBefore s6Step270ExitFRow 135 []=
    some (s6Step270ExitFAfter,s6Step270ExitFOut,shrinkRow 795 s6Step270ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step270ExitFBefore s6Step270ExitFRow 135 s6Step270ExitF_distinct s6Step270ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step270ExitFRow.payload.take 135) s6Step270ExitFRow.sign=s6Step270ExitFOut := by decide +kernel
  have hi : s6Step270ExitFRow.payload.drop 135=s6Step270ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step270ExitF_retired] at result
  exact result

private def s6Step270ExitFvAfter : Arena := s6Step270ExitFAfter

private def s6Step270ExitFvBefore : Arena := s6Step270ExitFAfter

private theorem s6Step270ExitFv_Incoming : rowsOwned s6Step270ExitFvBefore [s6Step270ExitFvRow,s6Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270ExitGRow,s6Step270ExitFRow,s6Step270ExitFvRow,s6Step270ExitGvRow] 2 s6Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270ExitFvBefore (fun q => (0≤q ∧ q<391) ∨ (393≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270ExitFv_Outgoing : rowsOwned s6Step270ExitGvAfter [s6Step270ExitFvOut,s6Step270ExitGvOut] :=
  hmrRows_owned_drop s6Step270ExitGvAfter [s6Step270ExitGOut,s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut] 2 s6Step270ExitBank_outgoingOwned

private theorem s6Step270ExitFv_distinct : (s6Step270ExitFvRow.sign::s6Step270ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270ExitFv_owned : (s6Step270ExitFvRow.sign::s6Step270ExitFvRow.payload).toFinset⊆s6Step270ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270ExitFvBefore (fun q => (0≤q ∧ q<391) ∨ (393≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270ExitFv_reserved : s6Step270ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step270ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step270ExitFv_checked : planRowResizeLog s6Step270ExitFvBefore s6Step270ExitFvRow 151 []=
    some (s6Step270ExitFvAfter,s6Step270ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step270ExitFvBefore s6Step270ExitFvAfter s6Step270ExitFvRow 151 []
    s6Step270ExitFv_distinct s6Step270ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step270ExitFvRow.payload++[]) s6Step270ExitFvRow.sign=s6Step270ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step270ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step270ExitG_Incoming : rowsOwned s6Step270ExitGBefore [s6Step270ExitGRow,s6Step270ExitFRow,s6Step270ExitFvRow,s6Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270ExitGRow,s6Step270ExitFRow,s6Step270ExitFvRow,s6Step270ExitGvRow] 0 s6Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270ExitG_Outgoing : rowsOwned s6Step270ExitGvAfter [s6Step270ExitGOut,s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut] :=
  hmrRows_owned_drop s6Step270ExitGvAfter [s6Step270ExitGOut,s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut] 0 s6Step270ExitBank_outgoingOwned

private theorem s6Step270ExitG_distinct : (s6Step270ExitGRow.sign::s6Step270ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270ExitG_owned : (s6Step270ExitGRow.sign::s6Step270ExitGRow.payload).toFinset⊆s6Step270ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270ExitG_retired : s6Step270ExitGBefore.retireSet s6Step270ExitGExtra.toFinset=s6Step270ExitGAfter := by
  unfold Arena.retireSet s6Step270ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step270ExitGBefore,s6Step270ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step270ExitG_checked : planRowResizeLog s6Step270ExitGBefore s6Step270ExitGRow 136 []=
    some (s6Step270ExitGAfter,s6Step270ExitGOut,shrinkRow 777 s6Step270ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step270ExitGBefore s6Step270ExitGRow 136 s6Step270ExitG_distinct s6Step270ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step270ExitGRow.payload.take 136) s6Step270ExitGRow.sign=s6Step270ExitGOut := by decide +kernel
  have hi : s6Step270ExitGRow.payload.drop 136=s6Step270ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step270ExitG_retired] at result
  exact result

private def s6Step270ExitGvBefore : Arena := s6Step270ExitFAfter

private theorem s6Step270ExitGv_Incoming : rowsOwned s6Step270ExitGvBefore [s6Step270ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270ExitGRow,s6Step270ExitFRow,s6Step270ExitFvRow,s6Step270ExitGvRow] 3 s6Step270ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270ExitGvBefore (fun q => (0≤q ∧ q<391) ∨ (393≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270ExitGv_Outgoing : rowsOwned s6Step270ExitGvAfter [s6Step270ExitGvOut] :=
  hmrRows_owned_drop s6Step270ExitGvAfter [s6Step270ExitGOut,s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut] 3 s6Step270ExitBank_outgoingOwned

private theorem s6Step270ExitGv_distinct : (s6Step270ExitGvRow.sign::s6Step270ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270ExitGv_owned : (s6Step270ExitGvRow.sign::s6Step270ExitGvRow.payload).toFinset⊆s6Step270ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270ExitGvBefore (fun q => (0≤q ∧ q<391) ∨ (393≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270ExitGv_reserved : s6Step270ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step270ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step270ExitGv_checked : planRowResizeLog s6Step270ExitGvBefore s6Step270ExitGvRow 151 []=
    some (s6Step270ExitGvAfter,s6Step270ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step270ExitGvBefore s6Step270ExitGvAfter s6Step270ExitGvRow 151 []
    s6Step270ExitGv_distinct s6Step270ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step270ExitGvRow.payload++[]) s6Step270ExitGvRow.sign=s6Step270ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step270ExitBank_rows : planWindowRowsLog s6Step270ExitGBefore [(s6Step270ExitGRow,136),(s6Step270ExitFRow,135),(s6Step270ExitFvRow,151),(s6Step270ExitGvRow,151)] [[],[],[],[]]=
    some (s6Step270ExitGvAfter,[s6Step270ExitGOut,s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut],(shrinkRow 777 s6Step270ExitGExtra ++ (shrinkRow 795 s6Step270ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step270ExitGvAfter [] []=some (s6Step270ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step270ExitGvBefore s6Step270ExitGvAfter s6Step270ExitGvAfter
    s6Step270ExitGvRow s6Step270ExitGvOut 151 [] [] [] []
    (growRow 775 []) ([]) s6Step270ExitGv_Incoming s6Step270ExitGv_checked h4 s6Step270ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step270ExitFvBefore s6Step270ExitFvAfter s6Step270ExitGvAfter
    s6Step270ExitFvRow s6Step270ExitFvOut 151 [] [(s6Step270ExitGvRow,151)] [[]] [s6Step270ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step270ExitFv_Incoming s6Step270ExitFv_checked h3 s6Step270ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step270ExitFBefore s6Step270ExitFAfter s6Step270ExitGvAfter
    s6Step270ExitFRow s6Step270ExitFOut 135 [] [(s6Step270ExitFvRow,151),(s6Step270ExitGvRow,151)] [[],[]] [s6Step270ExitFvOut,s6Step270ExitGvOut]
    (shrinkRow 795 s6Step270ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step270ExitF_Incoming s6Step270ExitF_checked h2 s6Step270ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step270ExitGBefore s6Step270ExitGAfter s6Step270ExitGvAfter
    s6Step270ExitGRow s6Step270ExitGOut 136 [] [(s6Step270ExitFRow,135),(s6Step270ExitFvRow,151),(s6Step270ExitGvRow,151)] [[],[],[]] [s6Step270ExitFOut,s6Step270ExitFvOut,s6Step270ExitGvOut]
    (shrinkRow 777 s6Step270ExitGExtra) ((shrinkRow 795 s6Step270ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step270ExitG_Incoming s6Step270ExitG_checked h1 s6Step270ExitG_Outgoing
  exact h0

private theorem s6Step270ExitBank_checked : compileHmrBankResizeLog .exit s6Step270ExitGBefore ⟨s6Step270ExitFRow,s6Step270ExitGRow,s6Step270ExitFvRow,s6Step270ExitGvRow⟩ ⟨135,136,151,151⟩ [[],[],[],[]]=
    some (s6Step270ExitGvAfter,⟨s6Step270ExitFOut,s6Step270ExitGOut,s6Step270ExitFvOut,s6Step270ExitGvOut⟩,(shrinkRow 777 s6Step270ExitGExtra ++ (shrinkRow 795 s6Step270ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step270ExitBank_rows]
  rfl

private theorem s6Step270Add0_apart : Disjoint s6Step270Add0Arena.live s6Step270Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step270Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270Add0_card : s6Step270Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step270Add0_borrowed : s6Step270Add0Arena.checkBorrow (hmrHybridCount s6Step270Add0Arena s6Step270Add0B.length) s6Step270Add0Work=some s6Step270Add0During := by
  have len : s6Step270Add0Work.length=hmrHybridCount s6Step270Add0Arena s6Step270Add0B.length := by
    rw [hmrHybridCount,s6Step270Add0_card]
    decide +kernel
  have nd : s6Step270Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step270Add0Arena s6Step270Add0During s6Step270Add0Work.toFinset s6Step270Add0_bounded s6Step270Add0_apart rfl

private theorem s6Step270Add0_distinct : (830::874::805::(s6Step270Add0A++s6Step270Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270Add0_owned : (830::874::805::(s6Step270Add0A++s6Step270Add0B)).toFinset⊆s6Step270Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step270Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270Add0_checked : compileHmrHybridCinLog s6Step270Add0Arena 874 830 805 s6Step270Add0A s6Step270Add0B s6Step270Add0Work=some s6Step270Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step270Add0Arena s6Step270Add0During 874 830 805 s6Step270Add0A s6Step270Add0B s6Step270Add0Work
    (by decide +kernel) (by decide +kernel) s6Step270Add0_distinct
    (fun q hq => s6Step270Add0_owned (List.mem_toFinset.mpr hq)) s6Step270Add0_borrowed

private theorem s6Step270Add1_apart : Disjoint s6Step270Add1Arena.live s6Step270Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step270Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270Add1_card : s6Step270Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step270Add1_borrowed : s6Step270Add1Arena.checkBorrow (hmrHybridCount s6Step270Add1Arena s6Step270Add1B.length) s6Step270Add1Work=some s6Step270Add1During := by
  have len : s6Step270Add1Work.length=hmrHybridCount s6Step270Add1Arena s6Step270Add1B.length := by
    rw [hmrHybridCount,s6Step270Add1_card]
    decide +kernel
  have nd : s6Step270Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step270Add1Arena s6Step270Add1During s6Step270Add1Work.toFinset s6Step270Add1_bounded s6Step270Add1_apart rfl

private theorem s6Step270Add1_distinct : (830::874::805::(s6Step270Add1A++s6Step270Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270Add1_owned : (830::874::805::(s6Step270Add1A++s6Step270Add1B)).toFinset⊆s6Step270Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step270Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270Add1_checked : compileHmrHybridCinLog s6Step270Add1Arena 874 830 805 s6Step270Add1A s6Step270Add1B s6Step270Add1Work=some s6Step270Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step270Add1Arena s6Step270Add1During 874 830 805 s6Step270Add1A s6Step270Add1B s6Step270Add1Work
    (by decide +kernel) (by decide +kernel) s6Step270Add1_distinct
    (fun q hq => s6Step270Add1_owned (List.mem_toFinset.mpr hq)) s6Step270Add1_borrowed

private theorem s6Step270F4_apart : Disjoint (s6Step270Add0A++s6Step270Add0B).toFinset (s6Step270Add1A++s6Step270Add1B).toFinset := by
  have nd : ((s6Step270Add0A++s6Step270Add0B)++(s6Step270Add1A++s6Step270Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step270F4_carry : s6Step270F4FlagArena.checkBorrow 1 [805]=some s6Step270Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step270F4FlagArena,s6Step270HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step270F4FlagArena,s6Step270HeadFvAfter,s6Step270Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step270F4_distinct : (780::874::830::805::((s6Step270Add0A++s6Step270Add1A)++(s6Step270Add0B++s6Step270Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270F4_flag : s6Step270HeadFvAfter.checkBorrow 1 [830]=some s6Step270F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step270HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step270F4_owned : (780::874::((s6Step270Add0A++s6Step270Add1A)++(s6Step270Add0B++s6Step270Add1B))).toFinset⊆s6Step270HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step270HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270F4_checked : compileHmrHybridF4Log s6Step270HeadFvAfter 780 874 s6Step270Add0A s6Step270Add0B s6Step270Add1A s6Step270Add1B [830] [805] s6Step270Add0Work s6Step270Add1Work=some s6Step270F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step270HeadFvAfter s6Step270F4FlagArena s6Step270Add0Arena s6Step270Add0During s6Step270Add1During 780 874
    s6Step270Add0A s6Step270Add0B s6Step270Add1A s6Step270Add1B [830] [805] s6Step270Add0Work s6Step270Add1Work
    (fun q hq => s6Step270F4_owned (List.mem_toFinset.mpr hq)) s6Step270F4_flag s6Step270F4_carry
    s6Step270F4_distinct s6Step270F4_apart s6Step270Add0_checked s6Step270Add1_checked

private theorem s6Step270Front_branch : s6Step270FrontSigmaArena.checkBorrow 1 [874]=some s6Step270HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step270FrontSigmaArena,s6Step270EntryGvAfter,s6Step270EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step270FrontSigmaArena,s6Step270EntryGvAfter,s6Step270EntryGAfter,s6Step270HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step270Front_entry : HmrFrontEntryValid s6Step270EntryFBefore s6Step270FrontBank 137 150 ⟨135,136,151,151⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step270FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step270EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step270EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step270FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step270Front_sigma : s6Step270EntryGvAfter.checkBorrow 1 [780]=some s6Step270FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step270EntryGvAfter,s6Step270EntryGAfter,arenaWires]
  · rfl

private def s6Step270HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270HeadFBefore : Arena := s6Step270HeadGAfter

private def s6Step270HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392],795⟩

private def s6Step270HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907],776⟩

private def s6Step270HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809],777⟩

private def s6Step270HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833],775⟩

private theorem s6Step270HeadBank_incomingDistinct : ([s6Step270HeadGRow,s6Step270HeadFRow,s6Step270HeadGvRow,s6Step270HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270HeadF_Incoming : rowsOwned s6Step270HeadFBefore [s6Step270HeadFRow,s6Step270HeadGvRow,s6Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270HeadGRow,s6Step270HeadFRow,s6Step270HeadGvRow,s6Step270HeadFvRow] 1 s6Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270HeadBank_outgoingOwned : rowsOwned s6Step270HeadFvAfter [s6Step270HeadGOut,s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step270HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270HeadF_Outgoing : rowsOwned s6Step270HeadFvAfter [s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut] :=
  hmrRows_owned_drop s6Step270HeadFvAfter [s6Step270HeadGOut,s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut] 1 s6Step270HeadBank_outgoingOwned

private theorem s6Step270HeadF_distinct : (s6Step270HeadFRow.sign::s6Step270HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270HeadF_owned : (s6Step270HeadFRow.sign::s6Step270HeadFRow.payload).toFinset⊆s6Step270HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270HeadF_reserved : s6Step270HeadFBefore.reserve s6Step270HeadFFresh.toFinset=some s6Step270HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270HeadFFresh,arenaWires]
  · norm_num [s6Step270HeadFBefore,s6Step270HeadGAfter,s6Step270HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step270HeadFAfter,s6Step270HeadFBefore,s6Step270HeadGAfter,s6Step270HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step270HeadF_checked : planRowResizeLog s6Step270HeadFBefore s6Step270HeadFRow 138 s6Step270HeadFFresh=
    some (s6Step270HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩,growRow 795 s6Step270HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step270HeadFBefore s6Step270HeadFAfter s6Step270HeadFRow 138 s6Step270HeadFFresh
    s6Step270HeadF_distinct s6Step270HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270HeadF_reserved
  have rowEq : WindowRow.mk (s6Step270HeadFRow.payload++s6Step270HeadFFresh) s6Step270HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 927],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step270HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step270HeadFvBefore : Arena := s6Step270HeadGvAfter

private theorem s6Step270HeadFv_Incoming : rowsOwned s6Step270HeadFvBefore [s6Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270HeadGRow,s6Step270HeadFRow,s6Step270HeadGvRow,s6Step270HeadFvRow] 3 s6Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270HeadFv_Outgoing : rowsOwned s6Step270HeadFvAfter [s6Step270HeadFvOut] :=
  hmrRows_owned_drop s6Step270HeadFvAfter [s6Step270HeadGOut,s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut] 3 s6Step270HeadBank_outgoingOwned

private theorem s6Step270HeadFv_distinct : (s6Step270HeadFvRow.sign::s6Step270HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270HeadFv_owned : (s6Step270HeadFvRow.sign::s6Step270HeadFvRow.payload).toFinset⊆s6Step270HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270HeadFv_reserved : s6Step270HeadFvBefore.reserve s6Step270HeadFvFresh.toFinset=some s6Step270HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270HeadFvFresh,arenaWires]
  · norm_num [s6Step270HeadFvBefore,s6Step270HeadGvAfter,s6Step270HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step270HeadFvAfter,s6Step270HeadFvBefore,s6Step270HeadGvAfter,s6Step270HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step270HeadFv_checked : planRowResizeLog s6Step270HeadFvBefore s6Step270HeadFvRow 151 s6Step270HeadFvFresh=
    some (s6Step270HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩,growRow 776 s6Step270HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step270HeadFvBefore s6Step270HeadFvAfter s6Step270HeadFvRow 151 s6Step270HeadFvFresh
    s6Step270HeadFv_distinct s6Step270HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step270HeadFvRow.payload++s6Step270HeadFvFresh) s6Step270HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step270HeadG_Incoming : rowsOwned s6Step270HeadGBefore [s6Step270HeadGRow,s6Step270HeadFRow,s6Step270HeadGvRow,s6Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270HeadGRow,s6Step270HeadFRow,s6Step270HeadGvRow,s6Step270HeadFvRow] 0 s6Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270HeadG_Outgoing : rowsOwned s6Step270HeadFvAfter [s6Step270HeadGOut,s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut] :=
  hmrRows_owned_drop s6Step270HeadFvAfter [s6Step270HeadGOut,s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut] 0 s6Step270HeadBank_outgoingOwned

private theorem s6Step270HeadG_distinct : (s6Step270HeadGRow.sign::s6Step270HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270HeadG_owned : (s6Step270HeadGRow.sign::s6Step270HeadGRow.payload).toFinset⊆s6Step270HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270HeadG_reserved : s6Step270HeadGBefore.reserve s6Step270HeadGFresh.toFinset=some s6Step270HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270HeadGFresh,arenaWires]
  · norm_num [s6Step270HeadGBefore,s6Step270HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step270HeadGAfter,s6Step270HeadGBefore,s6Step270HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step270HeadG_checked : planRowResizeLog s6Step270HeadGBefore s6Step270HeadGRow 138 s6Step270HeadGFresh=
    some (s6Step270HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809, 877],777⟩,growRow 777 s6Step270HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step270HeadGBefore s6Step270HeadGAfter s6Step270HeadGRow 138 s6Step270HeadGFresh
    s6Step270HeadG_distinct s6Step270HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270HeadG_reserved
  have rowEq : WindowRow.mk (s6Step270HeadGRow.payload++s6Step270HeadGFresh) s6Step270HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 809, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step270HeadGvBefore : Arena := s6Step270HeadFAfter

private theorem s6Step270HeadGv_Incoming : rowsOwned s6Step270HeadGvBefore [s6Step270HeadGvRow,s6Step270HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step270HeadGRow,s6Step270HeadFRow,s6Step270HeadGvRow,s6Step270HeadFvRow] 2 s6Step270HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step270HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step270HeadGv_Outgoing : rowsOwned s6Step270HeadFvAfter [s6Step270HeadGvOut,s6Step270HeadFvOut] :=
  hmrRows_owned_drop s6Step270HeadFvAfter [s6Step270HeadGOut,s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut] 2 s6Step270HeadBank_outgoingOwned

private theorem s6Step270HeadGv_distinct : (s6Step270HeadGvRow.sign::s6Step270HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step270HeadGv_owned : (s6Step270HeadGvRow.sign::s6Step270HeadGvRow.payload).toFinset⊆s6Step270HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step270HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step270HeadGv_reserved : s6Step270HeadGvBefore.reserve s6Step270HeadGvFresh.toFinset=some s6Step270HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step270HeadGvFresh,arenaWires]
  · norm_num [s6Step270HeadGvBefore,s6Step270HeadFAfter,s6Step270HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step270HeadGvAfter,s6Step270HeadGvBefore,s6Step270HeadFAfter,s6Step270HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step270HeadGv_checked : planRowResizeLog s6Step270HeadGvBefore s6Step270HeadGvRow 151 s6Step270HeadGvFresh=
    some (s6Step270HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩,growRow 775 s6Step270HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step270HeadGvBefore s6Step270HeadGvAfter s6Step270HeadGvRow 151 s6Step270HeadGvFresh
    s6Step270HeadGv_distinct s6Step270HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step270HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step270HeadGvRow.payload++s6Step270HeadGvFresh) s6Step270HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step270HeadBank_rows : planWindowRowsLog s6Step270HeadGBefore [(s6Step270HeadGRow,138),(s6Step270HeadFRow,138),(s6Step270HeadGvRow,151),(s6Step270HeadFvRow,151)] [s6Step270HeadGFresh,s6Step270HeadFFresh,s6Step270HeadGvFresh,s6Step270HeadFvFresh]=
    some (s6Step270HeadFvAfter,[s6Step270HeadGOut,s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut],(growRow 777 s6Step270HeadGFresh ++ (growRow 795 s6Step270HeadFFresh ++ (growRow 775 s6Step270HeadGvFresh ++ (growRow 776 s6Step270HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step270HeadFvAfter [] []=some (s6Step270HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step270HeadFvBefore s6Step270HeadFvAfter s6Step270HeadFvAfter
    s6Step270HeadFvRow s6Step270HeadFvOut 151 s6Step270HeadFvFresh [] [] []
    (growRow 776 s6Step270HeadFvFresh) ([]) s6Step270HeadFv_Incoming s6Step270HeadFv_checked h4 s6Step270HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step270HeadGvBefore s6Step270HeadGvAfter s6Step270HeadFvAfter
    s6Step270HeadGvRow s6Step270HeadGvOut 151 s6Step270HeadGvFresh [(s6Step270HeadFvRow,151)] [s6Step270HeadFvFresh] [s6Step270HeadFvOut]
    (growRow 775 s6Step270HeadGvFresh) ((growRow 776 s6Step270HeadFvFresh ++ [])) s6Step270HeadGv_Incoming s6Step270HeadGv_checked h3 s6Step270HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step270HeadFBefore s6Step270HeadFAfter s6Step270HeadFvAfter
    s6Step270HeadFRow s6Step270HeadFOut 138 s6Step270HeadFFresh [(s6Step270HeadGvRow,151),(s6Step270HeadFvRow,151)] [s6Step270HeadGvFresh,s6Step270HeadFvFresh] [s6Step270HeadGvOut,s6Step270HeadFvOut]
    (growRow 795 s6Step270HeadFFresh) ((growRow 775 s6Step270HeadGvFresh ++ (growRow 776 s6Step270HeadFvFresh ++ []))) s6Step270HeadF_Incoming s6Step270HeadF_checked h2 s6Step270HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step270HeadGBefore s6Step270HeadGAfter s6Step270HeadFvAfter
    s6Step270HeadGRow s6Step270HeadGOut 138 s6Step270HeadGFresh [(s6Step270HeadFRow,138),(s6Step270HeadGvRow,151),(s6Step270HeadFvRow,151)] [s6Step270HeadFFresh,s6Step270HeadGvFresh,s6Step270HeadFvFresh] [s6Step270HeadFOut,s6Step270HeadGvOut,s6Step270HeadFvOut]
    (growRow 777 s6Step270HeadGFresh) ((growRow 795 s6Step270HeadFFresh ++ (growRow 775 s6Step270HeadGvFresh ++ (growRow 776 s6Step270HeadFvFresh ++ [])))) s6Step270HeadG_Incoming s6Step270HeadG_checked h1 s6Step270HeadG_Outgoing
  exact h0

private theorem s6Step270HeadBank_checked : compileHmrBankResizeLog .headroom s6Step270HeadGBefore ⟨s6Step270HeadFRow,s6Step270HeadGRow,s6Step270HeadFvRow,s6Step270HeadGvRow⟩ ⟨138,138,151,151⟩ [s6Step270HeadGFresh,s6Step270HeadFFresh,s6Step270HeadGvFresh,s6Step270HeadFvFresh]=
    some (s6Step270HeadFvAfter,⟨s6Step270HeadFOut,s6Step270HeadGOut,s6Step270HeadFvOut,s6Step270HeadGvOut⟩,(growRow 777 s6Step270HeadGFresh ++ (growRow 795 s6Step270HeadFFresh ++ (growRow 775 s6Step270HeadGvFresh ++ (growRow 776 s6Step270HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step270HeadBank_rows]
  rfl

private theorem s6Step270Front_checked : compileHmrSourceFrontLog s6Step270EntryFBefore s6Step270FrontBank 137 150 ⟨135,136,151,151⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step270FrontLog=some s6Step270FrontPlan := by
  have pairEq : s6Step270FrontPair=⟨s6Step270HeadFRow,s6Step270HeadGRow,s6Step270HeadFvRow,s6Step270HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step270FrontHead=⟨s6Step270ExitFRow,s6Step270ExitGRow,s6Step270ExitFvRow,s6Step270ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step270Add0A=s6Step270FrontHead.f.wires := by decide +kernel
  have gEq : s6Step270Add0B=s6Step270FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step270Add1A=s6Step270FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step270Add1B=s6Step270FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step270EntryFBefore s6Step270FrontBank 137 150 ⟨135,136,151,151⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step270FrontLog s6Step270FrontPlan
  · exact s6Step270Front_entry
  · exact s6Step270EntryBank_checked
  · exact s6Step270Front_sigma
  · rfl
  · exact s6Step270Front_branch
  · rfl
  · simpa only [s6Step270FrontPlan,pairEq] using s6Step270HeadBank_checked
  · simpa only [s6Step270FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step270F4_checked
  · exact s6Step270Counter_checked
  · rfl
  · simpa only [s6Step270FrontPlan,headEq] using s6Step270ExitBank_checked

private theorem s6Step270Complete_explicit_checked : compileHmrEarlyStepLog s6Step270EntryFBefore s6Step270FrontBank 137 150 ⟨135,136,151,151⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step270CompleteLog=some s6Step270CompletePlan := by
  let Q := s6Step270EarlyControlPlan
  have hq := s6Step270EarlyControl_plan_checked
  have fv1 : s6Step270CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step270CompleteOut.fv.payload[2]?.getD s6Step270CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step270CompleteOut.fv.payload[3]?.getD s6Step270CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step270CompleteOut.fv.payload[4]?.getD s6Step270CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step270EntryFBefore s6Step270EarlyControlArena s6Step270FrontBank 137 150 ⟨135,136,151,151⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step270CompleteLog s6Step270FrontPlan Q
    s6Step270Front_checked s6Step270Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step270Complete_owned s6Step270Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step270EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 s6Step270CompleteOut.fv.second (s6Step270CompleteOut.fv.payload[2]?.getD s6Step270CompleteOut.fv.sign) (s6Step270CompleteOut.fv.payload[3]?.getD s6Step270CompleteOut.fv.sign) (s6Step270CompleteOut.fv.payload[4]?.getD s6Step270CompleteOut.fv.sign) 874 53 s6Step270EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep270Arena : Arena := s6Step270EntryFBefore
def s6PrivateStep270Bank : WindowBank := s6Step270FrontBank
def s6PrivateStep270Spec : HmrSourceWalkStepLog := ⟨137,150,⟨135,136,151,151⟩,53,.early s6Step270CompleteLog⟩
def s6PrivateStep270Plan : HmrSourceStepPlan := .early s6Step270CompletePlan
theorem s6PrivateStep270_source : s6PrivateStep270Spec=s6ObservedLogs256[14] := rfl
theorem s6PrivateStep270_checked : compileHmrSourceStepLog s6PrivateStep270Arena s6PrivateStep270Bank
    s6PrivateStep270Spec.fgWidth s6PrivateStep270Spec.vWidth s6PrivateStep270Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 270 s6PrivateStep270Spec.need none s6PrivateStep270Spec.log=some s6PrivateStep270Plan := by
  change compileHmrSourceStepLog s6Step270EntryFBefore s6Step270FrontBank 137 150 ⟨135,136,151,151⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 270 53 none (.early s6Step270CompleteLog)=some (.early s6Step270CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 270<498)]
  rw [s6Step270Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
