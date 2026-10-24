import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep262
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

private def s6Step264CompleteMoves : List (Wire × Wire) := [(859,137)]

private def s6Step264EarlyControlLog : HmrEarlyControlLog := ⟨[859, 854, 903, 907, 927],[862],[833],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step264FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [907], [], [791]],[[927], [903], [854], [810]],[[], [], [], []]⟩,[809],[794],[862],[833],[830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[862, 833, 830, 805]⟩

private def s6Step264CompleteLog : HmrEarlyStepLog := ⟨s6Step264FrontLog,s6Step264CompleteMoves,s6Step264EarlyControlLog⟩

private def s6Step264ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step264ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step264ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],777⟩

private def s6Step264ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩

private def s6Step264FrontOut : WindowBank := ⟨s6Step264ExitFOut,s6Step264ExitGOut,s6Step264ExitFvOut,s6Step264ExitGvOut⟩

private def s6Step264CompleteOut : WindowBank := s6Step264FrontOut.repacked s6Step264CompleteMoves

private def s6Step264EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step264EarlyControlPositiveArena,[862],s6Step264EarlyControlEqualityArena,[833],⟨⟨809,false⟩,[⟨⟨862,false⟩,833⟩]⟩⟩

private def s6Step264EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,859⟩,⟨⟨772,false⟩,854⟩,⟨⟨771,false⟩,903⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,927⟩]⟩

private def s6Step264EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step264EarlyControlZeroArena,s6Step264EarlyControlZeroPlan,s6Step264EarlyControlClassPlan,s6Step264EarlyControlFlagArena,s6Step264EarlyControlFittedArena,s6Step264EarlyControlHistoryArena,s6Step264EarlyControlSigmaArena,s6Step264EarlyControlOutputArena,s6Step264EarlyControlLog⟩

private def s6Step264CounterWork : List Wire := [862, 833, 830, 805]

private theorem s6Step264Counter_bounded : s6Step264CounterWork.toFinset⊆arenaWires := by norm_num [s6Step264CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step264HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264CounterDuring : Arena := ⟨s6Step264HeadFvAfter.live∪s6Step264CounterWork.toFinset,Finset.union_subset s6Step264HeadFvAfter.bounded s6Step264Counter_bounded⟩

private def s6Step264EntryFFresh : List Wire := []

private def s6Step264EntryFvFresh : List Wire := []

private def s6Step264EntryGFresh : List Wire := [907]

private def s6Step264EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EntryGvFresh : List Wire := [791]

private def s6Step264ExitFExtra : List Wire := [903]

private def s6Step264ExitGExtra : List Wire := [137, 907, 927]

private def s6Step264ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264ExitGvExtra : List Wire := [854]

private def s6Step264Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step264Add0_bounded : s6Step264Add0Work.toFinset⊆arenaWires := by
  have h : s6Step264Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step264Add0During : Arena := ⟨s6Step264Add0Arena.live∪s6Step264Add0Work.toFinset,Finset.union_subset s6Step264Add0Arena.bounded s6Step264Add0_bounded⟩

private def s6Step264Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step264Add1_bounded : s6Step264Add1Work.toFinset⊆arenaWires := by
  have h : s6Step264Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step264Add1During : Arena := ⟨s6Step264Add1Arena.live∪s6Step264Add1Work.toFinset,Finset.union_subset s6Step264Add1Arena.bounded s6Step264Add1_bounded⟩

private def s6Step264F4FlagArena : Arena := ⟨s6Step264HeadFvAfter.live∪{862},Finset.union_subset s6Step264HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step264F4Plan : HmrHybridF4Plan := ⟨s6Step264F4FlagArena,[862],s6Step264Add0Arena,[833],s6Step264Add0During,s6Step264Add0Work,s6Step264Add1During,s6Step264Add1Work⟩

private def s6Step264HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩

private def s6Step264HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step264HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907, 927],777⟩

private def s6Step264HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩

private def s6Step264FrontHead : WindowBank := ⟨s6Step264HeadFOut,s6Step264HeadGOut,s6Step264HeadFvOut,s6Step264HeadGvOut⟩

private def s6Step264EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step264EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891],776⟩

private def s6Step264EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907],777⟩

private def s6Step264EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩

private def s6Step264FrontPair : WindowBank := ⟨s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut⟩

private def s6Step264FrontSigmaArena : Arena := ⟨s6Step264EntryGvAfter.live∪{809},Finset.union_subset s6Step264EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step264HeadFFresh : List Wire := [903]

private def s6Step264HeadFvFresh : List Wire := [810]

private def s6Step264HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264HeadGFresh : List Wire := [927]

private def s6Step264HeadGvFresh : List Wire := [854]

private def s6Step264FrontPlan : HmrSourceFront := ⟨s6Step264EntryGvAfter,s6Step264FrontPair,(growRow 795 s6Step264EntryFFresh ++ (growRow 777 s6Step264EntryGFresh ++ (growRow 776 s6Step264EntryFvFresh ++ (growRow 775 s6Step264EntryGvFresh ++ [])))),s6Step264FrontSigmaArena,[809],s6Step264HeadGBefore,[794],
  s6Step264HeadFvAfter,s6Step264FrontHead,(growRow 777 s6Step264HeadGFresh ++ (growRow 795 s6Step264HeadFFresh ++ (growRow 775 s6Step264HeadGvFresh ++ (growRow 776 s6Step264HeadFvFresh ++ [])))),s6Step264F4Plan,s6Step264CounterDuring,s6Step264CounterWork,s6Step264ExitGvAfter,s6Step264FrontOut,(shrinkRow 777 s6Step264ExitGExtra ++ (shrinkRow 795 s6Step264ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step264ExitGvExtra ++ []))))⟩

private def s6Step264CompletePlan : HmrEarlyStepPlan := ⟨s6Step264FrontPlan,s6Step264EarlyControlArena,s6Step264EarlyControlPlan,s6Step264CompleteMoves⟩

private theorem s6Step264Complete_apart : List.Disjoint (s6Step264CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [809, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] := by
  have nd : ((s6Step264CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[809, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step264Complete_owned : (s6Step264CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step264CompleteMoveArena : Arena := ⟨s6Step264ExitGvAfter.live∪{137},Finset.union_subset s6Step264ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step264Complete_repack : s6Step264ExitGvAfter.checkRepack s6Step264CompleteMoves=some s6Step264EarlyControlArena := by
  have owned : 859∈s6Step264ExitGvAfter.live := by norm_num [s6Step264ExitGvAfter,arenaWires]
  have reserve : s6Step264ExitGvAfter.reserve {137}=some s6Step264CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step264ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step264CompleteMoveArena.retireSet {859}=s6Step264EarlyControlArena := by
    unfold Arena.retireSet s6Step264EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step264CompleteMoveArena,s6Step264ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step264CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step264CompleteMoveArena.retireSet {859}).checkRepack []=some s6Step264EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step264EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s6Step264EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_branch : compileHmrBranchRetirement s6Step264EarlyControlSigmaArena 794=some s6Step264EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step264EarlyControl_branchOwned
  · ext q
    simp [s6Step264EarlyControlOutputArena,s6Step264EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step264EarlyControl_classEqualityBorrow : s6Step264EarlyControlPositiveArena.checkBorrow (([809, 862] : List Wire).length-1) s6Step264EarlyControlLog.classWork=some s6Step264EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step264EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step264EarlyControlEqualityArena,s6Step264EarlyControlPositiveArena,s6Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step264EarlyControl_classEqualityOwned : ([809, 862] : List Wire).toFinset⊆s6Step264EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_classEquality : compileHmrEqualityLog s6Step264EarlyControlPositiveArena [809, 862] 0 s6Step264EarlyControlLog.classWork=some (s6Step264EarlyControlEqualityArena,s6Step264EarlyControlLog.classWork,s6Step264EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step264EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step264EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step264EarlyControl_classOwned : ([769, 927, 809] : List Wire).toFinset⊆s6Step264EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_positiveBorrow : s6Step264EarlyControlZeroArena.checkBorrow (1) s6Step264EarlyControlLog.positiveWork=some s6Step264EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step264EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step264EarlyControlPositiveArena,s6Step264EarlyControlZeroArena,s6Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step264EarlyControl_class : compileHmrSourceClassLog s6Step264EarlyControlZeroArena false 769 s6Step264EarlyControlZeroPlan.top 0 809 s6Step264EarlyControlLog.positiveWork s6Step264EarlyControlLog.classWork=some s6Step264EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step264EarlyControlClassPlan s6Step264EarlyControlZeroArena false 769 s6Step264EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s6Step264EarlyControl_classOwned
  · exact s6Step264EarlyControl_positiveBorrow
  · exact s6Step264EarlyControl_classEquality

private theorem s6Step264EarlyControl_entryRecordOwned : ([794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_entrySigmaOwned : ([809, 254] : List Wire).toFinset⊆s6Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_fitBorrow : s6Step264EarlyControlFlagArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step264EarlyControlLog.recordFresh=some s6Step264EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step264EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step264EarlyControlFittedArena,s6Step264EarlyControlFlagArena,s6Step264EarlyControlLog,arenaWires]

private theorem s6Step264EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step264EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_fit : compileHmrRecordGrowLog s6Step264EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step264EarlyControlLog.recordFresh=some s6Step264EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step264EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step264EarlyControl_fitBorrow

private theorem s6Step264EarlyControl_flagsBorrow : s6Step264EarlyControlEqualityArena.checkBorrow (6) s6Step264EarlyControlLog.flagWork=some s6Step264EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step264EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step264EarlyControlFlagArena,s6Step264EarlyControlEqualityArena,s6Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step264EarlyControl_flagsOwned : ([833, 253, 252, 251] : List Wire).toFinset⊆s6Step264EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_flags : compileHmrFlagsLog s6Step264EarlyControlClassPlan.equalityArena s6Step264EarlyControlClassPlan.equality.top 253 252 251 s6Step264EarlyControlLog.flagWork=some s6Step264EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step264EarlyControl_flagsOwned⟩
  · exact s6Step264EarlyControl_flagsBorrow

private theorem s6Step264EarlyControl_historyBorrow : s6Step264EarlyControlArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step264EarlyControlLog.recordFresh=some s6Step264EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step264EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step264EarlyControlHistoryArena,s6Step264EarlyControlArena,s6Step264EarlyControlLog,arenaWires]

private theorem s6Step264EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_history : compileHmrRecordGrowLog s6Step264EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step264EarlyControlLog.recordFresh=some s6Step264EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step264EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step264EarlyControl_historyBorrow

private theorem s6Step264EarlyControl_sigmaOwned : ([254, 809] : List Wire).toFinset⊆s6Step264EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s6Step264EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_sigmaRelease : s6Step264EarlyControlHistoryArena.release {809} (fun _ => false)=some s6Step264EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step264EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step264EarlyControlSigmaArena,s6Step264EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step264EarlyControl_sigma : compileHmrSigmaDropLog s6Step264EarlyControlHistoryArena false 0 0 254 809 []=some s6Step264EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step264EarlyControl_sigmaOwned⟩
  · exact s6Step264EarlyControl_sigmaRelease

private theorem s6Step264EarlyControl_zeroBorrow : s6Step264EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step264EarlyControlLog.zeroWork=some s6Step264EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step264EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step264EarlyControlZeroArena,s6Step264EarlyControlArena,s6Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step264EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step264EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EarlyControl_zero : compileHmrEqualityLog s6Step264EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step264EarlyControlLog.zeroWork=some (s6Step264EarlyControlZeroArena,s6Step264EarlyControlLog.zeroWork,s6Step264EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step264EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step264EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step264EarlyControl_logged : s6Step264EarlyControlPlan.Logged s6Step264EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 809 254 253 252 251 794 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step264EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step264EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step264EarlyControl_zero
  · exact s6Step264EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step264EarlyControl_flags
  · exact s6Step264EarlyControl_fit
  · exact s6Step264EarlyControl_history
  · exact s6Step264EarlyControl_sigma
  · exact s6Step264EarlyControl_branch

private theorem s6Step264EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step264EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 809 254 253 252 251 794 52 s6Step264EarlyControlLog=some s6Step264EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step264EarlyControlPlan s6Step264EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 809 254 253 252 251 794 52 s6Step264EarlyControl_logged

private def s6Step264EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step264EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891],776⟩

private def s6Step264EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137],777⟩

private def s6Step264EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822],775⟩

private def s6Step264FrontBank : WindowBank := ⟨s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow⟩

private def s6Step264Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903, 795]

private def s6Step264Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907, 927, 777]

private def s6Step264Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 776]

private def s6Step264Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 775]

private theorem s6Step264Counter_apart : Disjoint s6Step264HeadFvAfter.live s6Step264CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264Counter_borrowed : s6Step264HeadFvAfter.checkBorrow 4 s6Step264CounterWork=some s6Step264CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step264HeadFvAfter s6Step264CounterDuring s6Step264CounterWork.toFinset s6Step264Counter_bounded s6Step264Counter_apart rfl

private theorem s6Step264Counter_owned : (809::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step264HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264Counter_checked : compileHmrCounterStepLog s6Step264HeadFvAfter true 809 [774, 773, 772, 771, 770, 769] s6Step264CounterWork=some s6Step264CounterDuring := by
  have owned : ∀q∈809::[774, 773, 772, 771, 770, 769],q∈s6Step264HeadFvAfter.live := fun q hq => s6Step264Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step264Counter_borrowed

private def s6Step264EntryFAfter : Arena := s6Step264EntryFBefore

private theorem s6Step264EntryBank_incomingDistinct : ([s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264EntryF_Incoming : rowsOwned s6Step264EntryFBefore [s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow] 0 s6Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264EntryBank_outgoingOwned : rowsOwned s6Step264EntryGvAfter [s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step264EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264EntryF_Outgoing : rowsOwned s6Step264EntryGvAfter [s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut] :=
  hmrRows_owned_drop s6Step264EntryGvAfter [s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut] 0 s6Step264EntryBank_outgoingOwned

private theorem s6Step264EntryF_distinct : (s6Step264EntryFRow.sign::s6Step264EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264EntryF_owned : (s6Step264EntryFRow.sign::s6Step264EntryFRow.payload).toFinset⊆s6Step264EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EntryF_reserved : s6Step264EntryFBefore.reserve s6Step264EntryFFresh.toFinset=some s6Step264EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264EntryFFresh,arenaWires]
  · norm_num [s6Step264EntryFBefore,s6Step264EntryFFresh,arenaWires]
  · simp only [s6Step264EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step264EntryF_checked : planRowResizeLog s6Step264EntryFBefore s6Step264EntryFRow 139 s6Step264EntryFFresh=
    some (s6Step264EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩,growRow 795 s6Step264EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step264EntryFBefore s6Step264EntryFAfter s6Step264EntryFRow 139 s6Step264EntryFFresh
    s6Step264EntryF_distinct s6Step264EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264EntryF_reserved
  have rowEq : WindowRow.mk (s6Step264EntryFRow.payload++s6Step264EntryFFresh) s6Step264EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step264EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264EntryFvAfter : Arena := s6Step264EntryGAfter

private def s6Step264EntryFvBefore : Arena := s6Step264EntryGAfter

private theorem s6Step264EntryFv_Incoming : rowsOwned s6Step264EntryFvBefore [s6Step264EntryFvRow,s6Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow] 2 s6Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264EntryFv_Outgoing : rowsOwned s6Step264EntryGvAfter [s6Step264EntryFvOut,s6Step264EntryGvOut] :=
  hmrRows_owned_drop s6Step264EntryGvAfter [s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut] 2 s6Step264EntryBank_outgoingOwned

private theorem s6Step264EntryFv_distinct : (s6Step264EntryFvRow.sign::s6Step264EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264EntryFv_owned : (s6Step264EntryFvRow.sign::s6Step264EntryFvRow.payload).toFinset⊆s6Step264EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EntryFv_reserved : s6Step264EntryFvBefore.reserve s6Step264EntryFvFresh.toFinset=some s6Step264EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264EntryFvFresh,arenaWires]
  · norm_num [s6Step264EntryFvBefore,s6Step264EntryGAfter,s6Step264EntryFvFresh,arenaWires]
  · simp only [s6Step264EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step264EntryFv_checked : planRowResizeLog s6Step264EntryFvBefore s6Step264EntryFvRow 147 s6Step264EntryFvFresh=
    some (s6Step264EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891],776⟩,growRow 776 s6Step264EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step264EntryFvBefore s6Step264EntryFvAfter s6Step264EntryFvRow 147 s6Step264EntryFvFresh
    s6Step264EntryFv_distinct s6Step264EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step264EntryFvRow.payload++s6Step264EntryFvFresh) s6Step264EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step264EntryGBefore : Arena := s6Step264EntryFBefore

private theorem s6Step264EntryG_Incoming : rowsOwned s6Step264EntryGBefore [s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow] 1 s6Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264EntryG_Outgoing : rowsOwned s6Step264EntryGvAfter [s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut] :=
  hmrRows_owned_drop s6Step264EntryGvAfter [s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut] 1 s6Step264EntryBank_outgoingOwned

private theorem s6Step264EntryG_distinct : (s6Step264EntryGRow.sign::s6Step264EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264EntryG_owned : (s6Step264EntryGRow.sign::s6Step264EntryGRow.payload).toFinset⊆s6Step264EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EntryG_reserved : s6Step264EntryGBefore.reserve s6Step264EntryGFresh.toFinset=some s6Step264EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264EntryGFresh,arenaWires]
  · norm_num [s6Step264EntryGBefore,s6Step264EntryFBefore,s6Step264EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step264EntryGAfter,s6Step264EntryGBefore,s6Step264EntryFBefore,s6Step264EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264EntryG_checked : planRowResizeLog s6Step264EntryGBefore s6Step264EntryGRow 139 s6Step264EntryGFresh=
    some (s6Step264EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907],777⟩,growRow 777 s6Step264EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step264EntryGBefore s6Step264EntryGAfter s6Step264EntryGRow 139 s6Step264EntryGFresh
    s6Step264EntryG_distinct s6Step264EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264EntryG_reserved
  have rowEq : WindowRow.mk (s6Step264EntryGRow.payload++s6Step264EntryGFresh) s6Step264EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step264EntryGvBefore : Arena := s6Step264EntryGAfter

private theorem s6Step264EntryGv_Incoming : rowsOwned s6Step264EntryGvBefore [s6Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow] 3 s6Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264EntryGv_Outgoing : rowsOwned s6Step264EntryGvAfter [s6Step264EntryGvOut] :=
  hmrRows_owned_drop s6Step264EntryGvAfter [s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut] 3 s6Step264EntryBank_outgoingOwned

private theorem s6Step264EntryGv_distinct : (s6Step264EntryGvRow.sign::s6Step264EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264EntryGv_owned : (s6Step264EntryGvRow.sign::s6Step264EntryGvRow.payload).toFinset⊆s6Step264EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264EntryGv_reserved : s6Step264EntryGvBefore.reserve s6Step264EntryGvFresh.toFinset=some s6Step264EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264EntryGvFresh,arenaWires]
  · norm_num [s6Step264EntryGvBefore,s6Step264EntryGAfter,s6Step264EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step264EntryGvAfter,s6Step264EntryGvBefore,s6Step264EntryGAfter,s6Step264EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264EntryGv_checked : planRowResizeLog s6Step264EntryGvBefore s6Step264EntryGvRow 147 s6Step264EntryGvFresh=
    some (s6Step264EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩,growRow 775 s6Step264EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step264EntryGvBefore s6Step264EntryGvAfter s6Step264EntryGvRow 147 s6Step264EntryGvFresh
    s6Step264EntryGv_distinct s6Step264EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step264EntryGvRow.payload++s6Step264EntryGvFresh) s6Step264EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step264EntryBank_rows : planWindowRowsLog s6Step264EntryFBefore [(s6Step264EntryFRow,139),(s6Step264EntryGRow,139),(s6Step264EntryFvRow,147),(s6Step264EntryGvRow,147)] [s6Step264EntryFFresh,s6Step264EntryGFresh,s6Step264EntryFvFresh,s6Step264EntryGvFresh]=
    some (s6Step264EntryGvAfter,[s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut],(growRow 795 s6Step264EntryFFresh ++ (growRow 777 s6Step264EntryGFresh ++ (growRow 776 s6Step264EntryFvFresh ++ (growRow 775 s6Step264EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step264EntryGvAfter [] []=some (s6Step264EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step264EntryGvBefore s6Step264EntryGvAfter s6Step264EntryGvAfter
    s6Step264EntryGvRow s6Step264EntryGvOut 147 s6Step264EntryGvFresh [] [] []
    (growRow 775 s6Step264EntryGvFresh) ([]) s6Step264EntryGv_Incoming s6Step264EntryGv_checked h4 s6Step264EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step264EntryFvBefore s6Step264EntryFvAfter s6Step264EntryGvAfter
    s6Step264EntryFvRow s6Step264EntryFvOut 147 s6Step264EntryFvFresh [(s6Step264EntryGvRow,147)] [s6Step264EntryGvFresh] [s6Step264EntryGvOut]
    (growRow 776 s6Step264EntryFvFresh) ((growRow 775 s6Step264EntryGvFresh ++ [])) s6Step264EntryFv_Incoming s6Step264EntryFv_checked h3 s6Step264EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step264EntryGBefore s6Step264EntryGAfter s6Step264EntryGvAfter
    s6Step264EntryGRow s6Step264EntryGOut 139 s6Step264EntryGFresh [(s6Step264EntryFvRow,147),(s6Step264EntryGvRow,147)] [s6Step264EntryFvFresh,s6Step264EntryGvFresh] [s6Step264EntryFvOut,s6Step264EntryGvOut]
    (growRow 777 s6Step264EntryGFresh) ((growRow 776 s6Step264EntryFvFresh ++ (growRow 775 s6Step264EntryGvFresh ++ []))) s6Step264EntryG_Incoming s6Step264EntryG_checked h2 s6Step264EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step264EntryFBefore s6Step264EntryFAfter s6Step264EntryGvAfter
    s6Step264EntryFRow s6Step264EntryFOut 139 s6Step264EntryFFresh [(s6Step264EntryGRow,139),(s6Step264EntryFvRow,147),(s6Step264EntryGvRow,147)] [s6Step264EntryGFresh,s6Step264EntryFvFresh,s6Step264EntryGvFresh] [s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut]
    (growRow 795 s6Step264EntryFFresh) ((growRow 777 s6Step264EntryGFresh ++ (growRow 776 s6Step264EntryFvFresh ++ (growRow 775 s6Step264EntryGvFresh ++ [])))) s6Step264EntryF_Incoming s6Step264EntryF_checked h1 s6Step264EntryF_Outgoing
  exact h0

private theorem s6Step264EntryBank_checked : compileHmrBankResizeLog .entry s6Step264EntryFBefore ⟨s6Step264EntryFRow,s6Step264EntryGRow,s6Step264EntryFvRow,s6Step264EntryGvRow⟩ ⟨139,139,147,147⟩ [s6Step264EntryFFresh,s6Step264EntryGFresh,s6Step264EntryFvFresh,s6Step264EntryGvFresh]=
    some (s6Step264EntryGvAfter,⟨s6Step264EntryFOut,s6Step264EntryGOut,s6Step264EntryFvOut,s6Step264EntryGvOut⟩,(growRow 795 s6Step264EntryFFresh ++ (growRow 777 s6Step264EntryGFresh ++ (growRow 776 s6Step264EntryFvFresh ++ (growRow 775 s6Step264EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step264EntryBank_rows]
  rfl

private def s6Step264ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264ExitFBefore : Arena := s6Step264ExitGAfter

private def s6Step264ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩

private def s6Step264ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step264ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907, 927],777⟩

private def s6Step264ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩

private theorem s6Step264ExitBank_incomingDistinct : ([s6Step264ExitGRow,s6Step264ExitFRow,s6Step264ExitFvRow,s6Step264ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264ExitF_Incoming : rowsOwned s6Step264ExitFBefore [s6Step264ExitFRow,s6Step264ExitFvRow,s6Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264ExitGRow,s6Step264ExitFRow,s6Step264ExitFvRow,s6Step264ExitGvRow] 1 s6Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264ExitFBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264ExitBank_outgoingOwned : rowsOwned s6Step264ExitGvAfter [s6Step264ExitGOut,s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step264ExitGvAfter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264ExitF_Outgoing : rowsOwned s6Step264ExitGvAfter [s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut] :=
  hmrRows_owned_drop s6Step264ExitGvAfter [s6Step264ExitGOut,s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut] 1 s6Step264ExitBank_outgoingOwned

private theorem s6Step264ExitF_distinct : (s6Step264ExitFRow.sign::s6Step264ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264ExitF_owned : (s6Step264ExitFRow.sign::s6Step264ExitFRow.payload).toFinset⊆s6Step264ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264ExitFBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264ExitF_retired : s6Step264ExitFBefore.retireSet s6Step264ExitFExtra.toFinset=s6Step264ExitFAfter := by
  unfold Arena.retireSet s6Step264ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step264ExitFBefore,s6Step264ExitGAfter,s6Step264ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step264ExitF_checked : planRowResizeLog s6Step264ExitFBefore s6Step264ExitFRow 139 []=
    some (s6Step264ExitFAfter,s6Step264ExitFOut,shrinkRow 795 s6Step264ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step264ExitFBefore s6Step264ExitFRow 139 s6Step264ExitF_distinct s6Step264ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step264ExitFRow.payload.take 139) s6Step264ExitFRow.sign=s6Step264ExitFOut := by decide +kernel
  have hi : s6Step264ExitFRow.payload.drop 139=s6Step264ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step264ExitF_retired] at result
  exact result

private def s6Step264ExitFvAfter : Arena := s6Step264ExitFAfter

private def s6Step264ExitFvBefore : Arena := s6Step264ExitFAfter

private theorem s6Step264ExitFv_Incoming : rowsOwned s6Step264ExitFvBefore [s6Step264ExitFvRow,s6Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264ExitGRow,s6Step264ExitFRow,s6Step264ExitFvRow,s6Step264ExitGvRow] 2 s6Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264ExitFvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264ExitFv_Outgoing : rowsOwned s6Step264ExitGvAfter [s6Step264ExitFvOut,s6Step264ExitGvOut] :=
  hmrRows_owned_drop s6Step264ExitGvAfter [s6Step264ExitGOut,s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut] 2 s6Step264ExitBank_outgoingOwned

private theorem s6Step264ExitFv_distinct : (s6Step264ExitFvRow.sign::s6Step264ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264ExitFv_owned : (s6Step264ExitFvRow.sign::s6Step264ExitFvRow.payload).toFinset⊆s6Step264ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264ExitFvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264ExitFv_reserved : s6Step264ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step264ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step264ExitFv_checked : planRowResizeLog s6Step264ExitFvBefore s6Step264ExitFvRow 148 []=
    some (s6Step264ExitFvAfter,s6Step264ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step264ExitFvBefore s6Step264ExitFvAfter s6Step264ExitFvRow 148 []
    s6Step264ExitFv_distinct s6Step264ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step264ExitFvRow.payload++[]) s6Step264ExitFvRow.sign=s6Step264ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step264ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step264ExitG_Incoming : rowsOwned s6Step264ExitGBefore [s6Step264ExitGRow,s6Step264ExitFRow,s6Step264ExitFvRow,s6Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264ExitGRow,s6Step264ExitFRow,s6Step264ExitFvRow,s6Step264ExitGvRow] 0 s6Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264ExitG_Outgoing : rowsOwned s6Step264ExitGvAfter [s6Step264ExitGOut,s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut] :=
  hmrRows_owned_drop s6Step264ExitGvAfter [s6Step264ExitGOut,s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut] 0 s6Step264ExitBank_outgoingOwned

private theorem s6Step264ExitG_distinct : (s6Step264ExitGRow.sign::s6Step264ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264ExitG_owned : (s6Step264ExitGRow.sign::s6Step264ExitGRow.payload).toFinset⊆s6Step264ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264ExitG_retired : s6Step264ExitGBefore.retireSet s6Step264ExitGExtra.toFinset=s6Step264ExitGAfter := by
  unfold Arena.retireSet s6Step264ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step264ExitGBefore,s6Step264ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step264ExitG_checked : planRowResizeLog s6Step264ExitGBefore s6Step264ExitGRow 137 []=
    some (s6Step264ExitGAfter,s6Step264ExitGOut,shrinkRow 777 s6Step264ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step264ExitGBefore s6Step264ExitGRow 137 s6Step264ExitG_distinct s6Step264ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step264ExitGRow.payload.take 137) s6Step264ExitGRow.sign=s6Step264ExitGOut := by decide +kernel
  have hi : s6Step264ExitGRow.payload.drop 137=s6Step264ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step264ExitG_retired] at result
  exact result

private def s6Step264ExitGvBefore : Arena := s6Step264ExitFAfter

private theorem s6Step264ExitGv_Incoming : rowsOwned s6Step264ExitGvBefore [s6Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264ExitGRow,s6Step264ExitFRow,s6Step264ExitFvRow,s6Step264ExitGvRow] 3 s6Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264ExitGvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264ExitGv_Outgoing : rowsOwned s6Step264ExitGvAfter [s6Step264ExitGvOut] :=
  hmrRows_owned_drop s6Step264ExitGvAfter [s6Step264ExitGOut,s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut] 3 s6Step264ExitBank_outgoingOwned

private theorem s6Step264ExitGv_distinct : (s6Step264ExitGvRow.sign::s6Step264ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264ExitGv_owned : (s6Step264ExitGvRow.sign::s6Step264ExitGvRow.payload).toFinset⊆s6Step264ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264ExitGvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264ExitGv_retired : s6Step264ExitGvBefore.retireSet s6Step264ExitGvExtra.toFinset=s6Step264ExitGvAfter := by
  unfold Arena.retireSet s6Step264ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step264ExitGvBefore,s6Step264ExitFAfter,s6Step264ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step264ExitGv_checked : planRowResizeLog s6Step264ExitGvBefore s6Step264ExitGvRow 147 []=
    some (s6Step264ExitGvAfter,s6Step264ExitGvOut,shrinkRow 775 s6Step264ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step264ExitGvBefore s6Step264ExitGvRow 147 s6Step264ExitGv_distinct s6Step264ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step264ExitGvRow.payload.take 147) s6Step264ExitGvRow.sign=s6Step264ExitGvOut := by decide +kernel
  have hi : s6Step264ExitGvRow.payload.drop 147=s6Step264ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step264ExitGv_retired] at result
  exact result

private theorem s6Step264ExitBank_rows : planWindowRowsLog s6Step264ExitGBefore [(s6Step264ExitGRow,137),(s6Step264ExitFRow,139),(s6Step264ExitFvRow,148),(s6Step264ExitGvRow,147)] [[],[],[],[]]=
    some (s6Step264ExitGvAfter,[s6Step264ExitGOut,s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut],(shrinkRow 777 s6Step264ExitGExtra ++ (shrinkRow 795 s6Step264ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step264ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step264ExitGvAfter [] []=some (s6Step264ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step264ExitGvBefore s6Step264ExitGvAfter s6Step264ExitGvAfter
    s6Step264ExitGvRow s6Step264ExitGvOut 147 [] [] [] []
    (shrinkRow 775 s6Step264ExitGvExtra) ([]) s6Step264ExitGv_Incoming s6Step264ExitGv_checked h4 s6Step264ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step264ExitFvBefore s6Step264ExitFvAfter s6Step264ExitGvAfter
    s6Step264ExitFvRow s6Step264ExitFvOut 148 [] [(s6Step264ExitGvRow,147)] [[]] [s6Step264ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step264ExitGvExtra ++ [])) s6Step264ExitFv_Incoming s6Step264ExitFv_checked h3 s6Step264ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step264ExitFBefore s6Step264ExitFAfter s6Step264ExitGvAfter
    s6Step264ExitFRow s6Step264ExitFOut 139 [] [(s6Step264ExitFvRow,148),(s6Step264ExitGvRow,147)] [[],[]] [s6Step264ExitFvOut,s6Step264ExitGvOut]
    (shrinkRow 795 s6Step264ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step264ExitGvExtra ++ []))) s6Step264ExitF_Incoming s6Step264ExitF_checked h2 s6Step264ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step264ExitGBefore s6Step264ExitGAfter s6Step264ExitGvAfter
    s6Step264ExitGRow s6Step264ExitGOut 137 [] [(s6Step264ExitFRow,139),(s6Step264ExitFvRow,148),(s6Step264ExitGvRow,147)] [[],[],[]] [s6Step264ExitFOut,s6Step264ExitFvOut,s6Step264ExitGvOut]
    (shrinkRow 777 s6Step264ExitGExtra) ((shrinkRow 795 s6Step264ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step264ExitGvExtra ++ [])))) s6Step264ExitG_Incoming s6Step264ExitG_checked h1 s6Step264ExitG_Outgoing
  exact h0

private theorem s6Step264ExitBank_checked : compileHmrBankResizeLog .exit s6Step264ExitGBefore ⟨s6Step264ExitFRow,s6Step264ExitGRow,s6Step264ExitFvRow,s6Step264ExitGvRow⟩ ⟨139,137,148,147⟩ [[],[],[],[]]=
    some (s6Step264ExitGvAfter,⟨s6Step264ExitFOut,s6Step264ExitGOut,s6Step264ExitFvOut,s6Step264ExitGvOut⟩,(shrinkRow 777 s6Step264ExitGExtra ++ (shrinkRow 795 s6Step264ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step264ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step264ExitBank_rows]
  rfl

private theorem s6Step264Add0_apart : Disjoint s6Step264Add0Arena.live s6Step264Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step264Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264Add0_card : s6Step264Add0Arena.live.card=898 := by
  decide +kernel

private theorem s6Step264Add0_borrowed : s6Step264Add0Arena.checkBorrow (hmrHybridCount s6Step264Add0Arena s6Step264Add0B.length) s6Step264Add0Work=some s6Step264Add0During := by
  have len : s6Step264Add0Work.length=hmrHybridCount s6Step264Add0Arena s6Step264Add0B.length := by
    rw [hmrHybridCount,s6Step264Add0_card]
    decide +kernel
  have nd : s6Step264Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step264Add0Arena s6Step264Add0During s6Step264Add0Work.toFinset s6Step264Add0_bounded s6Step264Add0_apart rfl

private theorem s6Step264Add0_distinct : (862::794::833::(s6Step264Add0A++s6Step264Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264Add0_owned : (862::794::833::(s6Step264Add0A++s6Step264Add0B)).toFinset⊆s6Step264Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step264Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264Add0_checked : compileHmrHybridCinLog s6Step264Add0Arena 794 862 833 s6Step264Add0A s6Step264Add0B s6Step264Add0Work=some s6Step264Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step264Add0Arena s6Step264Add0During 794 862 833 s6Step264Add0A s6Step264Add0B s6Step264Add0Work
    (by decide +kernel) (by decide +kernel) s6Step264Add0_distinct
    (fun q hq => s6Step264Add0_owned (List.mem_toFinset.mpr hq)) s6Step264Add0_borrowed

private theorem s6Step264Add1_apart : Disjoint s6Step264Add1Arena.live s6Step264Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step264Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264Add1_card : s6Step264Add1Arena.live.card=898 := by
  decide +kernel

private theorem s6Step264Add1_borrowed : s6Step264Add1Arena.checkBorrow (hmrHybridCount s6Step264Add1Arena s6Step264Add1B.length) s6Step264Add1Work=some s6Step264Add1During := by
  have len : s6Step264Add1Work.length=hmrHybridCount s6Step264Add1Arena s6Step264Add1B.length := by
    rw [hmrHybridCount,s6Step264Add1_card]
    decide +kernel
  have nd : s6Step264Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step264Add1Arena s6Step264Add1During s6Step264Add1Work.toFinset s6Step264Add1_bounded s6Step264Add1_apart rfl

private theorem s6Step264Add1_distinct : (862::794::833::(s6Step264Add1A++s6Step264Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264Add1_owned : (862::794::833::(s6Step264Add1A++s6Step264Add1B)).toFinset⊆s6Step264Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step264Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264Add1_checked : compileHmrHybridCinLog s6Step264Add1Arena 794 862 833 s6Step264Add1A s6Step264Add1B s6Step264Add1Work=some s6Step264Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step264Add1Arena s6Step264Add1During 794 862 833 s6Step264Add1A s6Step264Add1B s6Step264Add1Work
    (by decide +kernel) (by decide +kernel) s6Step264Add1_distinct
    (fun q hq => s6Step264Add1_owned (List.mem_toFinset.mpr hq)) s6Step264Add1_borrowed

private theorem s6Step264F4_apart : Disjoint (s6Step264Add0A++s6Step264Add0B).toFinset (s6Step264Add1A++s6Step264Add1B).toFinset := by
  have nd : ((s6Step264Add0A++s6Step264Add0B)++(s6Step264Add1A++s6Step264Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step264F4_carry : s6Step264F4FlagArena.checkBorrow 1 [833]=some s6Step264Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step264F4FlagArena,s6Step264HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step264F4FlagArena,s6Step264HeadFvAfter,s6Step264Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264F4_distinct : (809::794::862::833::((s6Step264Add0A++s6Step264Add1A)++(s6Step264Add0B++s6Step264Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264F4_flag : s6Step264HeadFvAfter.checkBorrow 1 [862]=some s6Step264F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step264HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step264F4_owned : (809::794::((s6Step264Add0A++s6Step264Add1A)++(s6Step264Add0B++s6Step264Add1B))).toFinset⊆s6Step264HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264F4_checked : compileHmrHybridF4Log s6Step264HeadFvAfter 809 794 s6Step264Add0A s6Step264Add0B s6Step264Add1A s6Step264Add1B [862] [833] s6Step264Add0Work s6Step264Add1Work=some s6Step264F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step264HeadFvAfter s6Step264F4FlagArena s6Step264Add0Arena s6Step264Add0During s6Step264Add1During 809 794
    s6Step264Add0A s6Step264Add0B s6Step264Add1A s6Step264Add1B [862] [833] s6Step264Add0Work s6Step264Add1Work
    (fun q hq => s6Step264F4_owned (List.mem_toFinset.mpr hq)) s6Step264F4_flag s6Step264F4_carry
    s6Step264F4_distinct s6Step264F4_apart s6Step264Add0_checked s6Step264Add1_checked

private theorem s6Step264Front_branch : s6Step264FrontSigmaArena.checkBorrow 1 [794]=some s6Step264HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step264FrontSigmaArena,s6Step264EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step264FrontSigmaArena,s6Step264EntryGvAfter,s6Step264HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264Front_entry : HmrFrontEntryValid s6Step264EntryFBefore s6Step264FrontBank 139 147 ⟨139,137,148,147⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step264FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step264EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step264EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step264FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step264Front_sigma : s6Step264EntryGvAfter.checkBorrow 1 [809]=some s6Step264FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step264EntryGvAfter,arenaWires]
  · rfl

private def s6Step264HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264HeadFBefore : Arena := s6Step264HeadGAfter

private def s6Step264HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step264HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891],776⟩

private def s6Step264HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907],777⟩

private def s6Step264HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩

private theorem s6Step264HeadBank_incomingDistinct : ([s6Step264HeadGRow,s6Step264HeadFRow,s6Step264HeadGvRow,s6Step264HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264HeadF_Incoming : rowsOwned s6Step264HeadFBefore [s6Step264HeadFRow,s6Step264HeadGvRow,s6Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264HeadGRow,s6Step264HeadFRow,s6Step264HeadGvRow,s6Step264HeadFvRow] 1 s6Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264HeadBank_outgoingOwned : rowsOwned s6Step264HeadFvAfter [s6Step264HeadGOut,s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264HeadF_Outgoing : rowsOwned s6Step264HeadFvAfter [s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut] :=
  hmrRows_owned_drop s6Step264HeadFvAfter [s6Step264HeadGOut,s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut] 1 s6Step264HeadBank_outgoingOwned

private theorem s6Step264HeadF_distinct : (s6Step264HeadFRow.sign::s6Step264HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264HeadF_owned : (s6Step264HeadFRow.sign::s6Step264HeadFRow.payload).toFinset⊆s6Step264HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264HeadF_reserved : s6Step264HeadFBefore.reserve s6Step264HeadFFresh.toFinset=some s6Step264HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264HeadFFresh,arenaWires]
  · norm_num [s6Step264HeadFBefore,s6Step264HeadGAfter,s6Step264HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step264HeadFAfter,s6Step264HeadFBefore,s6Step264HeadGAfter,s6Step264HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264HeadF_checked : planRowResizeLog s6Step264HeadFBefore s6Step264HeadFRow 140 s6Step264HeadFFresh=
    some (s6Step264HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩,growRow 795 s6Step264HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step264HeadFBefore s6Step264HeadFAfter s6Step264HeadFRow 140 s6Step264HeadFFresh
    s6Step264HeadF_distinct s6Step264HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264HeadF_reserved
  have rowEq : WindowRow.mk (s6Step264HeadFRow.payload++s6Step264HeadFFresh) s6Step264HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step264HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step264HeadFvBefore : Arena := s6Step264HeadGvAfter

private theorem s6Step264HeadFv_Incoming : rowsOwned s6Step264HeadFvBefore [s6Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264HeadGRow,s6Step264HeadFRow,s6Step264HeadGvRow,s6Step264HeadFvRow] 3 s6Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264HeadFv_Outgoing : rowsOwned s6Step264HeadFvAfter [s6Step264HeadFvOut] :=
  hmrRows_owned_drop s6Step264HeadFvAfter [s6Step264HeadGOut,s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut] 3 s6Step264HeadBank_outgoingOwned

private theorem s6Step264HeadFv_distinct : (s6Step264HeadFvRow.sign::s6Step264HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264HeadFv_owned : (s6Step264HeadFvRow.sign::s6Step264HeadFvRow.payload).toFinset⊆s6Step264HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264HeadFv_reserved : s6Step264HeadFvBefore.reserve s6Step264HeadFvFresh.toFinset=some s6Step264HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264HeadFvFresh,arenaWires]
  · norm_num [s6Step264HeadFvBefore,s6Step264HeadGvAfter,s6Step264HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step264HeadFvAfter,s6Step264HeadFvBefore,s6Step264HeadGvAfter,s6Step264HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264HeadFv_checked : planRowResizeLog s6Step264HeadFvBefore s6Step264HeadFvRow 148 s6Step264HeadFvFresh=
    some (s6Step264HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩,growRow 776 s6Step264HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step264HeadFvBefore s6Step264HeadFvAfter s6Step264HeadFvRow 148 s6Step264HeadFvFresh
    s6Step264HeadFv_distinct s6Step264HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step264HeadFvRow.payload++s6Step264HeadFvFresh) s6Step264HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step264HeadG_Incoming : rowsOwned s6Step264HeadGBefore [s6Step264HeadGRow,s6Step264HeadFRow,s6Step264HeadGvRow,s6Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264HeadGRow,s6Step264HeadFRow,s6Step264HeadGvRow,s6Step264HeadFvRow] 0 s6Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264HeadG_Outgoing : rowsOwned s6Step264HeadFvAfter [s6Step264HeadGOut,s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut] :=
  hmrRows_owned_drop s6Step264HeadFvAfter [s6Step264HeadGOut,s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut] 0 s6Step264HeadBank_outgoingOwned

private theorem s6Step264HeadG_distinct : (s6Step264HeadGRow.sign::s6Step264HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264HeadG_owned : (s6Step264HeadGRow.sign::s6Step264HeadGRow.payload).toFinset⊆s6Step264HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264HeadG_reserved : s6Step264HeadGBefore.reserve s6Step264HeadGFresh.toFinset=some s6Step264HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264HeadGFresh,arenaWires]
  · norm_num [s6Step264HeadGBefore,s6Step264HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step264HeadGAfter,s6Step264HeadGBefore,s6Step264HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264HeadG_checked : planRowResizeLog s6Step264HeadGBefore s6Step264HeadGRow 140 s6Step264HeadGFresh=
    some (s6Step264HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907, 927],777⟩,growRow 777 s6Step264HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step264HeadGBefore s6Step264HeadGAfter s6Step264HeadGRow 140 s6Step264HeadGFresh
    s6Step264HeadG_distinct s6Step264HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264HeadG_reserved
  have rowEq : WindowRow.mk (s6Step264HeadGRow.payload++s6Step264HeadGFresh) s6Step264HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 907, 927],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step264HeadGvBefore : Arena := s6Step264HeadFAfter

private theorem s6Step264HeadGv_Incoming : rowsOwned s6Step264HeadGvBefore [s6Step264HeadGvRow,s6Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step264HeadGRow,s6Step264HeadFRow,s6Step264HeadGvRow,s6Step264HeadFvRow] 2 s6Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step264HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step264HeadGv_Outgoing : rowsOwned s6Step264HeadFvAfter [s6Step264HeadGvOut,s6Step264HeadFvOut] :=
  hmrRows_owned_drop s6Step264HeadFvAfter [s6Step264HeadGOut,s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut] 2 s6Step264HeadBank_outgoingOwned

private theorem s6Step264HeadGv_distinct : (s6Step264HeadGvRow.sign::s6Step264HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step264HeadGv_owned : (s6Step264HeadGvRow.sign::s6Step264HeadGvRow.payload).toFinset⊆s6Step264HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step264HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step264HeadGv_reserved : s6Step264HeadGvBefore.reserve s6Step264HeadGvFresh.toFinset=some s6Step264HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step264HeadGvFresh,arenaWires]
  · norm_num [s6Step264HeadGvBefore,s6Step264HeadFAfter,s6Step264HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step264HeadGvAfter,s6Step264HeadGvBefore,s6Step264HeadFAfter,s6Step264HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step264HeadGv_checked : planRowResizeLog s6Step264HeadGvBefore s6Step264HeadGvRow 148 s6Step264HeadGvFresh=
    some (s6Step264HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩,growRow 775 s6Step264HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step264HeadGvBefore s6Step264HeadGvAfter s6Step264HeadGvRow 148 s6Step264HeadGvFresh
    s6Step264HeadGv_distinct s6Step264HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step264HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step264HeadGvRow.payload++s6Step264HeadGvFresh) s6Step264HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step264HeadBank_rows : planWindowRowsLog s6Step264HeadGBefore [(s6Step264HeadGRow,140),(s6Step264HeadFRow,140),(s6Step264HeadGvRow,148),(s6Step264HeadFvRow,148)] [s6Step264HeadGFresh,s6Step264HeadFFresh,s6Step264HeadGvFresh,s6Step264HeadFvFresh]=
    some (s6Step264HeadFvAfter,[s6Step264HeadGOut,s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut],(growRow 777 s6Step264HeadGFresh ++ (growRow 795 s6Step264HeadFFresh ++ (growRow 775 s6Step264HeadGvFresh ++ (growRow 776 s6Step264HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step264HeadFvAfter [] []=some (s6Step264HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step264HeadFvBefore s6Step264HeadFvAfter s6Step264HeadFvAfter
    s6Step264HeadFvRow s6Step264HeadFvOut 148 s6Step264HeadFvFresh [] [] []
    (growRow 776 s6Step264HeadFvFresh) ([]) s6Step264HeadFv_Incoming s6Step264HeadFv_checked h4 s6Step264HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step264HeadGvBefore s6Step264HeadGvAfter s6Step264HeadFvAfter
    s6Step264HeadGvRow s6Step264HeadGvOut 148 s6Step264HeadGvFresh [(s6Step264HeadFvRow,148)] [s6Step264HeadFvFresh] [s6Step264HeadFvOut]
    (growRow 775 s6Step264HeadGvFresh) ((growRow 776 s6Step264HeadFvFresh ++ [])) s6Step264HeadGv_Incoming s6Step264HeadGv_checked h3 s6Step264HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step264HeadFBefore s6Step264HeadFAfter s6Step264HeadFvAfter
    s6Step264HeadFRow s6Step264HeadFOut 140 s6Step264HeadFFresh [(s6Step264HeadGvRow,148),(s6Step264HeadFvRow,148)] [s6Step264HeadGvFresh,s6Step264HeadFvFresh] [s6Step264HeadGvOut,s6Step264HeadFvOut]
    (growRow 795 s6Step264HeadFFresh) ((growRow 775 s6Step264HeadGvFresh ++ (growRow 776 s6Step264HeadFvFresh ++ []))) s6Step264HeadF_Incoming s6Step264HeadF_checked h2 s6Step264HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step264HeadGBefore s6Step264HeadGAfter s6Step264HeadFvAfter
    s6Step264HeadGRow s6Step264HeadGOut 140 s6Step264HeadGFresh [(s6Step264HeadFRow,140),(s6Step264HeadGvRow,148),(s6Step264HeadFvRow,148)] [s6Step264HeadFFresh,s6Step264HeadGvFresh,s6Step264HeadFvFresh] [s6Step264HeadFOut,s6Step264HeadGvOut,s6Step264HeadFvOut]
    (growRow 777 s6Step264HeadGFresh) ((growRow 795 s6Step264HeadFFresh ++ (growRow 775 s6Step264HeadGvFresh ++ (growRow 776 s6Step264HeadFvFresh ++ [])))) s6Step264HeadG_Incoming s6Step264HeadG_checked h1 s6Step264HeadG_Outgoing
  exact h0

private theorem s6Step264HeadBank_checked : compileHmrBankResizeLog .headroom s6Step264HeadGBefore ⟨s6Step264HeadFRow,s6Step264HeadGRow,s6Step264HeadFvRow,s6Step264HeadGvRow⟩ ⟨140,140,148,148⟩ [s6Step264HeadGFresh,s6Step264HeadFFresh,s6Step264HeadGvFresh,s6Step264HeadFvFresh]=
    some (s6Step264HeadFvAfter,⟨s6Step264HeadFOut,s6Step264HeadGOut,s6Step264HeadFvOut,s6Step264HeadGvOut⟩,(growRow 777 s6Step264HeadGFresh ++ (growRow 795 s6Step264HeadFFresh ++ (growRow 775 s6Step264HeadGvFresh ++ (growRow 776 s6Step264HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step264HeadBank_rows]
  rfl

private theorem s6Step264Front_checked : compileHmrSourceFrontLog s6Step264EntryFBefore s6Step264FrontBank 139 147 ⟨139,137,148,147⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step264FrontLog=some s6Step264FrontPlan := by
  have pairEq : s6Step264FrontPair=⟨s6Step264HeadFRow,s6Step264HeadGRow,s6Step264HeadFvRow,s6Step264HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step264FrontHead=⟨s6Step264ExitFRow,s6Step264ExitGRow,s6Step264ExitFvRow,s6Step264ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step264Add0A=s6Step264FrontHead.f.wires := by decide +kernel
  have gEq : s6Step264Add0B=s6Step264FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step264Add1A=s6Step264FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step264Add1B=s6Step264FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step264EntryFBefore s6Step264FrontBank 139 147 ⟨139,137,148,147⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step264FrontLog s6Step264FrontPlan
  · exact s6Step264Front_entry
  · exact s6Step264EntryBank_checked
  · exact s6Step264Front_sigma
  · rfl
  · exact s6Step264Front_branch
  · rfl
  · simpa only [s6Step264FrontPlan,pairEq] using s6Step264HeadBank_checked
  · simpa only [s6Step264FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step264F4_checked
  · exact s6Step264Counter_checked
  · rfl
  · simpa only [s6Step264FrontPlan,headEq] using s6Step264ExitBank_checked

private theorem s6Step264Complete_explicit_checked : compileHmrEarlyStepLog s6Step264EntryFBefore s6Step264FrontBank 139 147 ⟨139,137,148,147⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step264CompleteLog=some s6Step264CompletePlan := by
  let Q := s6Step264EarlyControlPlan
  have hq := s6Step264EarlyControl_plan_checked
  have fv1 : s6Step264CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step264CompleteOut.fv.payload[2]?.getD s6Step264CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step264CompleteOut.fv.payload[3]?.getD s6Step264CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step264CompleteOut.fv.payload[4]?.getD s6Step264CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step264EntryFBefore s6Step264EarlyControlArena s6Step264FrontBank 139 147 ⟨139,137,148,147⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step264CompleteLog s6Step264FrontPlan Q
    s6Step264Front_checked s6Step264Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step264Complete_owned s6Step264Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step264EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 809 s6Step264CompleteOut.fv.second (s6Step264CompleteOut.fv.payload[2]?.getD s6Step264CompleteOut.fv.sign) (s6Step264CompleteOut.fv.payload[3]?.getD s6Step264CompleteOut.fv.sign) (s6Step264CompleteOut.fv.payload[4]?.getD s6Step264CompleteOut.fv.sign) 794 52 s6Step264EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep264Arena : Arena := s6Step264EntryFBefore
def s6PrivateStep264Bank : WindowBank := s6Step264FrontBank
def s6PrivateStep264Spec : HmrSourceWalkStepLog := ⟨139,147,⟨139,137,148,147⟩,52,.early s6Step264CompleteLog⟩
def s6PrivateStep264Plan : HmrSourceStepPlan := .early s6Step264CompletePlan
theorem s6PrivateStep264_source : s6PrivateStep264Spec=s6ObservedLogs256[8] := rfl
theorem s6PrivateStep264_checked : compileHmrSourceStepLog s6PrivateStep264Arena s6PrivateStep264Bank
    s6PrivateStep264Spec.fgWidth s6PrivateStep264Spec.vWidth s6PrivateStep264Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]
    6 498 264 s6PrivateStep264Spec.need none s6PrivateStep264Spec.log=some s6PrivateStep264Plan := by
  change compileHmrSourceStepLog s6Step264EntryFBefore s6Step264FrontBank 139 147 ⟨139,137,148,147⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 6 498 264 52 none (.early s6Step264CompleteLog)=some (.early s6Step264CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 264<498)]
  rw [s6Step264Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
