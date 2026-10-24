import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep270
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

private def s6Step272CompleteMoves : List (Wire × Wire) := [(784,390)]

private def s6Step272EarlyControlLog : HmrEarlyControlLog := ⟨[784, 877, 809, 813, 927],[867],[830],[805, 817, 812, 915, 906, 899],[]⟩

private def s6Step272FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[813], [809], [877], [874]],[[], [], [], []]⟩,[838],[780],[927],[867],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[927, 867, 830, 805]⟩

private def s6Step272CompleteLog : HmrEarlyStepLog := ⟨s6Step272FrontLog,s6Step272CompleteMoves,s6Step272EarlyControlLog⟩

private def s6Step272ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩

private def s6Step272ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step272ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step272ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step272FrontOut : WindowBank := ⟨s6Step272ExitFOut,s6Step272ExitGOut,s6Step272ExitFvOut,s6Step272ExitGvOut⟩

private def s6Step272CompleteOut : WindowBank := s6Step272FrontOut.repacked s6Step272CompleteMoves

private def s6Step272EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step272EarlyControlPositiveArena,[867],s6Step272EarlyControlEqualityArena,[830],⟨⟨838,false⟩,[⟨⟨867,false⟩,830⟩]⟩⟩

private def s6Step272EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨772,false⟩,877⟩,⟨⟨771,false⟩,809⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,927⟩]⟩

private def s6Step272EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step272EarlyControlZeroArena,s6Step272EarlyControlZeroPlan,s6Step272EarlyControlClassPlan,s6Step272EarlyControlFlagArena,s6Step272EarlyControlFittedArena,s6Step272EarlyControlHistoryArena,s6Step272EarlyControlSigmaArena,s6Step272EarlyControlOutputArena,s6Step272EarlyControlLog⟩

private def s6Step272CounterWork : List Wire := [927, 867, 830, 805]

private theorem s6Step272Counter_bounded : s6Step272CounterWork.toFinset⊆arenaWires := by norm_num [s6Step272CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step272HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272CounterDuring : Arena := ⟨s6Step272HeadFvAfter.live∪s6Step272CounterWork.toFinset,Finset.union_subset s6Step272HeadFvAfter.bounded s6Step272Counter_bounded⟩

private def s6Step272EntryFFresh : List Wire := []

private def s6Step272EntryFvFresh : List Wire := []

private def s6Step272EntryGFresh : List Wire := []

private def s6Step272EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272EntryGvAfter : Arena := s6Step272EntryFBefore

private def s6Step272EntryGvFresh : List Wire := []

private def s6Step272ExitFExtra : List Wire := [390, 809]

private def s6Step272ExitGExtra : List Wire := [813]

private def s6Step272ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<390) ∨ (391≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272ExitGvExtra : List Wire := [877]

private def s6Step272Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step272Add0_bounded : s6Step272Add0Work.toFinset⊆arenaWires := by
  have h : s6Step272Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step272Add0During : Arena := ⟨s6Step272Add0Arena.live∪s6Step272Add0Work.toFinset,Finset.union_subset s6Step272Add0Arena.bounded s6Step272Add0_bounded⟩

private def s6Step272Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step272Add1_bounded : s6Step272Add1Work.toFinset⊆arenaWires := by
  have h : s6Step272Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step272Add1During : Arena := ⟨s6Step272Add1Arena.live∪s6Step272Add1Work.toFinset,Finset.union_subset s6Step272Add1Arena.bounded s6Step272Add1_bounded⟩

private def s6Step272F4FlagArena : Arena := ⟨s6Step272HeadFvAfter.live∪{927},Finset.union_subset s6Step272HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step272F4Plan : HmrHybridF4Plan := ⟨s6Step272F4FlagArena,[927],s6Step272Add0Arena,[867],s6Step272Add0During,s6Step272Add0Work,s6Step272Add1During,s6Step272Add1Work⟩

private def s6Step272HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 809],795⟩

private def s6Step272HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step272HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 813],777⟩

private def s6Step272HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 877],775⟩

private def s6Step272FrontHead : WindowBank := ⟨s6Step272HeadFOut,s6Step272HeadGOut,s6Step272HeadFvOut,s6Step272HeadGvOut⟩

private def s6Step272EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩

private def s6Step272EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step272EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step272EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step272FrontPair : WindowBank := ⟨s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut⟩

private def s6Step272FrontSigmaArena : Arena := ⟨s6Step272EntryGvAfter.live∪{838},Finset.union_subset s6Step272EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step272HeadFFresh : List Wire := [809]

private def s6Step272HeadFvFresh : List Wire := [874]

private def s6Step272HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272HeadGFresh : List Wire := [813]

private def s6Step272HeadGvFresh : List Wire := [877]

private def s6Step272FrontPlan : HmrSourceFront := ⟨s6Step272EntryGvAfter,s6Step272FrontPair,(growRow 795 s6Step272EntryFFresh ++ (growRow 777 s6Step272EntryGFresh ++ (growRow 776 s6Step272EntryFvFresh ++ (growRow 775 s6Step272EntryGvFresh ++ [])))),s6Step272FrontSigmaArena,[838],s6Step272HeadGBefore,[780],
  s6Step272HeadFvAfter,s6Step272FrontHead,(growRow 777 s6Step272HeadGFresh ++ (growRow 795 s6Step272HeadFFresh ++ (growRow 775 s6Step272HeadGvFresh ++ (growRow 776 s6Step272HeadFvFresh ++ [])))),s6Step272F4Plan,s6Step272CounterDuring,s6Step272CounterWork,s6Step272ExitGvAfter,s6Step272FrontOut,(shrinkRow 777 s6Step272ExitGExtra ++ (shrinkRow 795 s6Step272ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step272ExitGvExtra ++ []))))⟩

private def s6Step272CompletePlan : HmrEarlyStepPlan := ⟨s6Step272FrontPlan,s6Step272EarlyControlArena,s6Step272EarlyControlPlan,s6Step272CompleteMoves⟩

private theorem s6Step272Complete_apart : List.Disjoint (s6Step272CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step272CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step272Complete_owned : (s6Step272CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step272CompleteMoveArena : Arena := ⟨s6Step272ExitGvAfter.live∪{390},Finset.union_subset s6Step272ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step272Complete_repack : s6Step272ExitGvAfter.checkRepack s6Step272CompleteMoves=some s6Step272EarlyControlArena := by
  have owned : 784∈s6Step272ExitGvAfter.live := by norm_num [s6Step272ExitGvAfter,arenaWires]
  have reserve : s6Step272ExitGvAfter.reserve {390}=some s6Step272CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step272ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step272CompleteMoveArena.retireSet {784}=s6Step272EarlyControlArena := by
    unfold Arena.retireSet s6Step272EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step272CompleteMoveArena,s6Step272ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step272CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step272CompleteMoveArena.retireSet {784}).checkRepack []=some s6Step272EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step272EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s6Step272EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_branch : compileHmrBranchRetirement s6Step272EarlyControlSigmaArena 780=some s6Step272EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step272EarlyControl_branchOwned
  · ext q
    simp [s6Step272EarlyControlOutputArena,s6Step272EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step272EarlyControl_classEqualityBorrow : s6Step272EarlyControlPositiveArena.checkBorrow (([838, 867] : List Wire).length-1) s6Step272EarlyControlLog.classWork=some s6Step272EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step272EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step272EarlyControlEqualityArena,s6Step272EarlyControlPositiveArena,s6Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step272EarlyControl_classEqualityOwned : ([838, 867] : List Wire).toFinset⊆s6Step272EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_classEquality : compileHmrEqualityLog s6Step272EarlyControlPositiveArena [838, 867] 0 s6Step272EarlyControlLog.classWork=some (s6Step272EarlyControlEqualityArena,s6Step272EarlyControlLog.classWork,s6Step272EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step272EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step272EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step272EarlyControl_classOwned : ([769, 927, 838] : List Wire).toFinset⊆s6Step272EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_positiveBorrow : s6Step272EarlyControlZeroArena.checkBorrow (1) s6Step272EarlyControlLog.positiveWork=some s6Step272EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step272EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step272EarlyControlPositiveArena,s6Step272EarlyControlZeroArena,s6Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step272EarlyControl_class : compileHmrSourceClassLog s6Step272EarlyControlZeroArena false 769 s6Step272EarlyControlZeroPlan.top 0 838 s6Step272EarlyControlLog.positiveWork s6Step272EarlyControlLog.classWork=some s6Step272EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step272EarlyControlClassPlan s6Step272EarlyControlZeroArena false 769 s6Step272EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step272EarlyControl_classOwned
  · exact s6Step272EarlyControl_positiveBorrow
  · exact s6Step272EarlyControl_classEquality

private theorem s6Step272EarlyControl_entryRecordOwned : ([780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_fitBorrow : s6Step272EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step272EarlyControlLog.recordFresh=some s6Step272EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step272EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step272EarlyControlFittedArena,s6Step272EarlyControlFlagArena,s6Step272EarlyControlLog,arenaWires]

private theorem s6Step272EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step272EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_fit : compileHmrRecordGrowLog s6Step272EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step272EarlyControlLog.recordFresh=some s6Step272EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step272EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step272EarlyControl_fitBorrow

private theorem s6Step272EarlyControl_flagsBorrow : s6Step272EarlyControlEqualityArena.checkBorrow (6) s6Step272EarlyControlLog.flagWork=some s6Step272EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step272EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step272EarlyControlFlagArena,s6Step272EarlyControlEqualityArena,s6Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step272EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step272EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_flags : compileHmrFlagsLog s6Step272EarlyControlClassPlan.equalityArena s6Step272EarlyControlClassPlan.equality.top 253 252 251 s6Step272EarlyControlLog.flagWork=some s6Step272EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step272EarlyControl_flagsOwned⟩
  · exact s6Step272EarlyControl_flagsBorrow

private theorem s6Step272EarlyControl_historyBorrow : s6Step272EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step272EarlyControlLog.recordFresh=some s6Step272EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step272EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step272EarlyControlHistoryArena,s6Step272EarlyControlArena,s6Step272EarlyControlLog,arenaWires]

private theorem s6Step272EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_history : compileHmrRecordGrowLog s6Step272EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step272EarlyControlLog.recordFresh=some s6Step272EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step272EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step272EarlyControl_historyBorrow

private theorem s6Step272EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step272EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step272EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_sigmaRelease : s6Step272EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step272EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step272EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step272EarlyControlSigmaArena,s6Step272EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step272EarlyControl_sigma : compileHmrSigmaDropLog s6Step272EarlyControlHistoryArena false 0 0 254 838 []=some s6Step272EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step272EarlyControl_sigmaOwned⟩
  · exact s6Step272EarlyControl_sigmaRelease

private theorem s6Step272EarlyControl_zeroBorrow : s6Step272EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step272EarlyControlLog.zeroWork=some s6Step272EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step272EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step272EarlyControlZeroArena,s6Step272EarlyControlArena,s6Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step272EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step272EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EarlyControl_zero : compileHmrEqualityLog s6Step272EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step272EarlyControlLog.zeroWork=some (s6Step272EarlyControlZeroArena,s6Step272EarlyControlLog.zeroWork,s6Step272EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step272EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step272EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step272EarlyControl_logged : s6Step272EarlyControlPlan.Logged s6Step272EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 838 254 253 252 251 780 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step272EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step272EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step272EarlyControl_zero
  · exact s6Step272EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step272EarlyControl_flags
  · exact s6Step272EarlyControl_fit
  · exact s6Step272EarlyControl_history
  · exact s6Step272EarlyControl_sigma
  · exact s6Step272EarlyControl_branch

private theorem s6Step272EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step272EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 838 254 253 252 251 780 53 s6Step272EarlyControlLog=some s6Step272EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step272EarlyControlPlan s6Step272EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 838 254 253 252 251 780 53 s6Step272EarlyControl_logged

private def s6Step272EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩

private def s6Step272EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step272EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step272EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step272FrontBank : WindowBank := ⟨s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow⟩

private def s6Step272Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 809, 795]

private def s6Step272Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 813, 777]

private def s6Step272Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 776]

private def s6Step272Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 877, 775]

private theorem s6Step272Counter_apart : Disjoint s6Step272HeadFvAfter.live s6Step272CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step272HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272Counter_borrowed : s6Step272HeadFvAfter.checkBorrow 4 s6Step272CounterWork=some s6Step272CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step272HeadFvAfter s6Step272CounterDuring s6Step272CounterWork.toFinset s6Step272Counter_bounded s6Step272Counter_apart rfl

private theorem s6Step272Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step272HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step272HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272Counter_checked : compileHmrCounterStepLog s6Step272HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step272CounterWork=some s6Step272CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step272HeadFvAfter.live := fun q hq => s6Step272Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step272Counter_borrowed

private def s6Step272EntryFAfter : Arena := s6Step272EntryFBefore

private theorem s6Step272EntryBank_incomingDistinct : ([s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272EntryF_Incoming : rowsOwned s6Step272EntryFBefore [s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow] 0 s6Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272EntryBank_outgoingOwned : rowsOwned s6Step272EntryGvAfter [s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step272EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272EntryF_Outgoing : rowsOwned s6Step272EntryGvAfter [s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut] :=
  hmrRows_owned_drop s6Step272EntryGvAfter [s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut] 0 s6Step272EntryBank_outgoingOwned

private theorem s6Step272EntryF_distinct : (s6Step272EntryFRow.sign::s6Step272EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272EntryF_owned : (s6Step272EntryFRow.sign::s6Step272EntryFRow.payload).toFinset⊆s6Step272EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EntryF_reserved : s6Step272EntryFBefore.reserve s6Step272EntryFFresh.toFinset=some s6Step272EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272EntryFFresh,arenaWires]
  · norm_num [s6Step272EntryFBefore,s6Step272EntryFFresh,arenaWires]
  · simp only [s6Step272EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step272EntryF_checked : planRowResizeLog s6Step272EntryFBefore s6Step272EntryFRow 135 s6Step272EntryFFresh=
    some (s6Step272EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩,growRow 795 s6Step272EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step272EntryFBefore s6Step272EntryFAfter s6Step272EntryFRow 135 s6Step272EntryFFresh
    s6Step272EntryF_distinct s6Step272EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272EntryF_reserved
  have rowEq : WindowRow.mk (s6Step272EntryFRow.payload++s6Step272EntryFFresh) s6Step272EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step272EntryFvAfter : Arena := s6Step272EntryFBefore

private def s6Step272EntryFvBefore : Arena := s6Step272EntryFBefore

private theorem s6Step272EntryFv_Incoming : rowsOwned s6Step272EntryFvBefore [s6Step272EntryFvRow,s6Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow] 2 s6Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272EntryFv_Outgoing : rowsOwned s6Step272EntryGvAfter [s6Step272EntryFvOut,s6Step272EntryGvOut] :=
  hmrRows_owned_drop s6Step272EntryGvAfter [s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut] 2 s6Step272EntryBank_outgoingOwned

private theorem s6Step272EntryFv_distinct : (s6Step272EntryFvRow.sign::s6Step272EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272EntryFv_owned : (s6Step272EntryFvRow.sign::s6Step272EntryFvRow.payload).toFinset⊆s6Step272EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EntryFv_reserved : s6Step272EntryFvBefore.reserve s6Step272EntryFvFresh.toFinset=some s6Step272EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272EntryFvFresh,arenaWires]
  · norm_num [s6Step272EntryFvBefore,s6Step272EntryFBefore,s6Step272EntryFvFresh,arenaWires]
  · simp only [s6Step272EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step272EntryFv_checked : planRowResizeLog s6Step272EntryFvBefore s6Step272EntryFvRow 151 s6Step272EntryFvFresh=
    some (s6Step272EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩,growRow 776 s6Step272EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step272EntryFvBefore s6Step272EntryFvAfter s6Step272EntryFvRow 151 s6Step272EntryFvFresh
    s6Step272EntryFv_distinct s6Step272EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step272EntryFvRow.payload++s6Step272EntryFvFresh) s6Step272EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step272EntryGAfter : Arena := s6Step272EntryFBefore

private def s6Step272EntryGBefore : Arena := s6Step272EntryFBefore

private theorem s6Step272EntryG_Incoming : rowsOwned s6Step272EntryGBefore [s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow] 1 s6Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272EntryG_Outgoing : rowsOwned s6Step272EntryGvAfter [s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut] :=
  hmrRows_owned_drop s6Step272EntryGvAfter [s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut] 1 s6Step272EntryBank_outgoingOwned

private theorem s6Step272EntryG_distinct : (s6Step272EntryGRow.sign::s6Step272EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272EntryG_owned : (s6Step272EntryGRow.sign::s6Step272EntryGRow.payload).toFinset⊆s6Step272EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EntryG_reserved : s6Step272EntryGBefore.reserve s6Step272EntryGFresh.toFinset=some s6Step272EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272EntryGFresh,arenaWires]
  · norm_num [s6Step272EntryGBefore,s6Step272EntryFBefore,s6Step272EntryGFresh,arenaWires]
  · simp only [s6Step272EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step272EntryG_checked : planRowResizeLog s6Step272EntryGBefore s6Step272EntryGRow 135 s6Step272EntryGFresh=
    some (s6Step272EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩,growRow 777 s6Step272EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step272EntryGBefore s6Step272EntryGAfter s6Step272EntryGRow 135 s6Step272EntryGFresh
    s6Step272EntryG_distinct s6Step272EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272EntryG_reserved
  have rowEq : WindowRow.mk (s6Step272EntryGRow.payload++s6Step272EntryGFresh) s6Step272EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step272EntryGvBefore : Arena := s6Step272EntryFBefore

private theorem s6Step272EntryGv_Incoming : rowsOwned s6Step272EntryGvBefore [s6Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow] 3 s6Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272EntryGv_Outgoing : rowsOwned s6Step272EntryGvAfter [s6Step272EntryGvOut] :=
  hmrRows_owned_drop s6Step272EntryGvAfter [s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut] 3 s6Step272EntryBank_outgoingOwned

private theorem s6Step272EntryGv_distinct : (s6Step272EntryGvRow.sign::s6Step272EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272EntryGv_owned : (s6Step272EntryGvRow.sign::s6Step272EntryGvRow.payload).toFinset⊆s6Step272EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272EntryGv_reserved : s6Step272EntryGvBefore.reserve s6Step272EntryGvFresh.toFinset=some s6Step272EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272EntryGvFresh,arenaWires]
  · norm_num [s6Step272EntryGvBefore,s6Step272EntryFBefore,s6Step272EntryGvFresh,arenaWires]
  · simp only [s6Step272EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step272EntryGv_checked : planRowResizeLog s6Step272EntryGvBefore s6Step272EntryGvRow 151 s6Step272EntryGvFresh=
    some (s6Step272EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩,growRow 775 s6Step272EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step272EntryGvBefore s6Step272EntryGvAfter s6Step272EntryGvRow 151 s6Step272EntryGvFresh
    s6Step272EntryGv_distinct s6Step272EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step272EntryGvRow.payload++s6Step272EntryGvFresh) s6Step272EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step272EntryBank_rows : planWindowRowsLog s6Step272EntryFBefore [(s6Step272EntryFRow,135),(s6Step272EntryGRow,135),(s6Step272EntryFvRow,151),(s6Step272EntryGvRow,151)] [s6Step272EntryFFresh,s6Step272EntryGFresh,s6Step272EntryFvFresh,s6Step272EntryGvFresh]=
    some (s6Step272EntryGvAfter,[s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut],(growRow 795 s6Step272EntryFFresh ++ (growRow 777 s6Step272EntryGFresh ++ (growRow 776 s6Step272EntryFvFresh ++ (growRow 775 s6Step272EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step272EntryGvAfter [] []=some (s6Step272EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step272EntryGvBefore s6Step272EntryGvAfter s6Step272EntryGvAfter
    s6Step272EntryGvRow s6Step272EntryGvOut 151 s6Step272EntryGvFresh [] [] []
    (growRow 775 s6Step272EntryGvFresh) ([]) s6Step272EntryGv_Incoming s6Step272EntryGv_checked h4 s6Step272EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step272EntryFvBefore s6Step272EntryFvAfter s6Step272EntryGvAfter
    s6Step272EntryFvRow s6Step272EntryFvOut 151 s6Step272EntryFvFresh [(s6Step272EntryGvRow,151)] [s6Step272EntryGvFresh] [s6Step272EntryGvOut]
    (growRow 776 s6Step272EntryFvFresh) ((growRow 775 s6Step272EntryGvFresh ++ [])) s6Step272EntryFv_Incoming s6Step272EntryFv_checked h3 s6Step272EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step272EntryGBefore s6Step272EntryGAfter s6Step272EntryGvAfter
    s6Step272EntryGRow s6Step272EntryGOut 135 s6Step272EntryGFresh [(s6Step272EntryFvRow,151),(s6Step272EntryGvRow,151)] [s6Step272EntryFvFresh,s6Step272EntryGvFresh] [s6Step272EntryFvOut,s6Step272EntryGvOut]
    (growRow 777 s6Step272EntryGFresh) ((growRow 776 s6Step272EntryFvFresh ++ (growRow 775 s6Step272EntryGvFresh ++ []))) s6Step272EntryG_Incoming s6Step272EntryG_checked h2 s6Step272EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step272EntryFBefore s6Step272EntryFAfter s6Step272EntryGvAfter
    s6Step272EntryFRow s6Step272EntryFOut 135 s6Step272EntryFFresh [(s6Step272EntryGRow,135),(s6Step272EntryFvRow,151),(s6Step272EntryGvRow,151)] [s6Step272EntryGFresh,s6Step272EntryFvFresh,s6Step272EntryGvFresh] [s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut]
    (growRow 795 s6Step272EntryFFresh) ((growRow 777 s6Step272EntryGFresh ++ (growRow 776 s6Step272EntryFvFresh ++ (growRow 775 s6Step272EntryGvFresh ++ [])))) s6Step272EntryF_Incoming s6Step272EntryF_checked h1 s6Step272EntryF_Outgoing
  exact h0

private theorem s6Step272EntryBank_checked : compileHmrBankResizeLog .entry s6Step272EntryFBefore ⟨s6Step272EntryFRow,s6Step272EntryGRow,s6Step272EntryFvRow,s6Step272EntryGvRow⟩ ⟨135,135,151,151⟩ [s6Step272EntryFFresh,s6Step272EntryGFresh,s6Step272EntryFvFresh,s6Step272EntryGvFresh]=
    some (s6Step272EntryGvAfter,⟨s6Step272EntryFOut,s6Step272EntryGOut,s6Step272EntryFvOut,s6Step272EntryGvOut⟩,(growRow 795 s6Step272EntryFFresh ++ (growRow 777 s6Step272EntryGFresh ++ (growRow 776 s6Step272EntryFvFresh ++ (growRow 775 s6Step272EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step272EntryBank_rows]
  rfl

private def s6Step272ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<390) ∨ (391≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272ExitFBefore : Arena := s6Step272ExitGAfter

private def s6Step272ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 809],795⟩

private def s6Step272ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step272ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 813],777⟩

private def s6Step272ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 877],775⟩

private theorem s6Step272ExitBank_incomingDistinct : ([s6Step272ExitGRow,s6Step272ExitFRow,s6Step272ExitFvRow,s6Step272ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272ExitF_Incoming : rowsOwned s6Step272ExitFBefore [s6Step272ExitFRow,s6Step272ExitFvRow,s6Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272ExitGRow,s6Step272ExitFRow,s6Step272ExitFvRow,s6Step272ExitGvRow] 1 s6Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272ExitBank_outgoingOwned : rowsOwned s6Step272ExitGvAfter [s6Step272ExitGOut,s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step272ExitGvAfter (fun q => (0≤q ∧ q<390) ∨ (391≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272ExitF_Outgoing : rowsOwned s6Step272ExitGvAfter [s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut] :=
  hmrRows_owned_drop s6Step272ExitGvAfter [s6Step272ExitGOut,s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut] 1 s6Step272ExitBank_outgoingOwned

private theorem s6Step272ExitF_distinct : (s6Step272ExitFRow.sign::s6Step272ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272ExitF_owned : (s6Step272ExitFRow.sign::s6Step272ExitFRow.payload).toFinset⊆s6Step272ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272ExitF_retired : s6Step272ExitFBefore.retireSet s6Step272ExitFExtra.toFinset=s6Step272ExitFAfter := by
  unfold Arena.retireSet s6Step272ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step272ExitFBefore,s6Step272ExitGAfter,s6Step272ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step272ExitF_checked : planRowResizeLog s6Step272ExitFBefore s6Step272ExitFRow 134 []=
    some (s6Step272ExitFAfter,s6Step272ExitFOut,shrinkRow 795 s6Step272ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step272ExitFBefore s6Step272ExitFRow 134 s6Step272ExitF_distinct s6Step272ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step272ExitFRow.payload.take 134) s6Step272ExitFRow.sign=s6Step272ExitFOut := by decide +kernel
  have hi : s6Step272ExitFRow.payload.drop 134=s6Step272ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step272ExitF_retired] at result
  exact result

private def s6Step272ExitFvAfter : Arena := s6Step272ExitFAfter

private def s6Step272ExitFvBefore : Arena := s6Step272ExitFAfter

private theorem s6Step272ExitFv_Incoming : rowsOwned s6Step272ExitFvBefore [s6Step272ExitFvRow,s6Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272ExitGRow,s6Step272ExitFRow,s6Step272ExitFvRow,s6Step272ExitGvRow] 2 s6Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272ExitFvBefore (fun q => (0≤q ∧ q<390) ∨ (391≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272ExitFv_Outgoing : rowsOwned s6Step272ExitGvAfter [s6Step272ExitFvOut,s6Step272ExitGvOut] :=
  hmrRows_owned_drop s6Step272ExitGvAfter [s6Step272ExitGOut,s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut] 2 s6Step272ExitBank_outgoingOwned

private theorem s6Step272ExitFv_distinct : (s6Step272ExitFvRow.sign::s6Step272ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272ExitFv_owned : (s6Step272ExitFvRow.sign::s6Step272ExitFvRow.payload).toFinset⊆s6Step272ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272ExitFvBefore (fun q => (0≤q ∧ q<390) ∨ (391≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272ExitFv_reserved : s6Step272ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step272ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step272ExitFv_checked : planRowResizeLog s6Step272ExitFvBefore s6Step272ExitFvRow 152 []=
    some (s6Step272ExitFvAfter,s6Step272ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step272ExitFvBefore s6Step272ExitFvAfter s6Step272ExitFvRow 152 []
    s6Step272ExitFv_distinct s6Step272ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step272ExitFvRow.payload++[]) s6Step272ExitFvRow.sign=s6Step272ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step272ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step272ExitG_Incoming : rowsOwned s6Step272ExitGBefore [s6Step272ExitGRow,s6Step272ExitFRow,s6Step272ExitFvRow,s6Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272ExitGRow,s6Step272ExitFRow,s6Step272ExitFvRow,s6Step272ExitGvRow] 0 s6Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272ExitG_Outgoing : rowsOwned s6Step272ExitGvAfter [s6Step272ExitGOut,s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut] :=
  hmrRows_owned_drop s6Step272ExitGvAfter [s6Step272ExitGOut,s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut] 0 s6Step272ExitBank_outgoingOwned

private theorem s6Step272ExitG_distinct : (s6Step272ExitGRow.sign::s6Step272ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272ExitG_owned : (s6Step272ExitGRow.sign::s6Step272ExitGRow.payload).toFinset⊆s6Step272ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272ExitG_retired : s6Step272ExitGBefore.retireSet s6Step272ExitGExtra.toFinset=s6Step272ExitGAfter := by
  unfold Arena.retireSet s6Step272ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step272ExitGBefore,s6Step272ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step272ExitG_checked : planRowResizeLog s6Step272ExitGBefore s6Step272ExitGRow 135 []=
    some (s6Step272ExitGAfter,s6Step272ExitGOut,shrinkRow 777 s6Step272ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step272ExitGBefore s6Step272ExitGRow 135 s6Step272ExitG_distinct s6Step272ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step272ExitGRow.payload.take 135) s6Step272ExitGRow.sign=s6Step272ExitGOut := by decide +kernel
  have hi : s6Step272ExitGRow.payload.drop 135=s6Step272ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step272ExitG_retired] at result
  exact result

private def s6Step272ExitGvBefore : Arena := s6Step272ExitFAfter

private theorem s6Step272ExitGv_Incoming : rowsOwned s6Step272ExitGvBefore [s6Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272ExitGRow,s6Step272ExitFRow,s6Step272ExitFvRow,s6Step272ExitGvRow] 3 s6Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272ExitGvBefore (fun q => (0≤q ∧ q<390) ∨ (391≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272ExitGv_Outgoing : rowsOwned s6Step272ExitGvAfter [s6Step272ExitGvOut] :=
  hmrRows_owned_drop s6Step272ExitGvAfter [s6Step272ExitGOut,s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut] 3 s6Step272ExitBank_outgoingOwned

private theorem s6Step272ExitGv_distinct : (s6Step272ExitGvRow.sign::s6Step272ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272ExitGv_owned : (s6Step272ExitGvRow.sign::s6Step272ExitGvRow.payload).toFinset⊆s6Step272ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272ExitGvBefore (fun q => (0≤q ∧ q<390) ∨ (391≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272ExitGv_retired : s6Step272ExitGvBefore.retireSet s6Step272ExitGvExtra.toFinset=s6Step272ExitGvAfter := by
  unfold Arena.retireSet s6Step272ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step272ExitGvBefore,s6Step272ExitFAfter,s6Step272ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step272ExitGv_checked : planRowResizeLog s6Step272ExitGvBefore s6Step272ExitGvRow 151 []=
    some (s6Step272ExitGvAfter,s6Step272ExitGvOut,shrinkRow 775 s6Step272ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step272ExitGvBefore s6Step272ExitGvRow 151 s6Step272ExitGv_distinct s6Step272ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step272ExitGvRow.payload.take 151) s6Step272ExitGvRow.sign=s6Step272ExitGvOut := by decide +kernel
  have hi : s6Step272ExitGvRow.payload.drop 151=s6Step272ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step272ExitGv_retired] at result
  exact result

private theorem s6Step272ExitBank_rows : planWindowRowsLog s6Step272ExitGBefore [(s6Step272ExitGRow,135),(s6Step272ExitFRow,134),(s6Step272ExitFvRow,152),(s6Step272ExitGvRow,151)] [[],[],[],[]]=
    some (s6Step272ExitGvAfter,[s6Step272ExitGOut,s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut],(shrinkRow 777 s6Step272ExitGExtra ++ (shrinkRow 795 s6Step272ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step272ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step272ExitGvAfter [] []=some (s6Step272ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step272ExitGvBefore s6Step272ExitGvAfter s6Step272ExitGvAfter
    s6Step272ExitGvRow s6Step272ExitGvOut 151 [] [] [] []
    (shrinkRow 775 s6Step272ExitGvExtra) ([]) s6Step272ExitGv_Incoming s6Step272ExitGv_checked h4 s6Step272ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step272ExitFvBefore s6Step272ExitFvAfter s6Step272ExitGvAfter
    s6Step272ExitFvRow s6Step272ExitFvOut 152 [] [(s6Step272ExitGvRow,151)] [[]] [s6Step272ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step272ExitGvExtra ++ [])) s6Step272ExitFv_Incoming s6Step272ExitFv_checked h3 s6Step272ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step272ExitFBefore s6Step272ExitFAfter s6Step272ExitGvAfter
    s6Step272ExitFRow s6Step272ExitFOut 134 [] [(s6Step272ExitFvRow,152),(s6Step272ExitGvRow,151)] [[],[]] [s6Step272ExitFvOut,s6Step272ExitGvOut]
    (shrinkRow 795 s6Step272ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step272ExitGvExtra ++ []))) s6Step272ExitF_Incoming s6Step272ExitF_checked h2 s6Step272ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step272ExitGBefore s6Step272ExitGAfter s6Step272ExitGvAfter
    s6Step272ExitGRow s6Step272ExitGOut 135 [] [(s6Step272ExitFRow,134),(s6Step272ExitFvRow,152),(s6Step272ExitGvRow,151)] [[],[],[]] [s6Step272ExitFOut,s6Step272ExitFvOut,s6Step272ExitGvOut]
    (shrinkRow 777 s6Step272ExitGExtra) ((shrinkRow 795 s6Step272ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step272ExitGvExtra ++ [])))) s6Step272ExitG_Incoming s6Step272ExitG_checked h1 s6Step272ExitG_Outgoing
  exact h0

private theorem s6Step272ExitBank_checked : compileHmrBankResizeLog .exit s6Step272ExitGBefore ⟨s6Step272ExitFRow,s6Step272ExitGRow,s6Step272ExitFvRow,s6Step272ExitGvRow⟩ ⟨134,135,152,151⟩ [[],[],[],[]]=
    some (s6Step272ExitGvAfter,⟨s6Step272ExitFOut,s6Step272ExitGOut,s6Step272ExitFvOut,s6Step272ExitGvOut⟩,(shrinkRow 777 s6Step272ExitGExtra ++ (shrinkRow 795 s6Step272ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step272ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step272ExitBank_rows]
  rfl

private theorem s6Step272Add0_apart : Disjoint s6Step272Add0Arena.live s6Step272Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step272Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272Add0_card : s6Step272Add0Arena.live.card=899 := by
  decide +kernel

private theorem s6Step272Add0_borrowed : s6Step272Add0Arena.checkBorrow (hmrHybridCount s6Step272Add0Arena s6Step272Add0B.length) s6Step272Add0Work=some s6Step272Add0During := by
  have len : s6Step272Add0Work.length=hmrHybridCount s6Step272Add0Arena s6Step272Add0B.length := by
    rw [hmrHybridCount,s6Step272Add0_card]
    decide +kernel
  have nd : s6Step272Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step272Add0Arena s6Step272Add0During s6Step272Add0Work.toFinset s6Step272Add0_bounded s6Step272Add0_apart rfl

private theorem s6Step272Add0_distinct : (927::780::867::(s6Step272Add0A++s6Step272Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272Add0_owned : (927::780::867::(s6Step272Add0A++s6Step272Add0B)).toFinset⊆s6Step272Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step272Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272Add0_checked : compileHmrHybridCinLog s6Step272Add0Arena 780 927 867 s6Step272Add0A s6Step272Add0B s6Step272Add0Work=some s6Step272Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step272Add0Arena s6Step272Add0During 780 927 867 s6Step272Add0A s6Step272Add0B s6Step272Add0Work
    (by decide +kernel) (by decide +kernel) s6Step272Add0_distinct
    (fun q hq => s6Step272Add0_owned (List.mem_toFinset.mpr hq)) s6Step272Add0_borrowed

private theorem s6Step272Add1_apart : Disjoint s6Step272Add1Arena.live s6Step272Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step272Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272Add1_card : s6Step272Add1Arena.live.card=899 := by
  decide +kernel

private theorem s6Step272Add1_borrowed : s6Step272Add1Arena.checkBorrow (hmrHybridCount s6Step272Add1Arena s6Step272Add1B.length) s6Step272Add1Work=some s6Step272Add1During := by
  have len : s6Step272Add1Work.length=hmrHybridCount s6Step272Add1Arena s6Step272Add1B.length := by
    rw [hmrHybridCount,s6Step272Add1_card]
    decide +kernel
  have nd : s6Step272Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step272Add1Arena s6Step272Add1During s6Step272Add1Work.toFinset s6Step272Add1_bounded s6Step272Add1_apart rfl

private theorem s6Step272Add1_distinct : (927::780::867::(s6Step272Add1A++s6Step272Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272Add1_owned : (927::780::867::(s6Step272Add1A++s6Step272Add1B)).toFinset⊆s6Step272Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step272Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272Add1_checked : compileHmrHybridCinLog s6Step272Add1Arena 780 927 867 s6Step272Add1A s6Step272Add1B s6Step272Add1Work=some s6Step272Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step272Add1Arena s6Step272Add1During 780 927 867 s6Step272Add1A s6Step272Add1B s6Step272Add1Work
    (by decide +kernel) (by decide +kernel) s6Step272Add1_distinct
    (fun q hq => s6Step272Add1_owned (List.mem_toFinset.mpr hq)) s6Step272Add1_borrowed

private theorem s6Step272F4_apart : Disjoint (s6Step272Add0A++s6Step272Add0B).toFinset (s6Step272Add1A++s6Step272Add1B).toFinset := by
  have nd : ((s6Step272Add0A++s6Step272Add0B)++(s6Step272Add1A++s6Step272Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step272F4_carry : s6Step272F4FlagArena.checkBorrow 1 [867]=some s6Step272Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step272F4FlagArena,s6Step272HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step272F4FlagArena,s6Step272HeadFvAfter,s6Step272Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step272F4_distinct : (838::780::927::867::((s6Step272Add0A++s6Step272Add1A)++(s6Step272Add0B++s6Step272Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272F4_flag : s6Step272HeadFvAfter.checkBorrow 1 [927]=some s6Step272F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step272HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step272F4_owned : (838::780::((s6Step272Add0A++s6Step272Add1A)++(s6Step272Add0B++s6Step272Add1B))).toFinset⊆s6Step272HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step272HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272F4_checked : compileHmrHybridF4Log s6Step272HeadFvAfter 838 780 s6Step272Add0A s6Step272Add0B s6Step272Add1A s6Step272Add1B [927] [867] s6Step272Add0Work s6Step272Add1Work=some s6Step272F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step272HeadFvAfter s6Step272F4FlagArena s6Step272Add0Arena s6Step272Add0During s6Step272Add1During 838 780
    s6Step272Add0A s6Step272Add0B s6Step272Add1A s6Step272Add1B [927] [867] s6Step272Add0Work s6Step272Add1Work
    (fun q hq => s6Step272F4_owned (List.mem_toFinset.mpr hq)) s6Step272F4_flag s6Step272F4_carry
    s6Step272F4_distinct s6Step272F4_apart s6Step272Add0_checked s6Step272Add1_checked

private theorem s6Step272Front_branch : s6Step272FrontSigmaArena.checkBorrow 1 [780]=some s6Step272HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step272FrontSigmaArena,s6Step272EntryGvAfter,s6Step272EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step272FrontSigmaArena,s6Step272EntryGvAfter,s6Step272EntryFBefore,s6Step272HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step272Front_entry : HmrFrontEntryValid s6Step272EntryFBefore s6Step272FrontBank 135 151 ⟨134,135,152,151⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step272FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step272EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step272EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step272FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step272Front_sigma : s6Step272EntryGvAfter.checkBorrow 1 [838]=some s6Step272FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step272EntryGvAfter,s6Step272EntryFBefore,arenaWires]
  · rfl

private def s6Step272HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272HeadFBefore : Arena := s6Step272HeadGAfter

private def s6Step272HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩

private def s6Step272HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step272HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step272HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private theorem s6Step272HeadBank_incomingDistinct : ([s6Step272HeadGRow,s6Step272HeadFRow,s6Step272HeadGvRow,s6Step272HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272HeadF_Incoming : rowsOwned s6Step272HeadFBefore [s6Step272HeadFRow,s6Step272HeadGvRow,s6Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272HeadGRow,s6Step272HeadFRow,s6Step272HeadGvRow,s6Step272HeadFvRow] 1 s6Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272HeadBank_outgoingOwned : rowsOwned s6Step272HeadFvAfter [s6Step272HeadGOut,s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step272HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272HeadF_Outgoing : rowsOwned s6Step272HeadFvAfter [s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut] :=
  hmrRows_owned_drop s6Step272HeadFvAfter [s6Step272HeadGOut,s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut] 1 s6Step272HeadBank_outgoingOwned

private theorem s6Step272HeadF_distinct : (s6Step272HeadFRow.sign::s6Step272HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272HeadF_owned : (s6Step272HeadFRow.sign::s6Step272HeadFRow.payload).toFinset⊆s6Step272HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272HeadF_reserved : s6Step272HeadFBefore.reserve s6Step272HeadFFresh.toFinset=some s6Step272HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272HeadFFresh,arenaWires]
  · norm_num [s6Step272HeadFBefore,s6Step272HeadGAfter,s6Step272HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step272HeadFAfter,s6Step272HeadFBefore,s6Step272HeadGAfter,s6Step272HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step272HeadF_checked : planRowResizeLog s6Step272HeadFBefore s6Step272HeadFRow 136 s6Step272HeadFFresh=
    some (s6Step272HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 809],795⟩,growRow 795 s6Step272HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step272HeadFBefore s6Step272HeadFAfter s6Step272HeadFRow 136 s6Step272HeadFFresh
    s6Step272HeadF_distinct s6Step272HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272HeadF_reserved
  have rowEq : WindowRow.mk (s6Step272HeadFRow.payload++s6Step272HeadFFresh) s6Step272HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 809],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step272HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step272HeadFvBefore : Arena := s6Step272HeadGvAfter

private theorem s6Step272HeadFv_Incoming : rowsOwned s6Step272HeadFvBefore [s6Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272HeadGRow,s6Step272HeadFRow,s6Step272HeadGvRow,s6Step272HeadFvRow] 3 s6Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272HeadFv_Outgoing : rowsOwned s6Step272HeadFvAfter [s6Step272HeadFvOut] :=
  hmrRows_owned_drop s6Step272HeadFvAfter [s6Step272HeadGOut,s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut] 3 s6Step272HeadBank_outgoingOwned

private theorem s6Step272HeadFv_distinct : (s6Step272HeadFvRow.sign::s6Step272HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272HeadFv_owned : (s6Step272HeadFvRow.sign::s6Step272HeadFvRow.payload).toFinset⊆s6Step272HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272HeadFv_reserved : s6Step272HeadFvBefore.reserve s6Step272HeadFvFresh.toFinset=some s6Step272HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272HeadFvFresh,arenaWires]
  · norm_num [s6Step272HeadFvBefore,s6Step272HeadGvAfter,s6Step272HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step272HeadFvAfter,s6Step272HeadFvBefore,s6Step272HeadGvAfter,s6Step272HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step272HeadFv_checked : planRowResizeLog s6Step272HeadFvBefore s6Step272HeadFvRow 152 s6Step272HeadFvFresh=
    some (s6Step272HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩,growRow 776 s6Step272HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step272HeadFvBefore s6Step272HeadFvAfter s6Step272HeadFvRow 152 s6Step272HeadFvFresh
    s6Step272HeadFv_distinct s6Step272HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step272HeadFvRow.payload++s6Step272HeadFvFresh) s6Step272HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step272HeadG_Incoming : rowsOwned s6Step272HeadGBefore [s6Step272HeadGRow,s6Step272HeadFRow,s6Step272HeadGvRow,s6Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272HeadGRow,s6Step272HeadFRow,s6Step272HeadGvRow,s6Step272HeadFvRow] 0 s6Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272HeadG_Outgoing : rowsOwned s6Step272HeadFvAfter [s6Step272HeadGOut,s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut] :=
  hmrRows_owned_drop s6Step272HeadFvAfter [s6Step272HeadGOut,s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut] 0 s6Step272HeadBank_outgoingOwned

private theorem s6Step272HeadG_distinct : (s6Step272HeadGRow.sign::s6Step272HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272HeadG_owned : (s6Step272HeadGRow.sign::s6Step272HeadGRow.payload).toFinset⊆s6Step272HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272HeadG_reserved : s6Step272HeadGBefore.reserve s6Step272HeadGFresh.toFinset=some s6Step272HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272HeadGFresh,arenaWires]
  · norm_num [s6Step272HeadGBefore,s6Step272HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step272HeadGAfter,s6Step272HeadGBefore,s6Step272HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step272HeadG_checked : planRowResizeLog s6Step272HeadGBefore s6Step272HeadGRow 136 s6Step272HeadGFresh=
    some (s6Step272HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 813],777⟩,growRow 777 s6Step272HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step272HeadGBefore s6Step272HeadGAfter s6Step272HeadGRow 136 s6Step272HeadGFresh
    s6Step272HeadG_distinct s6Step272HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272HeadG_reserved
  have rowEq : WindowRow.mk (s6Step272HeadGRow.payload++s6Step272HeadGFresh) s6Step272HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step272HeadGvBefore : Arena := s6Step272HeadFAfter

private theorem s6Step272HeadGv_Incoming : rowsOwned s6Step272HeadGvBefore [s6Step272HeadGvRow,s6Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step272HeadGRow,s6Step272HeadFRow,s6Step272HeadGvRow,s6Step272HeadFvRow] 2 s6Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step272HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step272HeadGv_Outgoing : rowsOwned s6Step272HeadFvAfter [s6Step272HeadGvOut,s6Step272HeadFvOut] :=
  hmrRows_owned_drop s6Step272HeadFvAfter [s6Step272HeadGOut,s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut] 2 s6Step272HeadBank_outgoingOwned

private theorem s6Step272HeadGv_distinct : (s6Step272HeadGvRow.sign::s6Step272HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step272HeadGv_owned : (s6Step272HeadGvRow.sign::s6Step272HeadGvRow.payload).toFinset⊆s6Step272HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step272HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step272HeadGv_reserved : s6Step272HeadGvBefore.reserve s6Step272HeadGvFresh.toFinset=some s6Step272HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step272HeadGvFresh,arenaWires]
  · norm_num [s6Step272HeadGvBefore,s6Step272HeadFAfter,s6Step272HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step272HeadGvAfter,s6Step272HeadGvBefore,s6Step272HeadFAfter,s6Step272HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step272HeadGv_checked : planRowResizeLog s6Step272HeadGvBefore s6Step272HeadGvRow 152 s6Step272HeadGvFresh=
    some (s6Step272HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 877],775⟩,growRow 775 s6Step272HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step272HeadGvBefore s6Step272HeadGvAfter s6Step272HeadGvRow 152 s6Step272HeadGvFresh
    s6Step272HeadGv_distinct s6Step272HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step272HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step272HeadGvRow.payload++s6Step272HeadGvFresh) s6Step272HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step272HeadBank_rows : planWindowRowsLog s6Step272HeadGBefore [(s6Step272HeadGRow,136),(s6Step272HeadFRow,136),(s6Step272HeadGvRow,152),(s6Step272HeadFvRow,152)] [s6Step272HeadGFresh,s6Step272HeadFFresh,s6Step272HeadGvFresh,s6Step272HeadFvFresh]=
    some (s6Step272HeadFvAfter,[s6Step272HeadGOut,s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut],(growRow 777 s6Step272HeadGFresh ++ (growRow 795 s6Step272HeadFFresh ++ (growRow 775 s6Step272HeadGvFresh ++ (growRow 776 s6Step272HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step272HeadFvAfter [] []=some (s6Step272HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step272HeadFvBefore s6Step272HeadFvAfter s6Step272HeadFvAfter
    s6Step272HeadFvRow s6Step272HeadFvOut 152 s6Step272HeadFvFresh [] [] []
    (growRow 776 s6Step272HeadFvFresh) ([]) s6Step272HeadFv_Incoming s6Step272HeadFv_checked h4 s6Step272HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step272HeadGvBefore s6Step272HeadGvAfter s6Step272HeadFvAfter
    s6Step272HeadGvRow s6Step272HeadGvOut 152 s6Step272HeadGvFresh [(s6Step272HeadFvRow,152)] [s6Step272HeadFvFresh] [s6Step272HeadFvOut]
    (growRow 775 s6Step272HeadGvFresh) ((growRow 776 s6Step272HeadFvFresh ++ [])) s6Step272HeadGv_Incoming s6Step272HeadGv_checked h3 s6Step272HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step272HeadFBefore s6Step272HeadFAfter s6Step272HeadFvAfter
    s6Step272HeadFRow s6Step272HeadFOut 136 s6Step272HeadFFresh [(s6Step272HeadGvRow,152),(s6Step272HeadFvRow,152)] [s6Step272HeadGvFresh,s6Step272HeadFvFresh] [s6Step272HeadGvOut,s6Step272HeadFvOut]
    (growRow 795 s6Step272HeadFFresh) ((growRow 775 s6Step272HeadGvFresh ++ (growRow 776 s6Step272HeadFvFresh ++ []))) s6Step272HeadF_Incoming s6Step272HeadF_checked h2 s6Step272HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step272HeadGBefore s6Step272HeadGAfter s6Step272HeadFvAfter
    s6Step272HeadGRow s6Step272HeadGOut 136 s6Step272HeadGFresh [(s6Step272HeadFRow,136),(s6Step272HeadGvRow,152),(s6Step272HeadFvRow,152)] [s6Step272HeadFFresh,s6Step272HeadGvFresh,s6Step272HeadFvFresh] [s6Step272HeadFOut,s6Step272HeadGvOut,s6Step272HeadFvOut]
    (growRow 777 s6Step272HeadGFresh) ((growRow 795 s6Step272HeadFFresh ++ (growRow 775 s6Step272HeadGvFresh ++ (growRow 776 s6Step272HeadFvFresh ++ [])))) s6Step272HeadG_Incoming s6Step272HeadG_checked h1 s6Step272HeadG_Outgoing
  exact h0

private theorem s6Step272HeadBank_checked : compileHmrBankResizeLog .headroom s6Step272HeadGBefore ⟨s6Step272HeadFRow,s6Step272HeadGRow,s6Step272HeadFvRow,s6Step272HeadGvRow⟩ ⟨136,136,152,152⟩ [s6Step272HeadGFresh,s6Step272HeadFFresh,s6Step272HeadGvFresh,s6Step272HeadFvFresh]=
    some (s6Step272HeadFvAfter,⟨s6Step272HeadFOut,s6Step272HeadGOut,s6Step272HeadFvOut,s6Step272HeadGvOut⟩,(growRow 777 s6Step272HeadGFresh ++ (growRow 795 s6Step272HeadFFresh ++ (growRow 775 s6Step272HeadGvFresh ++ (growRow 776 s6Step272HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step272HeadBank_rows]
  rfl

private theorem s6Step272Front_checked : compileHmrSourceFrontLog s6Step272EntryFBefore s6Step272FrontBank 135 151 ⟨134,135,152,151⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step272FrontLog=some s6Step272FrontPlan := by
  have pairEq : s6Step272FrontPair=⟨s6Step272HeadFRow,s6Step272HeadGRow,s6Step272HeadFvRow,s6Step272HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step272FrontHead=⟨s6Step272ExitFRow,s6Step272ExitGRow,s6Step272ExitFvRow,s6Step272ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step272Add0A=s6Step272FrontHead.f.wires := by decide +kernel
  have gEq : s6Step272Add0B=s6Step272FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step272Add1A=s6Step272FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step272Add1B=s6Step272FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step272EntryFBefore s6Step272FrontBank 135 151 ⟨134,135,152,151⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step272FrontLog s6Step272FrontPlan
  · exact s6Step272Front_entry
  · exact s6Step272EntryBank_checked
  · exact s6Step272Front_sigma
  · rfl
  · exact s6Step272Front_branch
  · rfl
  · simpa only [s6Step272FrontPlan,pairEq] using s6Step272HeadBank_checked
  · simpa only [s6Step272FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step272F4_checked
  · exact s6Step272Counter_checked
  · rfl
  · simpa only [s6Step272FrontPlan,headEq] using s6Step272ExitBank_checked

private theorem s6Step272Complete_explicit_checked : compileHmrEarlyStepLog s6Step272EntryFBefore s6Step272FrontBank 135 151 ⟨134,135,152,151⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step272CompleteLog=some s6Step272CompletePlan := by
  let Q := s6Step272EarlyControlPlan
  have hq := s6Step272EarlyControl_plan_checked
  have fv1 : s6Step272CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step272CompleteOut.fv.payload[2]?.getD s6Step272CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step272CompleteOut.fv.payload[3]?.getD s6Step272CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step272CompleteOut.fv.payload[4]?.getD s6Step272CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step272EntryFBefore s6Step272EarlyControlArena s6Step272FrontBank 135 151 ⟨134,135,152,151⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step272CompleteLog s6Step272FrontPlan Q
    s6Step272Front_checked s6Step272Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step272Complete_owned s6Step272Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step272EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 838 s6Step272CompleteOut.fv.second (s6Step272CompleteOut.fv.payload[2]?.getD s6Step272CompleteOut.fv.sign) (s6Step272CompleteOut.fv.payload[3]?.getD s6Step272CompleteOut.fv.sign) (s6Step272CompleteOut.fv.payload[4]?.getD s6Step272CompleteOut.fv.sign) 780 53 s6Step272EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep272Arena : Arena := s6Step272EntryFBefore
def s6PrivateStep272Bank : WindowBank := s6Step272FrontBank
def s6PrivateStep272Spec : HmrSourceWalkStepLog := ⟨135,151,⟨134,135,152,151⟩,53,.early s6Step272CompleteLog⟩
def s6PrivateStep272Plan : HmrSourceStepPlan := .early s6Step272CompletePlan
theorem s6PrivateStep272_source : s6PrivateStep272Spec=s6ObservedLogs272[0] := rfl
theorem s6PrivateStep272_checked : compileHmrSourceStepLog s6PrivateStep272Arena s6PrivateStep272Bank
    s6PrivateStep272Spec.fgWidth s6PrivateStep272Spec.vWidth s6PrivateStep272Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 272 s6PrivateStep272Spec.need none s6PrivateStep272Spec.log=some s6PrivateStep272Plan := by
  change compileHmrSourceStepLog s6Step272EntryFBefore s6Step272FrontBank 135 151 ⟨134,135,152,151⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 272 53 none (.early s6Step272CompleteLog)=some (.early s6Step272CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 272<498)]
  rw [s6Step272Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
