import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep277
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

private def s6Step279CompleteMoves : List (Wire × Wire) := [(807,130)]

private def s6Step279EarlyControlLog : HmrEarlyControlLog := ⟨[807, 813, 809, 881, 882],[927],[830],[805, 817, 812, 915, 906, 899],[926]⟩

private def s6Step279FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [882], [], [877]],[[927], [881], [813], [809]],[[], [], [], []]⟩,[855],[779],[830],[805],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step279CompleteLog : HmrEarlyStepLog := ⟨s6Step279FrontLog,s6Step279CompleteMoves,s6Step279EarlyControlLog⟩

private def s6Step279ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step279ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step279ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],777⟩

private def s6Step279ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private def s6Step279FrontOut : WindowBank := ⟨s6Step279ExitFOut,s6Step279ExitGOut,s6Step279ExitFvOut,s6Step279ExitGvOut⟩

private def s6Step279CompleteOut : WindowBank := s6Step279FrontOut.repacked s6Step279CompleteMoves

private def s6Step279EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step279EarlyControlPositiveArena,[927],s6Step279EarlyControlEqualityArena,[830],⟨⟨855,false⟩,[⟨⟨927,false⟩,830⟩]⟩⟩

private def s6Step279EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨772,false⟩,813⟩,⟨⟨771,false⟩,809⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,882⟩]⟩

private def s6Step279EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step279EarlyControlZeroArena,s6Step279EarlyControlZeroPlan,s6Step279EarlyControlClassPlan,s6Step279EarlyControlFlagArena,s6Step279EarlyControlFittedArena,s6Step279EarlyControlHistoryArena,s6Step279EarlyControlSigmaArena,s6Step279EarlyControlOutputArena,s6Step279EarlyControlLog⟩

private def s6Step279CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step279Counter_bounded : s6Step279CounterWork.toFinset⊆arenaWires := by norm_num [s6Step279CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step279HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279CounterDuring : Arena := ⟨s6Step279HeadFvAfter.live∪s6Step279CounterWork.toFinset,Finset.union_subset s6Step279HeadFvAfter.bounded s6Step279Counter_bounded⟩

private def s6Step279EntryFFresh : List Wire := []

private def s6Step279EntryFvFresh : List Wire := []

private def s6Step279EntryGFresh : List Wire := [882]

private def s6Step279EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EntryGvFresh : List Wire := [877]

private def s6Step279ExitFExtra : List Wire := [881]

private def s6Step279ExitFvExtra : List Wire := [809]

private def s6Step279ExitGExtra : List Wire := [130, 882, 927]

private def s6Step279ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279ExitGvExtra : List Wire := [813]

private def s6Step279Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279Add0Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step279Add0_bounded : s6Step279Add0Work.toFinset⊆arenaWires := by
  have h : s6Step279Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step279Add0During : Arena := ⟨s6Step279Add0Arena.live∪s6Step279Add0Work.toFinset,Finset.union_subset s6Step279Add0Arena.bounded s6Step279Add0_bounded⟩

private def s6Step279Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279Add1Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step279Add1_bounded : s6Step279Add1Work.toFinset⊆arenaWires := by
  have h : s6Step279Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step279Add1During : Arena := ⟨s6Step279Add1Arena.live∪s6Step279Add1Work.toFinset,Finset.union_subset s6Step279Add1Arena.bounded s6Step279Add1_bounded⟩

private def s6Step279F4FlagArena : Arena := ⟨s6Step279HeadFvAfter.live∪{830},Finset.union_subset s6Step279HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step279F4Plan : HmrHybridF4Plan := ⟨s6Step279F4FlagArena,[830],s6Step279Add0Arena,[805],s6Step279Add0During,s6Step279Add0Work,s6Step279Add1During,s6Step279Add1Work⟩

private def s6Step279HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩

private def s6Step279HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 809],776⟩

private def s6Step279HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882, 927],777⟩

private def s6Step279HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 813],775⟩

private def s6Step279FrontHead : WindowBank := ⟨s6Step279HeadFOut,s6Step279HeadGOut,s6Step279HeadFvOut,s6Step279HeadGvOut⟩

private def s6Step279EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step279EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step279EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882],777⟩

private def s6Step279EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private def s6Step279FrontPair : WindowBank := ⟨s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut⟩

private def s6Step279FrontSigmaArena : Arena := ⟨s6Step279EntryGvAfter.live∪{855},Finset.union_subset s6Step279EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step279HeadFFresh : List Wire := [881]

private def s6Step279HeadFvFresh : List Wire := [809]

private def s6Step279HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279HeadGFresh : List Wire := [927]

private def s6Step279HeadGvFresh : List Wire := [813]

private def s6Step279FrontPlan : HmrSourceFront := ⟨s6Step279EntryGvAfter,s6Step279FrontPair,(growRow 795 s6Step279EntryFFresh ++ (growRow 777 s6Step279EntryGFresh ++ (growRow 776 s6Step279EntryFvFresh ++ (growRow 775 s6Step279EntryGvFresh ++ [])))),s6Step279FrontSigmaArena,[855],s6Step279HeadGBefore,[779],
  s6Step279HeadFvAfter,s6Step279FrontHead,(growRow 777 s6Step279HeadGFresh ++ (growRow 795 s6Step279HeadFFresh ++ (growRow 775 s6Step279HeadGvFresh ++ (growRow 776 s6Step279HeadFvFresh ++ [])))),s6Step279F4Plan,s6Step279CounterDuring,s6Step279CounterWork,s6Step279ExitGvAfter,s6Step279FrontOut,(shrinkRow 777 s6Step279ExitGExtra ++ (shrinkRow 795 s6Step279ExitFExtra ++ (shrinkRow 776 s6Step279ExitFvExtra ++ (shrinkRow 775 s6Step279ExitGvExtra ++ []))))⟩

private def s6Step279CompletePlan : HmrEarlyStepPlan := ⟨s6Step279FrontPlan,s6Step279EarlyControlArena,s6Step279EarlyControlPlan,s6Step279CompleteMoves⟩

private theorem s6Step279Complete_apart : List.Disjoint (s6Step279CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step279CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step279Complete_owned : (s6Step279CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step279CompleteMoveArena : Arena := ⟨s6Step279ExitGvAfter.live∪{130},Finset.union_subset s6Step279ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step279Complete_repack : s6Step279ExitGvAfter.checkRepack s6Step279CompleteMoves=some s6Step279EarlyControlArena := by
  have owned : 807∈s6Step279ExitGvAfter.live := by norm_num [s6Step279ExitGvAfter,arenaWires]
  have reserve : s6Step279ExitGvAfter.reserve {130}=some s6Step279CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step279ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step279CompleteMoveArena.retireSet {807}=s6Step279EarlyControlArena := by
    unfold Arena.retireSet s6Step279EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step279CompleteMoveArena,s6Step279ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step279CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step279CompleteMoveArena.retireSet {807}).checkRepack []=some s6Step279EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step279EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s6Step279EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_branch : compileHmrBranchRetirement s6Step279EarlyControlSigmaArena 779=some s6Step279EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step279EarlyControl_branchOwned
  · ext q
    simp [s6Step279EarlyControlOutputArena,s6Step279EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step279EarlyControl_classEqualityBorrow : s6Step279EarlyControlPositiveArena.checkBorrow (([855, 927] : List Wire).length-1) s6Step279EarlyControlLog.classWork=some s6Step279EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step279EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step279EarlyControlEqualityArena,s6Step279EarlyControlPositiveArena,s6Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step279EarlyControl_classEqualityOwned : ([855, 927] : List Wire).toFinset⊆s6Step279EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_classEquality : compileHmrEqualityLog s6Step279EarlyControlPositiveArena [855, 927] 0 s6Step279EarlyControlLog.classWork=some (s6Step279EarlyControlEqualityArena,s6Step279EarlyControlLog.classWork,s6Step279EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step279EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step279EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step279EarlyControl_classOwned : ([769, 882, 855] : List Wire).toFinset⊆s6Step279EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_positiveBorrow : s6Step279EarlyControlZeroArena.checkBorrow (1) s6Step279EarlyControlLog.positiveWork=some s6Step279EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step279EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step279EarlyControlPositiveArena,s6Step279EarlyControlZeroArena,s6Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step279EarlyControl_class : compileHmrSourceClassLog s6Step279EarlyControlZeroArena false 769 s6Step279EarlyControlZeroPlan.top 0 855 s6Step279EarlyControlLog.positiveWork s6Step279EarlyControlLog.classWork=some s6Step279EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step279EarlyControlClassPlan s6Step279EarlyControlZeroArena false 769 s6Step279EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step279EarlyControl_classOwned
  · exact s6Step279EarlyControl_positiveBorrow
  · exact s6Step279EarlyControl_classEquality

private theorem s6Step279EarlyControl_entryRecordOwned : ([779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_fitBorrow : s6Step279EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step279EarlyControlLog.recordFresh=some s6Step279EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step279EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step279EarlyControlFittedArena,s6Step279EarlyControlFlagArena,s6Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step279EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step279EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_fit : compileHmrRecordGrowLog s6Step279EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 54 s6Step279EarlyControlLog.recordFresh=some s6Step279EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step279EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step279EarlyControl_fitBorrow

private theorem s6Step279EarlyControl_flagsBorrow : s6Step279EarlyControlEqualityArena.checkBorrow (6) s6Step279EarlyControlLog.flagWork=some s6Step279EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step279EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step279EarlyControlFlagArena,s6Step279EarlyControlEqualityArena,s6Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step279EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step279EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_flags : compileHmrFlagsLog s6Step279EarlyControlClassPlan.equalityArena s6Step279EarlyControlClassPlan.equality.top 253 252 251 s6Step279EarlyControlLog.flagWork=some s6Step279EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step279EarlyControl_flagsOwned⟩
  · exact s6Step279EarlyControl_flagsBorrow

private theorem s6Step279EarlyControl_historyBorrow : s6Step279EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step279EarlyControlLog.recordFresh=some s6Step279EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step279EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step279EarlyControlHistoryArena,s6Step279EarlyControlArena,s6Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step279EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_history : compileHmrRecordGrowLog s6Step279EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 54 s6Step279EarlyControlLog.recordFresh=some s6Step279EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step279EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step279EarlyControl_historyBorrow

private theorem s6Step279EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step279EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step279EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_sigmaRelease : s6Step279EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step279EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step279EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step279EarlyControlSigmaArena,s6Step279EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step279EarlyControl_sigma : compileHmrSigmaDropLog s6Step279EarlyControlHistoryArena false 0 0 254 855 []=some s6Step279EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step279EarlyControl_sigmaOwned⟩
  · exact s6Step279EarlyControl_sigmaRelease

private theorem s6Step279EarlyControl_zeroBorrow : s6Step279EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step279EarlyControlLog.zeroWork=some s6Step279EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step279EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step279EarlyControlZeroArena,s6Step279EarlyControlArena,s6Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step279EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step279EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EarlyControl_zero : compileHmrEqualityLog s6Step279EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step279EarlyControlLog.zeroWork=some (s6Step279EarlyControlZeroArena,s6Step279EarlyControlLog.zeroWork,s6Step279EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step279EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step279EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step279EarlyControl_logged : s6Step279EarlyControlPlan.Logged s6Step279EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 855 254 253 252 251 779 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step279EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step279EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step279EarlyControl_zero
  · exact s6Step279EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step279EarlyControl_flags
  · exact s6Step279EarlyControl_fit
  · exact s6Step279EarlyControl_history
  · exact s6Step279EarlyControl_sigma
  · exact s6Step279EarlyControl_branch

private theorem s6Step279EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step279EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 855 254 253 252 251 779 54 s6Step279EarlyControlLog=some s6Step279EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step279EarlyControlPlan s6Step279EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 855 254 253 252 251 779 54 s6Step279EarlyControl_logged

private def s6Step279EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step279EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step279EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130],777⟩

private def s6Step279EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768],775⟩

private def s6Step279FrontBank : WindowBank := ⟨s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow⟩

private def s6Step279Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881, 795]

private def s6Step279Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882, 927, 777]

private def s6Step279Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 809, 776]

private def s6Step279Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 813, 775]

private theorem s6Step279Counter_apart : Disjoint s6Step279HeadFvAfter.live s6Step279CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step279HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279Counter_borrowed : s6Step279HeadFvAfter.checkBorrow 4 s6Step279CounterWork=some s6Step279CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step279HeadFvAfter s6Step279CounterDuring s6Step279CounterWork.toFinset s6Step279Counter_bounded s6Step279Counter_apart rfl

private theorem s6Step279Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step279HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step279HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279Counter_checked : compileHmrCounterStepLog s6Step279HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step279CounterWork=some s6Step279CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step279HeadFvAfter.live := fun q hq => s6Step279Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step279Counter_borrowed

private def s6Step279EntryFAfter : Arena := s6Step279EntryFBefore

private theorem s6Step279EntryBank_incomingDistinct : ([s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279EntryF_Incoming : rowsOwned s6Step279EntryFBefore [s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow] 0 s6Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279EntryBank_outgoingOwned : rowsOwned s6Step279EntryGvAfter [s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step279EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279EntryF_Outgoing : rowsOwned s6Step279EntryGvAfter [s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut] :=
  hmrRows_owned_drop s6Step279EntryGvAfter [s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut] 0 s6Step279EntryBank_outgoingOwned

private theorem s6Step279EntryF_distinct : (s6Step279EntryFRow.sign::s6Step279EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279EntryF_owned : (s6Step279EntryFRow.sign::s6Step279EntryFRow.payload).toFinset⊆s6Step279EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EntryF_reserved : s6Step279EntryFBefore.reserve s6Step279EntryFFresh.toFinset=some s6Step279EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279EntryFFresh,arenaWires]
  · norm_num [s6Step279EntryFBefore,s6Step279EntryFFresh,arenaWires]
  · simp only [s6Step279EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step279EntryF_checked : planRowResizeLog s6Step279EntryFBefore s6Step279EntryFRow 132 s6Step279EntryFFresh=
    some (s6Step279EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩,growRow 795 s6Step279EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step279EntryFBefore s6Step279EntryFAfter s6Step279EntryFRow 132 s6Step279EntryFFresh
    s6Step279EntryF_distinct s6Step279EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279EntryF_reserved
  have rowEq : WindowRow.mk (s6Step279EntryFRow.payload++s6Step279EntryFFresh) s6Step279EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step279EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279EntryFvAfter : Arena := s6Step279EntryGAfter

private def s6Step279EntryFvBefore : Arena := s6Step279EntryGAfter

private theorem s6Step279EntryFv_Incoming : rowsOwned s6Step279EntryFvBefore [s6Step279EntryFvRow,s6Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow] 2 s6Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279EntryFv_Outgoing : rowsOwned s6Step279EntryGvAfter [s6Step279EntryFvOut,s6Step279EntryGvOut] :=
  hmrRows_owned_drop s6Step279EntryGvAfter [s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut] 2 s6Step279EntryBank_outgoingOwned

private theorem s6Step279EntryFv_distinct : (s6Step279EntryFvRow.sign::s6Step279EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279EntryFv_owned : (s6Step279EntryFvRow.sign::s6Step279EntryFvRow.payload).toFinset⊆s6Step279EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EntryFv_reserved : s6Step279EntryFvBefore.reserve s6Step279EntryFvFresh.toFinset=some s6Step279EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279EntryFvFresh,arenaWires]
  · norm_num [s6Step279EntryFvBefore,s6Step279EntryGAfter,s6Step279EntryFvFresh,arenaWires]
  · simp only [s6Step279EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step279EntryFv_checked : planRowResizeLog s6Step279EntryFvBefore s6Step279EntryFvRow 155 s6Step279EntryFvFresh=
    some (s6Step279EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩,growRow 776 s6Step279EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step279EntryFvBefore s6Step279EntryFvAfter s6Step279EntryFvRow 155 s6Step279EntryFvFresh
    s6Step279EntryFv_distinct s6Step279EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step279EntryFvRow.payload++s6Step279EntryFvFresh) s6Step279EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step279EntryGBefore : Arena := s6Step279EntryFBefore

private theorem s6Step279EntryG_Incoming : rowsOwned s6Step279EntryGBefore [s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow] 1 s6Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279EntryG_Outgoing : rowsOwned s6Step279EntryGvAfter [s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut] :=
  hmrRows_owned_drop s6Step279EntryGvAfter [s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut] 1 s6Step279EntryBank_outgoingOwned

private theorem s6Step279EntryG_distinct : (s6Step279EntryGRow.sign::s6Step279EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279EntryG_owned : (s6Step279EntryGRow.sign::s6Step279EntryGRow.payload).toFinset⊆s6Step279EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EntryG_reserved : s6Step279EntryGBefore.reserve s6Step279EntryGFresh.toFinset=some s6Step279EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279EntryGFresh,arenaWires]
  · norm_num [s6Step279EntryGBefore,s6Step279EntryFBefore,s6Step279EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step279EntryGAfter,s6Step279EntryGBefore,s6Step279EntryFBefore,s6Step279EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279EntryG_checked : planRowResizeLog s6Step279EntryGBefore s6Step279EntryGRow 132 s6Step279EntryGFresh=
    some (s6Step279EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882],777⟩,growRow 777 s6Step279EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step279EntryGBefore s6Step279EntryGAfter s6Step279EntryGRow 132 s6Step279EntryGFresh
    s6Step279EntryG_distinct s6Step279EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279EntryG_reserved
  have rowEq : WindowRow.mk (s6Step279EntryGRow.payload++s6Step279EntryGFresh) s6Step279EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step279EntryGvBefore : Arena := s6Step279EntryGAfter

private theorem s6Step279EntryGv_Incoming : rowsOwned s6Step279EntryGvBefore [s6Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow] 3 s6Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279EntryGv_Outgoing : rowsOwned s6Step279EntryGvAfter [s6Step279EntryGvOut] :=
  hmrRows_owned_drop s6Step279EntryGvAfter [s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut] 3 s6Step279EntryBank_outgoingOwned

private theorem s6Step279EntryGv_distinct : (s6Step279EntryGvRow.sign::s6Step279EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279EntryGv_owned : (s6Step279EntryGvRow.sign::s6Step279EntryGvRow.payload).toFinset⊆s6Step279EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279EntryGv_reserved : s6Step279EntryGvBefore.reserve s6Step279EntryGvFresh.toFinset=some s6Step279EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279EntryGvFresh,arenaWires]
  · norm_num [s6Step279EntryGvBefore,s6Step279EntryGAfter,s6Step279EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step279EntryGvAfter,s6Step279EntryGvBefore,s6Step279EntryGAfter,s6Step279EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279EntryGv_checked : planRowResizeLog s6Step279EntryGvBefore s6Step279EntryGvRow 155 s6Step279EntryGvFresh=
    some (s6Step279EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩,growRow 775 s6Step279EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step279EntryGvBefore s6Step279EntryGvAfter s6Step279EntryGvRow 155 s6Step279EntryGvFresh
    s6Step279EntryGv_distinct s6Step279EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step279EntryGvRow.payload++s6Step279EntryGvFresh) s6Step279EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step279EntryBank_rows : planWindowRowsLog s6Step279EntryFBefore [(s6Step279EntryFRow,132),(s6Step279EntryGRow,132),(s6Step279EntryFvRow,155),(s6Step279EntryGvRow,155)] [s6Step279EntryFFresh,s6Step279EntryGFresh,s6Step279EntryFvFresh,s6Step279EntryGvFresh]=
    some (s6Step279EntryGvAfter,[s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut],(growRow 795 s6Step279EntryFFresh ++ (growRow 777 s6Step279EntryGFresh ++ (growRow 776 s6Step279EntryFvFresh ++ (growRow 775 s6Step279EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step279EntryGvAfter [] []=some (s6Step279EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step279EntryGvBefore s6Step279EntryGvAfter s6Step279EntryGvAfter
    s6Step279EntryGvRow s6Step279EntryGvOut 155 s6Step279EntryGvFresh [] [] []
    (growRow 775 s6Step279EntryGvFresh) ([]) s6Step279EntryGv_Incoming s6Step279EntryGv_checked h4 s6Step279EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step279EntryFvBefore s6Step279EntryFvAfter s6Step279EntryGvAfter
    s6Step279EntryFvRow s6Step279EntryFvOut 155 s6Step279EntryFvFresh [(s6Step279EntryGvRow,155)] [s6Step279EntryGvFresh] [s6Step279EntryGvOut]
    (growRow 776 s6Step279EntryFvFresh) ((growRow 775 s6Step279EntryGvFresh ++ [])) s6Step279EntryFv_Incoming s6Step279EntryFv_checked h3 s6Step279EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step279EntryGBefore s6Step279EntryGAfter s6Step279EntryGvAfter
    s6Step279EntryGRow s6Step279EntryGOut 132 s6Step279EntryGFresh [(s6Step279EntryFvRow,155),(s6Step279EntryGvRow,155)] [s6Step279EntryFvFresh,s6Step279EntryGvFresh] [s6Step279EntryFvOut,s6Step279EntryGvOut]
    (growRow 777 s6Step279EntryGFresh) ((growRow 776 s6Step279EntryFvFresh ++ (growRow 775 s6Step279EntryGvFresh ++ []))) s6Step279EntryG_Incoming s6Step279EntryG_checked h2 s6Step279EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step279EntryFBefore s6Step279EntryFAfter s6Step279EntryGvAfter
    s6Step279EntryFRow s6Step279EntryFOut 132 s6Step279EntryFFresh [(s6Step279EntryGRow,132),(s6Step279EntryFvRow,155),(s6Step279EntryGvRow,155)] [s6Step279EntryGFresh,s6Step279EntryFvFresh,s6Step279EntryGvFresh] [s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut]
    (growRow 795 s6Step279EntryFFresh) ((growRow 777 s6Step279EntryGFresh ++ (growRow 776 s6Step279EntryFvFresh ++ (growRow 775 s6Step279EntryGvFresh ++ [])))) s6Step279EntryF_Incoming s6Step279EntryF_checked h1 s6Step279EntryF_Outgoing
  exact h0

private theorem s6Step279EntryBank_checked : compileHmrBankResizeLog .entry s6Step279EntryFBefore ⟨s6Step279EntryFRow,s6Step279EntryGRow,s6Step279EntryFvRow,s6Step279EntryGvRow⟩ ⟨132,132,155,155⟩ [s6Step279EntryFFresh,s6Step279EntryGFresh,s6Step279EntryFvFresh,s6Step279EntryGvFresh]=
    some (s6Step279EntryGvAfter,⟨s6Step279EntryFOut,s6Step279EntryGOut,s6Step279EntryFvOut,s6Step279EntryGvOut⟩,(growRow 795 s6Step279EntryFFresh ++ (growRow 777 s6Step279EntryGFresh ++ (growRow 776 s6Step279EntryFvFresh ++ (growRow 775 s6Step279EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step279EntryBank_rows]
  rfl

private def s6Step279ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279ExitFBefore : Arena := s6Step279ExitGAfter

private def s6Step279ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩

private def s6Step279ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 809],776⟩

private def s6Step279ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882, 927],777⟩

private def s6Step279ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 813],775⟩

private theorem s6Step279ExitBank_incomingDistinct : ([s6Step279ExitGRow,s6Step279ExitFRow,s6Step279ExitFvRow,s6Step279ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279ExitF_Incoming : rowsOwned s6Step279ExitFBefore [s6Step279ExitFRow,s6Step279ExitFvRow,s6Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279ExitGRow,s6Step279ExitFRow,s6Step279ExitFvRow,s6Step279ExitGvRow] 1 s6Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279ExitFBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279ExitBank_outgoingOwned : rowsOwned s6Step279ExitGvAfter [s6Step279ExitGOut,s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step279ExitGvAfter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279ExitF_Outgoing : rowsOwned s6Step279ExitGvAfter [s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut] :=
  hmrRows_owned_drop s6Step279ExitGvAfter [s6Step279ExitGOut,s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut] 1 s6Step279ExitBank_outgoingOwned

private theorem s6Step279ExitF_distinct : (s6Step279ExitFRow.sign::s6Step279ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279ExitF_owned : (s6Step279ExitFRow.sign::s6Step279ExitFRow.payload).toFinset⊆s6Step279ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279ExitFBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279ExitF_retired : s6Step279ExitFBefore.retireSet s6Step279ExitFExtra.toFinset=s6Step279ExitFAfter := by
  unfold Arena.retireSet s6Step279ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step279ExitFBefore,s6Step279ExitGAfter,s6Step279ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step279ExitF_checked : planRowResizeLog s6Step279ExitFBefore s6Step279ExitFRow 132 []=
    some (s6Step279ExitFAfter,s6Step279ExitFOut,shrinkRow 795 s6Step279ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step279ExitFBefore s6Step279ExitFRow 132 s6Step279ExitF_distinct s6Step279ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step279ExitFRow.payload.take 132) s6Step279ExitFRow.sign=s6Step279ExitFOut := by decide +kernel
  have hi : s6Step279ExitFRow.payload.drop 132=s6Step279ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step279ExitF_retired] at result
  exact result

private def s6Step279ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279ExitFvBefore : Arena := s6Step279ExitFAfter

private theorem s6Step279ExitFv_Incoming : rowsOwned s6Step279ExitFvBefore [s6Step279ExitFvRow,s6Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279ExitGRow,s6Step279ExitFRow,s6Step279ExitFvRow,s6Step279ExitGvRow] 2 s6Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279ExitFvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279ExitFv_Outgoing : rowsOwned s6Step279ExitGvAfter [s6Step279ExitFvOut,s6Step279ExitGvOut] :=
  hmrRows_owned_drop s6Step279ExitGvAfter [s6Step279ExitGOut,s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut] 2 s6Step279ExitBank_outgoingOwned

private theorem s6Step279ExitFv_distinct : (s6Step279ExitFvRow.sign::s6Step279ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279ExitFv_owned : (s6Step279ExitFvRow.sign::s6Step279ExitFvRow.payload).toFinset⊆s6Step279ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279ExitFvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279ExitFv_retired : s6Step279ExitFvBefore.retireSet s6Step279ExitFvExtra.toFinset=s6Step279ExitFvAfter := by
  unfold Arena.retireSet s6Step279ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step279ExitFvBefore,s6Step279ExitFAfter,s6Step279ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step279ExitFv_checked : planRowResizeLog s6Step279ExitFvBefore s6Step279ExitFvRow 155 []=
    some (s6Step279ExitFvAfter,s6Step279ExitFvOut,shrinkRow 776 s6Step279ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step279ExitFvBefore s6Step279ExitFvRow 155 s6Step279ExitFv_distinct s6Step279ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step279ExitFvRow.payload.take 155) s6Step279ExitFvRow.sign=s6Step279ExitFvOut := by decide +kernel
  have hi : s6Step279ExitFvRow.payload.drop 155=s6Step279ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step279ExitFv_retired] at result
  exact result

private def s6Step279ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step279ExitG_Incoming : rowsOwned s6Step279ExitGBefore [s6Step279ExitGRow,s6Step279ExitFRow,s6Step279ExitFvRow,s6Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279ExitGRow,s6Step279ExitFRow,s6Step279ExitFvRow,s6Step279ExitGvRow] 0 s6Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279ExitG_Outgoing : rowsOwned s6Step279ExitGvAfter [s6Step279ExitGOut,s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut] :=
  hmrRows_owned_drop s6Step279ExitGvAfter [s6Step279ExitGOut,s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut] 0 s6Step279ExitBank_outgoingOwned

private theorem s6Step279ExitG_distinct : (s6Step279ExitGRow.sign::s6Step279ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279ExitG_owned : (s6Step279ExitGRow.sign::s6Step279ExitGRow.payload).toFinset⊆s6Step279ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279ExitG_retired : s6Step279ExitGBefore.retireSet s6Step279ExitGExtra.toFinset=s6Step279ExitGAfter := by
  unfold Arena.retireSet s6Step279ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step279ExitGBefore,s6Step279ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step279ExitG_checked : planRowResizeLog s6Step279ExitGBefore s6Step279ExitGRow 130 []=
    some (s6Step279ExitGAfter,s6Step279ExitGOut,shrinkRow 777 s6Step279ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step279ExitGBefore s6Step279ExitGRow 130 s6Step279ExitG_distinct s6Step279ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step279ExitGRow.payload.take 130) s6Step279ExitGRow.sign=s6Step279ExitGOut := by decide +kernel
  have hi : s6Step279ExitGRow.payload.drop 130=s6Step279ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step279ExitG_retired] at result
  exact result

private def s6Step279ExitGvBefore : Arena := s6Step279ExitFvAfter

private theorem s6Step279ExitGv_Incoming : rowsOwned s6Step279ExitGvBefore [s6Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279ExitGRow,s6Step279ExitFRow,s6Step279ExitFvRow,s6Step279ExitGvRow] 3 s6Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279ExitGvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279ExitGv_Outgoing : rowsOwned s6Step279ExitGvAfter [s6Step279ExitGvOut] :=
  hmrRows_owned_drop s6Step279ExitGvAfter [s6Step279ExitGOut,s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut] 3 s6Step279ExitBank_outgoingOwned

private theorem s6Step279ExitGv_distinct : (s6Step279ExitGvRow.sign::s6Step279ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279ExitGv_owned : (s6Step279ExitGvRow.sign::s6Step279ExitGvRow.payload).toFinset⊆s6Step279ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279ExitGvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279ExitGv_retired : s6Step279ExitGvBefore.retireSet s6Step279ExitGvExtra.toFinset=s6Step279ExitGvAfter := by
  unfold Arena.retireSet s6Step279ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step279ExitGvBefore,s6Step279ExitFvAfter,s6Step279ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step279ExitGv_checked : planRowResizeLog s6Step279ExitGvBefore s6Step279ExitGvRow 155 []=
    some (s6Step279ExitGvAfter,s6Step279ExitGvOut,shrinkRow 775 s6Step279ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step279ExitGvBefore s6Step279ExitGvRow 155 s6Step279ExitGv_distinct s6Step279ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step279ExitGvRow.payload.take 155) s6Step279ExitGvRow.sign=s6Step279ExitGvOut := by decide +kernel
  have hi : s6Step279ExitGvRow.payload.drop 155=s6Step279ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step279ExitGv_retired] at result
  exact result

private theorem s6Step279ExitBank_rows : planWindowRowsLog s6Step279ExitGBefore [(s6Step279ExitGRow,130),(s6Step279ExitFRow,132),(s6Step279ExitFvRow,155),(s6Step279ExitGvRow,155)] [[],[],[],[]]=
    some (s6Step279ExitGvAfter,[s6Step279ExitGOut,s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut],(shrinkRow 777 s6Step279ExitGExtra ++ (shrinkRow 795 s6Step279ExitFExtra ++ (shrinkRow 776 s6Step279ExitFvExtra ++ (shrinkRow 775 s6Step279ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step279ExitGvAfter [] []=some (s6Step279ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step279ExitGvBefore s6Step279ExitGvAfter s6Step279ExitGvAfter
    s6Step279ExitGvRow s6Step279ExitGvOut 155 [] [] [] []
    (shrinkRow 775 s6Step279ExitGvExtra) ([]) s6Step279ExitGv_Incoming s6Step279ExitGv_checked h4 s6Step279ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step279ExitFvBefore s6Step279ExitFvAfter s6Step279ExitGvAfter
    s6Step279ExitFvRow s6Step279ExitFvOut 155 [] [(s6Step279ExitGvRow,155)] [[]] [s6Step279ExitGvOut]
    (shrinkRow 776 s6Step279ExitFvExtra) ((shrinkRow 775 s6Step279ExitGvExtra ++ [])) s6Step279ExitFv_Incoming s6Step279ExitFv_checked h3 s6Step279ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step279ExitFBefore s6Step279ExitFAfter s6Step279ExitGvAfter
    s6Step279ExitFRow s6Step279ExitFOut 132 [] [(s6Step279ExitFvRow,155),(s6Step279ExitGvRow,155)] [[],[]] [s6Step279ExitFvOut,s6Step279ExitGvOut]
    (shrinkRow 795 s6Step279ExitFExtra) ((shrinkRow 776 s6Step279ExitFvExtra ++ (shrinkRow 775 s6Step279ExitGvExtra ++ []))) s6Step279ExitF_Incoming s6Step279ExitF_checked h2 s6Step279ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step279ExitGBefore s6Step279ExitGAfter s6Step279ExitGvAfter
    s6Step279ExitGRow s6Step279ExitGOut 130 [] [(s6Step279ExitFRow,132),(s6Step279ExitFvRow,155),(s6Step279ExitGvRow,155)] [[],[],[]] [s6Step279ExitFOut,s6Step279ExitFvOut,s6Step279ExitGvOut]
    (shrinkRow 777 s6Step279ExitGExtra) ((shrinkRow 795 s6Step279ExitFExtra ++ (shrinkRow 776 s6Step279ExitFvExtra ++ (shrinkRow 775 s6Step279ExitGvExtra ++ [])))) s6Step279ExitG_Incoming s6Step279ExitG_checked h1 s6Step279ExitG_Outgoing
  exact h0

private theorem s6Step279ExitBank_checked : compileHmrBankResizeLog .exit s6Step279ExitGBefore ⟨s6Step279ExitFRow,s6Step279ExitGRow,s6Step279ExitFvRow,s6Step279ExitGvRow⟩ ⟨132,130,155,155⟩ [[],[],[],[]]=
    some (s6Step279ExitGvAfter,⟨s6Step279ExitFOut,s6Step279ExitGOut,s6Step279ExitFvOut,s6Step279ExitGvOut⟩,(shrinkRow 777 s6Step279ExitGExtra ++ (shrinkRow 795 s6Step279ExitFExtra ++ (shrinkRow 776 s6Step279ExitFvExtra ++ (shrinkRow 775 s6Step279ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step279ExitBank_rows]
  rfl

private theorem s6Step279Add0_apart : Disjoint s6Step279Add0Arena.live s6Step279Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step279Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279Add0_card : s6Step279Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step279Add0_borrowed : s6Step279Add0Arena.checkBorrow (hmrHybridCount s6Step279Add0Arena s6Step279Add0B.length) s6Step279Add0Work=some s6Step279Add0During := by
  have len : s6Step279Add0Work.length=hmrHybridCount s6Step279Add0Arena s6Step279Add0B.length := by
    rw [hmrHybridCount,s6Step279Add0_card]
    decide +kernel
  have nd : s6Step279Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step279Add0Arena s6Step279Add0During s6Step279Add0Work.toFinset s6Step279Add0_bounded s6Step279Add0_apart rfl

private theorem s6Step279Add0_distinct : (830::779::805::(s6Step279Add0A++s6Step279Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279Add0_owned : (830::779::805::(s6Step279Add0A++s6Step279Add0B)).toFinset⊆s6Step279Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step279Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279Add0_checked : compileHmrHybridCinLog s6Step279Add0Arena 779 830 805 s6Step279Add0A s6Step279Add0B s6Step279Add0Work=some s6Step279Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step279Add0Arena s6Step279Add0During 779 830 805 s6Step279Add0A s6Step279Add0B s6Step279Add0Work
    (by decide +kernel) (by decide +kernel) s6Step279Add0_distinct
    (fun q hq => s6Step279Add0_owned (List.mem_toFinset.mpr hq)) s6Step279Add0_borrowed

private theorem s6Step279Add1_apart : Disjoint s6Step279Add1Arena.live s6Step279Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step279Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279Add1_card : s6Step279Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step279Add1_borrowed : s6Step279Add1Arena.checkBorrow (hmrHybridCount s6Step279Add1Arena s6Step279Add1B.length) s6Step279Add1Work=some s6Step279Add1During := by
  have len : s6Step279Add1Work.length=hmrHybridCount s6Step279Add1Arena s6Step279Add1B.length := by
    rw [hmrHybridCount,s6Step279Add1_card]
    decide +kernel
  have nd : s6Step279Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step279Add1Arena s6Step279Add1During s6Step279Add1Work.toFinset s6Step279Add1_bounded s6Step279Add1_apart rfl

private theorem s6Step279Add1_distinct : (830::779::805::(s6Step279Add1A++s6Step279Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279Add1_owned : (830::779::805::(s6Step279Add1A++s6Step279Add1B)).toFinset⊆s6Step279Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step279Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279Add1_checked : compileHmrHybridCinLog s6Step279Add1Arena 779 830 805 s6Step279Add1A s6Step279Add1B s6Step279Add1Work=some s6Step279Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step279Add1Arena s6Step279Add1During 779 830 805 s6Step279Add1A s6Step279Add1B s6Step279Add1Work
    (by decide +kernel) (by decide +kernel) s6Step279Add1_distinct
    (fun q hq => s6Step279Add1_owned (List.mem_toFinset.mpr hq)) s6Step279Add1_borrowed

private theorem s6Step279F4_apart : Disjoint (s6Step279Add0A++s6Step279Add0B).toFinset (s6Step279Add1A++s6Step279Add1B).toFinset := by
  have nd : ((s6Step279Add0A++s6Step279Add0B)++(s6Step279Add1A++s6Step279Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step279F4_carry : s6Step279F4FlagArena.checkBorrow 1 [805]=some s6Step279Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step279F4FlagArena,s6Step279HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step279F4FlagArena,s6Step279HeadFvAfter,s6Step279Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279F4_distinct : (855::779::830::805::((s6Step279Add0A++s6Step279Add1A)++(s6Step279Add0B++s6Step279Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279F4_flag : s6Step279HeadFvAfter.checkBorrow 1 [830]=some s6Step279F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step279HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step279F4_owned : (855::779::((s6Step279Add0A++s6Step279Add1A)++(s6Step279Add0B++s6Step279Add1B))).toFinset⊆s6Step279HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step279HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279F4_checked : compileHmrHybridF4Log s6Step279HeadFvAfter 855 779 s6Step279Add0A s6Step279Add0B s6Step279Add1A s6Step279Add1B [830] [805] s6Step279Add0Work s6Step279Add1Work=some s6Step279F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step279HeadFvAfter s6Step279F4FlagArena s6Step279Add0Arena s6Step279Add0During s6Step279Add1During 855 779
    s6Step279Add0A s6Step279Add0B s6Step279Add1A s6Step279Add1B [830] [805] s6Step279Add0Work s6Step279Add1Work
    (fun q hq => s6Step279F4_owned (List.mem_toFinset.mpr hq)) s6Step279F4_flag s6Step279F4_carry
    s6Step279F4_distinct s6Step279F4_apart s6Step279Add0_checked s6Step279Add1_checked

private theorem s6Step279Front_branch : s6Step279FrontSigmaArena.checkBorrow 1 [779]=some s6Step279HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step279FrontSigmaArena,s6Step279EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step279FrontSigmaArena,s6Step279EntryGvAfter,s6Step279HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279Front_entry : HmrFrontEntryValid s6Step279EntryFBefore s6Step279FrontBank 132 155 ⟨132,130,155,155⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step279FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step279EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step279EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step279FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step279Front_sigma : s6Step279EntryGvAfter.checkBorrow 1 [855]=some s6Step279FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step279EntryGvAfter,arenaWires]
  · rfl

private def s6Step279HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279HeadFBefore : Arena := s6Step279HeadGAfter

private def s6Step279HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step279HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step279HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882],777⟩

private def s6Step279HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private theorem s6Step279HeadBank_incomingDistinct : ([s6Step279HeadGRow,s6Step279HeadFRow,s6Step279HeadGvRow,s6Step279HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279HeadF_Incoming : rowsOwned s6Step279HeadFBefore [s6Step279HeadFRow,s6Step279HeadGvRow,s6Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279HeadGRow,s6Step279HeadFRow,s6Step279HeadGvRow,s6Step279HeadFvRow] 1 s6Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279HeadBank_outgoingOwned : rowsOwned s6Step279HeadFvAfter [s6Step279HeadGOut,s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step279HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279HeadF_Outgoing : rowsOwned s6Step279HeadFvAfter [s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut] :=
  hmrRows_owned_drop s6Step279HeadFvAfter [s6Step279HeadGOut,s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut] 1 s6Step279HeadBank_outgoingOwned

private theorem s6Step279HeadF_distinct : (s6Step279HeadFRow.sign::s6Step279HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279HeadF_owned : (s6Step279HeadFRow.sign::s6Step279HeadFRow.payload).toFinset⊆s6Step279HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279HeadF_reserved : s6Step279HeadFBefore.reserve s6Step279HeadFFresh.toFinset=some s6Step279HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279HeadFFresh,arenaWires]
  · norm_num [s6Step279HeadFBefore,s6Step279HeadGAfter,s6Step279HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step279HeadFAfter,s6Step279HeadFBefore,s6Step279HeadGAfter,s6Step279HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279HeadF_checked : planRowResizeLog s6Step279HeadFBefore s6Step279HeadFRow 133 s6Step279HeadFFresh=
    some (s6Step279HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩,growRow 795 s6Step279HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step279HeadFBefore s6Step279HeadFAfter s6Step279HeadFRow 133 s6Step279HeadFFresh
    s6Step279HeadF_distinct s6Step279HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279HeadF_reserved
  have rowEq : WindowRow.mk (s6Step279HeadFRow.payload++s6Step279HeadFFresh) s6Step279HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step279HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step279HeadFvBefore : Arena := s6Step279HeadGvAfter

private theorem s6Step279HeadFv_Incoming : rowsOwned s6Step279HeadFvBefore [s6Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279HeadGRow,s6Step279HeadFRow,s6Step279HeadGvRow,s6Step279HeadFvRow] 3 s6Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279HeadFv_Outgoing : rowsOwned s6Step279HeadFvAfter [s6Step279HeadFvOut] :=
  hmrRows_owned_drop s6Step279HeadFvAfter [s6Step279HeadGOut,s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut] 3 s6Step279HeadBank_outgoingOwned

private theorem s6Step279HeadFv_distinct : (s6Step279HeadFvRow.sign::s6Step279HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279HeadFv_owned : (s6Step279HeadFvRow.sign::s6Step279HeadFvRow.payload).toFinset⊆s6Step279HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279HeadFv_reserved : s6Step279HeadFvBefore.reserve s6Step279HeadFvFresh.toFinset=some s6Step279HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279HeadFvFresh,arenaWires]
  · norm_num [s6Step279HeadFvBefore,s6Step279HeadGvAfter,s6Step279HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step279HeadFvAfter,s6Step279HeadFvBefore,s6Step279HeadGvAfter,s6Step279HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279HeadFv_checked : planRowResizeLog s6Step279HeadFvBefore s6Step279HeadFvRow 156 s6Step279HeadFvFresh=
    some (s6Step279HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 809],776⟩,growRow 776 s6Step279HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step279HeadFvBefore s6Step279HeadFvAfter s6Step279HeadFvRow 156 s6Step279HeadFvFresh
    s6Step279HeadFv_distinct s6Step279HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step279HeadFvRow.payload++s6Step279HeadFvFresh) s6Step279HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 809],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step279HeadG_Incoming : rowsOwned s6Step279HeadGBefore [s6Step279HeadGRow,s6Step279HeadFRow,s6Step279HeadGvRow,s6Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279HeadGRow,s6Step279HeadFRow,s6Step279HeadGvRow,s6Step279HeadFvRow] 0 s6Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279HeadG_Outgoing : rowsOwned s6Step279HeadFvAfter [s6Step279HeadGOut,s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut] :=
  hmrRows_owned_drop s6Step279HeadFvAfter [s6Step279HeadGOut,s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut] 0 s6Step279HeadBank_outgoingOwned

private theorem s6Step279HeadG_distinct : (s6Step279HeadGRow.sign::s6Step279HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279HeadG_owned : (s6Step279HeadGRow.sign::s6Step279HeadGRow.payload).toFinset⊆s6Step279HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279HeadG_reserved : s6Step279HeadGBefore.reserve s6Step279HeadGFresh.toFinset=some s6Step279HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279HeadGFresh,arenaWires]
  · norm_num [s6Step279HeadGBefore,s6Step279HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step279HeadGAfter,s6Step279HeadGBefore,s6Step279HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279HeadG_checked : planRowResizeLog s6Step279HeadGBefore s6Step279HeadGRow 133 s6Step279HeadGFresh=
    some (s6Step279HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882, 927],777⟩,growRow 777 s6Step279HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step279HeadGBefore s6Step279HeadGAfter s6Step279HeadGRow 133 s6Step279HeadGFresh
    s6Step279HeadG_distinct s6Step279HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279HeadG_reserved
  have rowEq : WindowRow.mk (s6Step279HeadGRow.payload++s6Step279HeadGFresh) s6Step279HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 882, 927],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step279HeadGvBefore : Arena := s6Step279HeadFAfter

private theorem s6Step279HeadGv_Incoming : rowsOwned s6Step279HeadGvBefore [s6Step279HeadGvRow,s6Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step279HeadGRow,s6Step279HeadFRow,s6Step279HeadGvRow,s6Step279HeadFvRow] 2 s6Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step279HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step279HeadGv_Outgoing : rowsOwned s6Step279HeadFvAfter [s6Step279HeadGvOut,s6Step279HeadFvOut] :=
  hmrRows_owned_drop s6Step279HeadFvAfter [s6Step279HeadGOut,s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut] 2 s6Step279HeadBank_outgoingOwned

private theorem s6Step279HeadGv_distinct : (s6Step279HeadGvRow.sign::s6Step279HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step279HeadGv_owned : (s6Step279HeadGvRow.sign::s6Step279HeadGvRow.payload).toFinset⊆s6Step279HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step279HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step279HeadGv_reserved : s6Step279HeadGvBefore.reserve s6Step279HeadGvFresh.toFinset=some s6Step279HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step279HeadGvFresh,arenaWires]
  · norm_num [s6Step279HeadGvBefore,s6Step279HeadFAfter,s6Step279HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step279HeadGvAfter,s6Step279HeadGvBefore,s6Step279HeadFAfter,s6Step279HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step279HeadGv_checked : planRowResizeLog s6Step279HeadGvBefore s6Step279HeadGvRow 156 s6Step279HeadGvFresh=
    some (s6Step279HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 813],775⟩,growRow 775 s6Step279HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step279HeadGvBefore s6Step279HeadGvAfter s6Step279HeadGvRow 156 s6Step279HeadGvFresh
    s6Step279HeadGv_distinct s6Step279HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step279HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step279HeadGvRow.payload++s6Step279HeadGvFresh) s6Step279HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step279HeadBank_rows : planWindowRowsLog s6Step279HeadGBefore [(s6Step279HeadGRow,133),(s6Step279HeadFRow,133),(s6Step279HeadGvRow,156),(s6Step279HeadFvRow,156)] [s6Step279HeadGFresh,s6Step279HeadFFresh,s6Step279HeadGvFresh,s6Step279HeadFvFresh]=
    some (s6Step279HeadFvAfter,[s6Step279HeadGOut,s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut],(growRow 777 s6Step279HeadGFresh ++ (growRow 795 s6Step279HeadFFresh ++ (growRow 775 s6Step279HeadGvFresh ++ (growRow 776 s6Step279HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step279HeadFvAfter [] []=some (s6Step279HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step279HeadFvBefore s6Step279HeadFvAfter s6Step279HeadFvAfter
    s6Step279HeadFvRow s6Step279HeadFvOut 156 s6Step279HeadFvFresh [] [] []
    (growRow 776 s6Step279HeadFvFresh) ([]) s6Step279HeadFv_Incoming s6Step279HeadFv_checked h4 s6Step279HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step279HeadGvBefore s6Step279HeadGvAfter s6Step279HeadFvAfter
    s6Step279HeadGvRow s6Step279HeadGvOut 156 s6Step279HeadGvFresh [(s6Step279HeadFvRow,156)] [s6Step279HeadFvFresh] [s6Step279HeadFvOut]
    (growRow 775 s6Step279HeadGvFresh) ((growRow 776 s6Step279HeadFvFresh ++ [])) s6Step279HeadGv_Incoming s6Step279HeadGv_checked h3 s6Step279HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step279HeadFBefore s6Step279HeadFAfter s6Step279HeadFvAfter
    s6Step279HeadFRow s6Step279HeadFOut 133 s6Step279HeadFFresh [(s6Step279HeadGvRow,156),(s6Step279HeadFvRow,156)] [s6Step279HeadGvFresh,s6Step279HeadFvFresh] [s6Step279HeadGvOut,s6Step279HeadFvOut]
    (growRow 795 s6Step279HeadFFresh) ((growRow 775 s6Step279HeadGvFresh ++ (growRow 776 s6Step279HeadFvFresh ++ []))) s6Step279HeadF_Incoming s6Step279HeadF_checked h2 s6Step279HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step279HeadGBefore s6Step279HeadGAfter s6Step279HeadFvAfter
    s6Step279HeadGRow s6Step279HeadGOut 133 s6Step279HeadGFresh [(s6Step279HeadFRow,133),(s6Step279HeadGvRow,156),(s6Step279HeadFvRow,156)] [s6Step279HeadFFresh,s6Step279HeadGvFresh,s6Step279HeadFvFresh] [s6Step279HeadFOut,s6Step279HeadGvOut,s6Step279HeadFvOut]
    (growRow 777 s6Step279HeadGFresh) ((growRow 795 s6Step279HeadFFresh ++ (growRow 775 s6Step279HeadGvFresh ++ (growRow 776 s6Step279HeadFvFresh ++ [])))) s6Step279HeadG_Incoming s6Step279HeadG_checked h1 s6Step279HeadG_Outgoing
  exact h0

private theorem s6Step279HeadBank_checked : compileHmrBankResizeLog .headroom s6Step279HeadGBefore ⟨s6Step279HeadFRow,s6Step279HeadGRow,s6Step279HeadFvRow,s6Step279HeadGvRow⟩ ⟨133,133,156,156⟩ [s6Step279HeadGFresh,s6Step279HeadFFresh,s6Step279HeadGvFresh,s6Step279HeadFvFresh]=
    some (s6Step279HeadFvAfter,⟨s6Step279HeadFOut,s6Step279HeadGOut,s6Step279HeadFvOut,s6Step279HeadGvOut⟩,(growRow 777 s6Step279HeadGFresh ++ (growRow 795 s6Step279HeadFFresh ++ (growRow 775 s6Step279HeadGvFresh ++ (growRow 776 s6Step279HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step279HeadBank_rows]
  rfl

private theorem s6Step279Front_checked : compileHmrSourceFrontLog s6Step279EntryFBefore s6Step279FrontBank 132 155 ⟨132,130,155,155⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step279FrontLog=some s6Step279FrontPlan := by
  have pairEq : s6Step279FrontPair=⟨s6Step279HeadFRow,s6Step279HeadGRow,s6Step279HeadFvRow,s6Step279HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step279FrontHead=⟨s6Step279ExitFRow,s6Step279ExitGRow,s6Step279ExitFvRow,s6Step279ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step279Add0A=s6Step279FrontHead.f.wires := by decide +kernel
  have gEq : s6Step279Add0B=s6Step279FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step279Add1A=s6Step279FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step279Add1B=s6Step279FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step279EntryFBefore s6Step279FrontBank 132 155 ⟨132,130,155,155⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step279FrontLog s6Step279FrontPlan
  · exact s6Step279Front_entry
  · exact s6Step279EntryBank_checked
  · exact s6Step279Front_sigma
  · rfl
  · exact s6Step279Front_branch
  · rfl
  · simpa only [s6Step279FrontPlan,pairEq] using s6Step279HeadBank_checked
  · simpa only [s6Step279FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step279F4_checked
  · exact s6Step279Counter_checked
  · rfl
  · simpa only [s6Step279FrontPlan,headEq] using s6Step279ExitBank_checked

private theorem s6Step279Complete_explicit_checked : compileHmrEarlyStepLog s6Step279EntryFBefore s6Step279FrontBank 132 155 ⟨132,130,155,155⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 54 s6Step279CompleteLog=some s6Step279CompletePlan := by
  let Q := s6Step279EarlyControlPlan
  have hq := s6Step279EarlyControl_plan_checked
  have fv1 : s6Step279CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step279CompleteOut.fv.payload[2]?.getD s6Step279CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step279CompleteOut.fv.payload[3]?.getD s6Step279CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step279CompleteOut.fv.payload[4]?.getD s6Step279CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step279EntryFBefore s6Step279EarlyControlArena s6Step279FrontBank 132 155 ⟨132,130,155,155⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 54 s6Step279CompleteLog s6Step279FrontPlan Q
    s6Step279Front_checked s6Step279Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step279Complete_owned s6Step279Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step279EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 855 s6Step279CompleteOut.fv.second (s6Step279CompleteOut.fv.payload[2]?.getD s6Step279CompleteOut.fv.sign) (s6Step279CompleteOut.fv.payload[3]?.getD s6Step279CompleteOut.fv.sign) (s6Step279CompleteOut.fv.payload[4]?.getD s6Step279CompleteOut.fv.sign) 779 54 s6Step279EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep279Arena : Arena := s6Step279EntryFBefore
def s6PrivateStep279Bank : WindowBank := s6Step279FrontBank
def s6PrivateStep279Spec : HmrSourceWalkStepLog := ⟨132,155,⟨132,130,155,155⟩,54,.early s6Step279CompleteLog⟩
def s6PrivateStep279Plan : HmrSourceStepPlan := .early s6Step279CompletePlan
theorem s6PrivateStep279_source : s6PrivateStep279Spec=s6ObservedLogs272[7] := rfl
theorem s6PrivateStep279_checked : compileHmrSourceStepLog s6PrivateStep279Arena s6PrivateStep279Bank
    s6PrivateStep279Spec.fgWidth s6PrivateStep279Spec.vWidth s6PrivateStep279Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 279 s6PrivateStep279Spec.need none s6PrivateStep279Spec.log=some s6PrivateStep279Plan := by
  change compileHmrSourceStepLog s6Step279EntryFBefore s6Step279FrontBank 132 155 ⟨132,130,155,155⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 279 54 none (.early s6Step279CompleteLog)=some (.early s6Step279CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 279<498)]
  rw [s6Step279Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
