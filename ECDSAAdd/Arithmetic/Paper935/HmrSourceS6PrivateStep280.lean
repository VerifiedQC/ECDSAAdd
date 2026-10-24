import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep278
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

private def s6Step280CompleteMoves : List (Wire × Wire) := [(845,387)]

private def s6Step280EarlyControlLog : HmrEarlyControlLog := ⟨[845, 882, 927, 881, 855],[809],[830],[805, 817, 812, 915, 906, 899],[]⟩

private def s6Step280FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [779, 855], [], []],[[809], [881], [882], [927]],[[], [], [], []]⟩,[807],[813],[830],[805],[817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step280CompleteLog : HmrEarlyStepLog := ⟨s6Step280FrontLog,s6Step280CompleteMoves,s6Step280EarlyControlLog⟩

private def s6Step280ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386],795⟩

private def s6Step280ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step280ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779],777⟩

private def s6Step280ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private def s6Step280FrontOut : WindowBank := ⟨s6Step280ExitFOut,s6Step280ExitGOut,s6Step280ExitFvOut,s6Step280ExitGvOut⟩

private def s6Step280CompleteOut : WindowBank := s6Step280FrontOut.repacked s6Step280CompleteMoves

private def s6Step280EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step280EarlyControlPositiveArena,[809],s6Step280EarlyControlEqualityArena,[830],⟨⟨807,false⟩,[⟨⟨809,false⟩,830⟩]⟩⟩

private def s6Step280EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨772,false⟩,882⟩,⟨⟨771,false⟩,927⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step280EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step280EarlyControlZeroArena,s6Step280EarlyControlZeroPlan,s6Step280EarlyControlClassPlan,s6Step280EarlyControlFlagArena,s6Step280EarlyControlFittedArena,s6Step280EarlyControlHistoryArena,s6Step280EarlyControlSigmaArena,s6Step280EarlyControlOutputArena,s6Step280EarlyControlLog⟩

private def s6Step280CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step280Counter_bounded : s6Step280CounterWork.toFinset⊆arenaWires := by norm_num [s6Step280CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step280HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280CounterDuring : Arena := ⟨s6Step280HeadFvAfter.live∪s6Step280CounterWork.toFinset,Finset.union_subset s6Step280HeadFvAfter.bounded s6Step280Counter_bounded⟩

private def s6Step280EntryFFresh : List Wire := []

private def s6Step280EntryFvFresh : List Wire := []

private def s6Step280EntryGFresh : List Wire := [779, 855]

private def s6Step280EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EntryGvAfter : Arena := s6Step280EntryGAfter

private def s6Step280EntryGvFresh : List Wire := []

private def s6Step280ExitFExtra : List Wire := [387, 881]

private def s6Step280ExitFvExtra : List Wire := [927]

private def s6Step280ExitGExtra : List Wire := [855, 809]

private def s6Step280ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280ExitGvExtra : List Wire := [882]

private def s6Step280Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280Add0Work : List Wire := [817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step280Add0_bounded : s6Step280Add0Work.toFinset⊆arenaWires := by
  have h : s6Step280Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step280Add0During : Arena := ⟨s6Step280Add0Arena.live∪s6Step280Add0Work.toFinset,Finset.union_subset s6Step280Add0Arena.bounded s6Step280Add0_bounded⟩

private def s6Step280Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280Add1Work : List Wire := [817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step280Add1_bounded : s6Step280Add1Work.toFinset⊆arenaWires := by
  have h : s6Step280Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step280Add1During : Arena := ⟨s6Step280Add1Arena.live∪s6Step280Add1Work.toFinset,Finset.union_subset s6Step280Add1Arena.bounded s6Step280Add1_bounded⟩

private def s6Step280F4FlagArena : Arena := ⟨s6Step280HeadFvAfter.live∪{830},Finset.union_subset s6Step280HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step280F4Plan : HmrHybridF4Plan := ⟨s6Step280F4FlagArena,[830],s6Step280Add0Arena,[805],s6Step280Add0During,s6Step280Add0Work,s6Step280Add1During,s6Step280Add1Work⟩

private def s6Step280HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩

private def s6Step280HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 927],776⟩

private def s6Step280HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855, 809],777⟩

private def s6Step280HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 882],775⟩

private def s6Step280FrontHead : WindowBank := ⟨s6Step280HeadFOut,s6Step280HeadGOut,s6Step280HeadFvOut,s6Step280HeadGvOut⟩

private def s6Step280EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step280EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step280EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855],777⟩

private def s6Step280EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private def s6Step280FrontPair : WindowBank := ⟨s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut⟩

private def s6Step280FrontSigmaArena : Arena := ⟨s6Step280EntryGvAfter.live∪{807},Finset.union_subset s6Step280EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step280HeadFFresh : List Wire := [881]

private def s6Step280HeadFvFresh : List Wire := [927]

private def s6Step280HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280HeadGFresh : List Wire := [809]

private def s6Step280HeadGvFresh : List Wire := [882]

private def s6Step280FrontPlan : HmrSourceFront := ⟨s6Step280EntryGvAfter,s6Step280FrontPair,(growRow 795 s6Step280EntryFFresh ++ (growRow 777 s6Step280EntryGFresh ++ (growRow 776 s6Step280EntryFvFresh ++ (growRow 775 s6Step280EntryGvFresh ++ [])))),s6Step280FrontSigmaArena,[807],s6Step280HeadGBefore,[813],
  s6Step280HeadFvAfter,s6Step280FrontHead,(growRow 777 s6Step280HeadGFresh ++ (growRow 795 s6Step280HeadFFresh ++ (growRow 775 s6Step280HeadGvFresh ++ (growRow 776 s6Step280HeadFvFresh ++ [])))),s6Step280F4Plan,s6Step280CounterDuring,s6Step280CounterWork,s6Step280ExitGvAfter,s6Step280FrontOut,(shrinkRow 777 s6Step280ExitGExtra ++ (shrinkRow 795 s6Step280ExitFExtra ++ (shrinkRow 776 s6Step280ExitFvExtra ++ (shrinkRow 775 s6Step280ExitGvExtra ++ []))))⟩

private def s6Step280CompletePlan : HmrEarlyStepPlan := ⟨s6Step280FrontPlan,s6Step280EarlyControlArena,s6Step280EarlyControlPlan,s6Step280CompleteMoves⟩

private theorem s6Step280Complete_apart : List.Disjoint (s6Step280CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [807, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step280CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[807, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step280Complete_owned : (s6Step280CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step280CompleteMoveArena : Arena := ⟨s6Step280ExitGvAfter.live∪{387},Finset.union_subset s6Step280ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step280Complete_repack : s6Step280ExitGvAfter.checkRepack s6Step280CompleteMoves=some s6Step280EarlyControlArena := by
  have owned : 845∈s6Step280ExitGvAfter.live := by norm_num [s6Step280ExitGvAfter,arenaWires]
  have reserve : s6Step280ExitGvAfter.reserve {387}=some s6Step280CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step280ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step280CompleteMoveArena.retireSet {845}=s6Step280EarlyControlArena := by
    unfold Arena.retireSet s6Step280EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step280CompleteMoveArena,s6Step280ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step280CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step280CompleteMoveArena.retireSet {845}).checkRepack []=some s6Step280EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step280EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step280EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_branch : compileHmrBranchRetirement s6Step280EarlyControlSigmaArena 813=some s6Step280EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step280EarlyControl_branchOwned
  · ext q
    simp [s6Step280EarlyControlOutputArena,s6Step280EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step280EarlyControl_classEqualityBorrow : s6Step280EarlyControlPositiveArena.checkBorrow (([807, 809] : List Wire).length-1) s6Step280EarlyControlLog.classWork=some s6Step280EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step280EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step280EarlyControlEqualityArena,s6Step280EarlyControlPositiveArena,s6Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step280EarlyControl_classEqualityOwned : ([807, 809] : List Wire).toFinset⊆s6Step280EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_classEquality : compileHmrEqualityLog s6Step280EarlyControlPositiveArena [807, 809] 0 s6Step280EarlyControlLog.classWork=some (s6Step280EarlyControlEqualityArena,s6Step280EarlyControlLog.classWork,s6Step280EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step280EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step280EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step280EarlyControl_classOwned : ([769, 855, 807] : List Wire).toFinset⊆s6Step280EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_positiveBorrow : s6Step280EarlyControlZeroArena.checkBorrow (1) s6Step280EarlyControlLog.positiveWork=some s6Step280EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step280EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step280EarlyControlPositiveArena,s6Step280EarlyControlZeroArena,s6Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step280EarlyControl_class : compileHmrSourceClassLog s6Step280EarlyControlZeroArena false 769 s6Step280EarlyControlZeroPlan.top 0 807 s6Step280EarlyControlLog.positiveWork s6Step280EarlyControlLog.classWork=some s6Step280EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step280EarlyControlClassPlan s6Step280EarlyControlZeroArena false 769 s6Step280EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s6Step280EarlyControl_classOwned
  · exact s6Step280EarlyControl_positiveBorrow
  · exact s6Step280EarlyControl_classEquality

private theorem s6Step280EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s6Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_fitBorrow : s6Step280EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step280EarlyControlLog.recordFresh=some s6Step280EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step280EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step280EarlyControlFittedArena,s6Step280EarlyControlFlagArena,s6Step280EarlyControlLog,arenaWires]

private theorem s6Step280EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step280EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_fit : compileHmrRecordGrowLog s6Step280EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step280EarlyControlLog.recordFresh=some s6Step280EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step280EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step280EarlyControl_fitBorrow

private theorem s6Step280EarlyControl_flagsBorrow : s6Step280EarlyControlEqualityArena.checkBorrow (6) s6Step280EarlyControlLog.flagWork=some s6Step280EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step280EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step280EarlyControlFlagArena,s6Step280EarlyControlEqualityArena,s6Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step280EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step280EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_flags : compileHmrFlagsLog s6Step280EarlyControlClassPlan.equalityArena s6Step280EarlyControlClassPlan.equality.top 253 252 251 s6Step280EarlyControlLog.flagWork=some s6Step280EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step280EarlyControl_flagsOwned⟩
  · exact s6Step280EarlyControl_flagsBorrow

private theorem s6Step280EarlyControl_historyBorrow : s6Step280EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step280EarlyControlLog.recordFresh=some s6Step280EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step280EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step280EarlyControlHistoryArena,s6Step280EarlyControlArena,s6Step280EarlyControlLog,arenaWires]

private theorem s6Step280EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_history : compileHmrRecordGrowLog s6Step280EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step280EarlyControlLog.recordFresh=some s6Step280EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step280EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step280EarlyControl_historyBorrow

private theorem s6Step280EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s6Step280EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s6Step280EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_sigmaRelease : s6Step280EarlyControlHistoryArena.release {807} (fun _ => false)=some s6Step280EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step280EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step280EarlyControlSigmaArena,s6Step280EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step280EarlyControl_sigma : compileHmrSigmaDropLog s6Step280EarlyControlHistoryArena false 0 0 254 807 []=some s6Step280EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step280EarlyControl_sigmaOwned⟩
  · exact s6Step280EarlyControl_sigmaRelease

private theorem s6Step280EarlyControl_zeroBorrow : s6Step280EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step280EarlyControlLog.zeroWork=some s6Step280EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step280EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step280EarlyControlZeroArena,s6Step280EarlyControlArena,s6Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step280EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step280EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EarlyControl_zero : compileHmrEqualityLog s6Step280EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step280EarlyControlLog.zeroWork=some (s6Step280EarlyControlZeroArena,s6Step280EarlyControlLog.zeroWork,s6Step280EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step280EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step280EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step280EarlyControl_logged : s6Step280EarlyControlPlan.Logged s6Step280EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 813 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step280EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step280EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step280EarlyControl_zero
  · exact s6Step280EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step280EarlyControl_flags
  · exact s6Step280EarlyControl_fit
  · exact s6Step280EarlyControl_history
  · exact s6Step280EarlyControl_sigma
  · exact s6Step280EarlyControl_branch

private theorem s6Step280EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step280EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 813 54 s6Step280EarlyControlLog=some s6Step280EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step280EarlyControlPlan s6Step280EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 813 54 s6Step280EarlyControl_logged

private def s6Step280EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step280EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step280EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],777⟩

private def s6Step280EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private def s6Step280FrontBank : WindowBank := ⟨s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow⟩

private def s6Step280Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881, 795]

private def s6Step280Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855, 809, 777]

private def s6Step280Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 927, 776]

private def s6Step280Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 882, 775]

private theorem s6Step280Counter_apart : Disjoint s6Step280HeadFvAfter.live s6Step280CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step280HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280Counter_borrowed : s6Step280HeadFvAfter.checkBorrow 4 s6Step280CounterWork=some s6Step280CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step280HeadFvAfter s6Step280CounterDuring s6Step280CounterWork.toFinset s6Step280Counter_bounded s6Step280Counter_apart rfl

private theorem s6Step280Counter_owned : (807::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step280HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step280HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280Counter_checked : compileHmrCounterStepLog s6Step280HeadFvAfter true 807 [774, 773, 772, 771, 770, 769] s6Step280CounterWork=some s6Step280CounterDuring := by
  have owned : ∀q∈807::[774, 773, 772, 771, 770, 769],q∈s6Step280HeadFvAfter.live := fun q hq => s6Step280Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step280Counter_borrowed

private def s6Step280EntryFAfter : Arena := s6Step280EntryFBefore

private theorem s6Step280EntryBank_incomingDistinct : ([s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280EntryF_Incoming : rowsOwned s6Step280EntryFBefore [s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow] 0 s6Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280EntryBank_outgoingOwned : rowsOwned s6Step280EntryGvAfter [s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step280EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280EntryF_Outgoing : rowsOwned s6Step280EntryGvAfter [s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut] :=
  hmrRows_owned_drop s6Step280EntryGvAfter [s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut] 0 s6Step280EntryBank_outgoingOwned

private theorem s6Step280EntryF_distinct : (s6Step280EntryFRow.sign::s6Step280EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280EntryF_owned : (s6Step280EntryFRow.sign::s6Step280EntryFRow.payload).toFinset⊆s6Step280EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EntryF_reserved : s6Step280EntryFBefore.reserve s6Step280EntryFFresh.toFinset=some s6Step280EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280EntryFFresh,arenaWires]
  · norm_num [s6Step280EntryFBefore,s6Step280EntryFFresh,arenaWires]
  · simp only [s6Step280EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step280EntryF_checked : planRowResizeLog s6Step280EntryFBefore s6Step280EntryFRow 132 s6Step280EntryFFresh=
    some (s6Step280EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩,growRow 795 s6Step280EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step280EntryFBefore s6Step280EntryFAfter s6Step280EntryFRow 132 s6Step280EntryFFresh
    s6Step280EntryF_distinct s6Step280EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280EntryF_reserved
  have rowEq : WindowRow.mk (s6Step280EntryFRow.payload++s6Step280EntryFFresh) s6Step280EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step280EntryFvAfter : Arena := s6Step280EntryGAfter

private def s6Step280EntryFvBefore : Arena := s6Step280EntryGAfter

private theorem s6Step280EntryFv_Incoming : rowsOwned s6Step280EntryFvBefore [s6Step280EntryFvRow,s6Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow] 2 s6Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280EntryFv_Outgoing : rowsOwned s6Step280EntryGvAfter [s6Step280EntryFvOut,s6Step280EntryGvOut] :=
  hmrRows_owned_drop s6Step280EntryGvAfter [s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut] 2 s6Step280EntryBank_outgoingOwned

private theorem s6Step280EntryFv_distinct : (s6Step280EntryFvRow.sign::s6Step280EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280EntryFv_owned : (s6Step280EntryFvRow.sign::s6Step280EntryFvRow.payload).toFinset⊆s6Step280EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EntryFv_reserved : s6Step280EntryFvBefore.reserve s6Step280EntryFvFresh.toFinset=some s6Step280EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280EntryFvFresh,arenaWires]
  · norm_num [s6Step280EntryFvBefore,s6Step280EntryGAfter,s6Step280EntryFvFresh,arenaWires]
  · simp only [s6Step280EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step280EntryFv_checked : planRowResizeLog s6Step280EntryFvBefore s6Step280EntryFvRow 155 s6Step280EntryFvFresh=
    some (s6Step280EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩,growRow 776 s6Step280EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step280EntryFvBefore s6Step280EntryFvAfter s6Step280EntryFvRow 155 s6Step280EntryFvFresh
    s6Step280EntryFv_distinct s6Step280EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step280EntryFvRow.payload++s6Step280EntryFvFresh) s6Step280EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step280EntryGBefore : Arena := s6Step280EntryFBefore

private theorem s6Step280EntryG_Incoming : rowsOwned s6Step280EntryGBefore [s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow] 1 s6Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280EntryG_Outgoing : rowsOwned s6Step280EntryGvAfter [s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut] :=
  hmrRows_owned_drop s6Step280EntryGvAfter [s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut] 1 s6Step280EntryBank_outgoingOwned

private theorem s6Step280EntryG_distinct : (s6Step280EntryGRow.sign::s6Step280EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280EntryG_owned : (s6Step280EntryGRow.sign::s6Step280EntryGRow.payload).toFinset⊆s6Step280EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EntryG_reserved : s6Step280EntryGBefore.reserve s6Step280EntryGFresh.toFinset=some s6Step280EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step280EntryGBefore,s6Step280EntryFBefore,s6Step280EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step280EntryGAfter,s6Step280EntryGBefore,s6Step280EntryFBefore,s6Step280EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step280EntryG_checked : planRowResizeLog s6Step280EntryGBefore s6Step280EntryGRow 132 s6Step280EntryGFresh=
    some (s6Step280EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855],777⟩,growRow 777 s6Step280EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step280EntryGBefore s6Step280EntryGAfter s6Step280EntryGRow 132 s6Step280EntryGFresh
    s6Step280EntryG_distinct s6Step280EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280EntryG_reserved
  have rowEq : WindowRow.mk (s6Step280EntryGRow.payload++s6Step280EntryGFresh) s6Step280EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step280EntryGvBefore : Arena := s6Step280EntryGAfter

private theorem s6Step280EntryGv_Incoming : rowsOwned s6Step280EntryGvBefore [s6Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow] 3 s6Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280EntryGv_Outgoing : rowsOwned s6Step280EntryGvAfter [s6Step280EntryGvOut] :=
  hmrRows_owned_drop s6Step280EntryGvAfter [s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut] 3 s6Step280EntryBank_outgoingOwned

private theorem s6Step280EntryGv_distinct : (s6Step280EntryGvRow.sign::s6Step280EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280EntryGv_owned : (s6Step280EntryGvRow.sign::s6Step280EntryGvRow.payload).toFinset⊆s6Step280EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280EntryGv_reserved : s6Step280EntryGvBefore.reserve s6Step280EntryGvFresh.toFinset=some s6Step280EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280EntryGvFresh,arenaWires]
  · norm_num [s6Step280EntryGvBefore,s6Step280EntryGAfter,s6Step280EntryGvFresh,arenaWires]
  · simp only [s6Step280EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step280EntryGv_checked : planRowResizeLog s6Step280EntryGvBefore s6Step280EntryGvRow 155 s6Step280EntryGvFresh=
    some (s6Step280EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩,growRow 775 s6Step280EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step280EntryGvBefore s6Step280EntryGvAfter s6Step280EntryGvRow 155 s6Step280EntryGvFresh
    s6Step280EntryGv_distinct s6Step280EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step280EntryGvRow.payload++s6Step280EntryGvFresh) s6Step280EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step280EntryBank_rows : planWindowRowsLog s6Step280EntryFBefore [(s6Step280EntryFRow,132),(s6Step280EntryGRow,132),(s6Step280EntryFvRow,155),(s6Step280EntryGvRow,155)] [s6Step280EntryFFresh,s6Step280EntryGFresh,s6Step280EntryFvFresh,s6Step280EntryGvFresh]=
    some (s6Step280EntryGvAfter,[s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut],(growRow 795 s6Step280EntryFFresh ++ (growRow 777 s6Step280EntryGFresh ++ (growRow 776 s6Step280EntryFvFresh ++ (growRow 775 s6Step280EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step280EntryGvAfter [] []=some (s6Step280EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step280EntryGvBefore s6Step280EntryGvAfter s6Step280EntryGvAfter
    s6Step280EntryGvRow s6Step280EntryGvOut 155 s6Step280EntryGvFresh [] [] []
    (growRow 775 s6Step280EntryGvFresh) ([]) s6Step280EntryGv_Incoming s6Step280EntryGv_checked h4 s6Step280EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step280EntryFvBefore s6Step280EntryFvAfter s6Step280EntryGvAfter
    s6Step280EntryFvRow s6Step280EntryFvOut 155 s6Step280EntryFvFresh [(s6Step280EntryGvRow,155)] [s6Step280EntryGvFresh] [s6Step280EntryGvOut]
    (growRow 776 s6Step280EntryFvFresh) ((growRow 775 s6Step280EntryGvFresh ++ [])) s6Step280EntryFv_Incoming s6Step280EntryFv_checked h3 s6Step280EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step280EntryGBefore s6Step280EntryGAfter s6Step280EntryGvAfter
    s6Step280EntryGRow s6Step280EntryGOut 132 s6Step280EntryGFresh [(s6Step280EntryFvRow,155),(s6Step280EntryGvRow,155)] [s6Step280EntryFvFresh,s6Step280EntryGvFresh] [s6Step280EntryFvOut,s6Step280EntryGvOut]
    (growRow 777 s6Step280EntryGFresh) ((growRow 776 s6Step280EntryFvFresh ++ (growRow 775 s6Step280EntryGvFresh ++ []))) s6Step280EntryG_Incoming s6Step280EntryG_checked h2 s6Step280EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step280EntryFBefore s6Step280EntryFAfter s6Step280EntryGvAfter
    s6Step280EntryFRow s6Step280EntryFOut 132 s6Step280EntryFFresh [(s6Step280EntryGRow,132),(s6Step280EntryFvRow,155),(s6Step280EntryGvRow,155)] [s6Step280EntryGFresh,s6Step280EntryFvFresh,s6Step280EntryGvFresh] [s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut]
    (growRow 795 s6Step280EntryFFresh) ((growRow 777 s6Step280EntryGFresh ++ (growRow 776 s6Step280EntryFvFresh ++ (growRow 775 s6Step280EntryGvFresh ++ [])))) s6Step280EntryF_Incoming s6Step280EntryF_checked h1 s6Step280EntryF_Outgoing
  exact h0

private theorem s6Step280EntryBank_checked : compileHmrBankResizeLog .entry s6Step280EntryFBefore ⟨s6Step280EntryFRow,s6Step280EntryGRow,s6Step280EntryFvRow,s6Step280EntryGvRow⟩ ⟨132,132,155,155⟩ [s6Step280EntryFFresh,s6Step280EntryGFresh,s6Step280EntryFvFresh,s6Step280EntryGvFresh]=
    some (s6Step280EntryGvAfter,⟨s6Step280EntryFOut,s6Step280EntryGOut,s6Step280EntryFvOut,s6Step280EntryGvOut⟩,(growRow 795 s6Step280EntryFFresh ++ (growRow 777 s6Step280EntryGFresh ++ (growRow 776 s6Step280EntryFvFresh ++ (growRow 775 s6Step280EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step280EntryBank_rows]
  rfl

private def s6Step280ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280ExitFBefore : Arena := s6Step280ExitGAfter

private def s6Step280ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩

private def s6Step280ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 927],776⟩

private def s6Step280ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855, 809],777⟩

private def s6Step280ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 882],775⟩

private theorem s6Step280ExitBank_incomingDistinct : ([s6Step280ExitGRow,s6Step280ExitFRow,s6Step280ExitFvRow,s6Step280ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280ExitF_Incoming : rowsOwned s6Step280ExitFBefore [s6Step280ExitFRow,s6Step280ExitFvRow,s6Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280ExitGRow,s6Step280ExitFRow,s6Step280ExitFvRow,s6Step280ExitGvRow] 1 s6Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280ExitBank_outgoingOwned : rowsOwned s6Step280ExitGvAfter [s6Step280ExitGOut,s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step280ExitGvAfter (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280ExitF_Outgoing : rowsOwned s6Step280ExitGvAfter [s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut] :=
  hmrRows_owned_drop s6Step280ExitGvAfter [s6Step280ExitGOut,s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut] 1 s6Step280ExitBank_outgoingOwned

private theorem s6Step280ExitF_distinct : (s6Step280ExitFRow.sign::s6Step280ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280ExitF_owned : (s6Step280ExitFRow.sign::s6Step280ExitFRow.payload).toFinset⊆s6Step280ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280ExitF_retired : s6Step280ExitFBefore.retireSet s6Step280ExitFExtra.toFinset=s6Step280ExitFAfter := by
  unfold Arena.retireSet s6Step280ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step280ExitFBefore,s6Step280ExitGAfter,s6Step280ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step280ExitF_checked : planRowResizeLog s6Step280ExitFBefore s6Step280ExitFRow 131 []=
    some (s6Step280ExitFAfter,s6Step280ExitFOut,shrinkRow 795 s6Step280ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step280ExitFBefore s6Step280ExitFRow 131 s6Step280ExitF_distinct s6Step280ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step280ExitFRow.payload.take 131) s6Step280ExitFRow.sign=s6Step280ExitFOut := by decide +kernel
  have hi : s6Step280ExitFRow.payload.drop 131=s6Step280ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step280ExitF_retired] at result
  exact result

private def s6Step280ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280ExitFvBefore : Arena := s6Step280ExitFAfter

private theorem s6Step280ExitFv_Incoming : rowsOwned s6Step280ExitFvBefore [s6Step280ExitFvRow,s6Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280ExitGRow,s6Step280ExitFRow,s6Step280ExitFvRow,s6Step280ExitGvRow] 2 s6Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280ExitFvBefore (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280ExitFv_Outgoing : rowsOwned s6Step280ExitGvAfter [s6Step280ExitFvOut,s6Step280ExitGvOut] :=
  hmrRows_owned_drop s6Step280ExitGvAfter [s6Step280ExitGOut,s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut] 2 s6Step280ExitBank_outgoingOwned

private theorem s6Step280ExitFv_distinct : (s6Step280ExitFvRow.sign::s6Step280ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280ExitFv_owned : (s6Step280ExitFvRow.sign::s6Step280ExitFvRow.payload).toFinset⊆s6Step280ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280ExitFvBefore (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280ExitFv_retired : s6Step280ExitFvBefore.retireSet s6Step280ExitFvExtra.toFinset=s6Step280ExitFvAfter := by
  unfold Arena.retireSet s6Step280ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step280ExitFvBefore,s6Step280ExitFAfter,s6Step280ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step280ExitFv_checked : planRowResizeLog s6Step280ExitFvBefore s6Step280ExitFvRow 155 []=
    some (s6Step280ExitFvAfter,s6Step280ExitFvOut,shrinkRow 776 s6Step280ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step280ExitFvBefore s6Step280ExitFvRow 155 s6Step280ExitFv_distinct s6Step280ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step280ExitFvRow.payload.take 155) s6Step280ExitFvRow.sign=s6Step280ExitFvOut := by decide +kernel
  have hi : s6Step280ExitFvRow.payload.drop 155=s6Step280ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step280ExitFv_retired] at result
  exact result

private def s6Step280ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step280ExitG_Incoming : rowsOwned s6Step280ExitGBefore [s6Step280ExitGRow,s6Step280ExitFRow,s6Step280ExitFvRow,s6Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280ExitGRow,s6Step280ExitFRow,s6Step280ExitFvRow,s6Step280ExitGvRow] 0 s6Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280ExitG_Outgoing : rowsOwned s6Step280ExitGvAfter [s6Step280ExitGOut,s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut] :=
  hmrRows_owned_drop s6Step280ExitGvAfter [s6Step280ExitGOut,s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut] 0 s6Step280ExitBank_outgoingOwned

private theorem s6Step280ExitG_distinct : (s6Step280ExitGRow.sign::s6Step280ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280ExitG_owned : (s6Step280ExitGRow.sign::s6Step280ExitGRow.payload).toFinset⊆s6Step280ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280ExitG_retired : s6Step280ExitGBefore.retireSet s6Step280ExitGExtra.toFinset=s6Step280ExitGAfter := by
  unfold Arena.retireSet s6Step280ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step280ExitGBefore,s6Step280ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step280ExitG_checked : planRowResizeLog s6Step280ExitGBefore s6Step280ExitGRow 131 []=
    some (s6Step280ExitGAfter,s6Step280ExitGOut,shrinkRow 777 s6Step280ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step280ExitGBefore s6Step280ExitGRow 131 s6Step280ExitG_distinct s6Step280ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step280ExitGRow.payload.take 131) s6Step280ExitGRow.sign=s6Step280ExitGOut := by decide +kernel
  have hi : s6Step280ExitGRow.payload.drop 131=s6Step280ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step280ExitG_retired] at result
  exact result

private def s6Step280ExitGvBefore : Arena := s6Step280ExitFvAfter

private theorem s6Step280ExitGv_Incoming : rowsOwned s6Step280ExitGvBefore [s6Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280ExitGRow,s6Step280ExitFRow,s6Step280ExitFvRow,s6Step280ExitGvRow] 3 s6Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280ExitGvBefore (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280ExitGv_Outgoing : rowsOwned s6Step280ExitGvAfter [s6Step280ExitGvOut] :=
  hmrRows_owned_drop s6Step280ExitGvAfter [s6Step280ExitGOut,s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut] 3 s6Step280ExitBank_outgoingOwned

private theorem s6Step280ExitGv_distinct : (s6Step280ExitGvRow.sign::s6Step280ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280ExitGv_owned : (s6Step280ExitGvRow.sign::s6Step280ExitGvRow.payload).toFinset⊆s6Step280ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280ExitGvBefore (fun q => (0≤q ∧ q<387) ∨ (388≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280ExitGv_retired : s6Step280ExitGvBefore.retireSet s6Step280ExitGvExtra.toFinset=s6Step280ExitGvAfter := by
  unfold Arena.retireSet s6Step280ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step280ExitGvBefore,s6Step280ExitFvAfter,s6Step280ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step280ExitGv_checked : planRowResizeLog s6Step280ExitGvBefore s6Step280ExitGvRow 155 []=
    some (s6Step280ExitGvAfter,s6Step280ExitGvOut,shrinkRow 775 s6Step280ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step280ExitGvBefore s6Step280ExitGvRow 155 s6Step280ExitGv_distinct s6Step280ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step280ExitGvRow.payload.take 155) s6Step280ExitGvRow.sign=s6Step280ExitGvOut := by decide +kernel
  have hi : s6Step280ExitGvRow.payload.drop 155=s6Step280ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step280ExitGv_retired] at result
  exact result

private theorem s6Step280ExitBank_rows : planWindowRowsLog s6Step280ExitGBefore [(s6Step280ExitGRow,131),(s6Step280ExitFRow,131),(s6Step280ExitFvRow,155),(s6Step280ExitGvRow,155)] [[],[],[],[]]=
    some (s6Step280ExitGvAfter,[s6Step280ExitGOut,s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut],(shrinkRow 777 s6Step280ExitGExtra ++ (shrinkRow 795 s6Step280ExitFExtra ++ (shrinkRow 776 s6Step280ExitFvExtra ++ (shrinkRow 775 s6Step280ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step280ExitGvAfter [] []=some (s6Step280ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step280ExitGvBefore s6Step280ExitGvAfter s6Step280ExitGvAfter
    s6Step280ExitGvRow s6Step280ExitGvOut 155 [] [] [] []
    (shrinkRow 775 s6Step280ExitGvExtra) ([]) s6Step280ExitGv_Incoming s6Step280ExitGv_checked h4 s6Step280ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step280ExitFvBefore s6Step280ExitFvAfter s6Step280ExitGvAfter
    s6Step280ExitFvRow s6Step280ExitFvOut 155 [] [(s6Step280ExitGvRow,155)] [[]] [s6Step280ExitGvOut]
    (shrinkRow 776 s6Step280ExitFvExtra) ((shrinkRow 775 s6Step280ExitGvExtra ++ [])) s6Step280ExitFv_Incoming s6Step280ExitFv_checked h3 s6Step280ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step280ExitFBefore s6Step280ExitFAfter s6Step280ExitGvAfter
    s6Step280ExitFRow s6Step280ExitFOut 131 [] [(s6Step280ExitFvRow,155),(s6Step280ExitGvRow,155)] [[],[]] [s6Step280ExitFvOut,s6Step280ExitGvOut]
    (shrinkRow 795 s6Step280ExitFExtra) ((shrinkRow 776 s6Step280ExitFvExtra ++ (shrinkRow 775 s6Step280ExitGvExtra ++ []))) s6Step280ExitF_Incoming s6Step280ExitF_checked h2 s6Step280ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step280ExitGBefore s6Step280ExitGAfter s6Step280ExitGvAfter
    s6Step280ExitGRow s6Step280ExitGOut 131 [] [(s6Step280ExitFRow,131),(s6Step280ExitFvRow,155),(s6Step280ExitGvRow,155)] [[],[],[]] [s6Step280ExitFOut,s6Step280ExitFvOut,s6Step280ExitGvOut]
    (shrinkRow 777 s6Step280ExitGExtra) ((shrinkRow 795 s6Step280ExitFExtra ++ (shrinkRow 776 s6Step280ExitFvExtra ++ (shrinkRow 775 s6Step280ExitGvExtra ++ [])))) s6Step280ExitG_Incoming s6Step280ExitG_checked h1 s6Step280ExitG_Outgoing
  exact h0

private theorem s6Step280ExitBank_checked : compileHmrBankResizeLog .exit s6Step280ExitGBefore ⟨s6Step280ExitFRow,s6Step280ExitGRow,s6Step280ExitFvRow,s6Step280ExitGvRow⟩ ⟨131,131,155,155⟩ [[],[],[],[]]=
    some (s6Step280ExitGvAfter,⟨s6Step280ExitFOut,s6Step280ExitGOut,s6Step280ExitFvOut,s6Step280ExitGvOut⟩,(shrinkRow 777 s6Step280ExitGExtra ++ (shrinkRow 795 s6Step280ExitFExtra ++ (shrinkRow 776 s6Step280ExitFvExtra ++ (shrinkRow 775 s6Step280ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step280ExitBank_rows]
  rfl

private theorem s6Step280Add0_apart : Disjoint s6Step280Add0Arena.live s6Step280Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step280Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280Add0_card : s6Step280Add0Arena.live.card=902 := by
  decide +kernel

private theorem s6Step280Add0_borrowed : s6Step280Add0Arena.checkBorrow (hmrHybridCount s6Step280Add0Arena s6Step280Add0B.length) s6Step280Add0Work=some s6Step280Add0During := by
  have len : s6Step280Add0Work.length=hmrHybridCount s6Step280Add0Arena s6Step280Add0B.length := by
    rw [hmrHybridCount,s6Step280Add0_card]
    decide +kernel
  have nd : s6Step280Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step280Add0Arena s6Step280Add0During s6Step280Add0Work.toFinset s6Step280Add0_bounded s6Step280Add0_apart rfl

private theorem s6Step280Add0_distinct : (830::813::805::(s6Step280Add0A++s6Step280Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280Add0_owned : (830::813::805::(s6Step280Add0A++s6Step280Add0B)).toFinset⊆s6Step280Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step280Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280Add0_checked : compileHmrHybridCinLog s6Step280Add0Arena 813 830 805 s6Step280Add0A s6Step280Add0B s6Step280Add0Work=some s6Step280Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step280Add0Arena s6Step280Add0During 813 830 805 s6Step280Add0A s6Step280Add0B s6Step280Add0Work
    (by decide +kernel) (by decide +kernel) s6Step280Add0_distinct
    (fun q hq => s6Step280Add0_owned (List.mem_toFinset.mpr hq)) s6Step280Add0_borrowed

private theorem s6Step280Add1_apart : Disjoint s6Step280Add1Arena.live s6Step280Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step280Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280Add1_card : s6Step280Add1Arena.live.card=902 := by
  decide +kernel

private theorem s6Step280Add1_borrowed : s6Step280Add1Arena.checkBorrow (hmrHybridCount s6Step280Add1Arena s6Step280Add1B.length) s6Step280Add1Work=some s6Step280Add1During := by
  have len : s6Step280Add1Work.length=hmrHybridCount s6Step280Add1Arena s6Step280Add1B.length := by
    rw [hmrHybridCount,s6Step280Add1_card]
    decide +kernel
  have nd : s6Step280Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step280Add1Arena s6Step280Add1During s6Step280Add1Work.toFinset s6Step280Add1_bounded s6Step280Add1_apart rfl

private theorem s6Step280Add1_distinct : (830::813::805::(s6Step280Add1A++s6Step280Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280Add1_owned : (830::813::805::(s6Step280Add1A++s6Step280Add1B)).toFinset⊆s6Step280Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step280Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280Add1_checked : compileHmrHybridCinLog s6Step280Add1Arena 813 830 805 s6Step280Add1A s6Step280Add1B s6Step280Add1Work=some s6Step280Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step280Add1Arena s6Step280Add1During 813 830 805 s6Step280Add1A s6Step280Add1B s6Step280Add1Work
    (by decide +kernel) (by decide +kernel) s6Step280Add1_distinct
    (fun q hq => s6Step280Add1_owned (List.mem_toFinset.mpr hq)) s6Step280Add1_borrowed

private theorem s6Step280F4_apart : Disjoint (s6Step280Add0A++s6Step280Add0B).toFinset (s6Step280Add1A++s6Step280Add1B).toFinset := by
  have nd : ((s6Step280Add0A++s6Step280Add0B)++(s6Step280Add1A++s6Step280Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step280F4_carry : s6Step280F4FlagArena.checkBorrow 1 [805]=some s6Step280Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step280F4FlagArena,s6Step280HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step280F4FlagArena,s6Step280HeadFvAfter,s6Step280Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step280F4_distinct : (807::813::830::805::((s6Step280Add0A++s6Step280Add1A)++(s6Step280Add0B++s6Step280Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280F4_flag : s6Step280HeadFvAfter.checkBorrow 1 [830]=some s6Step280F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step280HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step280F4_owned : (807::813::((s6Step280Add0A++s6Step280Add1A)++(s6Step280Add0B++s6Step280Add1B))).toFinset⊆s6Step280HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step280HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280F4_checked : compileHmrHybridF4Log s6Step280HeadFvAfter 807 813 s6Step280Add0A s6Step280Add0B s6Step280Add1A s6Step280Add1B [830] [805] s6Step280Add0Work s6Step280Add1Work=some s6Step280F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step280HeadFvAfter s6Step280F4FlagArena s6Step280Add0Arena s6Step280Add0During s6Step280Add1During 807 813
    s6Step280Add0A s6Step280Add0B s6Step280Add1A s6Step280Add1B [830] [805] s6Step280Add0Work s6Step280Add1Work
    (fun q hq => s6Step280F4_owned (List.mem_toFinset.mpr hq)) s6Step280F4_flag s6Step280F4_carry
    s6Step280F4_distinct s6Step280F4_apart s6Step280Add0_checked s6Step280Add1_checked

private theorem s6Step280Front_branch : s6Step280FrontSigmaArena.checkBorrow 1 [813]=some s6Step280HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step280FrontSigmaArena,s6Step280EntryGvAfter,s6Step280EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step280FrontSigmaArena,s6Step280EntryGvAfter,s6Step280EntryGAfter,s6Step280HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step280Front_entry : HmrFrontEntryValid s6Step280EntryFBefore s6Step280FrontBank 132 155 ⟨131,131,155,155⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step280FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step280EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step280EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step280FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step280Front_sigma : s6Step280EntryGvAfter.checkBorrow 1 [807]=some s6Step280FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step280EntryGvAfter,s6Step280EntryGAfter,arenaWires]
  · rfl

private def s6Step280HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280HeadFBefore : Arena := s6Step280HeadGAfter

private def s6Step280HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step280HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step280HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855],777⟩

private def s6Step280HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private theorem s6Step280HeadBank_incomingDistinct : ([s6Step280HeadGRow,s6Step280HeadFRow,s6Step280HeadGvRow,s6Step280HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280HeadF_Incoming : rowsOwned s6Step280HeadFBefore [s6Step280HeadFRow,s6Step280HeadGvRow,s6Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280HeadGRow,s6Step280HeadFRow,s6Step280HeadGvRow,s6Step280HeadFvRow] 1 s6Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280HeadBank_outgoingOwned : rowsOwned s6Step280HeadFvAfter [s6Step280HeadGOut,s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step280HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280HeadF_Outgoing : rowsOwned s6Step280HeadFvAfter [s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut] :=
  hmrRows_owned_drop s6Step280HeadFvAfter [s6Step280HeadGOut,s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut] 1 s6Step280HeadBank_outgoingOwned

private theorem s6Step280HeadF_distinct : (s6Step280HeadFRow.sign::s6Step280HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280HeadF_owned : (s6Step280HeadFRow.sign::s6Step280HeadFRow.payload).toFinset⊆s6Step280HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280HeadF_reserved : s6Step280HeadFBefore.reserve s6Step280HeadFFresh.toFinset=some s6Step280HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280HeadFFresh,arenaWires]
  · norm_num [s6Step280HeadFBefore,s6Step280HeadGAfter,s6Step280HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step280HeadFAfter,s6Step280HeadFBefore,s6Step280HeadGAfter,s6Step280HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step280HeadF_checked : planRowResizeLog s6Step280HeadFBefore s6Step280HeadFRow 133 s6Step280HeadFFresh=
    some (s6Step280HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩,growRow 795 s6Step280HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step280HeadFBefore s6Step280HeadFAfter s6Step280HeadFRow 133 s6Step280HeadFFresh
    s6Step280HeadF_distinct s6Step280HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280HeadF_reserved
  have rowEq : WindowRow.mk (s6Step280HeadFRow.payload++s6Step280HeadFFresh) s6Step280HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 881],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step280HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step280HeadFvBefore : Arena := s6Step280HeadGvAfter

private theorem s6Step280HeadFv_Incoming : rowsOwned s6Step280HeadFvBefore [s6Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280HeadGRow,s6Step280HeadFRow,s6Step280HeadGvRow,s6Step280HeadFvRow] 3 s6Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280HeadFv_Outgoing : rowsOwned s6Step280HeadFvAfter [s6Step280HeadFvOut] :=
  hmrRows_owned_drop s6Step280HeadFvAfter [s6Step280HeadGOut,s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut] 3 s6Step280HeadBank_outgoingOwned

private theorem s6Step280HeadFv_distinct : (s6Step280HeadFvRow.sign::s6Step280HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280HeadFv_owned : (s6Step280HeadFvRow.sign::s6Step280HeadFvRow.payload).toFinset⊆s6Step280HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280HeadFv_reserved : s6Step280HeadFvBefore.reserve s6Step280HeadFvFresh.toFinset=some s6Step280HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280HeadFvFresh,arenaWires]
  · norm_num [s6Step280HeadFvBefore,s6Step280HeadGvAfter,s6Step280HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step280HeadFvAfter,s6Step280HeadFvBefore,s6Step280HeadGvAfter,s6Step280HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step280HeadFv_checked : planRowResizeLog s6Step280HeadFvBefore s6Step280HeadFvRow 156 s6Step280HeadFvFresh=
    some (s6Step280HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 927],776⟩,growRow 776 s6Step280HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step280HeadFvBefore s6Step280HeadFvAfter s6Step280HeadFvRow 156 s6Step280HeadFvFresh
    s6Step280HeadFv_distinct s6Step280HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step280HeadFvRow.payload++s6Step280HeadFvFresh) s6Step280HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 927],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step280HeadG_Incoming : rowsOwned s6Step280HeadGBefore [s6Step280HeadGRow,s6Step280HeadFRow,s6Step280HeadGvRow,s6Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280HeadGRow,s6Step280HeadFRow,s6Step280HeadGvRow,s6Step280HeadFvRow] 0 s6Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280HeadG_Outgoing : rowsOwned s6Step280HeadFvAfter [s6Step280HeadGOut,s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut] :=
  hmrRows_owned_drop s6Step280HeadFvAfter [s6Step280HeadGOut,s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut] 0 s6Step280HeadBank_outgoingOwned

private theorem s6Step280HeadG_distinct : (s6Step280HeadGRow.sign::s6Step280HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280HeadG_owned : (s6Step280HeadGRow.sign::s6Step280HeadGRow.payload).toFinset⊆s6Step280HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280HeadG_reserved : s6Step280HeadGBefore.reserve s6Step280HeadGFresh.toFinset=some s6Step280HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280HeadGFresh,arenaWires]
  · norm_num [s6Step280HeadGBefore,s6Step280HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step280HeadGAfter,s6Step280HeadGBefore,s6Step280HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step280HeadG_checked : planRowResizeLog s6Step280HeadGBefore s6Step280HeadGRow 133 s6Step280HeadGFresh=
    some (s6Step280HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855, 809],777⟩,growRow 777 s6Step280HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step280HeadGBefore s6Step280HeadGAfter s6Step280HeadGRow 133 s6Step280HeadGFresh
    s6Step280HeadG_distinct s6Step280HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280HeadG_reserved
  have rowEq : WindowRow.mk (s6Step280HeadGRow.payload++s6Step280HeadGFresh) s6Step280HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 855, 809],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step280HeadGvBefore : Arena := s6Step280HeadFAfter

private theorem s6Step280HeadGv_Incoming : rowsOwned s6Step280HeadGvBefore [s6Step280HeadGvRow,s6Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step280HeadGRow,s6Step280HeadFRow,s6Step280HeadGvRow,s6Step280HeadFvRow] 2 s6Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step280HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step280HeadGv_Outgoing : rowsOwned s6Step280HeadFvAfter [s6Step280HeadGvOut,s6Step280HeadFvOut] :=
  hmrRows_owned_drop s6Step280HeadFvAfter [s6Step280HeadGOut,s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut] 2 s6Step280HeadBank_outgoingOwned

private theorem s6Step280HeadGv_distinct : (s6Step280HeadGvRow.sign::s6Step280HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step280HeadGv_owned : (s6Step280HeadGvRow.sign::s6Step280HeadGvRow.payload).toFinset⊆s6Step280HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step280HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step280HeadGv_reserved : s6Step280HeadGvBefore.reserve s6Step280HeadGvFresh.toFinset=some s6Step280HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step280HeadGvFresh,arenaWires]
  · norm_num [s6Step280HeadGvBefore,s6Step280HeadFAfter,s6Step280HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step280HeadGvAfter,s6Step280HeadGvBefore,s6Step280HeadFAfter,s6Step280HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step280HeadGv_checked : planRowResizeLog s6Step280HeadGvBefore s6Step280HeadGvRow 156 s6Step280HeadGvFresh=
    some (s6Step280HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 882],775⟩,growRow 775 s6Step280HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step280HeadGvBefore s6Step280HeadGvAfter s6Step280HeadGvRow 156 s6Step280HeadGvFresh
    s6Step280HeadGv_distinct s6Step280HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step280HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step280HeadGvRow.payload++s6Step280HeadGvFresh) s6Step280HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 882],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step280HeadBank_rows : planWindowRowsLog s6Step280HeadGBefore [(s6Step280HeadGRow,133),(s6Step280HeadFRow,133),(s6Step280HeadGvRow,156),(s6Step280HeadFvRow,156)] [s6Step280HeadGFresh,s6Step280HeadFFresh,s6Step280HeadGvFresh,s6Step280HeadFvFresh]=
    some (s6Step280HeadFvAfter,[s6Step280HeadGOut,s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut],(growRow 777 s6Step280HeadGFresh ++ (growRow 795 s6Step280HeadFFresh ++ (growRow 775 s6Step280HeadGvFresh ++ (growRow 776 s6Step280HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step280HeadFvAfter [] []=some (s6Step280HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step280HeadFvBefore s6Step280HeadFvAfter s6Step280HeadFvAfter
    s6Step280HeadFvRow s6Step280HeadFvOut 156 s6Step280HeadFvFresh [] [] []
    (growRow 776 s6Step280HeadFvFresh) ([]) s6Step280HeadFv_Incoming s6Step280HeadFv_checked h4 s6Step280HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step280HeadGvBefore s6Step280HeadGvAfter s6Step280HeadFvAfter
    s6Step280HeadGvRow s6Step280HeadGvOut 156 s6Step280HeadGvFresh [(s6Step280HeadFvRow,156)] [s6Step280HeadFvFresh] [s6Step280HeadFvOut]
    (growRow 775 s6Step280HeadGvFresh) ((growRow 776 s6Step280HeadFvFresh ++ [])) s6Step280HeadGv_Incoming s6Step280HeadGv_checked h3 s6Step280HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step280HeadFBefore s6Step280HeadFAfter s6Step280HeadFvAfter
    s6Step280HeadFRow s6Step280HeadFOut 133 s6Step280HeadFFresh [(s6Step280HeadGvRow,156),(s6Step280HeadFvRow,156)] [s6Step280HeadGvFresh,s6Step280HeadFvFresh] [s6Step280HeadGvOut,s6Step280HeadFvOut]
    (growRow 795 s6Step280HeadFFresh) ((growRow 775 s6Step280HeadGvFresh ++ (growRow 776 s6Step280HeadFvFresh ++ []))) s6Step280HeadF_Incoming s6Step280HeadF_checked h2 s6Step280HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step280HeadGBefore s6Step280HeadGAfter s6Step280HeadFvAfter
    s6Step280HeadGRow s6Step280HeadGOut 133 s6Step280HeadGFresh [(s6Step280HeadFRow,133),(s6Step280HeadGvRow,156),(s6Step280HeadFvRow,156)] [s6Step280HeadFFresh,s6Step280HeadGvFresh,s6Step280HeadFvFresh] [s6Step280HeadFOut,s6Step280HeadGvOut,s6Step280HeadFvOut]
    (growRow 777 s6Step280HeadGFresh) ((growRow 795 s6Step280HeadFFresh ++ (growRow 775 s6Step280HeadGvFresh ++ (growRow 776 s6Step280HeadFvFresh ++ [])))) s6Step280HeadG_Incoming s6Step280HeadG_checked h1 s6Step280HeadG_Outgoing
  exact h0

private theorem s6Step280HeadBank_checked : compileHmrBankResizeLog .headroom s6Step280HeadGBefore ⟨s6Step280HeadFRow,s6Step280HeadGRow,s6Step280HeadFvRow,s6Step280HeadGvRow⟩ ⟨133,133,156,156⟩ [s6Step280HeadGFresh,s6Step280HeadFFresh,s6Step280HeadGvFresh,s6Step280HeadFvFresh]=
    some (s6Step280HeadFvAfter,⟨s6Step280HeadFOut,s6Step280HeadGOut,s6Step280HeadFvOut,s6Step280HeadGvOut⟩,(growRow 777 s6Step280HeadGFresh ++ (growRow 795 s6Step280HeadFFresh ++ (growRow 775 s6Step280HeadGvFresh ++ (growRow 776 s6Step280HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step280HeadBank_rows]
  rfl

private theorem s6Step280Front_checked : compileHmrSourceFrontLog s6Step280EntryFBefore s6Step280FrontBank 132 155 ⟨131,131,155,155⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step280FrontLog=some s6Step280FrontPlan := by
  have pairEq : s6Step280FrontPair=⟨s6Step280HeadFRow,s6Step280HeadGRow,s6Step280HeadFvRow,s6Step280HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step280FrontHead=⟨s6Step280ExitFRow,s6Step280ExitGRow,s6Step280ExitFvRow,s6Step280ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step280Add0A=s6Step280FrontHead.f.wires := by decide +kernel
  have gEq : s6Step280Add0B=s6Step280FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step280Add1A=s6Step280FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step280Add1B=s6Step280FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step280EntryFBefore s6Step280FrontBank 132 155 ⟨131,131,155,155⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step280FrontLog s6Step280FrontPlan
  · exact s6Step280Front_entry
  · exact s6Step280EntryBank_checked
  · exact s6Step280Front_sigma
  · rfl
  · exact s6Step280Front_branch
  · rfl
  · simpa only [s6Step280FrontPlan,pairEq] using s6Step280HeadBank_checked
  · simpa only [s6Step280FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step280F4_checked
  · exact s6Step280Counter_checked
  · rfl
  · simpa only [s6Step280FrontPlan,headEq] using s6Step280ExitBank_checked

private theorem s6Step280Complete_explicit_checked : compileHmrEarlyStepLog s6Step280EntryFBefore s6Step280FrontBank 132 155 ⟨131,131,155,155⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step280CompleteLog=some s6Step280CompletePlan := by
  let Q := s6Step280EarlyControlPlan
  have hq := s6Step280EarlyControl_plan_checked
  have fv1 : s6Step280CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step280CompleteOut.fv.payload[2]?.getD s6Step280CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step280CompleteOut.fv.payload[3]?.getD s6Step280CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step280CompleteOut.fv.payload[4]?.getD s6Step280CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step280EntryFBefore s6Step280EarlyControlArena s6Step280FrontBank 132 155 ⟨131,131,155,155⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step280CompleteLog s6Step280FrontPlan Q
    s6Step280Front_checked s6Step280Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step280Complete_owned s6Step280Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step280EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 s6Step280CompleteOut.fv.second (s6Step280CompleteOut.fv.payload[2]?.getD s6Step280CompleteOut.fv.sign) (s6Step280CompleteOut.fv.payload[3]?.getD s6Step280CompleteOut.fv.sign) (s6Step280CompleteOut.fv.payload[4]?.getD s6Step280CompleteOut.fv.sign) 813 54 s6Step280EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep280Arena : Arena := s6Step280EntryFBefore
def s6PrivateStep280Bank : WindowBank := s6Step280FrontBank
def s6PrivateStep280Spec : HmrSourceWalkStepLog := ⟨132,155,⟨131,131,155,155⟩,54,.early s6Step280CompleteLog⟩
def s6PrivateStep280Plan : HmrSourceStepPlan := .early s6Step280CompletePlan
theorem s6PrivateStep280_source : s6PrivateStep280Spec=s6ObservedLogs272[8] := rfl
theorem s6PrivateStep280_checked : compileHmrSourceStepLog s6PrivateStep280Arena s6PrivateStep280Bank
    s6PrivateStep280Spec.fgWidth s6PrivateStep280Spec.vWidth s6PrivateStep280Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 280 s6PrivateStep280Spec.need none s6PrivateStep280Spec.log=some s6PrivateStep280Plan := by
  change compileHmrSourceStepLog s6Step280EntryFBefore s6Step280FrontBank 132 155 ⟨131,131,155,155⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 280 54 none (.early s6Step280CompleteLog)=some (.early s6Step280CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 280<498)]
  rw [s6Step280Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
