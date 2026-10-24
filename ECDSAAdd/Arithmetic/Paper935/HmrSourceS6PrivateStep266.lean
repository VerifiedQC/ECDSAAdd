import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep264
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

private def s6Step266CompleteMoves : List (Wire × Wire) := [(874,136)]

private def s6Step266EarlyControlLog : HmrEarlyControlLog := ⟨[874, 927, 794, 833, 903],[862],[809],[907, 830, 805, 817, 812, 915],[]⟩

private def s6Step266FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [903], [], [854]],[[862], [833], [927], [794]],[[], [], [], []]⟩,[877],[859],[809],[907],[830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[809, 907, 830, 805]⟩

private def s6Step266CompleteLog : HmrEarlyStepLog := ⟨s6Step266FrontLog,s6Step266CompleteMoves,s6Step266EarlyControlLog⟩

private def s6Step266ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393],795⟩

private def s6Step266ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step266ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step266ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩

private def s6Step266FrontOut : WindowBank := ⟨s6Step266ExitFOut,s6Step266ExitGOut,s6Step266ExitFvOut,s6Step266ExitGvOut⟩

private def s6Step266CompleteOut : WindowBank := s6Step266FrontOut.repacked s6Step266CompleteMoves

private def s6Step266EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step266EarlyControlPositiveArena,[862],s6Step266EarlyControlEqualityArena,[809],⟨⟨877,false⟩,[⟨⟨862,false⟩,809⟩]⟩⟩

private def s6Step266EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,927⟩,⟨⟨771,false⟩,794⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,903⟩]⟩

private def s6Step266EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step266EarlyControlZeroArena,s6Step266EarlyControlZeroPlan,s6Step266EarlyControlClassPlan,s6Step266EarlyControlFlagArena,s6Step266EarlyControlFittedArena,s6Step266EarlyControlHistoryArena,s6Step266EarlyControlSigmaArena,s6Step266EarlyControlOutputArena,s6Step266EarlyControlLog⟩

private def s6Step266CounterWork : List Wire := [809, 907, 830, 805]

private theorem s6Step266Counter_bounded : s6Step266CounterWork.toFinset⊆arenaWires := by norm_num [s6Step266CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step266HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266CounterDuring : Arena := ⟨s6Step266HeadFvAfter.live∪s6Step266CounterWork.toFinset,Finset.union_subset s6Step266HeadFvAfter.bounded s6Step266Counter_bounded⟩

private def s6Step266EntryFFresh : List Wire := []

private def s6Step266EntryFvFresh : List Wire := []

private def s6Step266EntryGFresh : List Wire := [903]

private def s6Step266EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EntryGvFresh : List Wire := [854]

private def s6Step266ExitFExtra : List Wire := [833]

private def s6Step266ExitFvExtra : List Wire := [794]

private def s6Step266ExitGExtra : List Wire := [136, 903, 862]

private def s6Step266ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266ExitGvExtra : List Wire := [927]

private def s6Step266Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step266Add0_bounded : s6Step266Add0Work.toFinset⊆arenaWires := by
  have h : s6Step266Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step266Add0During : Arena := ⟨s6Step266Add0Arena.live∪s6Step266Add0Work.toFinset,Finset.union_subset s6Step266Add0Arena.bounded s6Step266Add0_bounded⟩

private def s6Step266Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step266Add1_bounded : s6Step266Add1Work.toFinset⊆arenaWires := by
  have h : s6Step266Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step266Add1During : Arena := ⟨s6Step266Add1Arena.live∪s6Step266Add1Work.toFinset,Finset.union_subset s6Step266Add1Arena.bounded s6Step266Add1_bounded⟩

private def s6Step266F4FlagArena : Arena := ⟨s6Step266HeadFvAfter.live∪{809},Finset.union_subset s6Step266HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step266F4Plan : HmrHybridF4Plan := ⟨s6Step266F4FlagArena,[809],s6Step266Add0Arena,[907],s6Step266Add0During,s6Step266Add0Work,s6Step266Add1During,s6Step266Add1Work⟩

private def s6Step266HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 833],795⟩

private def s6Step266HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 794],776⟩

private def s6Step266HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903, 862],777⟩

private def s6Step266HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 927],775⟩

private def s6Step266FrontHead : WindowBank := ⟨s6Step266HeadFOut,s6Step266HeadGOut,s6Step266HeadFvOut,s6Step266HeadGvOut⟩

private def s6Step266EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393],795⟩

private def s6Step266EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step266EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903],777⟩

private def s6Step266EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩

private def s6Step266FrontPair : WindowBank := ⟨s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut⟩

private def s6Step266FrontSigmaArena : Arena := ⟨s6Step266EntryGvAfter.live∪{877},Finset.union_subset s6Step266EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step266HeadFFresh : List Wire := [833]

private def s6Step266HeadFvFresh : List Wire := [794]

private def s6Step266HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266HeadGFresh : List Wire := [862]

private def s6Step266HeadGvFresh : List Wire := [927]

private def s6Step266FrontPlan : HmrSourceFront := ⟨s6Step266EntryGvAfter,s6Step266FrontPair,(growRow 795 s6Step266EntryFFresh ++ (growRow 777 s6Step266EntryGFresh ++ (growRow 776 s6Step266EntryFvFresh ++ (growRow 775 s6Step266EntryGvFresh ++ [])))),s6Step266FrontSigmaArena,[877],s6Step266HeadGBefore,[859],
  s6Step266HeadFvAfter,s6Step266FrontHead,(growRow 777 s6Step266HeadGFresh ++ (growRow 795 s6Step266HeadFFresh ++ (growRow 775 s6Step266HeadGvFresh ++ (growRow 776 s6Step266HeadFvFresh ++ [])))),s6Step266F4Plan,s6Step266CounterDuring,s6Step266CounterWork,s6Step266ExitGvAfter,s6Step266FrontOut,(shrinkRow 777 s6Step266ExitGExtra ++ (shrinkRow 795 s6Step266ExitFExtra ++ (shrinkRow 776 s6Step266ExitFvExtra ++ (shrinkRow 775 s6Step266ExitGvExtra ++ []))))⟩

private def s6Step266CompletePlan : HmrEarlyStepPlan := ⟨s6Step266FrontPlan,s6Step266EarlyControlArena,s6Step266EarlyControlPlan,s6Step266CompleteMoves⟩

private theorem s6Step266Complete_apart : List.Disjoint (s6Step266CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] := by
  have nd : ((s6Step266CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step266Complete_owned : (s6Step266CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step266CompleteMoveArena : Arena := ⟨s6Step266ExitGvAfter.live∪{136},Finset.union_subset s6Step266ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step266Complete_repack : s6Step266ExitGvAfter.checkRepack s6Step266CompleteMoves=some s6Step266EarlyControlArena := by
  have owned : 874∈s6Step266ExitGvAfter.live := by norm_num [s6Step266ExitGvAfter,arenaWires]
  have reserve : s6Step266ExitGvAfter.reserve {136}=some s6Step266CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step266ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step266CompleteMoveArena.retireSet {874}=s6Step266EarlyControlArena := by
    unfold Arena.retireSet s6Step266EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step266CompleteMoveArena,s6Step266ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step266CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step266CompleteMoveArena.retireSet {874}).checkRepack []=some s6Step266EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step266EarlyControl_branchOwned : ([859] : List Wire).toFinset⊆s6Step266EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_branch : compileHmrBranchRetirement s6Step266EarlyControlSigmaArena 859=some s6Step266EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step266EarlyControl_branchOwned
  · ext q
    simp [s6Step266EarlyControlOutputArena,s6Step266EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step266EarlyControl_classEqualityBorrow : s6Step266EarlyControlPositiveArena.checkBorrow (([877, 862] : List Wire).length-1) s6Step266EarlyControlLog.classWork=some s6Step266EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step266EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step266EarlyControlEqualityArena,s6Step266EarlyControlPositiveArena,s6Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step266EarlyControl_classEqualityOwned : ([877, 862] : List Wire).toFinset⊆s6Step266EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_classEquality : compileHmrEqualityLog s6Step266EarlyControlPositiveArena [877, 862] 0 s6Step266EarlyControlLog.classWork=some (s6Step266EarlyControlEqualityArena,s6Step266EarlyControlLog.classWork,s6Step266EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step266EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step266EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step266EarlyControl_classOwned : ([769, 903, 877] : List Wire).toFinset⊆s6Step266EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_positiveBorrow : s6Step266EarlyControlZeroArena.checkBorrow (1) s6Step266EarlyControlLog.positiveWork=some s6Step266EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step266EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step266EarlyControlPositiveArena,s6Step266EarlyControlZeroArena,s6Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step266EarlyControl_class : compileHmrSourceClassLog s6Step266EarlyControlZeroArena false 769 s6Step266EarlyControlZeroPlan.top 0 877 s6Step266EarlyControlLog.positiveWork s6Step266EarlyControlLog.classWork=some s6Step266EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step266EarlyControlClassPlan s6Step266EarlyControlZeroArena false 769 s6Step266EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step266EarlyControl_classOwned
  · exact s6Step266EarlyControl_positiveBorrow
  · exact s6Step266EarlyControl_classEquality

private theorem s6Step266EarlyControl_entryRecordOwned : ([859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_fitBorrow : s6Step266EarlyControlFlagArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step266EarlyControlLog.recordFresh=some s6Step266EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step266EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step266EarlyControlFittedArena,s6Step266EarlyControlFlagArena,s6Step266EarlyControlLog,arenaWires]

private theorem s6Step266EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step266EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_fit : compileHmrRecordGrowLog s6Step266EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step266EarlyControlLog.recordFresh=some s6Step266EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step266EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step266EarlyControl_fitBorrow

private theorem s6Step266EarlyControl_flagsBorrow : s6Step266EarlyControlEqualityArena.checkBorrow (6) s6Step266EarlyControlLog.flagWork=some s6Step266EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step266EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step266EarlyControlFlagArena,s6Step266EarlyControlEqualityArena,s6Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step266EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s6Step266EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_flags : compileHmrFlagsLog s6Step266EarlyControlClassPlan.equalityArena s6Step266EarlyControlClassPlan.equality.top 253 252 251 s6Step266EarlyControlLog.flagWork=some s6Step266EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step266EarlyControl_flagsOwned⟩
  · exact s6Step266EarlyControl_flagsBorrow

private theorem s6Step266EarlyControl_historyBorrow : s6Step266EarlyControlArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step266EarlyControlLog.recordFresh=some s6Step266EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step266EarlyControlHistoryArena,s6Step266EarlyControlArena,s6Step266EarlyControlLog,arenaWires]

private theorem s6Step266EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_history : compileHmrRecordGrowLog s6Step266EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step266EarlyControlLog.recordFresh=some s6Step266EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step266EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step266EarlyControl_historyBorrow

private theorem s6Step266EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step266EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step266EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_sigmaRelease : s6Step266EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step266EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step266EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step266EarlyControlSigmaArena,s6Step266EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step266EarlyControl_sigma : compileHmrSigmaDropLog s6Step266EarlyControlHistoryArena false 0 0 254 877 []=some s6Step266EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step266EarlyControl_sigmaOwned⟩
  · exact s6Step266EarlyControl_sigmaRelease

private theorem s6Step266EarlyControl_zeroBorrow : s6Step266EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step266EarlyControlLog.zeroWork=some s6Step266EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step266EarlyControlZeroArena,s6Step266EarlyControlArena,s6Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step266EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EarlyControl_zero : compileHmrEqualityLog s6Step266EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step266EarlyControlLog.zeroWork=some (s6Step266EarlyControlZeroArena,s6Step266EarlyControlLog.zeroWork,s6Step266EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step266EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step266EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step266EarlyControl_logged : s6Step266EarlyControlPlan.Logged s6Step266EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 877 254 253 252 251 859 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step266EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step266EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step266EarlyControl_zero
  · exact s6Step266EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step266EarlyControl_flags
  · exact s6Step266EarlyControl_fit
  · exact s6Step266EarlyControl_history
  · exact s6Step266EarlyControl_sigma
  · exact s6Step266EarlyControl_branch

private theorem s6Step266EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step266EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 877 254 253 252 251 859 52 s6Step266EarlyControlLog=some s6Step266EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step266EarlyControlPlan s6Step266EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 877 254 253 252 251 859 52 s6Step266EarlyControl_logged

private def s6Step266EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393],795⟩

private def s6Step266EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step266EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],777⟩

private def s6Step266EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩

private def s6Step266FrontBank : WindowBank := ⟨s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow⟩

private def s6Step266Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 833, 795]

private def s6Step266Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903, 862, 777]

private def s6Step266Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 794, 776]

private def s6Step266Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 927, 775]

private theorem s6Step266Counter_apart : Disjoint s6Step266HeadFvAfter.live s6Step266CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step266HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266Counter_borrowed : s6Step266HeadFvAfter.checkBorrow 4 s6Step266CounterWork=some s6Step266CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step266HeadFvAfter s6Step266CounterDuring s6Step266CounterWork.toFinset s6Step266Counter_bounded s6Step266Counter_apart rfl

private theorem s6Step266Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step266HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step266HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266Counter_checked : compileHmrCounterStepLog s6Step266HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step266CounterWork=some s6Step266CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step266HeadFvAfter.live := fun q hq => s6Step266Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step266Counter_borrowed

private def s6Step266EntryFAfter : Arena := s6Step266EntryFBefore

private theorem s6Step266EntryBank_incomingDistinct : ([s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266EntryF_Incoming : rowsOwned s6Step266EntryFBefore [s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow] 0 s6Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266EntryBank_outgoingOwned : rowsOwned s6Step266EntryGvAfter [s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step266EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266EntryF_Outgoing : rowsOwned s6Step266EntryGvAfter [s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut] :=
  hmrRows_owned_drop s6Step266EntryGvAfter [s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut] 0 s6Step266EntryBank_outgoingOwned

private theorem s6Step266EntryF_distinct : (s6Step266EntryFRow.sign::s6Step266EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266EntryF_owned : (s6Step266EntryFRow.sign::s6Step266EntryFRow.payload).toFinset⊆s6Step266EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EntryF_reserved : s6Step266EntryFBefore.reserve s6Step266EntryFFresh.toFinset=some s6Step266EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266EntryFFresh,arenaWires]
  · norm_num [s6Step266EntryFBefore,s6Step266EntryFFresh,arenaWires]
  · simp only [s6Step266EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step266EntryF_checked : planRowResizeLog s6Step266EntryFBefore s6Step266EntryFRow 138 s6Step266EntryFFresh=
    some (s6Step266EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393],795⟩,growRow 795 s6Step266EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step266EntryFBefore s6Step266EntryFAfter s6Step266EntryFRow 138 s6Step266EntryFFresh
    s6Step266EntryF_distinct s6Step266EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266EntryF_reserved
  have rowEq : WindowRow.mk (s6Step266EntryFRow.payload++s6Step266EntryFFresh) s6Step266EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step266EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266EntryFvAfter : Arena := s6Step266EntryGAfter

private def s6Step266EntryFvBefore : Arena := s6Step266EntryGAfter

private theorem s6Step266EntryFv_Incoming : rowsOwned s6Step266EntryFvBefore [s6Step266EntryFvRow,s6Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow] 2 s6Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266EntryFv_Outgoing : rowsOwned s6Step266EntryGvAfter [s6Step266EntryFvOut,s6Step266EntryGvOut] :=
  hmrRows_owned_drop s6Step266EntryGvAfter [s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut] 2 s6Step266EntryBank_outgoingOwned

private theorem s6Step266EntryFv_distinct : (s6Step266EntryFvRow.sign::s6Step266EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266EntryFv_owned : (s6Step266EntryFvRow.sign::s6Step266EntryFvRow.payload).toFinset⊆s6Step266EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EntryFv_reserved : s6Step266EntryFvBefore.reserve s6Step266EntryFvFresh.toFinset=some s6Step266EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266EntryFvFresh,arenaWires]
  · norm_num [s6Step266EntryFvBefore,s6Step266EntryGAfter,s6Step266EntryFvFresh,arenaWires]
  · simp only [s6Step266EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step266EntryFv_checked : planRowResizeLog s6Step266EntryFvBefore s6Step266EntryFvRow 148 s6Step266EntryFvFresh=
    some (s6Step266EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩,growRow 776 s6Step266EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step266EntryFvBefore s6Step266EntryFvAfter s6Step266EntryFvRow 148 s6Step266EntryFvFresh
    s6Step266EntryFv_distinct s6Step266EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step266EntryFvRow.payload++s6Step266EntryFvFresh) s6Step266EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step266EntryGBefore : Arena := s6Step266EntryFBefore

private theorem s6Step266EntryG_Incoming : rowsOwned s6Step266EntryGBefore [s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow] 1 s6Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266EntryG_Outgoing : rowsOwned s6Step266EntryGvAfter [s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut] :=
  hmrRows_owned_drop s6Step266EntryGvAfter [s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut] 1 s6Step266EntryBank_outgoingOwned

private theorem s6Step266EntryG_distinct : (s6Step266EntryGRow.sign::s6Step266EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266EntryG_owned : (s6Step266EntryGRow.sign::s6Step266EntryGRow.payload).toFinset⊆s6Step266EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EntryG_reserved : s6Step266EntryGBefore.reserve s6Step266EntryGFresh.toFinset=some s6Step266EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266EntryGFresh,arenaWires]
  · norm_num [s6Step266EntryGBefore,s6Step266EntryFBefore,s6Step266EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step266EntryGAfter,s6Step266EntryGBefore,s6Step266EntryFBefore,s6Step266EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266EntryG_checked : planRowResizeLog s6Step266EntryGBefore s6Step266EntryGRow 138 s6Step266EntryGFresh=
    some (s6Step266EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903],777⟩,growRow 777 s6Step266EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step266EntryGBefore s6Step266EntryGAfter s6Step266EntryGRow 138 s6Step266EntryGFresh
    s6Step266EntryG_distinct s6Step266EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266EntryG_reserved
  have rowEq : WindowRow.mk (s6Step266EntryGRow.payload++s6Step266EntryGFresh) s6Step266EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step266EntryGvBefore : Arena := s6Step266EntryGAfter

private theorem s6Step266EntryGv_Incoming : rowsOwned s6Step266EntryGvBefore [s6Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow] 3 s6Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266EntryGv_Outgoing : rowsOwned s6Step266EntryGvAfter [s6Step266EntryGvOut] :=
  hmrRows_owned_drop s6Step266EntryGvAfter [s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut] 3 s6Step266EntryBank_outgoingOwned

private theorem s6Step266EntryGv_distinct : (s6Step266EntryGvRow.sign::s6Step266EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266EntryGv_owned : (s6Step266EntryGvRow.sign::s6Step266EntryGvRow.payload).toFinset⊆s6Step266EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266EntryGv_reserved : s6Step266EntryGvBefore.reserve s6Step266EntryGvFresh.toFinset=some s6Step266EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266EntryGvFresh,arenaWires]
  · norm_num [s6Step266EntryGvBefore,s6Step266EntryGAfter,s6Step266EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step266EntryGvAfter,s6Step266EntryGvBefore,s6Step266EntryGAfter,s6Step266EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266EntryGv_checked : planRowResizeLog s6Step266EntryGvBefore s6Step266EntryGvRow 148 s6Step266EntryGvFresh=
    some (s6Step266EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩,growRow 775 s6Step266EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step266EntryGvBefore s6Step266EntryGvAfter s6Step266EntryGvRow 148 s6Step266EntryGvFresh
    s6Step266EntryGv_distinct s6Step266EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step266EntryGvRow.payload++s6Step266EntryGvFresh) s6Step266EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step266EntryBank_rows : planWindowRowsLog s6Step266EntryFBefore [(s6Step266EntryFRow,138),(s6Step266EntryGRow,138),(s6Step266EntryFvRow,148),(s6Step266EntryGvRow,148)] [s6Step266EntryFFresh,s6Step266EntryGFresh,s6Step266EntryFvFresh,s6Step266EntryGvFresh]=
    some (s6Step266EntryGvAfter,[s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut],(growRow 795 s6Step266EntryFFresh ++ (growRow 777 s6Step266EntryGFresh ++ (growRow 776 s6Step266EntryFvFresh ++ (growRow 775 s6Step266EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step266EntryGvAfter [] []=some (s6Step266EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step266EntryGvBefore s6Step266EntryGvAfter s6Step266EntryGvAfter
    s6Step266EntryGvRow s6Step266EntryGvOut 148 s6Step266EntryGvFresh [] [] []
    (growRow 775 s6Step266EntryGvFresh) ([]) s6Step266EntryGv_Incoming s6Step266EntryGv_checked h4 s6Step266EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step266EntryFvBefore s6Step266EntryFvAfter s6Step266EntryGvAfter
    s6Step266EntryFvRow s6Step266EntryFvOut 148 s6Step266EntryFvFresh [(s6Step266EntryGvRow,148)] [s6Step266EntryGvFresh] [s6Step266EntryGvOut]
    (growRow 776 s6Step266EntryFvFresh) ((growRow 775 s6Step266EntryGvFresh ++ [])) s6Step266EntryFv_Incoming s6Step266EntryFv_checked h3 s6Step266EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step266EntryGBefore s6Step266EntryGAfter s6Step266EntryGvAfter
    s6Step266EntryGRow s6Step266EntryGOut 138 s6Step266EntryGFresh [(s6Step266EntryFvRow,148),(s6Step266EntryGvRow,148)] [s6Step266EntryFvFresh,s6Step266EntryGvFresh] [s6Step266EntryFvOut,s6Step266EntryGvOut]
    (growRow 777 s6Step266EntryGFresh) ((growRow 776 s6Step266EntryFvFresh ++ (growRow 775 s6Step266EntryGvFresh ++ []))) s6Step266EntryG_Incoming s6Step266EntryG_checked h2 s6Step266EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step266EntryFBefore s6Step266EntryFAfter s6Step266EntryGvAfter
    s6Step266EntryFRow s6Step266EntryFOut 138 s6Step266EntryFFresh [(s6Step266EntryGRow,138),(s6Step266EntryFvRow,148),(s6Step266EntryGvRow,148)] [s6Step266EntryGFresh,s6Step266EntryFvFresh,s6Step266EntryGvFresh] [s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut]
    (growRow 795 s6Step266EntryFFresh) ((growRow 777 s6Step266EntryGFresh ++ (growRow 776 s6Step266EntryFvFresh ++ (growRow 775 s6Step266EntryGvFresh ++ [])))) s6Step266EntryF_Incoming s6Step266EntryF_checked h1 s6Step266EntryF_Outgoing
  exact h0

private theorem s6Step266EntryBank_checked : compileHmrBankResizeLog .entry s6Step266EntryFBefore ⟨s6Step266EntryFRow,s6Step266EntryGRow,s6Step266EntryFvRow,s6Step266EntryGvRow⟩ ⟨138,138,148,148⟩ [s6Step266EntryFFresh,s6Step266EntryGFresh,s6Step266EntryFvFresh,s6Step266EntryGvFresh]=
    some (s6Step266EntryGvAfter,⟨s6Step266EntryFOut,s6Step266EntryGOut,s6Step266EntryFvOut,s6Step266EntryGvOut⟩,(growRow 795 s6Step266EntryFFresh ++ (growRow 777 s6Step266EntryGFresh ++ (growRow 776 s6Step266EntryFvFresh ++ (growRow 775 s6Step266EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step266EntryBank_rows]
  rfl

private def s6Step266ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266ExitFBefore : Arena := s6Step266ExitGAfter

private def s6Step266ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 833],795⟩

private def s6Step266ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 794],776⟩

private def s6Step266ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903, 862],777⟩

private def s6Step266ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 927],775⟩

private theorem s6Step266ExitBank_incomingDistinct : ([s6Step266ExitGRow,s6Step266ExitFRow,s6Step266ExitFvRow,s6Step266ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266ExitF_Incoming : rowsOwned s6Step266ExitFBefore [s6Step266ExitFRow,s6Step266ExitFvRow,s6Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266ExitGRow,s6Step266ExitFRow,s6Step266ExitFvRow,s6Step266ExitGvRow] 1 s6Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266ExitFBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266ExitBank_outgoingOwned : rowsOwned s6Step266ExitGvAfter [s6Step266ExitGOut,s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step266ExitGvAfter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266ExitF_Outgoing : rowsOwned s6Step266ExitGvAfter [s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut] :=
  hmrRows_owned_drop s6Step266ExitGvAfter [s6Step266ExitGOut,s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut] 1 s6Step266ExitBank_outgoingOwned

private theorem s6Step266ExitF_distinct : (s6Step266ExitFRow.sign::s6Step266ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266ExitF_owned : (s6Step266ExitFRow.sign::s6Step266ExitFRow.payload).toFinset⊆s6Step266ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266ExitFBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266ExitF_retired : s6Step266ExitFBefore.retireSet s6Step266ExitFExtra.toFinset=s6Step266ExitFAfter := by
  unfold Arena.retireSet s6Step266ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step266ExitFBefore,s6Step266ExitGAfter,s6Step266ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step266ExitF_checked : planRowResizeLog s6Step266ExitFBefore s6Step266ExitFRow 138 []=
    some (s6Step266ExitFAfter,s6Step266ExitFOut,shrinkRow 795 s6Step266ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step266ExitFBefore s6Step266ExitFRow 138 s6Step266ExitF_distinct s6Step266ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step266ExitFRow.payload.take 138) s6Step266ExitFRow.sign=s6Step266ExitFOut := by decide +kernel
  have hi : s6Step266ExitFRow.payload.drop 138=s6Step266ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step266ExitF_retired] at result
  exact result

private def s6Step266ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266ExitFvBefore : Arena := s6Step266ExitFAfter

private theorem s6Step266ExitFv_Incoming : rowsOwned s6Step266ExitFvBefore [s6Step266ExitFvRow,s6Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266ExitGRow,s6Step266ExitFRow,s6Step266ExitFvRow,s6Step266ExitGvRow] 2 s6Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266ExitFvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266ExitFv_Outgoing : rowsOwned s6Step266ExitGvAfter [s6Step266ExitFvOut,s6Step266ExitGvOut] :=
  hmrRows_owned_drop s6Step266ExitGvAfter [s6Step266ExitGOut,s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut] 2 s6Step266ExitBank_outgoingOwned

private theorem s6Step266ExitFv_distinct : (s6Step266ExitFvRow.sign::s6Step266ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266ExitFv_owned : (s6Step266ExitFvRow.sign::s6Step266ExitFvRow.payload).toFinset⊆s6Step266ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266ExitFvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266ExitFv_retired : s6Step266ExitFvBefore.retireSet s6Step266ExitFvExtra.toFinset=s6Step266ExitFvAfter := by
  unfold Arena.retireSet s6Step266ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step266ExitFvBefore,s6Step266ExitFAfter,s6Step266ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step266ExitFv_checked : planRowResizeLog s6Step266ExitFvBefore s6Step266ExitFvRow 148 []=
    some (s6Step266ExitFvAfter,s6Step266ExitFvOut,shrinkRow 776 s6Step266ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step266ExitFvBefore s6Step266ExitFvRow 148 s6Step266ExitFv_distinct s6Step266ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step266ExitFvRow.payload.take 148) s6Step266ExitFvRow.sign=s6Step266ExitFvOut := by decide +kernel
  have hi : s6Step266ExitFvRow.payload.drop 148=s6Step266ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step266ExitFv_retired] at result
  exact result

private def s6Step266ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step266ExitG_Incoming : rowsOwned s6Step266ExitGBefore [s6Step266ExitGRow,s6Step266ExitFRow,s6Step266ExitFvRow,s6Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266ExitGRow,s6Step266ExitFRow,s6Step266ExitFvRow,s6Step266ExitGvRow] 0 s6Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266ExitG_Outgoing : rowsOwned s6Step266ExitGvAfter [s6Step266ExitGOut,s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut] :=
  hmrRows_owned_drop s6Step266ExitGvAfter [s6Step266ExitGOut,s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut] 0 s6Step266ExitBank_outgoingOwned

private theorem s6Step266ExitG_distinct : (s6Step266ExitGRow.sign::s6Step266ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266ExitG_owned : (s6Step266ExitGRow.sign::s6Step266ExitGRow.payload).toFinset⊆s6Step266ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266ExitG_retired : s6Step266ExitGBefore.retireSet s6Step266ExitGExtra.toFinset=s6Step266ExitGAfter := by
  unfold Arena.retireSet s6Step266ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step266ExitGBefore,s6Step266ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step266ExitG_checked : planRowResizeLog s6Step266ExitGBefore s6Step266ExitGRow 136 []=
    some (s6Step266ExitGAfter,s6Step266ExitGOut,shrinkRow 777 s6Step266ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step266ExitGBefore s6Step266ExitGRow 136 s6Step266ExitG_distinct s6Step266ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step266ExitGRow.payload.take 136) s6Step266ExitGRow.sign=s6Step266ExitGOut := by decide +kernel
  have hi : s6Step266ExitGRow.payload.drop 136=s6Step266ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step266ExitG_retired] at result
  exact result

private def s6Step266ExitGvBefore : Arena := s6Step266ExitFvAfter

private theorem s6Step266ExitGv_Incoming : rowsOwned s6Step266ExitGvBefore [s6Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266ExitGRow,s6Step266ExitFRow,s6Step266ExitFvRow,s6Step266ExitGvRow] 3 s6Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266ExitGvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266ExitGv_Outgoing : rowsOwned s6Step266ExitGvAfter [s6Step266ExitGvOut] :=
  hmrRows_owned_drop s6Step266ExitGvAfter [s6Step266ExitGOut,s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut] 3 s6Step266ExitBank_outgoingOwned

private theorem s6Step266ExitGv_distinct : (s6Step266ExitGvRow.sign::s6Step266ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266ExitGv_owned : (s6Step266ExitGvRow.sign::s6Step266ExitGvRow.payload).toFinset⊆s6Step266ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266ExitGvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266ExitGv_retired : s6Step266ExitGvBefore.retireSet s6Step266ExitGvExtra.toFinset=s6Step266ExitGvAfter := by
  unfold Arena.retireSet s6Step266ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step266ExitGvBefore,s6Step266ExitFvAfter,s6Step266ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step266ExitGv_checked : planRowResizeLog s6Step266ExitGvBefore s6Step266ExitGvRow 148 []=
    some (s6Step266ExitGvAfter,s6Step266ExitGvOut,shrinkRow 775 s6Step266ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step266ExitGvBefore s6Step266ExitGvRow 148 s6Step266ExitGv_distinct s6Step266ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step266ExitGvRow.payload.take 148) s6Step266ExitGvRow.sign=s6Step266ExitGvOut := by decide +kernel
  have hi : s6Step266ExitGvRow.payload.drop 148=s6Step266ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step266ExitGv_retired] at result
  exact result

private theorem s6Step266ExitBank_rows : planWindowRowsLog s6Step266ExitGBefore [(s6Step266ExitGRow,136),(s6Step266ExitFRow,138),(s6Step266ExitFvRow,148),(s6Step266ExitGvRow,148)] [[],[],[],[]]=
    some (s6Step266ExitGvAfter,[s6Step266ExitGOut,s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut],(shrinkRow 777 s6Step266ExitGExtra ++ (shrinkRow 795 s6Step266ExitFExtra ++ (shrinkRow 776 s6Step266ExitFvExtra ++ (shrinkRow 775 s6Step266ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step266ExitGvAfter [] []=some (s6Step266ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step266ExitGvBefore s6Step266ExitGvAfter s6Step266ExitGvAfter
    s6Step266ExitGvRow s6Step266ExitGvOut 148 [] [] [] []
    (shrinkRow 775 s6Step266ExitGvExtra) ([]) s6Step266ExitGv_Incoming s6Step266ExitGv_checked h4 s6Step266ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step266ExitFvBefore s6Step266ExitFvAfter s6Step266ExitGvAfter
    s6Step266ExitFvRow s6Step266ExitFvOut 148 [] [(s6Step266ExitGvRow,148)] [[]] [s6Step266ExitGvOut]
    (shrinkRow 776 s6Step266ExitFvExtra) ((shrinkRow 775 s6Step266ExitGvExtra ++ [])) s6Step266ExitFv_Incoming s6Step266ExitFv_checked h3 s6Step266ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step266ExitFBefore s6Step266ExitFAfter s6Step266ExitGvAfter
    s6Step266ExitFRow s6Step266ExitFOut 138 [] [(s6Step266ExitFvRow,148),(s6Step266ExitGvRow,148)] [[],[]] [s6Step266ExitFvOut,s6Step266ExitGvOut]
    (shrinkRow 795 s6Step266ExitFExtra) ((shrinkRow 776 s6Step266ExitFvExtra ++ (shrinkRow 775 s6Step266ExitGvExtra ++ []))) s6Step266ExitF_Incoming s6Step266ExitF_checked h2 s6Step266ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step266ExitGBefore s6Step266ExitGAfter s6Step266ExitGvAfter
    s6Step266ExitGRow s6Step266ExitGOut 136 [] [(s6Step266ExitFRow,138),(s6Step266ExitFvRow,148),(s6Step266ExitGvRow,148)] [[],[],[]] [s6Step266ExitFOut,s6Step266ExitFvOut,s6Step266ExitGvOut]
    (shrinkRow 777 s6Step266ExitGExtra) ((shrinkRow 795 s6Step266ExitFExtra ++ (shrinkRow 776 s6Step266ExitFvExtra ++ (shrinkRow 775 s6Step266ExitGvExtra ++ [])))) s6Step266ExitG_Incoming s6Step266ExitG_checked h1 s6Step266ExitG_Outgoing
  exact h0

private theorem s6Step266ExitBank_checked : compileHmrBankResizeLog .exit s6Step266ExitGBefore ⟨s6Step266ExitFRow,s6Step266ExitGRow,s6Step266ExitFvRow,s6Step266ExitGvRow⟩ ⟨138,136,148,148⟩ [[],[],[],[]]=
    some (s6Step266ExitGvAfter,⟨s6Step266ExitFOut,s6Step266ExitGOut,s6Step266ExitFvOut,s6Step266ExitGvOut⟩,(shrinkRow 777 s6Step266ExitGExtra ++ (shrinkRow 795 s6Step266ExitFExtra ++ (shrinkRow 776 s6Step266ExitFvExtra ++ (shrinkRow 775 s6Step266ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step266ExitBank_rows]
  rfl

private theorem s6Step266Add0_apart : Disjoint s6Step266Add0Arena.live s6Step266Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step266Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266Add0_card : s6Step266Add0Arena.live.card=898 := by
  decide +kernel

private theorem s6Step266Add0_borrowed : s6Step266Add0Arena.checkBorrow (hmrHybridCount s6Step266Add0Arena s6Step266Add0B.length) s6Step266Add0Work=some s6Step266Add0During := by
  have len : s6Step266Add0Work.length=hmrHybridCount s6Step266Add0Arena s6Step266Add0B.length := by
    rw [hmrHybridCount,s6Step266Add0_card]
    decide +kernel
  have nd : s6Step266Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step266Add0Arena s6Step266Add0During s6Step266Add0Work.toFinset s6Step266Add0_bounded s6Step266Add0_apart rfl

private theorem s6Step266Add0_distinct : (809::859::907::(s6Step266Add0A++s6Step266Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266Add0_owned : (809::859::907::(s6Step266Add0A++s6Step266Add0B)).toFinset⊆s6Step266Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step266Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266Add0_checked : compileHmrHybridCinLog s6Step266Add0Arena 859 809 907 s6Step266Add0A s6Step266Add0B s6Step266Add0Work=some s6Step266Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step266Add0Arena s6Step266Add0During 859 809 907 s6Step266Add0A s6Step266Add0B s6Step266Add0Work
    (by decide +kernel) (by decide +kernel) s6Step266Add0_distinct
    (fun q hq => s6Step266Add0_owned (List.mem_toFinset.mpr hq)) s6Step266Add0_borrowed

private theorem s6Step266Add1_apart : Disjoint s6Step266Add1Arena.live s6Step266Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step266Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266Add1_card : s6Step266Add1Arena.live.card=898 := by
  decide +kernel

private theorem s6Step266Add1_borrowed : s6Step266Add1Arena.checkBorrow (hmrHybridCount s6Step266Add1Arena s6Step266Add1B.length) s6Step266Add1Work=some s6Step266Add1During := by
  have len : s6Step266Add1Work.length=hmrHybridCount s6Step266Add1Arena s6Step266Add1B.length := by
    rw [hmrHybridCount,s6Step266Add1_card]
    decide +kernel
  have nd : s6Step266Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step266Add1Arena s6Step266Add1During s6Step266Add1Work.toFinset s6Step266Add1_bounded s6Step266Add1_apart rfl

private theorem s6Step266Add1_distinct : (809::859::907::(s6Step266Add1A++s6Step266Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266Add1_owned : (809::859::907::(s6Step266Add1A++s6Step266Add1B)).toFinset⊆s6Step266Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step266Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266Add1_checked : compileHmrHybridCinLog s6Step266Add1Arena 859 809 907 s6Step266Add1A s6Step266Add1B s6Step266Add1Work=some s6Step266Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step266Add1Arena s6Step266Add1During 859 809 907 s6Step266Add1A s6Step266Add1B s6Step266Add1Work
    (by decide +kernel) (by decide +kernel) s6Step266Add1_distinct
    (fun q hq => s6Step266Add1_owned (List.mem_toFinset.mpr hq)) s6Step266Add1_borrowed

private theorem s6Step266F4_apart : Disjoint (s6Step266Add0A++s6Step266Add0B).toFinset (s6Step266Add1A++s6Step266Add1B).toFinset := by
  have nd : ((s6Step266Add0A++s6Step266Add0B)++(s6Step266Add1A++s6Step266Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step266F4_carry : s6Step266F4FlagArena.checkBorrow 1 [907]=some s6Step266Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step266F4FlagArena,s6Step266HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step266F4FlagArena,s6Step266HeadFvAfter,s6Step266Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266F4_distinct : (877::859::809::907::((s6Step266Add0A++s6Step266Add1A)++(s6Step266Add0B++s6Step266Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266F4_flag : s6Step266HeadFvAfter.checkBorrow 1 [809]=some s6Step266F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step266HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step266F4_owned : (877::859::((s6Step266Add0A++s6Step266Add1A)++(s6Step266Add0B++s6Step266Add1B))).toFinset⊆s6Step266HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step266HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266F4_checked : compileHmrHybridF4Log s6Step266HeadFvAfter 877 859 s6Step266Add0A s6Step266Add0B s6Step266Add1A s6Step266Add1B [809] [907] s6Step266Add0Work s6Step266Add1Work=some s6Step266F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step266HeadFvAfter s6Step266F4FlagArena s6Step266Add0Arena s6Step266Add0During s6Step266Add1During 877 859
    s6Step266Add0A s6Step266Add0B s6Step266Add1A s6Step266Add1B [809] [907] s6Step266Add0Work s6Step266Add1Work
    (fun q hq => s6Step266F4_owned (List.mem_toFinset.mpr hq)) s6Step266F4_flag s6Step266F4_carry
    s6Step266F4_distinct s6Step266F4_apart s6Step266Add0_checked s6Step266Add1_checked

private theorem s6Step266Front_branch : s6Step266FrontSigmaArena.checkBorrow 1 [859]=some s6Step266HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step266FrontSigmaArena,s6Step266EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step266FrontSigmaArena,s6Step266EntryGvAfter,s6Step266HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266Front_entry : HmrFrontEntryValid s6Step266EntryFBefore s6Step266FrontBank 138 148 ⟨138,136,148,148⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step266FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step266EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step266EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step266FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step266Front_sigma : s6Step266EntryGvAfter.checkBorrow 1 [877]=some s6Step266FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step266EntryGvAfter,arenaWires]
  · rfl

private def s6Step266HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266HeadFBefore : Arena := s6Step266HeadGAfter

private def s6Step266HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393],795⟩

private def s6Step266HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step266HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903],777⟩

private def s6Step266HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854],775⟩

private theorem s6Step266HeadBank_incomingDistinct : ([s6Step266HeadGRow,s6Step266HeadFRow,s6Step266HeadGvRow,s6Step266HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266HeadF_Incoming : rowsOwned s6Step266HeadFBefore [s6Step266HeadFRow,s6Step266HeadGvRow,s6Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266HeadGRow,s6Step266HeadFRow,s6Step266HeadGvRow,s6Step266HeadFvRow] 1 s6Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266HeadBank_outgoingOwned : rowsOwned s6Step266HeadFvAfter [s6Step266HeadGOut,s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step266HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266HeadF_Outgoing : rowsOwned s6Step266HeadFvAfter [s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut] :=
  hmrRows_owned_drop s6Step266HeadFvAfter [s6Step266HeadGOut,s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut] 1 s6Step266HeadBank_outgoingOwned

private theorem s6Step266HeadF_distinct : (s6Step266HeadFRow.sign::s6Step266HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266HeadF_owned : (s6Step266HeadFRow.sign::s6Step266HeadFRow.payload).toFinset⊆s6Step266HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266HeadF_reserved : s6Step266HeadFBefore.reserve s6Step266HeadFFresh.toFinset=some s6Step266HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266HeadFFresh,arenaWires]
  · norm_num [s6Step266HeadFBefore,s6Step266HeadGAfter,s6Step266HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step266HeadFAfter,s6Step266HeadFBefore,s6Step266HeadGAfter,s6Step266HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266HeadF_checked : planRowResizeLog s6Step266HeadFBefore s6Step266HeadFRow 139 s6Step266HeadFFresh=
    some (s6Step266HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 833],795⟩,growRow 795 s6Step266HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step266HeadFBefore s6Step266HeadFAfter s6Step266HeadFRow 139 s6Step266HeadFFresh
    s6Step266HeadF_distinct s6Step266HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266HeadF_reserved
  have rowEq : WindowRow.mk (s6Step266HeadFRow.payload++s6Step266HeadFFresh) s6Step266HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 833],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step266HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step266HeadFvBefore : Arena := s6Step266HeadGvAfter

private theorem s6Step266HeadFv_Incoming : rowsOwned s6Step266HeadFvBefore [s6Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266HeadGRow,s6Step266HeadFRow,s6Step266HeadGvRow,s6Step266HeadFvRow] 3 s6Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266HeadFv_Outgoing : rowsOwned s6Step266HeadFvAfter [s6Step266HeadFvOut] :=
  hmrRows_owned_drop s6Step266HeadFvAfter [s6Step266HeadGOut,s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut] 3 s6Step266HeadBank_outgoingOwned

private theorem s6Step266HeadFv_distinct : (s6Step266HeadFvRow.sign::s6Step266HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266HeadFv_owned : (s6Step266HeadFvRow.sign::s6Step266HeadFvRow.payload).toFinset⊆s6Step266HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266HeadFv_reserved : s6Step266HeadFvBefore.reserve s6Step266HeadFvFresh.toFinset=some s6Step266HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266HeadFvFresh,arenaWires]
  · norm_num [s6Step266HeadFvBefore,s6Step266HeadGvAfter,s6Step266HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step266HeadFvAfter,s6Step266HeadFvBefore,s6Step266HeadGvAfter,s6Step266HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266HeadFv_checked : planRowResizeLog s6Step266HeadFvBefore s6Step266HeadFvRow 149 s6Step266HeadFvFresh=
    some (s6Step266HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 794],776⟩,growRow 776 s6Step266HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step266HeadFvBefore s6Step266HeadFvAfter s6Step266HeadFvRow 149 s6Step266HeadFvFresh
    s6Step266HeadFv_distinct s6Step266HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step266HeadFvRow.payload++s6Step266HeadFvFresh) s6Step266HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 794],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step266HeadG_Incoming : rowsOwned s6Step266HeadGBefore [s6Step266HeadGRow,s6Step266HeadFRow,s6Step266HeadGvRow,s6Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266HeadGRow,s6Step266HeadFRow,s6Step266HeadGvRow,s6Step266HeadFvRow] 0 s6Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266HeadG_Outgoing : rowsOwned s6Step266HeadFvAfter [s6Step266HeadGOut,s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut] :=
  hmrRows_owned_drop s6Step266HeadFvAfter [s6Step266HeadGOut,s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut] 0 s6Step266HeadBank_outgoingOwned

private theorem s6Step266HeadG_distinct : (s6Step266HeadGRow.sign::s6Step266HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266HeadG_owned : (s6Step266HeadGRow.sign::s6Step266HeadGRow.payload).toFinset⊆s6Step266HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266HeadG_reserved : s6Step266HeadGBefore.reserve s6Step266HeadGFresh.toFinset=some s6Step266HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266HeadGFresh,arenaWires]
  · norm_num [s6Step266HeadGBefore,s6Step266HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step266HeadGAfter,s6Step266HeadGBefore,s6Step266HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266HeadG_checked : planRowResizeLog s6Step266HeadGBefore s6Step266HeadGRow 139 s6Step266HeadGFresh=
    some (s6Step266HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903, 862],777⟩,growRow 777 s6Step266HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step266HeadGBefore s6Step266HeadGAfter s6Step266HeadGRow 139 s6Step266HeadGFresh
    s6Step266HeadG_distinct s6Step266HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266HeadG_reserved
  have rowEq : WindowRow.mk (s6Step266HeadGRow.payload++s6Step266HeadGFresh) s6Step266HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 903, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step266HeadGvBefore : Arena := s6Step266HeadFAfter

private theorem s6Step266HeadGv_Incoming : rowsOwned s6Step266HeadGvBefore [s6Step266HeadGvRow,s6Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step266HeadGRow,s6Step266HeadFRow,s6Step266HeadGvRow,s6Step266HeadFvRow] 2 s6Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step266HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step266HeadGv_Outgoing : rowsOwned s6Step266HeadFvAfter [s6Step266HeadGvOut,s6Step266HeadFvOut] :=
  hmrRows_owned_drop s6Step266HeadFvAfter [s6Step266HeadGOut,s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut] 2 s6Step266HeadBank_outgoingOwned

private theorem s6Step266HeadGv_distinct : (s6Step266HeadGvRow.sign::s6Step266HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step266HeadGv_owned : (s6Step266HeadGvRow.sign::s6Step266HeadGvRow.payload).toFinset⊆s6Step266HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step266HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step266HeadGv_reserved : s6Step266HeadGvBefore.reserve s6Step266HeadGvFresh.toFinset=some s6Step266HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step266HeadGvFresh,arenaWires]
  · norm_num [s6Step266HeadGvBefore,s6Step266HeadFAfter,s6Step266HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step266HeadGvAfter,s6Step266HeadGvBefore,s6Step266HeadFAfter,s6Step266HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step266HeadGv_checked : planRowResizeLog s6Step266HeadGvBefore s6Step266HeadGvRow 149 s6Step266HeadGvFresh=
    some (s6Step266HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 927],775⟩,growRow 775 s6Step266HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step266HeadGvBefore s6Step266HeadGvAfter s6Step266HeadGvRow 149 s6Step266HeadGvFresh
    s6Step266HeadGv_distinct s6Step266HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step266HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step266HeadGvRow.payload++s6Step266HeadGvFresh) s6Step266HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step266HeadBank_rows : planWindowRowsLog s6Step266HeadGBefore [(s6Step266HeadGRow,139),(s6Step266HeadFRow,139),(s6Step266HeadGvRow,149),(s6Step266HeadFvRow,149)] [s6Step266HeadGFresh,s6Step266HeadFFresh,s6Step266HeadGvFresh,s6Step266HeadFvFresh]=
    some (s6Step266HeadFvAfter,[s6Step266HeadGOut,s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut],(growRow 777 s6Step266HeadGFresh ++ (growRow 795 s6Step266HeadFFresh ++ (growRow 775 s6Step266HeadGvFresh ++ (growRow 776 s6Step266HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step266HeadFvAfter [] []=some (s6Step266HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step266HeadFvBefore s6Step266HeadFvAfter s6Step266HeadFvAfter
    s6Step266HeadFvRow s6Step266HeadFvOut 149 s6Step266HeadFvFresh [] [] []
    (growRow 776 s6Step266HeadFvFresh) ([]) s6Step266HeadFv_Incoming s6Step266HeadFv_checked h4 s6Step266HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step266HeadGvBefore s6Step266HeadGvAfter s6Step266HeadFvAfter
    s6Step266HeadGvRow s6Step266HeadGvOut 149 s6Step266HeadGvFresh [(s6Step266HeadFvRow,149)] [s6Step266HeadFvFresh] [s6Step266HeadFvOut]
    (growRow 775 s6Step266HeadGvFresh) ((growRow 776 s6Step266HeadFvFresh ++ [])) s6Step266HeadGv_Incoming s6Step266HeadGv_checked h3 s6Step266HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step266HeadFBefore s6Step266HeadFAfter s6Step266HeadFvAfter
    s6Step266HeadFRow s6Step266HeadFOut 139 s6Step266HeadFFresh [(s6Step266HeadGvRow,149),(s6Step266HeadFvRow,149)] [s6Step266HeadGvFresh,s6Step266HeadFvFresh] [s6Step266HeadGvOut,s6Step266HeadFvOut]
    (growRow 795 s6Step266HeadFFresh) ((growRow 775 s6Step266HeadGvFresh ++ (growRow 776 s6Step266HeadFvFresh ++ []))) s6Step266HeadF_Incoming s6Step266HeadF_checked h2 s6Step266HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step266HeadGBefore s6Step266HeadGAfter s6Step266HeadFvAfter
    s6Step266HeadGRow s6Step266HeadGOut 139 s6Step266HeadGFresh [(s6Step266HeadFRow,139),(s6Step266HeadGvRow,149),(s6Step266HeadFvRow,149)] [s6Step266HeadFFresh,s6Step266HeadGvFresh,s6Step266HeadFvFresh] [s6Step266HeadFOut,s6Step266HeadGvOut,s6Step266HeadFvOut]
    (growRow 777 s6Step266HeadGFresh) ((growRow 795 s6Step266HeadFFresh ++ (growRow 775 s6Step266HeadGvFresh ++ (growRow 776 s6Step266HeadFvFresh ++ [])))) s6Step266HeadG_Incoming s6Step266HeadG_checked h1 s6Step266HeadG_Outgoing
  exact h0

private theorem s6Step266HeadBank_checked : compileHmrBankResizeLog .headroom s6Step266HeadGBefore ⟨s6Step266HeadFRow,s6Step266HeadGRow,s6Step266HeadFvRow,s6Step266HeadGvRow⟩ ⟨139,139,149,149⟩ [s6Step266HeadGFresh,s6Step266HeadFFresh,s6Step266HeadGvFresh,s6Step266HeadFvFresh]=
    some (s6Step266HeadFvAfter,⟨s6Step266HeadFOut,s6Step266HeadGOut,s6Step266HeadFvOut,s6Step266HeadGvOut⟩,(growRow 777 s6Step266HeadGFresh ++ (growRow 795 s6Step266HeadFFresh ++ (growRow 775 s6Step266HeadGvFresh ++ (growRow 776 s6Step266HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step266HeadBank_rows]
  rfl

private theorem s6Step266Front_checked : compileHmrSourceFrontLog s6Step266EntryFBefore s6Step266FrontBank 138 148 ⟨138,136,148,148⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step266FrontLog=some s6Step266FrontPlan := by
  have pairEq : s6Step266FrontPair=⟨s6Step266HeadFRow,s6Step266HeadGRow,s6Step266HeadFvRow,s6Step266HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step266FrontHead=⟨s6Step266ExitFRow,s6Step266ExitGRow,s6Step266ExitFvRow,s6Step266ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step266Add0A=s6Step266FrontHead.f.wires := by decide +kernel
  have gEq : s6Step266Add0B=s6Step266FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step266Add1A=s6Step266FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step266Add1B=s6Step266FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step266EntryFBefore s6Step266FrontBank 138 148 ⟨138,136,148,148⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step266FrontLog s6Step266FrontPlan
  · exact s6Step266Front_entry
  · exact s6Step266EntryBank_checked
  · exact s6Step266Front_sigma
  · rfl
  · exact s6Step266Front_branch
  · rfl
  · simpa only [s6Step266FrontPlan,pairEq] using s6Step266HeadBank_checked
  · simpa only [s6Step266FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step266F4_checked
  · exact s6Step266Counter_checked
  · rfl
  · simpa only [s6Step266FrontPlan,headEq] using s6Step266ExitBank_checked

private theorem s6Step266Complete_explicit_checked : compileHmrEarlyStepLog s6Step266EntryFBefore s6Step266FrontBank 138 148 ⟨138,136,148,148⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step266CompleteLog=some s6Step266CompletePlan := by
  let Q := s6Step266EarlyControlPlan
  have hq := s6Step266EarlyControl_plan_checked
  have fv1 : s6Step266CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step266CompleteOut.fv.payload[2]?.getD s6Step266CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step266CompleteOut.fv.payload[3]?.getD s6Step266CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step266CompleteOut.fv.payload[4]?.getD s6Step266CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step266EntryFBefore s6Step266EarlyControlArena s6Step266FrontBank 138 148 ⟨138,136,148,148⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step266CompleteLog s6Step266FrontPlan Q
    s6Step266Front_checked s6Step266Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step266Complete_owned s6Step266Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step266EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 877 s6Step266CompleteOut.fv.second (s6Step266CompleteOut.fv.payload[2]?.getD s6Step266CompleteOut.fv.sign) (s6Step266CompleteOut.fv.payload[3]?.getD s6Step266CompleteOut.fv.sign) (s6Step266CompleteOut.fv.payload[4]?.getD s6Step266CompleteOut.fv.sign) 859 52 s6Step266EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep266Arena : Arena := s6Step266EntryFBefore
def s6PrivateStep266Bank : WindowBank := s6Step266FrontBank
def s6PrivateStep266Spec : HmrSourceWalkStepLog := ⟨138,148,⟨138,136,148,148⟩,52,.early s6Step266CompleteLog⟩
def s6PrivateStep266Plan : HmrSourceStepPlan := .early s6Step266CompletePlan
theorem s6PrivateStep266_source : s6PrivateStep266Spec=s6ObservedLogs256[10] := rfl
theorem s6PrivateStep266_checked : compileHmrSourceStepLog s6PrivateStep266Arena s6PrivateStep266Bank
    s6PrivateStep266Spec.fgWidth s6PrivateStep266Spec.vWidth s6PrivateStep266Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]
    6 498 266 s6PrivateStep266Spec.need none s6PrivateStep266Spec.log=some s6PrivateStep266Plan := by
  change compileHmrSourceStepLog s6Step266EntryFBefore s6Step266FrontBank 138 148 ⟨138,136,148,148⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 6 498 266 52 none (.early s6Step266CompleteLog)=some (.early s6Step266CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 266<498)]
  rw [s6Step266Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
