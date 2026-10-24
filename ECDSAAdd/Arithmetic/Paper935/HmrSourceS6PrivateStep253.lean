import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep251
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

private def s6Step253CompleteMoves : List (Wire × Wire) := [(843,143)]

private def s6Step253EarlyControlLog : HmrEarlyControlLog := ⟨[843, 830, 868, 862, 822],[864],[810],[809, 817, 812, 915, 932, 906],[]⟩

private def s6Step253FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [850]],[[862], [868], [830], [786]],[[], [], [], []]⟩,[860],[805],[822],[864],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 864, 810, 809]⟩

private def s6Step253CompleteLog : HmrEarlyStepLog := ⟨s6Step253FrontLog,s6Step253CompleteMoves,s6Step253EarlyControlLog⟩

private def s6Step253ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step253ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786],776⟩

private def s6Step253ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142],777⟩

private def s6Step253ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850],775⟩

private def s6Step253FrontOut : WindowBank := ⟨s6Step253ExitFOut,s6Step253ExitGOut,s6Step253ExitFvOut,s6Step253ExitGvOut⟩

private def s6Step253CompleteOut : WindowBank := s6Step253FrontOut.repacked s6Step253CompleteMoves

private def s6Step253EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step253EarlyControlPositiveArena,[864],s6Step253EarlyControlEqualityArena,[810],⟨⟨860,false⟩,[⟨⟨864,false⟩,810⟩]⟩⟩

private def s6Step253EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,843⟩,⟨⟨772,false⟩,830⟩,⟨⟨771,false⟩,868⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,822⟩]⟩

private def s6Step253EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step253EarlyControlZeroArena,s6Step253EarlyControlZeroPlan,s6Step253EarlyControlClassPlan,s6Step253EarlyControlFlagArena,s6Step253EarlyControlFittedArena,s6Step253EarlyControlHistoryArena,s6Step253EarlyControlSigmaArena,s6Step253EarlyControlOutputArena,s6Step253EarlyControlLog⟩

private def s6Step253CounterWork : List Wire := [822, 864, 810, 809]

private theorem s6Step253Counter_bounded : s6Step253CounterWork.toFinset⊆arenaWires := by norm_num [s6Step253CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step253HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253CounterDuring : Arena := ⟨s6Step253HeadFvAfter.live∪s6Step253CounterWork.toFinset,Finset.union_subset s6Step253HeadFvAfter.bounded s6Step253Counter_bounded⟩

private def s6Step253EntryFFresh : List Wire := []

private def s6Step253EntryFvFresh : List Wire := []

private def s6Step253EntryGFresh : List Wire := []

private def s6Step253EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EntryGvFresh : List Wire := [850]

private def s6Step253ExitFExtra : List Wire := [868]

private def s6Step253ExitGExtra : List Wire := [143, 862]

private def s6Step253ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253ExitGvExtra : List Wire := [830]

private def s6Step253Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253Add0Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step253Add0_bounded : s6Step253Add0Work.toFinset⊆arenaWires := by
  have h : s6Step253Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step253Add0During : Arena := ⟨s6Step253Add0Arena.live∪s6Step253Add0Work.toFinset,Finset.union_subset s6Step253Add0Arena.bounded s6Step253Add0_bounded⟩

private def s6Step253Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253Add1Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step253Add1_bounded : s6Step253Add1Work.toFinset⊆arenaWires := by
  have h : s6Step253Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step253Add1During : Arena := ⟨s6Step253Add1Arena.live∪s6Step253Add1Work.toFinset,Finset.union_subset s6Step253Add1Arena.bounded s6Step253Add1_bounded⟩

private def s6Step253F4FlagArena : Arena := ⟨s6Step253HeadFvAfter.live∪{822},Finset.union_subset s6Step253HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step253F4Plan : HmrHybridF4Plan := ⟨s6Step253F4FlagArena,[822],s6Step253Add0Arena,[864],s6Step253Add0During,s6Step253Add0Work,s6Step253Add1During,s6Step253Add1Work⟩

private def s6Step253HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩

private def s6Step253HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786],776⟩

private def s6Step253HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 862],777⟩

private def s6Step253HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 830],775⟩

private def s6Step253FrontHead : WindowBank := ⟨s6Step253HeadFOut,s6Step253HeadGOut,s6Step253HeadFvOut,s6Step253HeadGvOut⟩

private def s6Step253EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step253EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩

private def s6Step253EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩

private def s6Step253EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850],775⟩

private def s6Step253FrontPair : WindowBank := ⟨s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut⟩

private def s6Step253FrontSigmaArena : Arena := ⟨s6Step253EntryGvAfter.live∪{860},Finset.union_subset s6Step253EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step253HeadFFresh : List Wire := [868]

private def s6Step253HeadFvFresh : List Wire := [786]

private def s6Step253HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253HeadGFresh : List Wire := [862]

private def s6Step253HeadGvFresh : List Wire := [830]

private def s6Step253FrontPlan : HmrSourceFront := ⟨s6Step253EntryGvAfter,s6Step253FrontPair,(growRow 795 s6Step253EntryFFresh ++ (growRow 777 s6Step253EntryGFresh ++ (growRow 776 s6Step253EntryFvFresh ++ (growRow 775 s6Step253EntryGvFresh ++ [])))),s6Step253FrontSigmaArena,[860],s6Step253HeadGBefore,[805],
  s6Step253HeadFvAfter,s6Step253FrontHead,(growRow 777 s6Step253HeadGFresh ++ (growRow 795 s6Step253HeadFFresh ++ (growRow 775 s6Step253HeadGvFresh ++ (growRow 776 s6Step253HeadFvFresh ++ [])))),s6Step253F4Plan,s6Step253CounterDuring,s6Step253CounterWork,s6Step253ExitGvAfter,s6Step253FrontOut,(shrinkRow 777 s6Step253ExitGExtra ++ (shrinkRow 795 s6Step253ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step253ExitGvExtra ++ []))))⟩

private def s6Step253CompletePlan : HmrEarlyStepPlan := ⟨s6Step253FrontPlan,s6Step253EarlyControlArena,s6Step253EarlyControlPlan,s6Step253CompleteMoves⟩

private theorem s6Step253Complete_apart : List.Disjoint (s6Step253CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [860, 805, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step253CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[860, 805, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step253Complete_owned : (s6Step253CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step253CompleteMoveArena : Arena := ⟨s6Step253ExitGvAfter.live∪{143},Finset.union_subset s6Step253ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step253Complete_repack : s6Step253ExitGvAfter.checkRepack s6Step253CompleteMoves=some s6Step253EarlyControlArena := by
  have owned : 843∈s6Step253ExitGvAfter.live := by norm_num [s6Step253ExitGvAfter,arenaWires]
  have reserve : s6Step253ExitGvAfter.reserve {143}=some s6Step253CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step253ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step253CompleteMoveArena.retireSet {843}=s6Step253EarlyControlArena := by
    unfold Arena.retireSet s6Step253EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step253CompleteMoveArena,s6Step253ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step253CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step253CompleteMoveArena.retireSet {843}).checkRepack []=some s6Step253EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step253EarlyControl_branchOwned : ([805] : List Wire).toFinset⊆s6Step253EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_branch : compileHmrBranchRetirement s6Step253EarlyControlSigmaArena 805=some s6Step253EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step253EarlyControl_branchOwned
  · ext q
    simp [s6Step253EarlyControlOutputArena,s6Step253EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step253EarlyControl_classEqualityBorrow : s6Step253EarlyControlPositiveArena.checkBorrow (([860, 864] : List Wire).length-1) s6Step253EarlyControlLog.classWork=some s6Step253EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step253EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step253EarlyControlEqualityArena,s6Step253EarlyControlPositiveArena,s6Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step253EarlyControl_classEqualityOwned : ([860, 864] : List Wire).toFinset⊆s6Step253EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_classEquality : compileHmrEqualityLog s6Step253EarlyControlPositiveArena [860, 864] 0 s6Step253EarlyControlLog.classWork=some (s6Step253EarlyControlEqualityArena,s6Step253EarlyControlLog.classWork,s6Step253EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step253EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step253EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step253EarlyControl_classOwned : ([769, 822, 860] : List Wire).toFinset⊆s6Step253EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_positiveBorrow : s6Step253EarlyControlZeroArena.checkBorrow (1) s6Step253EarlyControlLog.positiveWork=some s6Step253EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step253EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step253EarlyControlPositiveArena,s6Step253EarlyControlZeroArena,s6Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step253EarlyControl_class : compileHmrSourceClassLog s6Step253EarlyControlZeroArena false 769 s6Step253EarlyControlZeroPlan.top 0 860 s6Step253EarlyControlLog.positiveWork s6Step253EarlyControlLog.classWork=some s6Step253EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step253EarlyControlClassPlan s6Step253EarlyControlZeroArena false 769 s6Step253EarlyControlZeroPlan.top 0 860
  constructor
  · decide +kernel
  · exact s6Step253EarlyControl_classOwned
  · exact s6Step253EarlyControl_positiveBorrow
  · exact s6Step253EarlyControl_classEquality

private theorem s6Step253EarlyControl_entryRecordOwned : ([805, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_entrySigmaOwned : ([860, 254] : List Wire).toFinset⊆s6Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_fitBorrow : s6Step253EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step253EarlyControlLog.recordFresh=some s6Step253EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step253EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step253EarlyControlFittedArena,s6Step253EarlyControlFlagArena,s6Step253EarlyControlLog,arenaWires]

private theorem s6Step253EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step253EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_fit : compileHmrRecordGrowLog s6Step253EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step253EarlyControlLog.recordFresh=some s6Step253EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step253EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step253EarlyControl_fitBorrow

private theorem s6Step253EarlyControl_flagsBorrow : s6Step253EarlyControlEqualityArena.checkBorrow (6) s6Step253EarlyControlLog.flagWork=some s6Step253EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step253EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step253EarlyControlFlagArena,s6Step253EarlyControlEqualityArena,s6Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step253EarlyControl_flagsOwned : ([810, 253, 252, 251] : List Wire).toFinset⊆s6Step253EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_flags : compileHmrFlagsLog s6Step253EarlyControlClassPlan.equalityArena s6Step253EarlyControlClassPlan.equality.top 253 252 251 s6Step253EarlyControlLog.flagWork=some s6Step253EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step253EarlyControl_flagsOwned⟩
  · exact s6Step253EarlyControl_flagsBorrow

private theorem s6Step253EarlyControl_historyBorrow : s6Step253EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step253EarlyControlLog.recordFresh=some s6Step253EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step253EarlyControlHistoryArena,s6Step253EarlyControlArena,s6Step253EarlyControlLog,arenaWires]

private theorem s6Step253EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_history : compileHmrRecordGrowLog s6Step253EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step253EarlyControlLog.recordFresh=some s6Step253EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step253EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step253EarlyControl_historyBorrow

private theorem s6Step253EarlyControl_sigmaOwned : ([254, 860] : List Wire).toFinset⊆s6Step253EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_sigmaReleaseOwned : ([860] : List Wire).toFinset⊆s6Step253EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_sigmaRelease : s6Step253EarlyControlHistoryArena.release {860} (fun _ => false)=some s6Step253EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step253EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step253EarlyControlSigmaArena,s6Step253EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step253EarlyControl_sigma : compileHmrSigmaDropLog s6Step253EarlyControlHistoryArena false 0 0 254 860 []=some s6Step253EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step253EarlyControl_sigmaOwned⟩
  · exact s6Step253EarlyControl_sigmaRelease

private theorem s6Step253EarlyControl_zeroBorrow : s6Step253EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step253EarlyControlLog.zeroWork=some s6Step253EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step253EarlyControlZeroArena,s6Step253EarlyControlArena,s6Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step253EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EarlyControl_zero : compileHmrEqualityLog s6Step253EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step253EarlyControlLog.zeroWork=some (s6Step253EarlyControlZeroArena,s6Step253EarlyControlLog.zeroWork,s6Step253EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step253EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step253EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step253EarlyControl_logged : s6Step253EarlyControlPlan.Logged s6Step253EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 805 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step253EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step253EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step253EarlyControl_zero
  · exact s6Step253EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step253EarlyControl_flags
  · exact s6Step253EarlyControl_fit
  · exact s6Step253EarlyControl_history
  · exact s6Step253EarlyControl_sigma
  · exact s6Step253EarlyControl_branch

private theorem s6Step253EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step253EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 805 51 s6Step253EarlyControlLog=some s6Step253EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step253EarlyControlPlan s6Step253EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 805 51 s6Step253EarlyControl_logged

private def s6Step253EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step253EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩

private def s6Step253EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩

private def s6Step253EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private def s6Step253FrontBank : WindowBank := ⟨s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow⟩

private def s6Step253Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868, 795]

private def s6Step253Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 862, 777]

private def s6Step253Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 776]

private def s6Step253Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 830, 775]

private theorem s6Step253Counter_apart : Disjoint s6Step253HeadFvAfter.live s6Step253CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step253HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253Counter_borrowed : s6Step253HeadFvAfter.checkBorrow 4 s6Step253CounterWork=some s6Step253CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step253HeadFvAfter s6Step253CounterDuring s6Step253CounterWork.toFinset s6Step253Counter_bounded s6Step253Counter_apart rfl

private theorem s6Step253Counter_owned : (860::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step253HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step253HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253Counter_checked : compileHmrCounterStepLog s6Step253HeadFvAfter true 860 [774, 773, 772, 771, 770, 769] s6Step253CounterWork=some s6Step253CounterDuring := by
  have owned : ∀q∈860::[774, 773, 772, 771, 770, 769],q∈s6Step253HeadFvAfter.live := fun q hq => s6Step253Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step253Counter_borrowed

private def s6Step253EntryFAfter : Arena := s6Step253EntryFBefore

private theorem s6Step253EntryBank_incomingDistinct : ([s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253EntryF_Incoming : rowsOwned s6Step253EntryFBefore [s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow] 0 s6Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253EntryBank_outgoingOwned : rowsOwned s6Step253EntryGvAfter [s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step253EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253EntryF_Outgoing : rowsOwned s6Step253EntryGvAfter [s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut] :=
  hmrRows_owned_drop s6Step253EntryGvAfter [s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut] 0 s6Step253EntryBank_outgoingOwned

private theorem s6Step253EntryF_distinct : (s6Step253EntryFRow.sign::s6Step253EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253EntryF_owned : (s6Step253EntryFRow.sign::s6Step253EntryFRow.payload).toFinset⊆s6Step253EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EntryF_reserved : s6Step253EntryFBefore.reserve s6Step253EntryFFresh.toFinset=some s6Step253EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253EntryFFresh,arenaWires]
  · norm_num [s6Step253EntryFBefore,s6Step253EntryFFresh,arenaWires]
  · simp only [s6Step253EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step253EntryF_checked : planRowResizeLog s6Step253EntryFBefore s6Step253EntryFRow 144 s6Step253EntryFFresh=
    some (s6Step253EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩,growRow 795 s6Step253EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step253EntryFBefore s6Step253EntryFAfter s6Step253EntryFRow 144 s6Step253EntryFFresh
    s6Step253EntryF_distinct s6Step253EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253EntryF_reserved
  have rowEq : WindowRow.mk (s6Step253EntryFRow.payload++s6Step253EntryFFresh) s6Step253EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step253EntryFvAfter : Arena := s6Step253EntryFBefore

private def s6Step253EntryFvBefore : Arena := s6Step253EntryFBefore

private theorem s6Step253EntryFv_Incoming : rowsOwned s6Step253EntryFvBefore [s6Step253EntryFvRow,s6Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow] 2 s6Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253EntryFv_Outgoing : rowsOwned s6Step253EntryGvAfter [s6Step253EntryFvOut,s6Step253EntryGvOut] :=
  hmrRows_owned_drop s6Step253EntryGvAfter [s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut] 2 s6Step253EntryBank_outgoingOwned

private theorem s6Step253EntryFv_distinct : (s6Step253EntryFvRow.sign::s6Step253EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253EntryFv_owned : (s6Step253EntryFvRow.sign::s6Step253EntryFvRow.payload).toFinset⊆s6Step253EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EntryFv_reserved : s6Step253EntryFvBefore.reserve s6Step253EntryFvFresh.toFinset=some s6Step253EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253EntryFvFresh,arenaWires]
  · norm_num [s6Step253EntryFvBefore,s6Step253EntryFBefore,s6Step253EntryFvFresh,arenaWires]
  · simp only [s6Step253EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step253EntryFv_checked : planRowResizeLog s6Step253EntryFvBefore s6Step253EntryFvRow 142 s6Step253EntryFvFresh=
    some (s6Step253EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩,growRow 776 s6Step253EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step253EntryFvBefore s6Step253EntryFvAfter s6Step253EntryFvRow 142 s6Step253EntryFvFresh
    s6Step253EntryFv_distinct s6Step253EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step253EntryFvRow.payload++s6Step253EntryFvFresh) s6Step253EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step253EntryGAfter : Arena := s6Step253EntryFBefore

private def s6Step253EntryGBefore : Arena := s6Step253EntryFBefore

private theorem s6Step253EntryG_Incoming : rowsOwned s6Step253EntryGBefore [s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow] 1 s6Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253EntryG_Outgoing : rowsOwned s6Step253EntryGvAfter [s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut] :=
  hmrRows_owned_drop s6Step253EntryGvAfter [s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut] 1 s6Step253EntryBank_outgoingOwned

private theorem s6Step253EntryG_distinct : (s6Step253EntryGRow.sign::s6Step253EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253EntryG_owned : (s6Step253EntryGRow.sign::s6Step253EntryGRow.payload).toFinset⊆s6Step253EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EntryG_reserved : s6Step253EntryGBefore.reserve s6Step253EntryGFresh.toFinset=some s6Step253EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253EntryGFresh,arenaWires]
  · norm_num [s6Step253EntryGBefore,s6Step253EntryFBefore,s6Step253EntryGFresh,arenaWires]
  · simp only [s6Step253EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step253EntryG_checked : planRowResizeLog s6Step253EntryGBefore s6Step253EntryGRow 144 s6Step253EntryGFresh=
    some (s6Step253EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩,growRow 777 s6Step253EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step253EntryGBefore s6Step253EntryGAfter s6Step253EntryGRow 144 s6Step253EntryGFresh
    s6Step253EntryG_distinct s6Step253EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253EntryG_reserved
  have rowEq : WindowRow.mk (s6Step253EntryGRow.payload++s6Step253EntryGFresh) s6Step253EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step253EntryGvBefore : Arena := s6Step253EntryFBefore

private theorem s6Step253EntryGv_Incoming : rowsOwned s6Step253EntryGvBefore [s6Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow] 3 s6Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253EntryGv_Outgoing : rowsOwned s6Step253EntryGvAfter [s6Step253EntryGvOut] :=
  hmrRows_owned_drop s6Step253EntryGvAfter [s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut] 3 s6Step253EntryBank_outgoingOwned

private theorem s6Step253EntryGv_distinct : (s6Step253EntryGvRow.sign::s6Step253EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253EntryGv_owned : (s6Step253EntryGvRow.sign::s6Step253EntryGvRow.payload).toFinset⊆s6Step253EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253EntryGv_reserved : s6Step253EntryGvBefore.reserve s6Step253EntryGvFresh.toFinset=some s6Step253EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253EntryGvFresh,arenaWires]
  · norm_num [s6Step253EntryGvBefore,s6Step253EntryFBefore,s6Step253EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step253EntryGvAfter,s6Step253EntryGvBefore,s6Step253EntryFBefore,s6Step253EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step253EntryGv_checked : planRowResizeLog s6Step253EntryGvBefore s6Step253EntryGvRow 142 s6Step253EntryGvFresh=
    some (s6Step253EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850],775⟩,growRow 775 s6Step253EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step253EntryGvBefore s6Step253EntryGvAfter s6Step253EntryGvRow 142 s6Step253EntryGvFresh
    s6Step253EntryGv_distinct s6Step253EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step253EntryGvRow.payload++s6Step253EntryGvFresh) s6Step253EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step253EntryBank_rows : planWindowRowsLog s6Step253EntryFBefore [(s6Step253EntryFRow,144),(s6Step253EntryGRow,144),(s6Step253EntryFvRow,142),(s6Step253EntryGvRow,142)] [s6Step253EntryFFresh,s6Step253EntryGFresh,s6Step253EntryFvFresh,s6Step253EntryGvFresh]=
    some (s6Step253EntryGvAfter,[s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut],(growRow 795 s6Step253EntryFFresh ++ (growRow 777 s6Step253EntryGFresh ++ (growRow 776 s6Step253EntryFvFresh ++ (growRow 775 s6Step253EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step253EntryGvAfter [] []=some (s6Step253EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step253EntryGvBefore s6Step253EntryGvAfter s6Step253EntryGvAfter
    s6Step253EntryGvRow s6Step253EntryGvOut 142 s6Step253EntryGvFresh [] [] []
    (growRow 775 s6Step253EntryGvFresh) ([]) s6Step253EntryGv_Incoming s6Step253EntryGv_checked h4 s6Step253EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step253EntryFvBefore s6Step253EntryFvAfter s6Step253EntryGvAfter
    s6Step253EntryFvRow s6Step253EntryFvOut 142 s6Step253EntryFvFresh [(s6Step253EntryGvRow,142)] [s6Step253EntryGvFresh] [s6Step253EntryGvOut]
    (growRow 776 s6Step253EntryFvFresh) ((growRow 775 s6Step253EntryGvFresh ++ [])) s6Step253EntryFv_Incoming s6Step253EntryFv_checked h3 s6Step253EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step253EntryGBefore s6Step253EntryGAfter s6Step253EntryGvAfter
    s6Step253EntryGRow s6Step253EntryGOut 144 s6Step253EntryGFresh [(s6Step253EntryFvRow,142),(s6Step253EntryGvRow,142)] [s6Step253EntryFvFresh,s6Step253EntryGvFresh] [s6Step253EntryFvOut,s6Step253EntryGvOut]
    (growRow 777 s6Step253EntryGFresh) ((growRow 776 s6Step253EntryFvFresh ++ (growRow 775 s6Step253EntryGvFresh ++ []))) s6Step253EntryG_Incoming s6Step253EntryG_checked h2 s6Step253EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step253EntryFBefore s6Step253EntryFAfter s6Step253EntryGvAfter
    s6Step253EntryFRow s6Step253EntryFOut 144 s6Step253EntryFFresh [(s6Step253EntryGRow,144),(s6Step253EntryFvRow,142),(s6Step253EntryGvRow,142)] [s6Step253EntryGFresh,s6Step253EntryFvFresh,s6Step253EntryGvFresh] [s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut]
    (growRow 795 s6Step253EntryFFresh) ((growRow 777 s6Step253EntryGFresh ++ (growRow 776 s6Step253EntryFvFresh ++ (growRow 775 s6Step253EntryGvFresh ++ [])))) s6Step253EntryF_Incoming s6Step253EntryF_checked h1 s6Step253EntryF_Outgoing
  exact h0

private theorem s6Step253EntryBank_checked : compileHmrBankResizeLog .entry s6Step253EntryFBefore ⟨s6Step253EntryFRow,s6Step253EntryGRow,s6Step253EntryFvRow,s6Step253EntryGvRow⟩ ⟨144,144,142,142⟩ [s6Step253EntryFFresh,s6Step253EntryGFresh,s6Step253EntryFvFresh,s6Step253EntryGvFresh]=
    some (s6Step253EntryGvAfter,⟨s6Step253EntryFOut,s6Step253EntryGOut,s6Step253EntryFvOut,s6Step253EntryGvOut⟩,(growRow 795 s6Step253EntryFFresh ++ (growRow 777 s6Step253EntryGFresh ++ (growRow 776 s6Step253EntryFvFresh ++ (growRow 775 s6Step253EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step253EntryBank_rows]
  rfl

private def s6Step253ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253ExitFBefore : Arena := s6Step253ExitGAfter

private def s6Step253ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩

private def s6Step253ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786],776⟩

private def s6Step253ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 862],777⟩

private def s6Step253ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 830],775⟩

private theorem s6Step253ExitBank_incomingDistinct : ([s6Step253ExitGRow,s6Step253ExitFRow,s6Step253ExitFvRow,s6Step253ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253ExitF_Incoming : rowsOwned s6Step253ExitFBefore [s6Step253ExitFRow,s6Step253ExitFvRow,s6Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253ExitGRow,s6Step253ExitFRow,s6Step253ExitFvRow,s6Step253ExitGvRow] 1 s6Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253ExitFBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253ExitBank_outgoingOwned : rowsOwned s6Step253ExitGvAfter [s6Step253ExitGOut,s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step253ExitGvAfter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253ExitF_Outgoing : rowsOwned s6Step253ExitGvAfter [s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut] :=
  hmrRows_owned_drop s6Step253ExitGvAfter [s6Step253ExitGOut,s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut] 1 s6Step253ExitBank_outgoingOwned

private theorem s6Step253ExitF_distinct : (s6Step253ExitFRow.sign::s6Step253ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253ExitF_owned : (s6Step253ExitFRow.sign::s6Step253ExitFRow.payload).toFinset⊆s6Step253ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253ExitFBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253ExitF_retired : s6Step253ExitFBefore.retireSet s6Step253ExitFExtra.toFinset=s6Step253ExitFAfter := by
  unfold Arena.retireSet s6Step253ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step253ExitFBefore,s6Step253ExitGAfter,s6Step253ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step253ExitF_checked : planRowResizeLog s6Step253ExitFBefore s6Step253ExitFRow 144 []=
    some (s6Step253ExitFAfter,s6Step253ExitFOut,shrinkRow 795 s6Step253ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step253ExitFBefore s6Step253ExitFRow 144 s6Step253ExitF_distinct s6Step253ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step253ExitFRow.payload.take 144) s6Step253ExitFRow.sign=s6Step253ExitFOut := by decide +kernel
  have hi : s6Step253ExitFRow.payload.drop 144=s6Step253ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step253ExitF_retired] at result
  exact result

private def s6Step253ExitFvAfter : Arena := s6Step253ExitFAfter

private def s6Step253ExitFvBefore : Arena := s6Step253ExitFAfter

private theorem s6Step253ExitFv_Incoming : rowsOwned s6Step253ExitFvBefore [s6Step253ExitFvRow,s6Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253ExitGRow,s6Step253ExitFRow,s6Step253ExitFvRow,s6Step253ExitGvRow] 2 s6Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253ExitFvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253ExitFv_Outgoing : rowsOwned s6Step253ExitGvAfter [s6Step253ExitFvOut,s6Step253ExitGvOut] :=
  hmrRows_owned_drop s6Step253ExitGvAfter [s6Step253ExitGOut,s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut] 2 s6Step253ExitBank_outgoingOwned

private theorem s6Step253ExitFv_distinct : (s6Step253ExitFvRow.sign::s6Step253ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253ExitFv_owned : (s6Step253ExitFvRow.sign::s6Step253ExitFvRow.payload).toFinset⊆s6Step253ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253ExitFvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253ExitFv_reserved : s6Step253ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step253ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step253ExitFv_checked : planRowResizeLog s6Step253ExitFvBefore s6Step253ExitFvRow 143 []=
    some (s6Step253ExitFvAfter,s6Step253ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step253ExitFvBefore s6Step253ExitFvAfter s6Step253ExitFvRow 143 []
    s6Step253ExitFv_distinct s6Step253ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step253ExitFvRow.payload++[]) s6Step253ExitFvRow.sign=s6Step253ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step253ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step253ExitG_Incoming : rowsOwned s6Step253ExitGBefore [s6Step253ExitGRow,s6Step253ExitFRow,s6Step253ExitFvRow,s6Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253ExitGRow,s6Step253ExitFRow,s6Step253ExitFvRow,s6Step253ExitGvRow] 0 s6Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253ExitG_Outgoing : rowsOwned s6Step253ExitGvAfter [s6Step253ExitGOut,s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut] :=
  hmrRows_owned_drop s6Step253ExitGvAfter [s6Step253ExitGOut,s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut] 0 s6Step253ExitBank_outgoingOwned

private theorem s6Step253ExitG_distinct : (s6Step253ExitGRow.sign::s6Step253ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253ExitG_owned : (s6Step253ExitGRow.sign::s6Step253ExitGRow.payload).toFinset⊆s6Step253ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253ExitG_retired : s6Step253ExitGBefore.retireSet s6Step253ExitGExtra.toFinset=s6Step253ExitGAfter := by
  unfold Arena.retireSet s6Step253ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step253ExitGBefore,s6Step253ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step253ExitG_checked : planRowResizeLog s6Step253ExitGBefore s6Step253ExitGRow 143 []=
    some (s6Step253ExitGAfter,s6Step253ExitGOut,shrinkRow 777 s6Step253ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step253ExitGBefore s6Step253ExitGRow 143 s6Step253ExitG_distinct s6Step253ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step253ExitGRow.payload.take 143) s6Step253ExitGRow.sign=s6Step253ExitGOut := by decide +kernel
  have hi : s6Step253ExitGRow.payload.drop 143=s6Step253ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step253ExitG_retired] at result
  exact result

private def s6Step253ExitGvBefore : Arena := s6Step253ExitFAfter

private theorem s6Step253ExitGv_Incoming : rowsOwned s6Step253ExitGvBefore [s6Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253ExitGRow,s6Step253ExitFRow,s6Step253ExitFvRow,s6Step253ExitGvRow] 3 s6Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253ExitGvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253ExitGv_Outgoing : rowsOwned s6Step253ExitGvAfter [s6Step253ExitGvOut] :=
  hmrRows_owned_drop s6Step253ExitGvAfter [s6Step253ExitGOut,s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut] 3 s6Step253ExitBank_outgoingOwned

private theorem s6Step253ExitGv_distinct : (s6Step253ExitGvRow.sign::s6Step253ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253ExitGv_owned : (s6Step253ExitGvRow.sign::s6Step253ExitGvRow.payload).toFinset⊆s6Step253ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253ExitGvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253ExitGv_retired : s6Step253ExitGvBefore.retireSet s6Step253ExitGvExtra.toFinset=s6Step253ExitGvAfter := by
  unfold Arena.retireSet s6Step253ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step253ExitGvBefore,s6Step253ExitFAfter,s6Step253ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step253ExitGv_checked : planRowResizeLog s6Step253ExitGvBefore s6Step253ExitGvRow 142 []=
    some (s6Step253ExitGvAfter,s6Step253ExitGvOut,shrinkRow 775 s6Step253ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step253ExitGvBefore s6Step253ExitGvRow 142 s6Step253ExitGv_distinct s6Step253ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step253ExitGvRow.payload.take 142) s6Step253ExitGvRow.sign=s6Step253ExitGvOut := by decide +kernel
  have hi : s6Step253ExitGvRow.payload.drop 142=s6Step253ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step253ExitGv_retired] at result
  exact result

private theorem s6Step253ExitBank_rows : planWindowRowsLog s6Step253ExitGBefore [(s6Step253ExitGRow,143),(s6Step253ExitFRow,144),(s6Step253ExitFvRow,143),(s6Step253ExitGvRow,142)] [[],[],[],[]]=
    some (s6Step253ExitGvAfter,[s6Step253ExitGOut,s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut],(shrinkRow 777 s6Step253ExitGExtra ++ (shrinkRow 795 s6Step253ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step253ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step253ExitGvAfter [] []=some (s6Step253ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step253ExitGvBefore s6Step253ExitGvAfter s6Step253ExitGvAfter
    s6Step253ExitGvRow s6Step253ExitGvOut 142 [] [] [] []
    (shrinkRow 775 s6Step253ExitGvExtra) ([]) s6Step253ExitGv_Incoming s6Step253ExitGv_checked h4 s6Step253ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step253ExitFvBefore s6Step253ExitFvAfter s6Step253ExitGvAfter
    s6Step253ExitFvRow s6Step253ExitFvOut 143 [] [(s6Step253ExitGvRow,142)] [[]] [s6Step253ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step253ExitGvExtra ++ [])) s6Step253ExitFv_Incoming s6Step253ExitFv_checked h3 s6Step253ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step253ExitFBefore s6Step253ExitFAfter s6Step253ExitGvAfter
    s6Step253ExitFRow s6Step253ExitFOut 144 [] [(s6Step253ExitFvRow,143),(s6Step253ExitGvRow,142)] [[],[]] [s6Step253ExitFvOut,s6Step253ExitGvOut]
    (shrinkRow 795 s6Step253ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step253ExitGvExtra ++ []))) s6Step253ExitF_Incoming s6Step253ExitF_checked h2 s6Step253ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step253ExitGBefore s6Step253ExitGAfter s6Step253ExitGvAfter
    s6Step253ExitGRow s6Step253ExitGOut 143 [] [(s6Step253ExitFRow,144),(s6Step253ExitFvRow,143),(s6Step253ExitGvRow,142)] [[],[],[]] [s6Step253ExitFOut,s6Step253ExitFvOut,s6Step253ExitGvOut]
    (shrinkRow 777 s6Step253ExitGExtra) ((shrinkRow 795 s6Step253ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step253ExitGvExtra ++ [])))) s6Step253ExitG_Incoming s6Step253ExitG_checked h1 s6Step253ExitG_Outgoing
  exact h0

private theorem s6Step253ExitBank_checked : compileHmrBankResizeLog .exit s6Step253ExitGBefore ⟨s6Step253ExitFRow,s6Step253ExitGRow,s6Step253ExitFvRow,s6Step253ExitGvRow⟩ ⟨144,143,143,142⟩ [[],[],[],[]]=
    some (s6Step253ExitGvAfter,⟨s6Step253ExitFOut,s6Step253ExitGOut,s6Step253ExitFvOut,s6Step253ExitGvOut⟩,(shrinkRow 777 s6Step253ExitGExtra ++ (shrinkRow 795 s6Step253ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step253ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step253ExitBank_rows]
  rfl

private theorem s6Step253Add0_apart : Disjoint s6Step253Add0Arena.live s6Step253Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step253Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253Add0_card : s6Step253Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step253Add0_borrowed : s6Step253Add0Arena.checkBorrow (hmrHybridCount s6Step253Add0Arena s6Step253Add0B.length) s6Step253Add0Work=some s6Step253Add0During := by
  have len : s6Step253Add0Work.length=hmrHybridCount s6Step253Add0Arena s6Step253Add0B.length := by
    rw [hmrHybridCount,s6Step253Add0_card]
    decide +kernel
  have nd : s6Step253Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step253Add0Arena s6Step253Add0During s6Step253Add0Work.toFinset s6Step253Add0_bounded s6Step253Add0_apart rfl

private theorem s6Step253Add0_distinct : (822::805::864::(s6Step253Add0A++s6Step253Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253Add0_owned : (822::805::864::(s6Step253Add0A++s6Step253Add0B)).toFinset⊆s6Step253Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step253Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253Add0_checked : compileHmrHybridCinLog s6Step253Add0Arena 805 822 864 s6Step253Add0A s6Step253Add0B s6Step253Add0Work=some s6Step253Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step253Add0Arena s6Step253Add0During 805 822 864 s6Step253Add0A s6Step253Add0B s6Step253Add0Work
    (by decide +kernel) (by decide +kernel) s6Step253Add0_distinct
    (fun q hq => s6Step253Add0_owned (List.mem_toFinset.mpr hq)) s6Step253Add0_borrowed

private theorem s6Step253Add1_apart : Disjoint s6Step253Add1Arena.live s6Step253Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step253Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253Add1_card : s6Step253Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step253Add1_borrowed : s6Step253Add1Arena.checkBorrow (hmrHybridCount s6Step253Add1Arena s6Step253Add1B.length) s6Step253Add1Work=some s6Step253Add1During := by
  have len : s6Step253Add1Work.length=hmrHybridCount s6Step253Add1Arena s6Step253Add1B.length := by
    rw [hmrHybridCount,s6Step253Add1_card]
    decide +kernel
  have nd : s6Step253Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step253Add1Arena s6Step253Add1During s6Step253Add1Work.toFinset s6Step253Add1_bounded s6Step253Add1_apart rfl

private theorem s6Step253Add1_distinct : (822::805::864::(s6Step253Add1A++s6Step253Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253Add1_owned : (822::805::864::(s6Step253Add1A++s6Step253Add1B)).toFinset⊆s6Step253Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step253Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253Add1_checked : compileHmrHybridCinLog s6Step253Add1Arena 805 822 864 s6Step253Add1A s6Step253Add1B s6Step253Add1Work=some s6Step253Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step253Add1Arena s6Step253Add1During 805 822 864 s6Step253Add1A s6Step253Add1B s6Step253Add1Work
    (by decide +kernel) (by decide +kernel) s6Step253Add1_distinct
    (fun q hq => s6Step253Add1_owned (List.mem_toFinset.mpr hq)) s6Step253Add1_borrowed

private theorem s6Step253F4_apart : Disjoint (s6Step253Add0A++s6Step253Add0B).toFinset (s6Step253Add1A++s6Step253Add1B).toFinset := by
  have nd : ((s6Step253Add0A++s6Step253Add0B)++(s6Step253Add1A++s6Step253Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step253F4_carry : s6Step253F4FlagArena.checkBorrow 1 [864]=some s6Step253Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step253F4FlagArena,s6Step253HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step253F4FlagArena,s6Step253HeadFvAfter,s6Step253Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step253F4_distinct : (860::805::822::864::((s6Step253Add0A++s6Step253Add1A)++(s6Step253Add0B++s6Step253Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253F4_flag : s6Step253HeadFvAfter.checkBorrow 1 [822]=some s6Step253F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step253HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step253F4_owned : (860::805::((s6Step253Add0A++s6Step253Add1A)++(s6Step253Add0B++s6Step253Add1B))).toFinset⊆s6Step253HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step253HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253F4_checked : compileHmrHybridF4Log s6Step253HeadFvAfter 860 805 s6Step253Add0A s6Step253Add0B s6Step253Add1A s6Step253Add1B [822] [864] s6Step253Add0Work s6Step253Add1Work=some s6Step253F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step253HeadFvAfter s6Step253F4FlagArena s6Step253Add0Arena s6Step253Add0During s6Step253Add1During 860 805
    s6Step253Add0A s6Step253Add0B s6Step253Add1A s6Step253Add1B [822] [864] s6Step253Add0Work s6Step253Add1Work
    (fun q hq => s6Step253F4_owned (List.mem_toFinset.mpr hq)) s6Step253F4_flag s6Step253F4_carry
    s6Step253F4_distinct s6Step253F4_apart s6Step253Add0_checked s6Step253Add1_checked

private theorem s6Step253Front_branch : s6Step253FrontSigmaArena.checkBorrow 1 [805]=some s6Step253HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step253FrontSigmaArena,s6Step253EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step253FrontSigmaArena,s6Step253EntryGvAfter,s6Step253HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step253Front_entry : HmrFrontEntryValid s6Step253EntryFBefore s6Step253FrontBank 144 142 ⟨144,143,143,142⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step253FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step253EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step253EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step253FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step253Front_sigma : s6Step253EntryGvAfter.checkBorrow 1 [860]=some s6Step253FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step253EntryGvAfter,arenaWires]
  · rfl

private def s6Step253HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253HeadFBefore : Arena := s6Step253HeadGAfter

private def s6Step253HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step253HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩

private def s6Step253HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩

private def s6Step253HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850],775⟩

private theorem s6Step253HeadBank_incomingDistinct : ([s6Step253HeadGRow,s6Step253HeadFRow,s6Step253HeadGvRow,s6Step253HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253HeadF_Incoming : rowsOwned s6Step253HeadFBefore [s6Step253HeadFRow,s6Step253HeadGvRow,s6Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253HeadGRow,s6Step253HeadFRow,s6Step253HeadGvRow,s6Step253HeadFvRow] 1 s6Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253HeadBank_outgoingOwned : rowsOwned s6Step253HeadFvAfter [s6Step253HeadGOut,s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step253HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253HeadF_Outgoing : rowsOwned s6Step253HeadFvAfter [s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut] :=
  hmrRows_owned_drop s6Step253HeadFvAfter [s6Step253HeadGOut,s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut] 1 s6Step253HeadBank_outgoingOwned

private theorem s6Step253HeadF_distinct : (s6Step253HeadFRow.sign::s6Step253HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253HeadF_owned : (s6Step253HeadFRow.sign::s6Step253HeadFRow.payload).toFinset⊆s6Step253HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253HeadF_reserved : s6Step253HeadFBefore.reserve s6Step253HeadFFresh.toFinset=some s6Step253HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253HeadFFresh,arenaWires]
  · norm_num [s6Step253HeadFBefore,s6Step253HeadGAfter,s6Step253HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step253HeadFAfter,s6Step253HeadFBefore,s6Step253HeadGAfter,s6Step253HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step253HeadF_checked : planRowResizeLog s6Step253HeadFBefore s6Step253HeadFRow 145 s6Step253HeadFFresh=
    some (s6Step253HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩,growRow 795 s6Step253HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step253HeadFBefore s6Step253HeadFAfter s6Step253HeadFRow 145 s6Step253HeadFFresh
    s6Step253HeadF_distinct s6Step253HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253HeadF_reserved
  have rowEq : WindowRow.mk (s6Step253HeadFRow.payload++s6Step253HeadFFresh) s6Step253HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step253HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step253HeadFvBefore : Arena := s6Step253HeadGvAfter

private theorem s6Step253HeadFv_Incoming : rowsOwned s6Step253HeadFvBefore [s6Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253HeadGRow,s6Step253HeadFRow,s6Step253HeadGvRow,s6Step253HeadFvRow] 3 s6Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253HeadFv_Outgoing : rowsOwned s6Step253HeadFvAfter [s6Step253HeadFvOut] :=
  hmrRows_owned_drop s6Step253HeadFvAfter [s6Step253HeadGOut,s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut] 3 s6Step253HeadBank_outgoingOwned

private theorem s6Step253HeadFv_distinct : (s6Step253HeadFvRow.sign::s6Step253HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253HeadFv_owned : (s6Step253HeadFvRow.sign::s6Step253HeadFvRow.payload).toFinset⊆s6Step253HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253HeadFv_reserved : s6Step253HeadFvBefore.reserve s6Step253HeadFvFresh.toFinset=some s6Step253HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253HeadFvFresh,arenaWires]
  · norm_num [s6Step253HeadFvBefore,s6Step253HeadGvAfter,s6Step253HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step253HeadFvAfter,s6Step253HeadFvBefore,s6Step253HeadGvAfter,s6Step253HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step253HeadFv_checked : planRowResizeLog s6Step253HeadFvBefore s6Step253HeadFvRow 143 s6Step253HeadFvFresh=
    some (s6Step253HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786],776⟩,growRow 776 s6Step253HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step253HeadFvBefore s6Step253HeadFvAfter s6Step253HeadFvRow 143 s6Step253HeadFvFresh
    s6Step253HeadFv_distinct s6Step253HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step253HeadFvRow.payload++s6Step253HeadFvFresh) s6Step253HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step253HeadG_Incoming : rowsOwned s6Step253HeadGBefore [s6Step253HeadGRow,s6Step253HeadFRow,s6Step253HeadGvRow,s6Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253HeadGRow,s6Step253HeadFRow,s6Step253HeadGvRow,s6Step253HeadFvRow] 0 s6Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253HeadG_Outgoing : rowsOwned s6Step253HeadFvAfter [s6Step253HeadGOut,s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut] :=
  hmrRows_owned_drop s6Step253HeadFvAfter [s6Step253HeadGOut,s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut] 0 s6Step253HeadBank_outgoingOwned

private theorem s6Step253HeadG_distinct : (s6Step253HeadGRow.sign::s6Step253HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253HeadG_owned : (s6Step253HeadGRow.sign::s6Step253HeadGRow.payload).toFinset⊆s6Step253HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253HeadG_reserved : s6Step253HeadGBefore.reserve s6Step253HeadGFresh.toFinset=some s6Step253HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253HeadGFresh,arenaWires]
  · norm_num [s6Step253HeadGBefore,s6Step253HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step253HeadGAfter,s6Step253HeadGBefore,s6Step253HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step253HeadG_checked : planRowResizeLog s6Step253HeadGBefore s6Step253HeadGRow 145 s6Step253HeadGFresh=
    some (s6Step253HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 862],777⟩,growRow 777 s6Step253HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step253HeadGBefore s6Step253HeadGAfter s6Step253HeadGRow 145 s6Step253HeadGFresh
    s6Step253HeadG_distinct s6Step253HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253HeadG_reserved
  have rowEq : WindowRow.mk (s6Step253HeadGRow.payload++s6Step253HeadGFresh) s6Step253HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step253HeadGvBefore : Arena := s6Step253HeadFAfter

private theorem s6Step253HeadGv_Incoming : rowsOwned s6Step253HeadGvBefore [s6Step253HeadGvRow,s6Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step253HeadGRow,s6Step253HeadFRow,s6Step253HeadGvRow,s6Step253HeadFvRow] 2 s6Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step253HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step253HeadGv_Outgoing : rowsOwned s6Step253HeadFvAfter [s6Step253HeadGvOut,s6Step253HeadFvOut] :=
  hmrRows_owned_drop s6Step253HeadFvAfter [s6Step253HeadGOut,s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut] 2 s6Step253HeadBank_outgoingOwned

private theorem s6Step253HeadGv_distinct : (s6Step253HeadGvRow.sign::s6Step253HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step253HeadGv_owned : (s6Step253HeadGvRow.sign::s6Step253HeadGvRow.payload).toFinset⊆s6Step253HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step253HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step253HeadGv_reserved : s6Step253HeadGvBefore.reserve s6Step253HeadGvFresh.toFinset=some s6Step253HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step253HeadGvFresh,arenaWires]
  · norm_num [s6Step253HeadGvBefore,s6Step253HeadFAfter,s6Step253HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step253HeadGvAfter,s6Step253HeadGvBefore,s6Step253HeadFAfter,s6Step253HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step253HeadGv_checked : planRowResizeLog s6Step253HeadGvBefore s6Step253HeadGvRow 143 s6Step253HeadGvFresh=
    some (s6Step253HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 830],775⟩,growRow 775 s6Step253HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step253HeadGvBefore s6Step253HeadGvAfter s6Step253HeadGvRow 143 s6Step253HeadGvFresh
    s6Step253HeadGv_distinct s6Step253HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step253HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step253HeadGvRow.payload++s6Step253HeadGvFresh) s6Step253HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 830],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step253HeadBank_rows : planWindowRowsLog s6Step253HeadGBefore [(s6Step253HeadGRow,145),(s6Step253HeadFRow,145),(s6Step253HeadGvRow,143),(s6Step253HeadFvRow,143)] [s6Step253HeadGFresh,s6Step253HeadFFresh,s6Step253HeadGvFresh,s6Step253HeadFvFresh]=
    some (s6Step253HeadFvAfter,[s6Step253HeadGOut,s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut],(growRow 777 s6Step253HeadGFresh ++ (growRow 795 s6Step253HeadFFresh ++ (growRow 775 s6Step253HeadGvFresh ++ (growRow 776 s6Step253HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step253HeadFvAfter [] []=some (s6Step253HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step253HeadFvBefore s6Step253HeadFvAfter s6Step253HeadFvAfter
    s6Step253HeadFvRow s6Step253HeadFvOut 143 s6Step253HeadFvFresh [] [] []
    (growRow 776 s6Step253HeadFvFresh) ([]) s6Step253HeadFv_Incoming s6Step253HeadFv_checked h4 s6Step253HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step253HeadGvBefore s6Step253HeadGvAfter s6Step253HeadFvAfter
    s6Step253HeadGvRow s6Step253HeadGvOut 143 s6Step253HeadGvFresh [(s6Step253HeadFvRow,143)] [s6Step253HeadFvFresh] [s6Step253HeadFvOut]
    (growRow 775 s6Step253HeadGvFresh) ((growRow 776 s6Step253HeadFvFresh ++ [])) s6Step253HeadGv_Incoming s6Step253HeadGv_checked h3 s6Step253HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step253HeadFBefore s6Step253HeadFAfter s6Step253HeadFvAfter
    s6Step253HeadFRow s6Step253HeadFOut 145 s6Step253HeadFFresh [(s6Step253HeadGvRow,143),(s6Step253HeadFvRow,143)] [s6Step253HeadGvFresh,s6Step253HeadFvFresh] [s6Step253HeadGvOut,s6Step253HeadFvOut]
    (growRow 795 s6Step253HeadFFresh) ((growRow 775 s6Step253HeadGvFresh ++ (growRow 776 s6Step253HeadFvFresh ++ []))) s6Step253HeadF_Incoming s6Step253HeadF_checked h2 s6Step253HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step253HeadGBefore s6Step253HeadGAfter s6Step253HeadFvAfter
    s6Step253HeadGRow s6Step253HeadGOut 145 s6Step253HeadGFresh [(s6Step253HeadFRow,145),(s6Step253HeadGvRow,143),(s6Step253HeadFvRow,143)] [s6Step253HeadFFresh,s6Step253HeadGvFresh,s6Step253HeadFvFresh] [s6Step253HeadFOut,s6Step253HeadGvOut,s6Step253HeadFvOut]
    (growRow 777 s6Step253HeadGFresh) ((growRow 795 s6Step253HeadFFresh ++ (growRow 775 s6Step253HeadGvFresh ++ (growRow 776 s6Step253HeadFvFresh ++ [])))) s6Step253HeadG_Incoming s6Step253HeadG_checked h1 s6Step253HeadG_Outgoing
  exact h0

private theorem s6Step253HeadBank_checked : compileHmrBankResizeLog .headroom s6Step253HeadGBefore ⟨s6Step253HeadFRow,s6Step253HeadGRow,s6Step253HeadFvRow,s6Step253HeadGvRow⟩ ⟨145,145,143,143⟩ [s6Step253HeadGFresh,s6Step253HeadFFresh,s6Step253HeadGvFresh,s6Step253HeadFvFresh]=
    some (s6Step253HeadFvAfter,⟨s6Step253HeadFOut,s6Step253HeadGOut,s6Step253HeadFvOut,s6Step253HeadGvOut⟩,(growRow 777 s6Step253HeadGFresh ++ (growRow 795 s6Step253HeadFFresh ++ (growRow 775 s6Step253HeadGvFresh ++ (growRow 776 s6Step253HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step253HeadBank_rows]
  rfl

private theorem s6Step253Front_checked : compileHmrSourceFrontLog s6Step253EntryFBefore s6Step253FrontBank 144 142 ⟨144,143,143,142⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step253FrontLog=some s6Step253FrontPlan := by
  have pairEq : s6Step253FrontPair=⟨s6Step253HeadFRow,s6Step253HeadGRow,s6Step253HeadFvRow,s6Step253HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step253FrontHead=⟨s6Step253ExitFRow,s6Step253ExitGRow,s6Step253ExitFvRow,s6Step253ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step253Add0A=s6Step253FrontHead.f.wires := by decide +kernel
  have gEq : s6Step253Add0B=s6Step253FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step253Add1A=s6Step253FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step253Add1B=s6Step253FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step253EntryFBefore s6Step253FrontBank 144 142 ⟨144,143,143,142⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step253FrontLog s6Step253FrontPlan
  · exact s6Step253Front_entry
  · exact s6Step253EntryBank_checked
  · exact s6Step253Front_sigma
  · rfl
  · exact s6Step253Front_branch
  · rfl
  · simpa only [s6Step253FrontPlan,pairEq] using s6Step253HeadBank_checked
  · simpa only [s6Step253FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step253F4_checked
  · exact s6Step253Counter_checked
  · rfl
  · simpa only [s6Step253FrontPlan,headEq] using s6Step253ExitBank_checked

private theorem s6Step253Complete_explicit_checked : compileHmrEarlyStepLog s6Step253EntryFBefore s6Step253FrontBank 144 142 ⟨144,143,143,142⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step253CompleteLog=some s6Step253CompletePlan := by
  let Q := s6Step253EarlyControlPlan
  have hq := s6Step253EarlyControl_plan_checked
  have fv1 : s6Step253CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step253CompleteOut.fv.payload[2]?.getD s6Step253CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step253CompleteOut.fv.payload[3]?.getD s6Step253CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step253CompleteOut.fv.payload[4]?.getD s6Step253CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step253EntryFBefore s6Step253EarlyControlArena s6Step253FrontBank 144 142 ⟨144,143,143,142⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step253CompleteLog s6Step253FrontPlan Q
    s6Step253Front_checked s6Step253Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step253Complete_owned s6Step253Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step253EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 s6Step253CompleteOut.fv.second (s6Step253CompleteOut.fv.payload[2]?.getD s6Step253CompleteOut.fv.sign) (s6Step253CompleteOut.fv.payload[3]?.getD s6Step253CompleteOut.fv.sign) (s6Step253CompleteOut.fv.payload[4]?.getD s6Step253CompleteOut.fv.sign) 805 51 s6Step253EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep253Arena : Arena := s6Step253EntryFBefore
def s6PrivateStep253Bank : WindowBank := s6Step253FrontBank
def s6PrivateStep253Spec : HmrSourceWalkStepLog := ⟨144,142,⟨144,143,143,142⟩,51,.early s6Step253CompleteLog⟩
def s6PrivateStep253Plan : HmrSourceStepPlan := .early s6Step253CompletePlan
theorem s6PrivateStep253_source : s6PrivateStep253Spec=s6ObservedLogs240[13] := rfl
theorem s6PrivateStep253_checked : compileHmrSourceStepLog s6PrivateStep253Arena s6PrivateStep253Bank
    s6PrivateStep253Spec.fgWidth s6PrivateStep253Spec.vWidth s6PrivateStep253Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 253 s6PrivateStep253Spec.need none s6PrivateStep253Spec.log=some s6PrivateStep253Plan := by
  change compileHmrSourceStepLog s6Step253EntryFBefore s6Step253FrontBank 144 142 ⟨144,143,143,142⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 253 51 none (.early s6Step253CompleteLog)=some (.early s6Step253CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 253<498)]
  rw [s6Step253Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
