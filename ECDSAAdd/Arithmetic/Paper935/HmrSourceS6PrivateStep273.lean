import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep271
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

private def s6Step273CompleteMoves : List (Wire × Wire) := [(779,134)]

private def s6Step273EarlyControlLog : HmrEarlyControlLog := ⟨[779, 927, 867, 780, 813],[809],[830],[805, 817, 812, 915, 906, 899],[]⟩

private def s6Step273FrontLog : HmrFrontAllocationLog := ⟨⟨[[780], [], [], [838]],[[809], [813], [927], [867]],[[], [], [], []]⟩,[784],[877],[830],[805],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step273CompleteLog : HmrEarlyStepLog := ⟨s6Step273FrontLog,s6Step273CompleteMoves,s6Step273EarlyControlLog⟩

private def s6Step273ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩

private def s6Step273ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step273ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],777⟩

private def s6Step273ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩

private def s6Step273FrontOut : WindowBank := ⟨s6Step273ExitFOut,s6Step273ExitGOut,s6Step273ExitFvOut,s6Step273ExitGvOut⟩

private def s6Step273CompleteOut : WindowBank := s6Step273FrontOut.repacked s6Step273CompleteMoves

private def s6Step273EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step273EarlyControlPositiveArena,[809],s6Step273EarlyControlEqualityArena,[830],⟨⟨784,false⟩,[⟨⟨809,false⟩,830⟩]⟩⟩

private def s6Step273EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨772,false⟩,927⟩,⟨⟨771,false⟩,867⟩,⟨⟨770,false⟩,780⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step273EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step273EarlyControlZeroArena,s6Step273EarlyControlZeroPlan,s6Step273EarlyControlClassPlan,s6Step273EarlyControlFlagArena,s6Step273EarlyControlFittedArena,s6Step273EarlyControlHistoryArena,s6Step273EarlyControlSigmaArena,s6Step273EarlyControlOutputArena,s6Step273EarlyControlLog⟩

private def s6Step273CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step273Counter_bounded : s6Step273CounterWork.toFinset⊆arenaWires := by norm_num [s6Step273CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step273HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273CounterDuring : Arena := ⟨s6Step273HeadFvAfter.live∪s6Step273CounterWork.toFinset,Finset.union_subset s6Step273HeadFvAfter.bounded s6Step273Counter_bounded⟩

private def s6Step273EntryFFresh : List Wire := [780]

private def s6Step273EntryFvFresh : List Wire := []

private def s6Step273EntryGFresh : List Wire := []

private def s6Step273EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EntryGvFresh : List Wire := [838]

private def s6Step273ExitFExtra : List Wire := [780, 813]

private def s6Step273ExitFvExtra : List Wire := [867]

private def s6Step273ExitGExtra : List Wire := [134, 809]

private def s6Step273ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273ExitGvExtra : List Wire := [927]

private def s6Step273Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273Add0Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step273Add0_bounded : s6Step273Add0Work.toFinset⊆arenaWires := by
  have h : s6Step273Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step273Add0During : Arena := ⟨s6Step273Add0Arena.live∪s6Step273Add0Work.toFinset,Finset.union_subset s6Step273Add0Arena.bounded s6Step273Add0_bounded⟩

private def s6Step273Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273Add1Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step273Add1_bounded : s6Step273Add1Work.toFinset⊆arenaWires := by
  have h : s6Step273Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step273Add1During : Arena := ⟨s6Step273Add1Arena.live∪s6Step273Add1Work.toFinset,Finset.union_subset s6Step273Add1Arena.bounded s6Step273Add1_bounded⟩

private def s6Step273F4FlagArena : Arena := ⟨s6Step273HeadFvAfter.live∪{830},Finset.union_subset s6Step273HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step273F4Plan : HmrHybridF4Plan := ⟨s6Step273F4FlagArena,[830],s6Step273Add0Arena,[805],s6Step273Add0During,s6Step273Add0Work,s6Step273Add1During,s6Step273Add1Work⟩

private def s6Step273HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780, 813],795⟩

private def s6Step273HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 867],776⟩

private def s6Step273HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 809],777⟩

private def s6Step273HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 927],775⟩

private def s6Step273FrontHead : WindowBank := ⟨s6Step273HeadFOut,s6Step273HeadGOut,s6Step273HeadFvOut,s6Step273HeadGvOut⟩

private def s6Step273EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780],795⟩

private def s6Step273EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step273EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step273EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩

private def s6Step273FrontPair : WindowBank := ⟨s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut⟩

private def s6Step273FrontSigmaArena : Arena := ⟨s6Step273EntryGvAfter.live∪{784},Finset.union_subset s6Step273EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step273HeadFFresh : List Wire := [813]

private def s6Step273HeadFvFresh : List Wire := [867]

private def s6Step273HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273HeadGFresh : List Wire := [809]

private def s6Step273HeadGvFresh : List Wire := [927]

private def s6Step273FrontPlan : HmrSourceFront := ⟨s6Step273EntryGvAfter,s6Step273FrontPair,(growRow 795 s6Step273EntryFFresh ++ (growRow 777 s6Step273EntryGFresh ++ (growRow 776 s6Step273EntryFvFresh ++ (growRow 775 s6Step273EntryGvFresh ++ [])))),s6Step273FrontSigmaArena,[784],s6Step273HeadGBefore,[877],
  s6Step273HeadFvAfter,s6Step273FrontHead,(growRow 777 s6Step273HeadGFresh ++ (growRow 795 s6Step273HeadFFresh ++ (growRow 775 s6Step273HeadGvFresh ++ (growRow 776 s6Step273HeadFvFresh ++ [])))),s6Step273F4Plan,s6Step273CounterDuring,s6Step273CounterWork,s6Step273ExitGvAfter,s6Step273FrontOut,(shrinkRow 777 s6Step273ExitGExtra ++ (shrinkRow 795 s6Step273ExitFExtra ++ (shrinkRow 776 s6Step273ExitFvExtra ++ (shrinkRow 775 s6Step273ExitGvExtra ++ []))))⟩

private def s6Step273CompletePlan : HmrEarlyStepPlan := ⟨s6Step273FrontPlan,s6Step273EarlyControlArena,s6Step273EarlyControlPlan,s6Step273CompleteMoves⟩

private theorem s6Step273Complete_apart : List.Disjoint (s6Step273CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [784, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step273CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[784, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step273Complete_owned : (s6Step273CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step273CompleteMoveArena : Arena := ⟨s6Step273ExitGvAfter.live∪{134},Finset.union_subset s6Step273ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step273Complete_repack : s6Step273ExitGvAfter.checkRepack s6Step273CompleteMoves=some s6Step273EarlyControlArena := by
  have owned : 779∈s6Step273ExitGvAfter.live := by norm_num [s6Step273ExitGvAfter,arenaWires]
  have reserve : s6Step273ExitGvAfter.reserve {134}=some s6Step273CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step273ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step273CompleteMoveArena.retireSet {779}=s6Step273EarlyControlArena := by
    unfold Arena.retireSet s6Step273EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step273CompleteMoveArena,s6Step273ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step273CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step273CompleteMoveArena.retireSet {779}).checkRepack []=some s6Step273EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step273EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s6Step273EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_branch : compileHmrBranchRetirement s6Step273EarlyControlSigmaArena 877=some s6Step273EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step273EarlyControl_branchOwned
  · ext q
    simp [s6Step273EarlyControlOutputArena,s6Step273EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step273EarlyControl_classEqualityBorrow : s6Step273EarlyControlPositiveArena.checkBorrow (([784, 809] : List Wire).length-1) s6Step273EarlyControlLog.classWork=some s6Step273EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step273EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step273EarlyControlEqualityArena,s6Step273EarlyControlPositiveArena,s6Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step273EarlyControl_classEqualityOwned : ([784, 809] : List Wire).toFinset⊆s6Step273EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_classEquality : compileHmrEqualityLog s6Step273EarlyControlPositiveArena [784, 809] 0 s6Step273EarlyControlLog.classWork=some (s6Step273EarlyControlEqualityArena,s6Step273EarlyControlLog.classWork,s6Step273EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step273EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step273EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step273EarlyControl_classOwned : ([769, 813, 784] : List Wire).toFinset⊆s6Step273EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_positiveBorrow : s6Step273EarlyControlZeroArena.checkBorrow (1) s6Step273EarlyControlLog.positiveWork=some s6Step273EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step273EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step273EarlyControlPositiveArena,s6Step273EarlyControlZeroArena,s6Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step273EarlyControl_class : compileHmrSourceClassLog s6Step273EarlyControlZeroArena false 769 s6Step273EarlyControlZeroPlan.top 0 784 s6Step273EarlyControlLog.positiveWork s6Step273EarlyControlLog.classWork=some s6Step273EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step273EarlyControlClassPlan s6Step273EarlyControlZeroArena false 769 s6Step273EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s6Step273EarlyControl_classOwned
  · exact s6Step273EarlyControl_positiveBorrow
  · exact s6Step273EarlyControl_classEquality

private theorem s6Step273EarlyControl_entryRecordOwned : ([877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s6Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_fitBorrow : s6Step273EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step273EarlyControlLog.recordFresh=some s6Step273EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step273EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step273EarlyControlFittedArena,s6Step273EarlyControlFlagArena,s6Step273EarlyControlLog,arenaWires]

private theorem s6Step273EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step273EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_fit : compileHmrRecordGrowLog s6Step273EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step273EarlyControlLog.recordFresh=some s6Step273EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step273EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step273EarlyControl_fitBorrow

private theorem s6Step273EarlyControl_flagsBorrow : s6Step273EarlyControlEqualityArena.checkBorrow (6) s6Step273EarlyControlLog.flagWork=some s6Step273EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step273EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step273EarlyControlFlagArena,s6Step273EarlyControlEqualityArena,s6Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step273EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step273EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_flags : compileHmrFlagsLog s6Step273EarlyControlClassPlan.equalityArena s6Step273EarlyControlClassPlan.equality.top 253 252 251 s6Step273EarlyControlLog.flagWork=some s6Step273EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step273EarlyControl_flagsOwned⟩
  · exact s6Step273EarlyControl_flagsBorrow

private theorem s6Step273EarlyControl_historyBorrow : s6Step273EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step273EarlyControlLog.recordFresh=some s6Step273EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step273EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step273EarlyControlHistoryArena,s6Step273EarlyControlArena,s6Step273EarlyControlLog,arenaWires]

private theorem s6Step273EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_history : compileHmrRecordGrowLog s6Step273EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step273EarlyControlLog.recordFresh=some s6Step273EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step273EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step273EarlyControl_historyBorrow

private theorem s6Step273EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s6Step273EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s6Step273EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_sigmaRelease : s6Step273EarlyControlHistoryArena.release {784} (fun _ => false)=some s6Step273EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step273EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step273EarlyControlSigmaArena,s6Step273EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step273EarlyControl_sigma : compileHmrSigmaDropLog s6Step273EarlyControlHistoryArena false 0 0 254 784 []=some s6Step273EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step273EarlyControl_sigmaOwned⟩
  · exact s6Step273EarlyControl_sigmaRelease

private theorem s6Step273EarlyControl_zeroBorrow : s6Step273EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step273EarlyControlLog.zeroWork=some s6Step273EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step273EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step273EarlyControlZeroArena,s6Step273EarlyControlArena,s6Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step273EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step273EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EarlyControl_zero : compileHmrEqualityLog s6Step273EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step273EarlyControlLog.zeroWork=some (s6Step273EarlyControlZeroArena,s6Step273EarlyControlLog.zeroWork,s6Step273EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step273EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step273EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step273EarlyControl_logged : s6Step273EarlyControlPlan.Logged s6Step273EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 784 254 253 252 251 877 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step273EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step273EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step273EarlyControl_zero
  · exact s6Step273EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step273EarlyControl_flags
  · exact s6Step273EarlyControl_fit
  · exact s6Step273EarlyControl_history
  · exact s6Step273EarlyControl_sigma
  · exact s6Step273EarlyControl_branch

private theorem s6Step273EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step273EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 784 254 253 252 251 877 53 s6Step273EarlyControlLog=some s6Step273EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step273EarlyControlPlan s6Step273EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 784 254 253 252 251 877 53 s6Step273EarlyControl_logged

private def s6Step273EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩

private def s6Step273EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step273EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step273EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step273FrontBank : WindowBank := ⟨s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow⟩

private def s6Step273Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780, 813, 795]

private def s6Step273Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 809, 777]

private def s6Step273Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 867, 776]

private def s6Step273Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 927, 775]

private theorem s6Step273Counter_apart : Disjoint s6Step273HeadFvAfter.live s6Step273CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step273HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273Counter_borrowed : s6Step273HeadFvAfter.checkBorrow 4 s6Step273CounterWork=some s6Step273CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step273HeadFvAfter s6Step273CounterDuring s6Step273CounterWork.toFinset s6Step273Counter_bounded s6Step273Counter_apart rfl

private theorem s6Step273Counter_owned : (784::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step273HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step273HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273Counter_checked : compileHmrCounterStepLog s6Step273HeadFvAfter true 784 [774, 773, 772, 771, 770, 769] s6Step273CounterWork=some s6Step273CounterDuring := by
  have owned : ∀q∈784::[774, 773, 772, 771, 770, 769],q∈s6Step273HeadFvAfter.live := fun q hq => s6Step273Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step273Counter_borrowed

private def s6Step273EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step273EntryBank_incomingDistinct : ([s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273EntryF_Incoming : rowsOwned s6Step273EntryFBefore [s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow] 0 s6Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273EntryBank_outgoingOwned : rowsOwned s6Step273EntryGvAfter [s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step273EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273EntryF_Outgoing : rowsOwned s6Step273EntryGvAfter [s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut] :=
  hmrRows_owned_drop s6Step273EntryGvAfter [s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut] 0 s6Step273EntryBank_outgoingOwned

private theorem s6Step273EntryF_distinct : (s6Step273EntryFRow.sign::s6Step273EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273EntryF_owned : (s6Step273EntryFRow.sign::s6Step273EntryFRow.payload).toFinset⊆s6Step273EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EntryF_reserved : s6Step273EntryFBefore.reserve s6Step273EntryFFresh.toFinset=some s6Step273EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273EntryFFresh,arenaWires]
  · norm_num [s6Step273EntryFBefore,s6Step273EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step273EntryFAfter,s6Step273EntryFBefore,s6Step273EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273EntryF_checked : planRowResizeLog s6Step273EntryFBefore s6Step273EntryFRow 135 s6Step273EntryFFresh=
    some (s6Step273EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780],795⟩,growRow 795 s6Step273EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step273EntryFBefore s6Step273EntryFAfter s6Step273EntryFRow 135 s6Step273EntryFFresh
    s6Step273EntryF_distinct s6Step273EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273EntryF_reserved
  have rowEq : WindowRow.mk (s6Step273EntryFRow.payload++s6Step273EntryFFresh) s6Step273EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step273EntryFvAfter : Arena := s6Step273EntryFAfter

private def s6Step273EntryFvBefore : Arena := s6Step273EntryFAfter

private theorem s6Step273EntryFv_Incoming : rowsOwned s6Step273EntryFvBefore [s6Step273EntryFvRow,s6Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow] 2 s6Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273EntryFv_Outgoing : rowsOwned s6Step273EntryGvAfter [s6Step273EntryFvOut,s6Step273EntryGvOut] :=
  hmrRows_owned_drop s6Step273EntryGvAfter [s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut] 2 s6Step273EntryBank_outgoingOwned

private theorem s6Step273EntryFv_distinct : (s6Step273EntryFvRow.sign::s6Step273EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273EntryFv_owned : (s6Step273EntryFvRow.sign::s6Step273EntryFvRow.payload).toFinset⊆s6Step273EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EntryFv_reserved : s6Step273EntryFvBefore.reserve s6Step273EntryFvFresh.toFinset=some s6Step273EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273EntryFvFresh,arenaWires]
  · norm_num [s6Step273EntryFvBefore,s6Step273EntryFAfter,s6Step273EntryFvFresh,arenaWires]
  · simp only [s6Step273EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step273EntryFv_checked : planRowResizeLog s6Step273EntryFvBefore s6Step273EntryFvRow 152 s6Step273EntryFvFresh=
    some (s6Step273EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩,growRow 776 s6Step273EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step273EntryFvBefore s6Step273EntryFvAfter s6Step273EntryFvRow 152 s6Step273EntryFvFresh
    s6Step273EntryFv_distinct s6Step273EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step273EntryFvRow.payload++s6Step273EntryFvFresh) s6Step273EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step273EntryGAfter : Arena := s6Step273EntryFAfter

private def s6Step273EntryGBefore : Arena := s6Step273EntryFAfter

private theorem s6Step273EntryG_Incoming : rowsOwned s6Step273EntryGBefore [s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow] 1 s6Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273EntryG_Outgoing : rowsOwned s6Step273EntryGvAfter [s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut] :=
  hmrRows_owned_drop s6Step273EntryGvAfter [s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut] 1 s6Step273EntryBank_outgoingOwned

private theorem s6Step273EntryG_distinct : (s6Step273EntryGRow.sign::s6Step273EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273EntryG_owned : (s6Step273EntryGRow.sign::s6Step273EntryGRow.payload).toFinset⊆s6Step273EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EntryG_reserved : s6Step273EntryGBefore.reserve s6Step273EntryGFresh.toFinset=some s6Step273EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273EntryGFresh,arenaWires]
  · norm_num [s6Step273EntryGBefore,s6Step273EntryFAfter,s6Step273EntryGFresh,arenaWires]
  · simp only [s6Step273EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step273EntryG_checked : planRowResizeLog s6Step273EntryGBefore s6Step273EntryGRow 135 s6Step273EntryGFresh=
    some (s6Step273EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩,growRow 777 s6Step273EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step273EntryGBefore s6Step273EntryGAfter s6Step273EntryGRow 135 s6Step273EntryGFresh
    s6Step273EntryG_distinct s6Step273EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273EntryG_reserved
  have rowEq : WindowRow.mk (s6Step273EntryGRow.payload++s6Step273EntryGFresh) s6Step273EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step273EntryGvBefore : Arena := s6Step273EntryFAfter

private theorem s6Step273EntryGv_Incoming : rowsOwned s6Step273EntryGvBefore [s6Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow] 3 s6Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273EntryGv_Outgoing : rowsOwned s6Step273EntryGvAfter [s6Step273EntryGvOut] :=
  hmrRows_owned_drop s6Step273EntryGvAfter [s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut] 3 s6Step273EntryBank_outgoingOwned

private theorem s6Step273EntryGv_distinct : (s6Step273EntryGvRow.sign::s6Step273EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273EntryGv_owned : (s6Step273EntryGvRow.sign::s6Step273EntryGvRow.payload).toFinset⊆s6Step273EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273EntryGv_reserved : s6Step273EntryGvBefore.reserve s6Step273EntryGvFresh.toFinset=some s6Step273EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273EntryGvFresh,arenaWires]
  · norm_num [s6Step273EntryGvBefore,s6Step273EntryFAfter,s6Step273EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step273EntryGvAfter,s6Step273EntryGvBefore,s6Step273EntryFAfter,s6Step273EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273EntryGv_checked : planRowResizeLog s6Step273EntryGvBefore s6Step273EntryGvRow 152 s6Step273EntryGvFresh=
    some (s6Step273EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩,growRow 775 s6Step273EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step273EntryGvBefore s6Step273EntryGvAfter s6Step273EntryGvRow 152 s6Step273EntryGvFresh
    s6Step273EntryGv_distinct s6Step273EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step273EntryGvRow.payload++s6Step273EntryGvFresh) s6Step273EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step273EntryBank_rows : planWindowRowsLog s6Step273EntryFBefore [(s6Step273EntryFRow,135),(s6Step273EntryGRow,135),(s6Step273EntryFvRow,152),(s6Step273EntryGvRow,152)] [s6Step273EntryFFresh,s6Step273EntryGFresh,s6Step273EntryFvFresh,s6Step273EntryGvFresh]=
    some (s6Step273EntryGvAfter,[s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut],(growRow 795 s6Step273EntryFFresh ++ (growRow 777 s6Step273EntryGFresh ++ (growRow 776 s6Step273EntryFvFresh ++ (growRow 775 s6Step273EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step273EntryGvAfter [] []=some (s6Step273EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step273EntryGvBefore s6Step273EntryGvAfter s6Step273EntryGvAfter
    s6Step273EntryGvRow s6Step273EntryGvOut 152 s6Step273EntryGvFresh [] [] []
    (growRow 775 s6Step273EntryGvFresh) ([]) s6Step273EntryGv_Incoming s6Step273EntryGv_checked h4 s6Step273EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step273EntryFvBefore s6Step273EntryFvAfter s6Step273EntryGvAfter
    s6Step273EntryFvRow s6Step273EntryFvOut 152 s6Step273EntryFvFresh [(s6Step273EntryGvRow,152)] [s6Step273EntryGvFresh] [s6Step273EntryGvOut]
    (growRow 776 s6Step273EntryFvFresh) ((growRow 775 s6Step273EntryGvFresh ++ [])) s6Step273EntryFv_Incoming s6Step273EntryFv_checked h3 s6Step273EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step273EntryGBefore s6Step273EntryGAfter s6Step273EntryGvAfter
    s6Step273EntryGRow s6Step273EntryGOut 135 s6Step273EntryGFresh [(s6Step273EntryFvRow,152),(s6Step273EntryGvRow,152)] [s6Step273EntryFvFresh,s6Step273EntryGvFresh] [s6Step273EntryFvOut,s6Step273EntryGvOut]
    (growRow 777 s6Step273EntryGFresh) ((growRow 776 s6Step273EntryFvFresh ++ (growRow 775 s6Step273EntryGvFresh ++ []))) s6Step273EntryG_Incoming s6Step273EntryG_checked h2 s6Step273EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step273EntryFBefore s6Step273EntryFAfter s6Step273EntryGvAfter
    s6Step273EntryFRow s6Step273EntryFOut 135 s6Step273EntryFFresh [(s6Step273EntryGRow,135),(s6Step273EntryFvRow,152),(s6Step273EntryGvRow,152)] [s6Step273EntryGFresh,s6Step273EntryFvFresh,s6Step273EntryGvFresh] [s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut]
    (growRow 795 s6Step273EntryFFresh) ((growRow 777 s6Step273EntryGFresh ++ (growRow 776 s6Step273EntryFvFresh ++ (growRow 775 s6Step273EntryGvFresh ++ [])))) s6Step273EntryF_Incoming s6Step273EntryF_checked h1 s6Step273EntryF_Outgoing
  exact h0

private theorem s6Step273EntryBank_checked : compileHmrBankResizeLog .entry s6Step273EntryFBefore ⟨s6Step273EntryFRow,s6Step273EntryGRow,s6Step273EntryFvRow,s6Step273EntryGvRow⟩ ⟨135,135,152,152⟩ [s6Step273EntryFFresh,s6Step273EntryGFresh,s6Step273EntryFvFresh,s6Step273EntryGvFresh]=
    some (s6Step273EntryGvAfter,⟨s6Step273EntryFOut,s6Step273EntryGOut,s6Step273EntryFvOut,s6Step273EntryGvOut⟩,(growRow 795 s6Step273EntryFFresh ++ (growRow 777 s6Step273EntryGFresh ++ (growRow 776 s6Step273EntryFvFresh ++ (growRow 775 s6Step273EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step273EntryBank_rows]
  rfl

private def s6Step273ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273ExitFBefore : Arena := s6Step273ExitGAfter

private def s6Step273ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780, 813],795⟩

private def s6Step273ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 867],776⟩

private def s6Step273ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 809],777⟩

private def s6Step273ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 927],775⟩

private theorem s6Step273ExitBank_incomingDistinct : ([s6Step273ExitGRow,s6Step273ExitFRow,s6Step273ExitFvRow,s6Step273ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273ExitF_Incoming : rowsOwned s6Step273ExitFBefore [s6Step273ExitFRow,s6Step273ExitFvRow,s6Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273ExitGRow,s6Step273ExitFRow,s6Step273ExitFvRow,s6Step273ExitGvRow] 1 s6Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273ExitFBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273ExitBank_outgoingOwned : rowsOwned s6Step273ExitGvAfter [s6Step273ExitGOut,s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step273ExitGvAfter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273ExitF_Outgoing : rowsOwned s6Step273ExitGvAfter [s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut] :=
  hmrRows_owned_drop s6Step273ExitGvAfter [s6Step273ExitGOut,s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut] 1 s6Step273ExitBank_outgoingOwned

private theorem s6Step273ExitF_distinct : (s6Step273ExitFRow.sign::s6Step273ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273ExitF_owned : (s6Step273ExitFRow.sign::s6Step273ExitFRow.payload).toFinset⊆s6Step273ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273ExitFBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273ExitF_retired : s6Step273ExitFBefore.retireSet s6Step273ExitFExtra.toFinset=s6Step273ExitFAfter := by
  unfold Arena.retireSet s6Step273ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step273ExitFBefore,s6Step273ExitGAfter,s6Step273ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step273ExitF_checked : planRowResizeLog s6Step273ExitFBefore s6Step273ExitFRow 134 []=
    some (s6Step273ExitFAfter,s6Step273ExitFOut,shrinkRow 795 s6Step273ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step273ExitFBefore s6Step273ExitFRow 134 s6Step273ExitF_distinct s6Step273ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step273ExitFRow.payload.take 134) s6Step273ExitFRow.sign=s6Step273ExitFOut := by decide +kernel
  have hi : s6Step273ExitFRow.payload.drop 134=s6Step273ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step273ExitF_retired] at result
  exact result

private def s6Step273ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273ExitFvBefore : Arena := s6Step273ExitFAfter

private theorem s6Step273ExitFv_Incoming : rowsOwned s6Step273ExitFvBefore [s6Step273ExitFvRow,s6Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273ExitGRow,s6Step273ExitFRow,s6Step273ExitFvRow,s6Step273ExitGvRow] 2 s6Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273ExitFvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273ExitFv_Outgoing : rowsOwned s6Step273ExitGvAfter [s6Step273ExitFvOut,s6Step273ExitGvOut] :=
  hmrRows_owned_drop s6Step273ExitGvAfter [s6Step273ExitGOut,s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut] 2 s6Step273ExitBank_outgoingOwned

private theorem s6Step273ExitFv_distinct : (s6Step273ExitFvRow.sign::s6Step273ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273ExitFv_owned : (s6Step273ExitFvRow.sign::s6Step273ExitFvRow.payload).toFinset⊆s6Step273ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273ExitFvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273ExitFv_retired : s6Step273ExitFvBefore.retireSet s6Step273ExitFvExtra.toFinset=s6Step273ExitFvAfter := by
  unfold Arena.retireSet s6Step273ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step273ExitFvBefore,s6Step273ExitFAfter,s6Step273ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step273ExitFv_checked : planRowResizeLog s6Step273ExitFvBefore s6Step273ExitFvRow 152 []=
    some (s6Step273ExitFvAfter,s6Step273ExitFvOut,shrinkRow 776 s6Step273ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step273ExitFvBefore s6Step273ExitFvRow 152 s6Step273ExitFv_distinct s6Step273ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step273ExitFvRow.payload.take 152) s6Step273ExitFvRow.sign=s6Step273ExitFvOut := by decide +kernel
  have hi : s6Step273ExitFvRow.payload.drop 152=s6Step273ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step273ExitFv_retired] at result
  exact result

private def s6Step273ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step273ExitG_Incoming : rowsOwned s6Step273ExitGBefore [s6Step273ExitGRow,s6Step273ExitFRow,s6Step273ExitFvRow,s6Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273ExitGRow,s6Step273ExitFRow,s6Step273ExitFvRow,s6Step273ExitGvRow] 0 s6Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273ExitG_Outgoing : rowsOwned s6Step273ExitGvAfter [s6Step273ExitGOut,s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut] :=
  hmrRows_owned_drop s6Step273ExitGvAfter [s6Step273ExitGOut,s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut] 0 s6Step273ExitBank_outgoingOwned

private theorem s6Step273ExitG_distinct : (s6Step273ExitGRow.sign::s6Step273ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273ExitG_owned : (s6Step273ExitGRow.sign::s6Step273ExitGRow.payload).toFinset⊆s6Step273ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273ExitG_retired : s6Step273ExitGBefore.retireSet s6Step273ExitGExtra.toFinset=s6Step273ExitGAfter := by
  unfold Arena.retireSet s6Step273ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step273ExitGBefore,s6Step273ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step273ExitG_checked : planRowResizeLog s6Step273ExitGBefore s6Step273ExitGRow 134 []=
    some (s6Step273ExitGAfter,s6Step273ExitGOut,shrinkRow 777 s6Step273ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step273ExitGBefore s6Step273ExitGRow 134 s6Step273ExitG_distinct s6Step273ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step273ExitGRow.payload.take 134) s6Step273ExitGRow.sign=s6Step273ExitGOut := by decide +kernel
  have hi : s6Step273ExitGRow.payload.drop 134=s6Step273ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step273ExitG_retired] at result
  exact result

private def s6Step273ExitGvBefore : Arena := s6Step273ExitFvAfter

private theorem s6Step273ExitGv_Incoming : rowsOwned s6Step273ExitGvBefore [s6Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273ExitGRow,s6Step273ExitFRow,s6Step273ExitFvRow,s6Step273ExitGvRow] 3 s6Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273ExitGvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273ExitGv_Outgoing : rowsOwned s6Step273ExitGvAfter [s6Step273ExitGvOut] :=
  hmrRows_owned_drop s6Step273ExitGvAfter [s6Step273ExitGOut,s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut] 3 s6Step273ExitBank_outgoingOwned

private theorem s6Step273ExitGv_distinct : (s6Step273ExitGvRow.sign::s6Step273ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273ExitGv_owned : (s6Step273ExitGvRow.sign::s6Step273ExitGvRow.payload).toFinset⊆s6Step273ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273ExitGvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273ExitGv_retired : s6Step273ExitGvBefore.retireSet s6Step273ExitGvExtra.toFinset=s6Step273ExitGvAfter := by
  unfold Arena.retireSet s6Step273ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step273ExitGvBefore,s6Step273ExitFvAfter,s6Step273ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step273ExitGv_checked : planRowResizeLog s6Step273ExitGvBefore s6Step273ExitGvRow 152 []=
    some (s6Step273ExitGvAfter,s6Step273ExitGvOut,shrinkRow 775 s6Step273ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step273ExitGvBefore s6Step273ExitGvRow 152 s6Step273ExitGv_distinct s6Step273ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step273ExitGvRow.payload.take 152) s6Step273ExitGvRow.sign=s6Step273ExitGvOut := by decide +kernel
  have hi : s6Step273ExitGvRow.payload.drop 152=s6Step273ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step273ExitGv_retired] at result
  exact result

private theorem s6Step273ExitBank_rows : planWindowRowsLog s6Step273ExitGBefore [(s6Step273ExitGRow,134),(s6Step273ExitFRow,134),(s6Step273ExitFvRow,152),(s6Step273ExitGvRow,152)] [[],[],[],[]]=
    some (s6Step273ExitGvAfter,[s6Step273ExitGOut,s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut],(shrinkRow 777 s6Step273ExitGExtra ++ (shrinkRow 795 s6Step273ExitFExtra ++ (shrinkRow 776 s6Step273ExitFvExtra ++ (shrinkRow 775 s6Step273ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step273ExitGvAfter [] []=some (s6Step273ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step273ExitGvBefore s6Step273ExitGvAfter s6Step273ExitGvAfter
    s6Step273ExitGvRow s6Step273ExitGvOut 152 [] [] [] []
    (shrinkRow 775 s6Step273ExitGvExtra) ([]) s6Step273ExitGv_Incoming s6Step273ExitGv_checked h4 s6Step273ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step273ExitFvBefore s6Step273ExitFvAfter s6Step273ExitGvAfter
    s6Step273ExitFvRow s6Step273ExitFvOut 152 [] [(s6Step273ExitGvRow,152)] [[]] [s6Step273ExitGvOut]
    (shrinkRow 776 s6Step273ExitFvExtra) ((shrinkRow 775 s6Step273ExitGvExtra ++ [])) s6Step273ExitFv_Incoming s6Step273ExitFv_checked h3 s6Step273ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step273ExitFBefore s6Step273ExitFAfter s6Step273ExitGvAfter
    s6Step273ExitFRow s6Step273ExitFOut 134 [] [(s6Step273ExitFvRow,152),(s6Step273ExitGvRow,152)] [[],[]] [s6Step273ExitFvOut,s6Step273ExitGvOut]
    (shrinkRow 795 s6Step273ExitFExtra) ((shrinkRow 776 s6Step273ExitFvExtra ++ (shrinkRow 775 s6Step273ExitGvExtra ++ []))) s6Step273ExitF_Incoming s6Step273ExitF_checked h2 s6Step273ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step273ExitGBefore s6Step273ExitGAfter s6Step273ExitGvAfter
    s6Step273ExitGRow s6Step273ExitGOut 134 [] [(s6Step273ExitFRow,134),(s6Step273ExitFvRow,152),(s6Step273ExitGvRow,152)] [[],[],[]] [s6Step273ExitFOut,s6Step273ExitFvOut,s6Step273ExitGvOut]
    (shrinkRow 777 s6Step273ExitGExtra) ((shrinkRow 795 s6Step273ExitFExtra ++ (shrinkRow 776 s6Step273ExitFvExtra ++ (shrinkRow 775 s6Step273ExitGvExtra ++ [])))) s6Step273ExitG_Incoming s6Step273ExitG_checked h1 s6Step273ExitG_Outgoing
  exact h0

private theorem s6Step273ExitBank_checked : compileHmrBankResizeLog .exit s6Step273ExitGBefore ⟨s6Step273ExitFRow,s6Step273ExitGRow,s6Step273ExitFvRow,s6Step273ExitGvRow⟩ ⟨134,134,152,152⟩ [[],[],[],[]]=
    some (s6Step273ExitGvAfter,⟨s6Step273ExitFOut,s6Step273ExitGOut,s6Step273ExitFvOut,s6Step273ExitGvOut⟩,(shrinkRow 777 s6Step273ExitGExtra ++ (shrinkRow 795 s6Step273ExitFExtra ++ (shrinkRow 776 s6Step273ExitFvExtra ++ (shrinkRow 775 s6Step273ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step273ExitBank_rows]
  rfl

private theorem s6Step273Add0_apart : Disjoint s6Step273Add0Arena.live s6Step273Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step273Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273Add0_card : s6Step273Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step273Add0_borrowed : s6Step273Add0Arena.checkBorrow (hmrHybridCount s6Step273Add0Arena s6Step273Add0B.length) s6Step273Add0Work=some s6Step273Add0During := by
  have len : s6Step273Add0Work.length=hmrHybridCount s6Step273Add0Arena s6Step273Add0B.length := by
    rw [hmrHybridCount,s6Step273Add0_card]
    decide +kernel
  have nd : s6Step273Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step273Add0Arena s6Step273Add0During s6Step273Add0Work.toFinset s6Step273Add0_bounded s6Step273Add0_apart rfl

private theorem s6Step273Add0_distinct : (830::877::805::(s6Step273Add0A++s6Step273Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273Add0_owned : (830::877::805::(s6Step273Add0A++s6Step273Add0B)).toFinset⊆s6Step273Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step273Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273Add0_checked : compileHmrHybridCinLog s6Step273Add0Arena 877 830 805 s6Step273Add0A s6Step273Add0B s6Step273Add0Work=some s6Step273Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step273Add0Arena s6Step273Add0During 877 830 805 s6Step273Add0A s6Step273Add0B s6Step273Add0Work
    (by decide +kernel) (by decide +kernel) s6Step273Add0_distinct
    (fun q hq => s6Step273Add0_owned (List.mem_toFinset.mpr hq)) s6Step273Add0_borrowed

private theorem s6Step273Add1_apart : Disjoint s6Step273Add1Arena.live s6Step273Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step273Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273Add1_card : s6Step273Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step273Add1_borrowed : s6Step273Add1Arena.checkBorrow (hmrHybridCount s6Step273Add1Arena s6Step273Add1B.length) s6Step273Add1Work=some s6Step273Add1During := by
  have len : s6Step273Add1Work.length=hmrHybridCount s6Step273Add1Arena s6Step273Add1B.length := by
    rw [hmrHybridCount,s6Step273Add1_card]
    decide +kernel
  have nd : s6Step273Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step273Add1Arena s6Step273Add1During s6Step273Add1Work.toFinset s6Step273Add1_bounded s6Step273Add1_apart rfl

private theorem s6Step273Add1_distinct : (830::877::805::(s6Step273Add1A++s6Step273Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273Add1_owned : (830::877::805::(s6Step273Add1A++s6Step273Add1B)).toFinset⊆s6Step273Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step273Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273Add1_checked : compileHmrHybridCinLog s6Step273Add1Arena 877 830 805 s6Step273Add1A s6Step273Add1B s6Step273Add1Work=some s6Step273Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step273Add1Arena s6Step273Add1During 877 830 805 s6Step273Add1A s6Step273Add1B s6Step273Add1Work
    (by decide +kernel) (by decide +kernel) s6Step273Add1_distinct
    (fun q hq => s6Step273Add1_owned (List.mem_toFinset.mpr hq)) s6Step273Add1_borrowed

private theorem s6Step273F4_apart : Disjoint (s6Step273Add0A++s6Step273Add0B).toFinset (s6Step273Add1A++s6Step273Add1B).toFinset := by
  have nd : ((s6Step273Add0A++s6Step273Add0B)++(s6Step273Add1A++s6Step273Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step273F4_carry : s6Step273F4FlagArena.checkBorrow 1 [805]=some s6Step273Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step273F4FlagArena,s6Step273HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step273F4FlagArena,s6Step273HeadFvAfter,s6Step273Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273F4_distinct : (784::877::830::805::((s6Step273Add0A++s6Step273Add1A)++(s6Step273Add0B++s6Step273Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273F4_flag : s6Step273HeadFvAfter.checkBorrow 1 [830]=some s6Step273F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step273HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step273F4_owned : (784::877::((s6Step273Add0A++s6Step273Add1A)++(s6Step273Add0B++s6Step273Add1B))).toFinset⊆s6Step273HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step273HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273F4_checked : compileHmrHybridF4Log s6Step273HeadFvAfter 784 877 s6Step273Add0A s6Step273Add0B s6Step273Add1A s6Step273Add1B [830] [805] s6Step273Add0Work s6Step273Add1Work=some s6Step273F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step273HeadFvAfter s6Step273F4FlagArena s6Step273Add0Arena s6Step273Add0During s6Step273Add1During 784 877
    s6Step273Add0A s6Step273Add0B s6Step273Add1A s6Step273Add1B [830] [805] s6Step273Add0Work s6Step273Add1Work
    (fun q hq => s6Step273F4_owned (List.mem_toFinset.mpr hq)) s6Step273F4_flag s6Step273F4_carry
    s6Step273F4_distinct s6Step273F4_apart s6Step273Add0_checked s6Step273Add1_checked

private theorem s6Step273Front_branch : s6Step273FrontSigmaArena.checkBorrow 1 [877]=some s6Step273HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step273FrontSigmaArena,s6Step273EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step273FrontSigmaArena,s6Step273EntryGvAfter,s6Step273HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273Front_entry : HmrFrontEntryValid s6Step273EntryFBefore s6Step273FrontBank 135 152 ⟨134,134,152,152⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step273FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step273EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step273EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step273FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step273Front_sigma : s6Step273EntryGvAfter.checkBorrow 1 [784]=some s6Step273FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step273EntryGvAfter,arenaWires]
  · rfl

private def s6Step273HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273HeadFBefore : Arena := s6Step273HeadGAfter

private def s6Step273HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780],795⟩

private def s6Step273HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step273HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step273HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩

private theorem s6Step273HeadBank_incomingDistinct : ([s6Step273HeadGRow,s6Step273HeadFRow,s6Step273HeadGvRow,s6Step273HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273HeadF_Incoming : rowsOwned s6Step273HeadFBefore [s6Step273HeadFRow,s6Step273HeadGvRow,s6Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273HeadGRow,s6Step273HeadFRow,s6Step273HeadGvRow,s6Step273HeadFvRow] 1 s6Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273HeadBank_outgoingOwned : rowsOwned s6Step273HeadFvAfter [s6Step273HeadGOut,s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step273HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273HeadF_Outgoing : rowsOwned s6Step273HeadFvAfter [s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut] :=
  hmrRows_owned_drop s6Step273HeadFvAfter [s6Step273HeadGOut,s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut] 1 s6Step273HeadBank_outgoingOwned

private theorem s6Step273HeadF_distinct : (s6Step273HeadFRow.sign::s6Step273HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273HeadF_owned : (s6Step273HeadFRow.sign::s6Step273HeadFRow.payload).toFinset⊆s6Step273HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273HeadF_reserved : s6Step273HeadFBefore.reserve s6Step273HeadFFresh.toFinset=some s6Step273HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273HeadFFresh,arenaWires]
  · norm_num [s6Step273HeadFBefore,s6Step273HeadGAfter,s6Step273HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step273HeadFAfter,s6Step273HeadFBefore,s6Step273HeadGAfter,s6Step273HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273HeadF_checked : planRowResizeLog s6Step273HeadFBefore s6Step273HeadFRow 136 s6Step273HeadFFresh=
    some (s6Step273HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780, 813],795⟩,growRow 795 s6Step273HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step273HeadFBefore s6Step273HeadFAfter s6Step273HeadFRow 136 s6Step273HeadFFresh
    s6Step273HeadF_distinct s6Step273HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273HeadF_reserved
  have rowEq : WindowRow.mk (s6Step273HeadFRow.payload++s6Step273HeadFFresh) s6Step273HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 780, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step273HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step273HeadFvBefore : Arena := s6Step273HeadGvAfter

private theorem s6Step273HeadFv_Incoming : rowsOwned s6Step273HeadFvBefore [s6Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273HeadGRow,s6Step273HeadFRow,s6Step273HeadGvRow,s6Step273HeadFvRow] 3 s6Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273HeadFv_Outgoing : rowsOwned s6Step273HeadFvAfter [s6Step273HeadFvOut] :=
  hmrRows_owned_drop s6Step273HeadFvAfter [s6Step273HeadGOut,s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut] 3 s6Step273HeadBank_outgoingOwned

private theorem s6Step273HeadFv_distinct : (s6Step273HeadFvRow.sign::s6Step273HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273HeadFv_owned : (s6Step273HeadFvRow.sign::s6Step273HeadFvRow.payload).toFinset⊆s6Step273HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273HeadFv_reserved : s6Step273HeadFvBefore.reserve s6Step273HeadFvFresh.toFinset=some s6Step273HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273HeadFvFresh,arenaWires]
  · norm_num [s6Step273HeadFvBefore,s6Step273HeadGvAfter,s6Step273HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step273HeadFvAfter,s6Step273HeadFvBefore,s6Step273HeadGvAfter,s6Step273HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273HeadFv_checked : planRowResizeLog s6Step273HeadFvBefore s6Step273HeadFvRow 153 s6Step273HeadFvFresh=
    some (s6Step273HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 867],776⟩,growRow 776 s6Step273HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step273HeadFvBefore s6Step273HeadFvAfter s6Step273HeadFvRow 153 s6Step273HeadFvFresh
    s6Step273HeadFv_distinct s6Step273HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step273HeadFvRow.payload++s6Step273HeadFvFresh) s6Step273HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step273HeadG_Incoming : rowsOwned s6Step273HeadGBefore [s6Step273HeadGRow,s6Step273HeadFRow,s6Step273HeadGvRow,s6Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273HeadGRow,s6Step273HeadFRow,s6Step273HeadGvRow,s6Step273HeadFvRow] 0 s6Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273HeadG_Outgoing : rowsOwned s6Step273HeadFvAfter [s6Step273HeadGOut,s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut] :=
  hmrRows_owned_drop s6Step273HeadFvAfter [s6Step273HeadGOut,s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut] 0 s6Step273HeadBank_outgoingOwned

private theorem s6Step273HeadG_distinct : (s6Step273HeadGRow.sign::s6Step273HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273HeadG_owned : (s6Step273HeadGRow.sign::s6Step273HeadGRow.payload).toFinset⊆s6Step273HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273HeadG_reserved : s6Step273HeadGBefore.reserve s6Step273HeadGFresh.toFinset=some s6Step273HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273HeadGFresh,arenaWires]
  · norm_num [s6Step273HeadGBefore,s6Step273HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step273HeadGAfter,s6Step273HeadGBefore,s6Step273HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273HeadG_checked : planRowResizeLog s6Step273HeadGBefore s6Step273HeadGRow 136 s6Step273HeadGFresh=
    some (s6Step273HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 809],777⟩,growRow 777 s6Step273HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step273HeadGBefore s6Step273HeadGAfter s6Step273HeadGRow 136 s6Step273HeadGFresh
    s6Step273HeadG_distinct s6Step273HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273HeadG_reserved
  have rowEq : WindowRow.mk (s6Step273HeadGRow.payload++s6Step273HeadGFresh) s6Step273HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 809],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step273HeadGvBefore : Arena := s6Step273HeadFAfter

private theorem s6Step273HeadGv_Incoming : rowsOwned s6Step273HeadGvBefore [s6Step273HeadGvRow,s6Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step273HeadGRow,s6Step273HeadFRow,s6Step273HeadGvRow,s6Step273HeadFvRow] 2 s6Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step273HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step273HeadGv_Outgoing : rowsOwned s6Step273HeadFvAfter [s6Step273HeadGvOut,s6Step273HeadFvOut] :=
  hmrRows_owned_drop s6Step273HeadFvAfter [s6Step273HeadGOut,s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut] 2 s6Step273HeadBank_outgoingOwned

private theorem s6Step273HeadGv_distinct : (s6Step273HeadGvRow.sign::s6Step273HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step273HeadGv_owned : (s6Step273HeadGvRow.sign::s6Step273HeadGvRow.payload).toFinset⊆s6Step273HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step273HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step273HeadGv_reserved : s6Step273HeadGvBefore.reserve s6Step273HeadGvFresh.toFinset=some s6Step273HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step273HeadGvFresh,arenaWires]
  · norm_num [s6Step273HeadGvBefore,s6Step273HeadFAfter,s6Step273HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step273HeadGvAfter,s6Step273HeadGvBefore,s6Step273HeadFAfter,s6Step273HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step273HeadGv_checked : planRowResizeLog s6Step273HeadGvBefore s6Step273HeadGvRow 153 s6Step273HeadGvFresh=
    some (s6Step273HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 927],775⟩,growRow 775 s6Step273HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step273HeadGvBefore s6Step273HeadGvAfter s6Step273HeadGvRow 153 s6Step273HeadGvFresh
    s6Step273HeadGv_distinct s6Step273HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step273HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step273HeadGvRow.payload++s6Step273HeadGvFresh) s6Step273HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step273HeadBank_rows : planWindowRowsLog s6Step273HeadGBefore [(s6Step273HeadGRow,136),(s6Step273HeadFRow,136),(s6Step273HeadGvRow,153),(s6Step273HeadFvRow,153)] [s6Step273HeadGFresh,s6Step273HeadFFresh,s6Step273HeadGvFresh,s6Step273HeadFvFresh]=
    some (s6Step273HeadFvAfter,[s6Step273HeadGOut,s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut],(growRow 777 s6Step273HeadGFresh ++ (growRow 795 s6Step273HeadFFresh ++ (growRow 775 s6Step273HeadGvFresh ++ (growRow 776 s6Step273HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step273HeadFvAfter [] []=some (s6Step273HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step273HeadFvBefore s6Step273HeadFvAfter s6Step273HeadFvAfter
    s6Step273HeadFvRow s6Step273HeadFvOut 153 s6Step273HeadFvFresh [] [] []
    (growRow 776 s6Step273HeadFvFresh) ([]) s6Step273HeadFv_Incoming s6Step273HeadFv_checked h4 s6Step273HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step273HeadGvBefore s6Step273HeadGvAfter s6Step273HeadFvAfter
    s6Step273HeadGvRow s6Step273HeadGvOut 153 s6Step273HeadGvFresh [(s6Step273HeadFvRow,153)] [s6Step273HeadFvFresh] [s6Step273HeadFvOut]
    (growRow 775 s6Step273HeadGvFresh) ((growRow 776 s6Step273HeadFvFresh ++ [])) s6Step273HeadGv_Incoming s6Step273HeadGv_checked h3 s6Step273HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step273HeadFBefore s6Step273HeadFAfter s6Step273HeadFvAfter
    s6Step273HeadFRow s6Step273HeadFOut 136 s6Step273HeadFFresh [(s6Step273HeadGvRow,153),(s6Step273HeadFvRow,153)] [s6Step273HeadGvFresh,s6Step273HeadFvFresh] [s6Step273HeadGvOut,s6Step273HeadFvOut]
    (growRow 795 s6Step273HeadFFresh) ((growRow 775 s6Step273HeadGvFresh ++ (growRow 776 s6Step273HeadFvFresh ++ []))) s6Step273HeadF_Incoming s6Step273HeadF_checked h2 s6Step273HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step273HeadGBefore s6Step273HeadGAfter s6Step273HeadFvAfter
    s6Step273HeadGRow s6Step273HeadGOut 136 s6Step273HeadGFresh [(s6Step273HeadFRow,136),(s6Step273HeadGvRow,153),(s6Step273HeadFvRow,153)] [s6Step273HeadFFresh,s6Step273HeadGvFresh,s6Step273HeadFvFresh] [s6Step273HeadFOut,s6Step273HeadGvOut,s6Step273HeadFvOut]
    (growRow 777 s6Step273HeadGFresh) ((growRow 795 s6Step273HeadFFresh ++ (growRow 775 s6Step273HeadGvFresh ++ (growRow 776 s6Step273HeadFvFresh ++ [])))) s6Step273HeadG_Incoming s6Step273HeadG_checked h1 s6Step273HeadG_Outgoing
  exact h0

private theorem s6Step273HeadBank_checked : compileHmrBankResizeLog .headroom s6Step273HeadGBefore ⟨s6Step273HeadFRow,s6Step273HeadGRow,s6Step273HeadFvRow,s6Step273HeadGvRow⟩ ⟨136,136,153,153⟩ [s6Step273HeadGFresh,s6Step273HeadFFresh,s6Step273HeadGvFresh,s6Step273HeadFvFresh]=
    some (s6Step273HeadFvAfter,⟨s6Step273HeadFOut,s6Step273HeadGOut,s6Step273HeadFvOut,s6Step273HeadGvOut⟩,(growRow 777 s6Step273HeadGFresh ++ (growRow 795 s6Step273HeadFFresh ++ (growRow 775 s6Step273HeadGvFresh ++ (growRow 776 s6Step273HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step273HeadBank_rows]
  rfl

private theorem s6Step273Front_checked : compileHmrSourceFrontLog s6Step273EntryFBefore s6Step273FrontBank 135 152 ⟨134,134,152,152⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step273FrontLog=some s6Step273FrontPlan := by
  have pairEq : s6Step273FrontPair=⟨s6Step273HeadFRow,s6Step273HeadGRow,s6Step273HeadFvRow,s6Step273HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step273FrontHead=⟨s6Step273ExitFRow,s6Step273ExitGRow,s6Step273ExitFvRow,s6Step273ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step273Add0A=s6Step273FrontHead.f.wires := by decide +kernel
  have gEq : s6Step273Add0B=s6Step273FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step273Add1A=s6Step273FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step273Add1B=s6Step273FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step273EntryFBefore s6Step273FrontBank 135 152 ⟨134,134,152,152⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step273FrontLog s6Step273FrontPlan
  · exact s6Step273Front_entry
  · exact s6Step273EntryBank_checked
  · exact s6Step273Front_sigma
  · rfl
  · exact s6Step273Front_branch
  · rfl
  · simpa only [s6Step273FrontPlan,pairEq] using s6Step273HeadBank_checked
  · simpa only [s6Step273FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step273F4_checked
  · exact s6Step273Counter_checked
  · rfl
  · simpa only [s6Step273FrontPlan,headEq] using s6Step273ExitBank_checked

private theorem s6Step273Complete_explicit_checked : compileHmrEarlyStepLog s6Step273EntryFBefore s6Step273FrontBank 135 152 ⟨134,134,152,152⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step273CompleteLog=some s6Step273CompletePlan := by
  let Q := s6Step273EarlyControlPlan
  have hq := s6Step273EarlyControl_plan_checked
  have fv1 : s6Step273CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step273CompleteOut.fv.payload[2]?.getD s6Step273CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step273CompleteOut.fv.payload[3]?.getD s6Step273CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step273CompleteOut.fv.payload[4]?.getD s6Step273CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step273EntryFBefore s6Step273EarlyControlArena s6Step273FrontBank 135 152 ⟨134,134,152,152⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step273CompleteLog s6Step273FrontPlan Q
    s6Step273Front_checked s6Step273Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step273Complete_owned s6Step273Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step273EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 784 s6Step273CompleteOut.fv.second (s6Step273CompleteOut.fv.payload[2]?.getD s6Step273CompleteOut.fv.sign) (s6Step273CompleteOut.fv.payload[3]?.getD s6Step273CompleteOut.fv.sign) (s6Step273CompleteOut.fv.payload[4]?.getD s6Step273CompleteOut.fv.sign) 877 53 s6Step273EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep273Arena : Arena := s6Step273EntryFBefore
def s6PrivateStep273Bank : WindowBank := s6Step273FrontBank
def s6PrivateStep273Spec : HmrSourceWalkStepLog := ⟨135,152,⟨134,134,152,152⟩,53,.early s6Step273CompleteLog⟩
def s6PrivateStep273Plan : HmrSourceStepPlan := .early s6Step273CompletePlan
theorem s6PrivateStep273_source : s6PrivateStep273Spec=s6ObservedLogs272[1] := rfl
theorem s6PrivateStep273_checked : compileHmrSourceStepLog s6PrivateStep273Arena s6PrivateStep273Bank
    s6PrivateStep273Spec.fgWidth s6PrivateStep273Spec.vWidth s6PrivateStep273Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 273 s6PrivateStep273Spec.need none s6PrivateStep273Spec.log=some s6PrivateStep273Plan := by
  change compileHmrSourceStepLog s6Step273EntryFBefore s6Step273FrontBank 135 152 ⟨134,134,152,152⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 273 53 none (.early s6Step273CompleteLog)=some (.early s6Step273CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 273<498)]
  rw [s6Step273Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
