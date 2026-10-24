import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep256
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

private def s6Step258CompleteMoves : List (Wire × Wire) := [(907,141),(854,397)]

private def s6Step258EarlyControlLog : HmrEarlyControlLog := ⟨[854, 907, 809, 810, 868],[862],[833],[830, 805, 817, 812, 915, 932],[]⟩

private def s6Step258FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[868], [810], [809], [880]],[[], [], [], []]⟩,[822],[853],[862],[833],[830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[862, 833, 830, 805]⟩

private def s6Step258CompleteLog : HmrEarlyStepLog := ⟨s6Step258FrontLog,s6Step258CompleteMoves,s6Step258EarlyControlLog⟩

private def s6Step258ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396],795⟩

private def s6Step258ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step258ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],777⟩

private def s6Step258ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step258FrontOut : WindowBank := ⟨s6Step258ExitFOut,s6Step258ExitGOut,s6Step258ExitFvOut,s6Step258ExitGvOut⟩

private def s6Step258CompleteOut : WindowBank := s6Step258FrontOut.repacked s6Step258CompleteMoves

private def s6Step258EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step258EarlyControlPositiveArena,[862],s6Step258EarlyControlEqualityArena,[833],⟨⟨822,false⟩,[⟨⟨862,false⟩,833⟩]⟩⟩

private def s6Step258EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,854⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,809⟩,⟨⟨770,false⟩,810⟩,⟨⟨769,false⟩,868⟩]⟩

private def s6Step258EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step258EarlyControlZeroArena,s6Step258EarlyControlZeroPlan,s6Step258EarlyControlClassPlan,s6Step258EarlyControlFlagArena,s6Step258EarlyControlFittedArena,s6Step258EarlyControlHistoryArena,s6Step258EarlyControlSigmaArena,s6Step258EarlyControlOutputArena,s6Step258EarlyControlLog⟩

private def s6Step258CounterWork : List Wire := [862, 833, 830, 805]

private theorem s6Step258Counter_bounded : s6Step258CounterWork.toFinset⊆arenaWires := by norm_num [s6Step258CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step258HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258CounterDuring : Arena := ⟨s6Step258HeadFvAfter.live∪s6Step258CounterWork.toFinset,Finset.union_subset s6Step258HeadFvAfter.bounded s6Step258Counter_bounded⟩

private def s6Step258EntryFFresh : List Wire := []

private def s6Step258EntryFvFresh : List Wire := []

private def s6Step258EntryGFresh : List Wire := []

private def s6Step258EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258EntryGvAfter : Arena := s6Step258EntryFBefore

private def s6Step258EntryGvFresh : List Wire := []

private def s6Step258ExitFExtra : List Wire := [397, 810]

private def s6Step258ExitGExtra : List Wire := [141, 868]

private def s6Step258ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<397) ∨ (398≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258ExitGvExtra : List Wire := [809]

private def s6Step258Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258Add0Work : List Wire := [830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step258Add0_bounded : s6Step258Add0Work.toFinset⊆arenaWires := by
  have h : s6Step258Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step258Add0During : Arena := ⟨s6Step258Add0Arena.live∪s6Step258Add0Work.toFinset,Finset.union_subset s6Step258Add0Arena.bounded s6Step258Add0_bounded⟩

private def s6Step258Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258Add1Work : List Wire := [830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step258Add1_bounded : s6Step258Add1Work.toFinset⊆arenaWires := by
  have h : s6Step258Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step258Add1During : Arena := ⟨s6Step258Add1Arena.live∪s6Step258Add1Work.toFinset,Finset.union_subset s6Step258Add1Arena.bounded s6Step258Add1_bounded⟩

private def s6Step258F4FlagArena : Arena := ⟨s6Step258HeadFvAfter.live∪{862},Finset.union_subset s6Step258HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step258F4Plan : HmrHybridF4Plan := ⟨s6Step258F4FlagArena,[862],s6Step258Add0Arena,[833],s6Step258Add0During,s6Step258Add0Work,s6Step258Add1During,s6Step258Add1Work⟩

private def s6Step258HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 810],795⟩

private def s6Step258HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step258HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 868],777⟩

private def s6Step258HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩

private def s6Step258FrontHead : WindowBank := ⟨s6Step258HeadFOut,s6Step258HeadGOut,s6Step258HeadFvOut,s6Step258HeadGvOut⟩

private def s6Step258EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step258EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step258EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step258EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step258FrontPair : WindowBank := ⟨s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut⟩

private def s6Step258FrontSigmaArena : Arena := ⟨s6Step258EntryGvAfter.live∪{822},Finset.union_subset s6Step258EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step258HeadFFresh : List Wire := [810]

private def s6Step258HeadFvFresh : List Wire := [880]

private def s6Step258HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258HeadGFresh : List Wire := [868]

private def s6Step258HeadGvFresh : List Wire := [809]

private def s6Step258FrontPlan : HmrSourceFront := ⟨s6Step258EntryGvAfter,s6Step258FrontPair,(growRow 795 s6Step258EntryFFresh ++ (growRow 777 s6Step258EntryGFresh ++ (growRow 776 s6Step258EntryFvFresh ++ (growRow 775 s6Step258EntryGvFresh ++ [])))),s6Step258FrontSigmaArena,[822],s6Step258HeadGBefore,[853],
  s6Step258HeadFvAfter,s6Step258FrontHead,(growRow 777 s6Step258HeadGFresh ++ (growRow 795 s6Step258HeadFFresh ++ (growRow 775 s6Step258HeadGvFresh ++ (growRow 776 s6Step258HeadFvFresh ++ [])))),s6Step258F4Plan,s6Step258CounterDuring,s6Step258CounterWork,s6Step258ExitGvAfter,s6Step258FrontOut,(shrinkRow 777 s6Step258ExitGExtra ++ (shrinkRow 795 s6Step258ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step258ExitGvExtra ++ []))))⟩

private def s6Step258CompletePlan : HmrEarlyStepPlan := ⟨s6Step258FrontPlan,s6Step258EarlyControlArena,s6Step258EarlyControlPlan,s6Step258CompleteMoves⟩

private theorem s6Step258Complete_apart : List.Disjoint (s6Step258CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step258CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step258Complete_owned : (s6Step258CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step258CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,397),(398,782),(783,787),(788,790),(791,792),(793,797),(799,800),(802,805),(806,808),(813,815),(818,819),(821,830),(831,832),(834,842),(843,849),(850,862),(863,868),(869,896),(897,899),(900,906),(908,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step258CompleteRelocationMove0Borrowed : Arena := ⟨s6Step258ExitGvAfter.live∪{141},Finset.union_subset s6Step258ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step258CompleteRelocationMove1Borrowed : Arena := ⟨s6Step258CompleteRelocationMove0After.live∪{397},Finset.union_subset s6Step258CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step258CompleteRelocation_move0_owned : 907∈s6Step258ExitGvAfter.live := by norm_num [s6Step258ExitGvAfter,arenaWires]

private theorem s6Step258CompleteRelocation_move0_reserve : s6Step258ExitGvAfter.reserve {141}=some s6Step258CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step258ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step258CompleteRelocation_move0_retire : s6Step258CompleteRelocationMove0Borrowed.retireSet {907}=s6Step258CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step258CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step258CompleteRelocationMove0Borrowed,s6Step258ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step258CompleteRelocation_move1_owned : 854∈s6Step258CompleteRelocationMove0After.live := by norm_num [s6Step258CompleteRelocationMove0After,arenaWires]

private theorem s6Step258CompleteRelocation_move1_reserve : s6Step258CompleteRelocationMove0After.reserve {397}=some s6Step258CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step258CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step258CompleteRelocation_move1_retire : s6Step258CompleteRelocationMove1Borrowed.retireSet {854}=s6Step258EarlyControlArena := by
  unfold Arena.retireSet s6Step258EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step258CompleteRelocationMove1Borrowed,s6Step258CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step258CompleteRelocation_checked : s6Step258ExitGvAfter.checkRepack [(907,141),(854,397)]=some s6Step258EarlyControlArena := by
  have tail2 : s6Step258EarlyControlArena.checkRepack []=some s6Step258EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step258CompleteRelocationMove0After s6Step258CompleteRelocationMove1Borrowed s6Step258EarlyControlArena s6Step258EarlyControlArena 854 397 []
    s6Step258CompleteRelocation_move1_owned s6Step258CompleteRelocation_move1_reserve s6Step258CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step258ExitGvAfter s6Step258CompleteRelocationMove0Borrowed s6Step258CompleteRelocationMove0After s6Step258EarlyControlArena 907 141 [(854,397)]
    s6Step258CompleteRelocation_move0_owned s6Step258CompleteRelocation_move0_reserve s6Step258CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step258Complete_repack : s6Step258ExitGvAfter.checkRepack s6Step258CompleteMoves=some s6Step258EarlyControlArena := by
  simpa only [s6Step258CompleteMoves] using s6Step258CompleteRelocation_checked

private theorem s6Step258EarlyControl_branchOwned : ([853] : List Wire).toFinset⊆s6Step258EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_branch : compileHmrBranchRetirement s6Step258EarlyControlSigmaArena 853=some s6Step258EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step258EarlyControl_branchOwned
  · ext q
    simp [s6Step258EarlyControlOutputArena,s6Step258EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step258EarlyControl_classEqualityBorrow : s6Step258EarlyControlPositiveArena.checkBorrow (([822, 862] : List Wire).length-1) s6Step258EarlyControlLog.classWork=some s6Step258EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step258EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step258EarlyControlEqualityArena,s6Step258EarlyControlPositiveArena,s6Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step258EarlyControl_classEqualityOwned : ([822, 862] : List Wire).toFinset⊆s6Step258EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_classEquality : compileHmrEqualityLog s6Step258EarlyControlPositiveArena [822, 862] 0 s6Step258EarlyControlLog.classWork=some (s6Step258EarlyControlEqualityArena,s6Step258EarlyControlLog.classWork,s6Step258EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step258EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step258EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step258EarlyControl_classOwned : ([769, 868, 822] : List Wire).toFinset⊆s6Step258EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_positiveBorrow : s6Step258EarlyControlZeroArena.checkBorrow (1) s6Step258EarlyControlLog.positiveWork=some s6Step258EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step258EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step258EarlyControlPositiveArena,s6Step258EarlyControlZeroArena,s6Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step258EarlyControl_class : compileHmrSourceClassLog s6Step258EarlyControlZeroArena false 769 s6Step258EarlyControlZeroPlan.top 0 822 s6Step258EarlyControlLog.positiveWork s6Step258EarlyControlLog.classWork=some s6Step258EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step258EarlyControlClassPlan s6Step258EarlyControlZeroArena false 769 s6Step258EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step258EarlyControl_classOwned
  · exact s6Step258EarlyControl_positiveBorrow
  · exact s6Step258EarlyControl_classEquality

private theorem s6Step258EarlyControl_entryRecordOwned : ([853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s6Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_fitBorrow : s6Step258EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step258EarlyControlLog.recordFresh=some s6Step258EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step258EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step258EarlyControlFittedArena,s6Step258EarlyControlFlagArena,s6Step258EarlyControlLog,arenaWires]

private theorem s6Step258EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step258EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_fit : compileHmrRecordGrowLog s6Step258EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step258EarlyControlLog.recordFresh=some s6Step258EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step258EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step258EarlyControl_fitBorrow

private theorem s6Step258EarlyControl_flagsBorrow : s6Step258EarlyControlEqualityArena.checkBorrow (6) s6Step258EarlyControlLog.flagWork=some s6Step258EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step258EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step258EarlyControlFlagArena,s6Step258EarlyControlEqualityArena,s6Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step258EarlyControl_flagsOwned : ([833, 253, 252, 251] : List Wire).toFinset⊆s6Step258EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_flags : compileHmrFlagsLog s6Step258EarlyControlClassPlan.equalityArena s6Step258EarlyControlClassPlan.equality.top 253 252 251 s6Step258EarlyControlLog.flagWork=some s6Step258EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step258EarlyControl_flagsOwned⟩
  · exact s6Step258EarlyControl_flagsBorrow

private theorem s6Step258EarlyControl_historyBorrow : s6Step258EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step258EarlyControlLog.recordFresh=some s6Step258EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step258EarlyControlHistoryArena,s6Step258EarlyControlArena,s6Step258EarlyControlLog,arenaWires]

private theorem s6Step258EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_history : compileHmrRecordGrowLog s6Step258EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step258EarlyControlLog.recordFresh=some s6Step258EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step258EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step258EarlyControl_historyBorrow

private theorem s6Step258EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s6Step258EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step258EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_sigmaRelease : s6Step258EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step258EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step258EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step258EarlyControlSigmaArena,s6Step258EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step258EarlyControl_sigma : compileHmrSigmaDropLog s6Step258EarlyControlHistoryArena false 0 0 254 822 []=some s6Step258EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step258EarlyControl_sigmaOwned⟩
  · exact s6Step258EarlyControl_sigmaRelease

private theorem s6Step258EarlyControl_zeroBorrow : s6Step258EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step258EarlyControlLog.zeroWork=some s6Step258EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step258EarlyControlZeroArena,s6Step258EarlyControlArena,s6Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step258EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EarlyControl_zero : compileHmrEqualityLog s6Step258EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step258EarlyControlLog.zeroWork=some (s6Step258EarlyControlZeroArena,s6Step258EarlyControlLog.zeroWork,s6Step258EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step258EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step258EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step258EarlyControl_logged : s6Step258EarlyControlPlan.Logged s6Step258EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 853 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step258EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step258EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step258EarlyControl_zero
  · exact s6Step258EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step258EarlyControl_flags
  · exact s6Step258EarlyControl_fit
  · exact s6Step258EarlyControl_history
  · exact s6Step258EarlyControl_sigma
  · exact s6Step258EarlyControl_branch

private theorem s6Step258EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step258EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 853 51 s6Step258EarlyControlLog=some s6Step258EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step258EarlyControlPlan s6Step258EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 853 51 s6Step258EarlyControl_logged

private def s6Step258EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step258EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step258EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step258EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step258FrontBank : WindowBank := ⟨s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow⟩

private def s6Step258Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 810, 795]

private def s6Step258Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 868, 777]

private def s6Step258Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 776]

private def s6Step258Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809, 775]

private theorem s6Step258Counter_apart : Disjoint s6Step258HeadFvAfter.live s6Step258CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258Counter_borrowed : s6Step258HeadFvAfter.checkBorrow 4 s6Step258CounterWork=some s6Step258CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step258HeadFvAfter s6Step258CounterDuring s6Step258CounterWork.toFinset s6Step258Counter_bounded s6Step258Counter_apart rfl

private theorem s6Step258Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step258HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258Counter_checked : compileHmrCounterStepLog s6Step258HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step258CounterWork=some s6Step258CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step258HeadFvAfter.live := fun q hq => s6Step258Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step258Counter_borrowed

private def s6Step258EntryFAfter : Arena := s6Step258EntryFBefore

private theorem s6Step258EntryBank_incomingDistinct : ([s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258EntryF_Incoming : rowsOwned s6Step258EntryFBefore [s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow] 0 s6Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258EntryBank_outgoingOwned : rowsOwned s6Step258EntryGvAfter [s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step258EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258EntryF_Outgoing : rowsOwned s6Step258EntryGvAfter [s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut] :=
  hmrRows_owned_drop s6Step258EntryGvAfter [s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut] 0 s6Step258EntryBank_outgoingOwned

private theorem s6Step258EntryF_distinct : (s6Step258EntryFRow.sign::s6Step258EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258EntryF_owned : (s6Step258EntryFRow.sign::s6Step258EntryFRow.payload).toFinset⊆s6Step258EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EntryF_reserved : s6Step258EntryFBefore.reserve s6Step258EntryFFresh.toFinset=some s6Step258EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258EntryFFresh,arenaWires]
  · norm_num [s6Step258EntryFBefore,s6Step258EntryFFresh,arenaWires]
  · simp only [s6Step258EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step258EntryF_checked : planRowResizeLog s6Step258EntryFBefore s6Step258EntryFRow 142 s6Step258EntryFFresh=
    some (s6Step258EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩,growRow 795 s6Step258EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step258EntryFBefore s6Step258EntryFAfter s6Step258EntryFRow 142 s6Step258EntryFFresh
    s6Step258EntryF_distinct s6Step258EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258EntryF_reserved
  have rowEq : WindowRow.mk (s6Step258EntryFRow.payload++s6Step258EntryFFresh) s6Step258EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step258EntryFvAfter : Arena := s6Step258EntryFBefore

private def s6Step258EntryFvBefore : Arena := s6Step258EntryFBefore

private theorem s6Step258EntryFv_Incoming : rowsOwned s6Step258EntryFvBefore [s6Step258EntryFvRow,s6Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow] 2 s6Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258EntryFv_Outgoing : rowsOwned s6Step258EntryGvAfter [s6Step258EntryFvOut,s6Step258EntryGvOut] :=
  hmrRows_owned_drop s6Step258EntryGvAfter [s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut] 2 s6Step258EntryBank_outgoingOwned

private theorem s6Step258EntryFv_distinct : (s6Step258EntryFvRow.sign::s6Step258EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258EntryFv_owned : (s6Step258EntryFvRow.sign::s6Step258EntryFvRow.payload).toFinset⊆s6Step258EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EntryFv_reserved : s6Step258EntryFvBefore.reserve s6Step258EntryFvFresh.toFinset=some s6Step258EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258EntryFvFresh,arenaWires]
  · norm_num [s6Step258EntryFvBefore,s6Step258EntryFBefore,s6Step258EntryFvFresh,arenaWires]
  · simp only [s6Step258EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step258EntryFv_checked : planRowResizeLog s6Step258EntryFvBefore s6Step258EntryFvRow 144 s6Step258EntryFvFresh=
    some (s6Step258EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩,growRow 776 s6Step258EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step258EntryFvBefore s6Step258EntryFvAfter s6Step258EntryFvRow 144 s6Step258EntryFvFresh
    s6Step258EntryFv_distinct s6Step258EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step258EntryFvRow.payload++s6Step258EntryFvFresh) s6Step258EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step258EntryGAfter : Arena := s6Step258EntryFBefore

private def s6Step258EntryGBefore : Arena := s6Step258EntryFBefore

private theorem s6Step258EntryG_Incoming : rowsOwned s6Step258EntryGBefore [s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow] 1 s6Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258EntryG_Outgoing : rowsOwned s6Step258EntryGvAfter [s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut] :=
  hmrRows_owned_drop s6Step258EntryGvAfter [s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut] 1 s6Step258EntryBank_outgoingOwned

private theorem s6Step258EntryG_distinct : (s6Step258EntryGRow.sign::s6Step258EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258EntryG_owned : (s6Step258EntryGRow.sign::s6Step258EntryGRow.payload).toFinset⊆s6Step258EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EntryG_reserved : s6Step258EntryGBefore.reserve s6Step258EntryGFresh.toFinset=some s6Step258EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258EntryGFresh,arenaWires]
  · norm_num [s6Step258EntryGBefore,s6Step258EntryFBefore,s6Step258EntryGFresh,arenaWires]
  · simp only [s6Step258EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step258EntryG_checked : planRowResizeLog s6Step258EntryGBefore s6Step258EntryGRow 142 s6Step258EntryGFresh=
    some (s6Step258EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩,growRow 777 s6Step258EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step258EntryGBefore s6Step258EntryGAfter s6Step258EntryGRow 142 s6Step258EntryGFresh
    s6Step258EntryG_distinct s6Step258EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258EntryG_reserved
  have rowEq : WindowRow.mk (s6Step258EntryGRow.payload++s6Step258EntryGFresh) s6Step258EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step258EntryGvBefore : Arena := s6Step258EntryFBefore

private theorem s6Step258EntryGv_Incoming : rowsOwned s6Step258EntryGvBefore [s6Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow] 3 s6Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258EntryGv_Outgoing : rowsOwned s6Step258EntryGvAfter [s6Step258EntryGvOut] :=
  hmrRows_owned_drop s6Step258EntryGvAfter [s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut] 3 s6Step258EntryBank_outgoingOwned

private theorem s6Step258EntryGv_distinct : (s6Step258EntryGvRow.sign::s6Step258EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258EntryGv_owned : (s6Step258EntryGvRow.sign::s6Step258EntryGvRow.payload).toFinset⊆s6Step258EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258EntryGv_reserved : s6Step258EntryGvBefore.reserve s6Step258EntryGvFresh.toFinset=some s6Step258EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258EntryGvFresh,arenaWires]
  · norm_num [s6Step258EntryGvBefore,s6Step258EntryFBefore,s6Step258EntryGvFresh,arenaWires]
  · simp only [s6Step258EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step258EntryGv_checked : planRowResizeLog s6Step258EntryGvBefore s6Step258EntryGvRow 144 s6Step258EntryGvFresh=
    some (s6Step258EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩,growRow 775 s6Step258EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step258EntryGvBefore s6Step258EntryGvAfter s6Step258EntryGvRow 144 s6Step258EntryGvFresh
    s6Step258EntryGv_distinct s6Step258EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step258EntryGvRow.payload++s6Step258EntryGvFresh) s6Step258EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step258EntryBank_rows : planWindowRowsLog s6Step258EntryFBefore [(s6Step258EntryFRow,142),(s6Step258EntryGRow,142),(s6Step258EntryFvRow,144),(s6Step258EntryGvRow,144)] [s6Step258EntryFFresh,s6Step258EntryGFresh,s6Step258EntryFvFresh,s6Step258EntryGvFresh]=
    some (s6Step258EntryGvAfter,[s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut],(growRow 795 s6Step258EntryFFresh ++ (growRow 777 s6Step258EntryGFresh ++ (growRow 776 s6Step258EntryFvFresh ++ (growRow 775 s6Step258EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step258EntryGvAfter [] []=some (s6Step258EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step258EntryGvBefore s6Step258EntryGvAfter s6Step258EntryGvAfter
    s6Step258EntryGvRow s6Step258EntryGvOut 144 s6Step258EntryGvFresh [] [] []
    (growRow 775 s6Step258EntryGvFresh) ([]) s6Step258EntryGv_Incoming s6Step258EntryGv_checked h4 s6Step258EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step258EntryFvBefore s6Step258EntryFvAfter s6Step258EntryGvAfter
    s6Step258EntryFvRow s6Step258EntryFvOut 144 s6Step258EntryFvFresh [(s6Step258EntryGvRow,144)] [s6Step258EntryGvFresh] [s6Step258EntryGvOut]
    (growRow 776 s6Step258EntryFvFresh) ((growRow 775 s6Step258EntryGvFresh ++ [])) s6Step258EntryFv_Incoming s6Step258EntryFv_checked h3 s6Step258EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step258EntryGBefore s6Step258EntryGAfter s6Step258EntryGvAfter
    s6Step258EntryGRow s6Step258EntryGOut 142 s6Step258EntryGFresh [(s6Step258EntryFvRow,144),(s6Step258EntryGvRow,144)] [s6Step258EntryFvFresh,s6Step258EntryGvFresh] [s6Step258EntryFvOut,s6Step258EntryGvOut]
    (growRow 777 s6Step258EntryGFresh) ((growRow 776 s6Step258EntryFvFresh ++ (growRow 775 s6Step258EntryGvFresh ++ []))) s6Step258EntryG_Incoming s6Step258EntryG_checked h2 s6Step258EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step258EntryFBefore s6Step258EntryFAfter s6Step258EntryGvAfter
    s6Step258EntryFRow s6Step258EntryFOut 142 s6Step258EntryFFresh [(s6Step258EntryGRow,142),(s6Step258EntryFvRow,144),(s6Step258EntryGvRow,144)] [s6Step258EntryGFresh,s6Step258EntryFvFresh,s6Step258EntryGvFresh] [s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut]
    (growRow 795 s6Step258EntryFFresh) ((growRow 777 s6Step258EntryGFresh ++ (growRow 776 s6Step258EntryFvFresh ++ (growRow 775 s6Step258EntryGvFresh ++ [])))) s6Step258EntryF_Incoming s6Step258EntryF_checked h1 s6Step258EntryF_Outgoing
  exact h0

private theorem s6Step258EntryBank_checked : compileHmrBankResizeLog .entry s6Step258EntryFBefore ⟨s6Step258EntryFRow,s6Step258EntryGRow,s6Step258EntryFvRow,s6Step258EntryGvRow⟩ ⟨142,142,144,144⟩ [s6Step258EntryFFresh,s6Step258EntryGFresh,s6Step258EntryFvFresh,s6Step258EntryGvFresh]=
    some (s6Step258EntryGvAfter,⟨s6Step258EntryFOut,s6Step258EntryGOut,s6Step258EntryFvOut,s6Step258EntryGvOut⟩,(growRow 795 s6Step258EntryFFresh ++ (growRow 777 s6Step258EntryGFresh ++ (growRow 776 s6Step258EntryFvFresh ++ (growRow 775 s6Step258EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step258EntryBank_rows]
  rfl

private def s6Step258ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<397) ∨ (398≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258ExitFBefore : Arena := s6Step258ExitGAfter

private def s6Step258ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 810],795⟩

private def s6Step258ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step258ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 868],777⟩

private def s6Step258ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩

private theorem s6Step258ExitBank_incomingDistinct : ([s6Step258ExitGRow,s6Step258ExitFRow,s6Step258ExitFvRow,s6Step258ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258ExitF_Incoming : rowsOwned s6Step258ExitFBefore [s6Step258ExitFRow,s6Step258ExitFvRow,s6Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258ExitGRow,s6Step258ExitFRow,s6Step258ExitFvRow,s6Step258ExitGvRow] 1 s6Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258ExitFBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258ExitBank_outgoingOwned : rowsOwned s6Step258ExitGvAfter [s6Step258ExitGOut,s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step258ExitGvAfter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<397) ∨ (398≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258ExitF_Outgoing : rowsOwned s6Step258ExitGvAfter [s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut] :=
  hmrRows_owned_drop s6Step258ExitGvAfter [s6Step258ExitGOut,s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut] 1 s6Step258ExitBank_outgoingOwned

private theorem s6Step258ExitF_distinct : (s6Step258ExitFRow.sign::s6Step258ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258ExitF_owned : (s6Step258ExitFRow.sign::s6Step258ExitFRow.payload).toFinset⊆s6Step258ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258ExitFBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258ExitF_retired : s6Step258ExitFBefore.retireSet s6Step258ExitFExtra.toFinset=s6Step258ExitFAfter := by
  unfold Arena.retireSet s6Step258ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step258ExitFBefore,s6Step258ExitGAfter,s6Step258ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step258ExitF_checked : planRowResizeLog s6Step258ExitFBefore s6Step258ExitFRow 141 []=
    some (s6Step258ExitFAfter,s6Step258ExitFOut,shrinkRow 795 s6Step258ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step258ExitFBefore s6Step258ExitFRow 141 s6Step258ExitF_distinct s6Step258ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step258ExitFRow.payload.take 141) s6Step258ExitFRow.sign=s6Step258ExitFOut := by decide +kernel
  have hi : s6Step258ExitFRow.payload.drop 141=s6Step258ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step258ExitF_retired] at result
  exact result

private def s6Step258ExitFvAfter : Arena := s6Step258ExitFAfter

private def s6Step258ExitFvBefore : Arena := s6Step258ExitFAfter

private theorem s6Step258ExitFv_Incoming : rowsOwned s6Step258ExitFvBefore [s6Step258ExitFvRow,s6Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258ExitGRow,s6Step258ExitFRow,s6Step258ExitFvRow,s6Step258ExitGvRow] 2 s6Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258ExitFvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<397) ∨ (398≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258ExitFv_Outgoing : rowsOwned s6Step258ExitGvAfter [s6Step258ExitFvOut,s6Step258ExitGvOut] :=
  hmrRows_owned_drop s6Step258ExitGvAfter [s6Step258ExitGOut,s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut] 2 s6Step258ExitBank_outgoingOwned

private theorem s6Step258ExitFv_distinct : (s6Step258ExitFvRow.sign::s6Step258ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258ExitFv_owned : (s6Step258ExitFvRow.sign::s6Step258ExitFvRow.payload).toFinset⊆s6Step258ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258ExitFvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<397) ∨ (398≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258ExitFv_reserved : s6Step258ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step258ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step258ExitFv_checked : planRowResizeLog s6Step258ExitFvBefore s6Step258ExitFvRow 145 []=
    some (s6Step258ExitFvAfter,s6Step258ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step258ExitFvBefore s6Step258ExitFvAfter s6Step258ExitFvRow 145 []
    s6Step258ExitFv_distinct s6Step258ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step258ExitFvRow.payload++[]) s6Step258ExitFvRow.sign=s6Step258ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step258ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step258ExitG_Incoming : rowsOwned s6Step258ExitGBefore [s6Step258ExitGRow,s6Step258ExitFRow,s6Step258ExitFvRow,s6Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258ExitGRow,s6Step258ExitFRow,s6Step258ExitFvRow,s6Step258ExitGvRow] 0 s6Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258ExitG_Outgoing : rowsOwned s6Step258ExitGvAfter [s6Step258ExitGOut,s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut] :=
  hmrRows_owned_drop s6Step258ExitGvAfter [s6Step258ExitGOut,s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut] 0 s6Step258ExitBank_outgoingOwned

private theorem s6Step258ExitG_distinct : (s6Step258ExitGRow.sign::s6Step258ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258ExitG_owned : (s6Step258ExitGRow.sign::s6Step258ExitGRow.payload).toFinset⊆s6Step258ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258ExitG_retired : s6Step258ExitGBefore.retireSet s6Step258ExitGExtra.toFinset=s6Step258ExitGAfter := by
  unfold Arena.retireSet s6Step258ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step258ExitGBefore,s6Step258ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step258ExitG_checked : planRowResizeLog s6Step258ExitGBefore s6Step258ExitGRow 141 []=
    some (s6Step258ExitGAfter,s6Step258ExitGOut,shrinkRow 777 s6Step258ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step258ExitGBefore s6Step258ExitGRow 141 s6Step258ExitG_distinct s6Step258ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step258ExitGRow.payload.take 141) s6Step258ExitGRow.sign=s6Step258ExitGOut := by decide +kernel
  have hi : s6Step258ExitGRow.payload.drop 141=s6Step258ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step258ExitG_retired] at result
  exact result

private def s6Step258ExitGvBefore : Arena := s6Step258ExitFAfter

private theorem s6Step258ExitGv_Incoming : rowsOwned s6Step258ExitGvBefore [s6Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258ExitGRow,s6Step258ExitFRow,s6Step258ExitFvRow,s6Step258ExitGvRow] 3 s6Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258ExitGvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<397) ∨ (398≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258ExitGv_Outgoing : rowsOwned s6Step258ExitGvAfter [s6Step258ExitGvOut] :=
  hmrRows_owned_drop s6Step258ExitGvAfter [s6Step258ExitGOut,s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut] 3 s6Step258ExitBank_outgoingOwned

private theorem s6Step258ExitGv_distinct : (s6Step258ExitGvRow.sign::s6Step258ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258ExitGv_owned : (s6Step258ExitGvRow.sign::s6Step258ExitGvRow.payload).toFinset⊆s6Step258ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258ExitGvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<397) ∨ (398≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258ExitGv_retired : s6Step258ExitGvBefore.retireSet s6Step258ExitGvExtra.toFinset=s6Step258ExitGvAfter := by
  unfold Arena.retireSet s6Step258ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step258ExitGvBefore,s6Step258ExitFAfter,s6Step258ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step258ExitGv_checked : planRowResizeLog s6Step258ExitGvBefore s6Step258ExitGvRow 144 []=
    some (s6Step258ExitGvAfter,s6Step258ExitGvOut,shrinkRow 775 s6Step258ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step258ExitGvBefore s6Step258ExitGvRow 144 s6Step258ExitGv_distinct s6Step258ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step258ExitGvRow.payload.take 144) s6Step258ExitGvRow.sign=s6Step258ExitGvOut := by decide +kernel
  have hi : s6Step258ExitGvRow.payload.drop 144=s6Step258ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step258ExitGv_retired] at result
  exact result

private theorem s6Step258ExitBank_rows : planWindowRowsLog s6Step258ExitGBefore [(s6Step258ExitGRow,141),(s6Step258ExitFRow,141),(s6Step258ExitFvRow,145),(s6Step258ExitGvRow,144)] [[],[],[],[]]=
    some (s6Step258ExitGvAfter,[s6Step258ExitGOut,s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut],(shrinkRow 777 s6Step258ExitGExtra ++ (shrinkRow 795 s6Step258ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step258ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step258ExitGvAfter [] []=some (s6Step258ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step258ExitGvBefore s6Step258ExitGvAfter s6Step258ExitGvAfter
    s6Step258ExitGvRow s6Step258ExitGvOut 144 [] [] [] []
    (shrinkRow 775 s6Step258ExitGvExtra) ([]) s6Step258ExitGv_Incoming s6Step258ExitGv_checked h4 s6Step258ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step258ExitFvBefore s6Step258ExitFvAfter s6Step258ExitGvAfter
    s6Step258ExitFvRow s6Step258ExitFvOut 145 [] [(s6Step258ExitGvRow,144)] [[]] [s6Step258ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step258ExitGvExtra ++ [])) s6Step258ExitFv_Incoming s6Step258ExitFv_checked h3 s6Step258ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step258ExitFBefore s6Step258ExitFAfter s6Step258ExitGvAfter
    s6Step258ExitFRow s6Step258ExitFOut 141 [] [(s6Step258ExitFvRow,145),(s6Step258ExitGvRow,144)] [[],[]] [s6Step258ExitFvOut,s6Step258ExitGvOut]
    (shrinkRow 795 s6Step258ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step258ExitGvExtra ++ []))) s6Step258ExitF_Incoming s6Step258ExitF_checked h2 s6Step258ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step258ExitGBefore s6Step258ExitGAfter s6Step258ExitGvAfter
    s6Step258ExitGRow s6Step258ExitGOut 141 [] [(s6Step258ExitFRow,141),(s6Step258ExitFvRow,145),(s6Step258ExitGvRow,144)] [[],[],[]] [s6Step258ExitFOut,s6Step258ExitFvOut,s6Step258ExitGvOut]
    (shrinkRow 777 s6Step258ExitGExtra) ((shrinkRow 795 s6Step258ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step258ExitGvExtra ++ [])))) s6Step258ExitG_Incoming s6Step258ExitG_checked h1 s6Step258ExitG_Outgoing
  exact h0

private theorem s6Step258ExitBank_checked : compileHmrBankResizeLog .exit s6Step258ExitGBefore ⟨s6Step258ExitFRow,s6Step258ExitGRow,s6Step258ExitFvRow,s6Step258ExitGvRow⟩ ⟨141,141,145,144⟩ [[],[],[],[]]=
    some (s6Step258ExitGvAfter,⟨s6Step258ExitFOut,s6Step258ExitGOut,s6Step258ExitFvOut,s6Step258ExitGvOut⟩,(shrinkRow 777 s6Step258ExitGExtra ++ (shrinkRow 795 s6Step258ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step258ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step258ExitBank_rows]
  rfl

private theorem s6Step258Add0_apart : Disjoint s6Step258Add0Arena.live s6Step258Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step258Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258Add0_card : s6Step258Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step258Add0_borrowed : s6Step258Add0Arena.checkBorrow (hmrHybridCount s6Step258Add0Arena s6Step258Add0B.length) s6Step258Add0Work=some s6Step258Add0During := by
  have len : s6Step258Add0Work.length=hmrHybridCount s6Step258Add0Arena s6Step258Add0B.length := by
    rw [hmrHybridCount,s6Step258Add0_card]
    decide +kernel
  have nd : s6Step258Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step258Add0Arena s6Step258Add0During s6Step258Add0Work.toFinset s6Step258Add0_bounded s6Step258Add0_apart rfl

private theorem s6Step258Add0_distinct : (862::853::833::(s6Step258Add0A++s6Step258Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258Add0_owned : (862::853::833::(s6Step258Add0A++s6Step258Add0B)).toFinset⊆s6Step258Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step258Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258Add0_checked : compileHmrHybridCinLog s6Step258Add0Arena 853 862 833 s6Step258Add0A s6Step258Add0B s6Step258Add0Work=some s6Step258Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step258Add0Arena s6Step258Add0During 853 862 833 s6Step258Add0A s6Step258Add0B s6Step258Add0Work
    (by decide +kernel) (by decide +kernel) s6Step258Add0_distinct
    (fun q hq => s6Step258Add0_owned (List.mem_toFinset.mpr hq)) s6Step258Add0_borrowed

private theorem s6Step258Add1_apart : Disjoint s6Step258Add1Arena.live s6Step258Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step258Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258Add1_card : s6Step258Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step258Add1_borrowed : s6Step258Add1Arena.checkBorrow (hmrHybridCount s6Step258Add1Arena s6Step258Add1B.length) s6Step258Add1Work=some s6Step258Add1During := by
  have len : s6Step258Add1Work.length=hmrHybridCount s6Step258Add1Arena s6Step258Add1B.length := by
    rw [hmrHybridCount,s6Step258Add1_card]
    decide +kernel
  have nd : s6Step258Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step258Add1Arena s6Step258Add1During s6Step258Add1Work.toFinset s6Step258Add1_bounded s6Step258Add1_apart rfl

private theorem s6Step258Add1_distinct : (862::853::833::(s6Step258Add1A++s6Step258Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258Add1_owned : (862::853::833::(s6Step258Add1A++s6Step258Add1B)).toFinset⊆s6Step258Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step258Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258Add1_checked : compileHmrHybridCinLog s6Step258Add1Arena 853 862 833 s6Step258Add1A s6Step258Add1B s6Step258Add1Work=some s6Step258Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step258Add1Arena s6Step258Add1During 853 862 833 s6Step258Add1A s6Step258Add1B s6Step258Add1Work
    (by decide +kernel) (by decide +kernel) s6Step258Add1_distinct
    (fun q hq => s6Step258Add1_owned (List.mem_toFinset.mpr hq)) s6Step258Add1_borrowed

private theorem s6Step258F4_apart : Disjoint (s6Step258Add0A++s6Step258Add0B).toFinset (s6Step258Add1A++s6Step258Add1B).toFinset := by
  have nd : ((s6Step258Add0A++s6Step258Add0B)++(s6Step258Add1A++s6Step258Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step258F4_carry : s6Step258F4FlagArena.checkBorrow 1 [833]=some s6Step258Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step258F4FlagArena,s6Step258HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step258F4FlagArena,s6Step258HeadFvAfter,s6Step258Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step258F4_distinct : (822::853::862::833::((s6Step258Add0A++s6Step258Add1A)++(s6Step258Add0B++s6Step258Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258F4_flag : s6Step258HeadFvAfter.checkBorrow 1 [862]=some s6Step258F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step258HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step258F4_owned : (822::853::((s6Step258Add0A++s6Step258Add1A)++(s6Step258Add0B++s6Step258Add1B))).toFinset⊆s6Step258HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258F4_checked : compileHmrHybridF4Log s6Step258HeadFvAfter 822 853 s6Step258Add0A s6Step258Add0B s6Step258Add1A s6Step258Add1B [862] [833] s6Step258Add0Work s6Step258Add1Work=some s6Step258F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step258HeadFvAfter s6Step258F4FlagArena s6Step258Add0Arena s6Step258Add0During s6Step258Add1During 822 853
    s6Step258Add0A s6Step258Add0B s6Step258Add1A s6Step258Add1B [862] [833] s6Step258Add0Work s6Step258Add1Work
    (fun q hq => s6Step258F4_owned (List.mem_toFinset.mpr hq)) s6Step258F4_flag s6Step258F4_carry
    s6Step258F4_distinct s6Step258F4_apart s6Step258Add0_checked s6Step258Add1_checked

private theorem s6Step258Front_branch : s6Step258FrontSigmaArena.checkBorrow 1 [853]=some s6Step258HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step258FrontSigmaArena,s6Step258EntryGvAfter,s6Step258EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step258FrontSigmaArena,s6Step258EntryGvAfter,s6Step258EntryFBefore,s6Step258HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step258Front_entry : HmrFrontEntryValid s6Step258EntryFBefore s6Step258FrontBank 142 144 ⟨141,141,145,144⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step258FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step258EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step258EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step258FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step258Front_sigma : s6Step258EntryGvAfter.checkBorrow 1 [822]=some s6Step258FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step258EntryGvAfter,s6Step258EntryFBefore,arenaWires]
  · rfl

private def s6Step258HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258HeadFBefore : Arena := s6Step258HeadGAfter

private def s6Step258HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step258HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step258HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step258HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private theorem s6Step258HeadBank_incomingDistinct : ([s6Step258HeadGRow,s6Step258HeadFRow,s6Step258HeadGvRow,s6Step258HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258HeadF_Incoming : rowsOwned s6Step258HeadFBefore [s6Step258HeadFRow,s6Step258HeadGvRow,s6Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258HeadGRow,s6Step258HeadFRow,s6Step258HeadGvRow,s6Step258HeadFvRow] 1 s6Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258HeadBank_outgoingOwned : rowsOwned s6Step258HeadFvAfter [s6Step258HeadGOut,s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258HeadF_Outgoing : rowsOwned s6Step258HeadFvAfter [s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut] :=
  hmrRows_owned_drop s6Step258HeadFvAfter [s6Step258HeadGOut,s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut] 1 s6Step258HeadBank_outgoingOwned

private theorem s6Step258HeadF_distinct : (s6Step258HeadFRow.sign::s6Step258HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258HeadF_owned : (s6Step258HeadFRow.sign::s6Step258HeadFRow.payload).toFinset⊆s6Step258HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258HeadF_reserved : s6Step258HeadFBefore.reserve s6Step258HeadFFresh.toFinset=some s6Step258HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258HeadFFresh,arenaWires]
  · norm_num [s6Step258HeadFBefore,s6Step258HeadGAfter,s6Step258HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step258HeadFAfter,s6Step258HeadFBefore,s6Step258HeadGAfter,s6Step258HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step258HeadF_checked : planRowResizeLog s6Step258HeadFBefore s6Step258HeadFRow 143 s6Step258HeadFFresh=
    some (s6Step258HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 810],795⟩,growRow 795 s6Step258HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step258HeadFBefore s6Step258HeadFAfter s6Step258HeadFRow 143 s6Step258HeadFFresh
    s6Step258HeadF_distinct s6Step258HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258HeadF_reserved
  have rowEq : WindowRow.mk (s6Step258HeadFRow.payload++s6Step258HeadFFresh) s6Step258HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 810],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step258HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step258HeadFvBefore : Arena := s6Step258HeadGvAfter

private theorem s6Step258HeadFv_Incoming : rowsOwned s6Step258HeadFvBefore [s6Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258HeadGRow,s6Step258HeadFRow,s6Step258HeadGvRow,s6Step258HeadFvRow] 3 s6Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258HeadFv_Outgoing : rowsOwned s6Step258HeadFvAfter [s6Step258HeadFvOut] :=
  hmrRows_owned_drop s6Step258HeadFvAfter [s6Step258HeadGOut,s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut] 3 s6Step258HeadBank_outgoingOwned

private theorem s6Step258HeadFv_distinct : (s6Step258HeadFvRow.sign::s6Step258HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258HeadFv_owned : (s6Step258HeadFvRow.sign::s6Step258HeadFvRow.payload).toFinset⊆s6Step258HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258HeadFv_reserved : s6Step258HeadFvBefore.reserve s6Step258HeadFvFresh.toFinset=some s6Step258HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258HeadFvFresh,arenaWires]
  · norm_num [s6Step258HeadFvBefore,s6Step258HeadGvAfter,s6Step258HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step258HeadFvAfter,s6Step258HeadFvBefore,s6Step258HeadGvAfter,s6Step258HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step258HeadFv_checked : planRowResizeLog s6Step258HeadFvBefore s6Step258HeadFvRow 145 s6Step258HeadFvFresh=
    some (s6Step258HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩,growRow 776 s6Step258HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step258HeadFvBefore s6Step258HeadFvAfter s6Step258HeadFvRow 145 s6Step258HeadFvFresh
    s6Step258HeadFv_distinct s6Step258HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step258HeadFvRow.payload++s6Step258HeadFvFresh) s6Step258HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step258HeadG_Incoming : rowsOwned s6Step258HeadGBefore [s6Step258HeadGRow,s6Step258HeadFRow,s6Step258HeadGvRow,s6Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258HeadGRow,s6Step258HeadFRow,s6Step258HeadGvRow,s6Step258HeadFvRow] 0 s6Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258HeadG_Outgoing : rowsOwned s6Step258HeadFvAfter [s6Step258HeadGOut,s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut] :=
  hmrRows_owned_drop s6Step258HeadFvAfter [s6Step258HeadGOut,s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut] 0 s6Step258HeadBank_outgoingOwned

private theorem s6Step258HeadG_distinct : (s6Step258HeadGRow.sign::s6Step258HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258HeadG_owned : (s6Step258HeadGRow.sign::s6Step258HeadGRow.payload).toFinset⊆s6Step258HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258HeadG_reserved : s6Step258HeadGBefore.reserve s6Step258HeadGFresh.toFinset=some s6Step258HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258HeadGFresh,arenaWires]
  · norm_num [s6Step258HeadGBefore,s6Step258HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step258HeadGAfter,s6Step258HeadGBefore,s6Step258HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step258HeadG_checked : planRowResizeLog s6Step258HeadGBefore s6Step258HeadGRow 143 s6Step258HeadGFresh=
    some (s6Step258HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 868],777⟩,growRow 777 s6Step258HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step258HeadGBefore s6Step258HeadGAfter s6Step258HeadGRow 143 s6Step258HeadGFresh
    s6Step258HeadG_distinct s6Step258HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258HeadG_reserved
  have rowEq : WindowRow.mk (s6Step258HeadGRow.payload++s6Step258HeadGFresh) s6Step258HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 868],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step258HeadGvBefore : Arena := s6Step258HeadFAfter

private theorem s6Step258HeadGv_Incoming : rowsOwned s6Step258HeadGvBefore [s6Step258HeadGvRow,s6Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step258HeadGRow,s6Step258HeadFRow,s6Step258HeadGvRow,s6Step258HeadFvRow] 2 s6Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step258HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step258HeadGv_Outgoing : rowsOwned s6Step258HeadFvAfter [s6Step258HeadGvOut,s6Step258HeadFvOut] :=
  hmrRows_owned_drop s6Step258HeadFvAfter [s6Step258HeadGOut,s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut] 2 s6Step258HeadBank_outgoingOwned

private theorem s6Step258HeadGv_distinct : (s6Step258HeadGvRow.sign::s6Step258HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step258HeadGv_owned : (s6Step258HeadGvRow.sign::s6Step258HeadGvRow.payload).toFinset⊆s6Step258HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step258HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step258HeadGv_reserved : s6Step258HeadGvBefore.reserve s6Step258HeadGvFresh.toFinset=some s6Step258HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step258HeadGvFresh,arenaWires]
  · norm_num [s6Step258HeadGvBefore,s6Step258HeadFAfter,s6Step258HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step258HeadGvAfter,s6Step258HeadGvBefore,s6Step258HeadFAfter,s6Step258HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step258HeadGv_checked : planRowResizeLog s6Step258HeadGvBefore s6Step258HeadGvRow 145 s6Step258HeadGvFresh=
    some (s6Step258HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩,growRow 775 s6Step258HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step258HeadGvBefore s6Step258HeadGvAfter s6Step258HeadGvRow 145 s6Step258HeadGvFresh
    s6Step258HeadGv_distinct s6Step258HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step258HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step258HeadGvRow.payload++s6Step258HeadGvFresh) s6Step258HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step258HeadBank_rows : planWindowRowsLog s6Step258HeadGBefore [(s6Step258HeadGRow,143),(s6Step258HeadFRow,143),(s6Step258HeadGvRow,145),(s6Step258HeadFvRow,145)] [s6Step258HeadGFresh,s6Step258HeadFFresh,s6Step258HeadGvFresh,s6Step258HeadFvFresh]=
    some (s6Step258HeadFvAfter,[s6Step258HeadGOut,s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut],(growRow 777 s6Step258HeadGFresh ++ (growRow 795 s6Step258HeadFFresh ++ (growRow 775 s6Step258HeadGvFresh ++ (growRow 776 s6Step258HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step258HeadFvAfter [] []=some (s6Step258HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step258HeadFvBefore s6Step258HeadFvAfter s6Step258HeadFvAfter
    s6Step258HeadFvRow s6Step258HeadFvOut 145 s6Step258HeadFvFresh [] [] []
    (growRow 776 s6Step258HeadFvFresh) ([]) s6Step258HeadFv_Incoming s6Step258HeadFv_checked h4 s6Step258HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step258HeadGvBefore s6Step258HeadGvAfter s6Step258HeadFvAfter
    s6Step258HeadGvRow s6Step258HeadGvOut 145 s6Step258HeadGvFresh [(s6Step258HeadFvRow,145)] [s6Step258HeadFvFresh] [s6Step258HeadFvOut]
    (growRow 775 s6Step258HeadGvFresh) ((growRow 776 s6Step258HeadFvFresh ++ [])) s6Step258HeadGv_Incoming s6Step258HeadGv_checked h3 s6Step258HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step258HeadFBefore s6Step258HeadFAfter s6Step258HeadFvAfter
    s6Step258HeadFRow s6Step258HeadFOut 143 s6Step258HeadFFresh [(s6Step258HeadGvRow,145),(s6Step258HeadFvRow,145)] [s6Step258HeadGvFresh,s6Step258HeadFvFresh] [s6Step258HeadGvOut,s6Step258HeadFvOut]
    (growRow 795 s6Step258HeadFFresh) ((growRow 775 s6Step258HeadGvFresh ++ (growRow 776 s6Step258HeadFvFresh ++ []))) s6Step258HeadF_Incoming s6Step258HeadF_checked h2 s6Step258HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step258HeadGBefore s6Step258HeadGAfter s6Step258HeadFvAfter
    s6Step258HeadGRow s6Step258HeadGOut 143 s6Step258HeadGFresh [(s6Step258HeadFRow,143),(s6Step258HeadGvRow,145),(s6Step258HeadFvRow,145)] [s6Step258HeadFFresh,s6Step258HeadGvFresh,s6Step258HeadFvFresh] [s6Step258HeadFOut,s6Step258HeadGvOut,s6Step258HeadFvOut]
    (growRow 777 s6Step258HeadGFresh) ((growRow 795 s6Step258HeadFFresh ++ (growRow 775 s6Step258HeadGvFresh ++ (growRow 776 s6Step258HeadFvFresh ++ [])))) s6Step258HeadG_Incoming s6Step258HeadG_checked h1 s6Step258HeadG_Outgoing
  exact h0

private theorem s6Step258HeadBank_checked : compileHmrBankResizeLog .headroom s6Step258HeadGBefore ⟨s6Step258HeadFRow,s6Step258HeadGRow,s6Step258HeadFvRow,s6Step258HeadGvRow⟩ ⟨143,143,145,145⟩ [s6Step258HeadGFresh,s6Step258HeadFFresh,s6Step258HeadGvFresh,s6Step258HeadFvFresh]=
    some (s6Step258HeadFvAfter,⟨s6Step258HeadFOut,s6Step258HeadGOut,s6Step258HeadFvOut,s6Step258HeadGvOut⟩,(growRow 777 s6Step258HeadGFresh ++ (growRow 795 s6Step258HeadFFresh ++ (growRow 775 s6Step258HeadGvFresh ++ (growRow 776 s6Step258HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step258HeadBank_rows]
  rfl

private theorem s6Step258Front_checked : compileHmrSourceFrontLog s6Step258EntryFBefore s6Step258FrontBank 142 144 ⟨141,141,145,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step258FrontLog=some s6Step258FrontPlan := by
  have pairEq : s6Step258FrontPair=⟨s6Step258HeadFRow,s6Step258HeadGRow,s6Step258HeadFvRow,s6Step258HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step258FrontHead=⟨s6Step258ExitFRow,s6Step258ExitGRow,s6Step258ExitFvRow,s6Step258ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step258Add0A=s6Step258FrontHead.f.wires := by decide +kernel
  have gEq : s6Step258Add0B=s6Step258FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step258Add1A=s6Step258FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step258Add1B=s6Step258FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step258EntryFBefore s6Step258FrontBank 142 144 ⟨141,141,145,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step258FrontLog s6Step258FrontPlan
  · exact s6Step258Front_entry
  · exact s6Step258EntryBank_checked
  · exact s6Step258Front_sigma
  · rfl
  · exact s6Step258Front_branch
  · rfl
  · simpa only [s6Step258FrontPlan,pairEq] using s6Step258HeadBank_checked
  · simpa only [s6Step258FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step258F4_checked
  · exact s6Step258Counter_checked
  · rfl
  · simpa only [s6Step258FrontPlan,headEq] using s6Step258ExitBank_checked

private theorem s6Step258Complete_explicit_checked : compileHmrEarlyStepLog s6Step258EntryFBefore s6Step258FrontBank 142 144 ⟨141,141,145,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step258CompleteLog=some s6Step258CompletePlan := by
  let Q := s6Step258EarlyControlPlan
  have hq := s6Step258EarlyControl_plan_checked
  have fv1 : s6Step258CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step258CompleteOut.fv.payload[2]?.getD s6Step258CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step258CompleteOut.fv.payload[3]?.getD s6Step258CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step258CompleteOut.fv.payload[4]?.getD s6Step258CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step258EntryFBefore s6Step258EarlyControlArena s6Step258FrontBank 142 144 ⟨141,141,145,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step258CompleteLog s6Step258FrontPlan Q
    s6Step258Front_checked s6Step258Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step258Complete_owned s6Step258Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step258EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 s6Step258CompleteOut.fv.second (s6Step258CompleteOut.fv.payload[2]?.getD s6Step258CompleteOut.fv.sign) (s6Step258CompleteOut.fv.payload[3]?.getD s6Step258CompleteOut.fv.sign) (s6Step258CompleteOut.fv.payload[4]?.getD s6Step258CompleteOut.fv.sign) 853 51 s6Step258EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep258Arena : Arena := s6Step258EntryFBefore
def s6PrivateStep258Bank : WindowBank := s6Step258FrontBank
def s6PrivateStep258Spec : HmrSourceWalkStepLog := ⟨142,144,⟨141,141,145,144⟩,51,.early s6Step258CompleteLog⟩
def s6PrivateStep258Plan : HmrSourceStepPlan := .early s6Step258CompletePlan
theorem s6PrivateStep258_source : s6PrivateStep258Spec=s6ObservedLogs256[2] := rfl
theorem s6PrivateStep258_checked : compileHmrSourceStepLog s6PrivateStep258Arena s6PrivateStep258Bank
    s6PrivateStep258Spec.fgWidth s6PrivateStep258Spec.vWidth s6PrivateStep258Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 258 s6PrivateStep258Spec.need none s6PrivateStep258Spec.log=some s6PrivateStep258Plan := by
  change compileHmrSourceStepLog s6Step258EntryFBefore s6Step258FrontBank 142 144 ⟨141,141,145,144⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 258 51 none (.early s6Step258CompleteLog)=some (.early s6Step258CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 258<498)]
  rw [s6Step258Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
