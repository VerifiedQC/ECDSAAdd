import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep263
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

private def s6Step265CompleteMoves : List (Wire × Wire) := [(877,394)]

private def s6Step265EarlyControlLog : HmrEarlyControlLog := ⟨[877, 859, 862, 833, 927],[794],[809],[907, 830, 805, 817, 812, 915],[]⟩

private def s6Step265FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794, 809], [], [859]],[[907], [927], [862], [833]],[[], [], [], []]⟩,[854],[903],[830],[805],[817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step265CompleteLog : HmrEarlyStepLog := ⟨s6Step265FrontLog,s6Step265CompleteMoves,s6Step265EarlyControlLog⟩

private def s6Step265ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393],795⟩

private def s6Step265ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step265ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],777⟩

private def s6Step265ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩

private def s6Step265FrontOut : WindowBank := ⟨s6Step265ExitFOut,s6Step265ExitGOut,s6Step265ExitFvOut,s6Step265ExitGvOut⟩

private def s6Step265CompleteOut : WindowBank := s6Step265FrontOut.repacked s6Step265CompleteMoves

private def s6Step265EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step265EarlyControlPositiveArena,[794],s6Step265EarlyControlEqualityArena,[809],⟨⟨854,false⟩,[⟨⟨794,false⟩,809⟩]⟩⟩

private def s6Step265EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,877⟩,⟨⟨772,false⟩,859⟩,⟨⟨771,false⟩,862⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,927⟩]⟩

private def s6Step265EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step265EarlyControlZeroArena,s6Step265EarlyControlZeroPlan,s6Step265EarlyControlClassPlan,s6Step265EarlyControlFlagArena,s6Step265EarlyControlFittedArena,s6Step265EarlyControlHistoryArena,s6Step265EarlyControlSigmaArena,s6Step265EarlyControlOutputArena,s6Step265EarlyControlLog⟩

private def s6Step265CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step265Counter_bounded : s6Step265CounterWork.toFinset⊆arenaWires := by norm_num [s6Step265CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step265HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265CounterDuring : Arena := ⟨s6Step265HeadFvAfter.live∪s6Step265CounterWork.toFinset,Finset.union_subset s6Step265HeadFvAfter.bounded s6Step265Counter_bounded⟩

private def s6Step265EntryFFresh : List Wire := []

private def s6Step265EntryFvFresh : List Wire := []

private def s6Step265EntryGFresh : List Wire := [794, 809]

private def s6Step265EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EntryGvFresh : List Wire := [859]

private def s6Step265ExitFExtra : List Wire := [394, 927]

private def s6Step265ExitFvExtra : List Wire := [833]

private def s6Step265ExitGExtra : List Wire := [794, 809, 907]

private def s6Step265ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265ExitGvExtra : List Wire := [859, 862]

private def s6Step265Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265Add0Work : List Wire := [817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step265Add0_bounded : s6Step265Add0Work.toFinset⊆arenaWires := by
  have h : s6Step265Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step265Add0During : Arena := ⟨s6Step265Add0Arena.live∪s6Step265Add0Work.toFinset,Finset.union_subset s6Step265Add0Arena.bounded s6Step265Add0_bounded⟩

private def s6Step265Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265Add1Work : List Wire := [817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step265Add1_bounded : s6Step265Add1Work.toFinset⊆arenaWires := by
  have h : s6Step265Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step265Add1During : Arena := ⟨s6Step265Add1Arena.live∪s6Step265Add1Work.toFinset,Finset.union_subset s6Step265Add1Arena.bounded s6Step265Add1_bounded⟩

private def s6Step265F4FlagArena : Arena := ⟨s6Step265HeadFvAfter.live∪{830},Finset.union_subset s6Step265HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step265F4Plan : HmrHybridF4Plan := ⟨s6Step265F4FlagArena,[830],s6Step265Add0Arena,[805],s6Step265Add0During,s6Step265Add0Work,s6Step265Add1During,s6Step265Add1Work⟩

private def s6Step265HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 927],795⟩

private def s6Step265HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 833],776⟩

private def s6Step265HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809, 907],777⟩

private def s6Step265HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859, 862],775⟩

private def s6Step265FrontHead : WindowBank := ⟨s6Step265HeadFOut,s6Step265HeadGOut,s6Step265HeadFvOut,s6Step265HeadGvOut⟩

private def s6Step265EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step265EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step265EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809],777⟩

private def s6Step265EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859],775⟩

private def s6Step265FrontPair : WindowBank := ⟨s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut⟩

private def s6Step265FrontSigmaArena : Arena := ⟨s6Step265EntryGvAfter.live∪{854},Finset.union_subset s6Step265EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step265HeadFFresh : List Wire := [927]

private def s6Step265HeadFvFresh : List Wire := [833]

private def s6Step265HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265HeadGFresh : List Wire := [907]

private def s6Step265HeadGvFresh : List Wire := [862]

private def s6Step265FrontPlan : HmrSourceFront := ⟨s6Step265EntryGvAfter,s6Step265FrontPair,(growRow 795 s6Step265EntryFFresh ++ (growRow 777 s6Step265EntryGFresh ++ (growRow 776 s6Step265EntryFvFresh ++ (growRow 775 s6Step265EntryGvFresh ++ [])))),s6Step265FrontSigmaArena,[854],s6Step265HeadGBefore,[903],
  s6Step265HeadFvAfter,s6Step265FrontHead,(growRow 777 s6Step265HeadGFresh ++ (growRow 795 s6Step265HeadFFresh ++ (growRow 775 s6Step265HeadGvFresh ++ (growRow 776 s6Step265HeadFvFresh ++ [])))),s6Step265F4Plan,s6Step265CounterDuring,s6Step265CounterWork,s6Step265ExitGvAfter,s6Step265FrontOut,(shrinkRow 777 s6Step265ExitGExtra ++ (shrinkRow 795 s6Step265ExitFExtra ++ (shrinkRow 776 s6Step265ExitFvExtra ++ (shrinkRow 775 s6Step265ExitGvExtra ++ []))))⟩

private def s6Step265CompletePlan : HmrEarlyStepPlan := ⟨s6Step265FrontPlan,s6Step265EarlyControlArena,s6Step265EarlyControlPlan,s6Step265CompleteMoves⟩

private theorem s6Step265Complete_apart : List.Disjoint (s6Step265CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] := by
  have nd : ((s6Step265CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step265Complete_owned : (s6Step265CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step265CompleteMoveArena : Arena := ⟨s6Step265ExitGvAfter.live∪{394},Finset.union_subset s6Step265ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step265Complete_repack : s6Step265ExitGvAfter.checkRepack s6Step265CompleteMoves=some s6Step265EarlyControlArena := by
  have owned : 877∈s6Step265ExitGvAfter.live := by norm_num [s6Step265ExitGvAfter,arenaWires]
  have reserve : s6Step265ExitGvAfter.reserve {394}=some s6Step265CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step265ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step265CompleteMoveArena.retireSet {877}=s6Step265EarlyControlArena := by
    unfold Arena.retireSet s6Step265EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step265CompleteMoveArena,s6Step265ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step265CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step265CompleteMoveArena.retireSet {877}).checkRepack []=some s6Step265EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step265EarlyControl_branchOwned : ([903] : List Wire).toFinset⊆s6Step265EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_branch : compileHmrBranchRetirement s6Step265EarlyControlSigmaArena 903=some s6Step265EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step265EarlyControl_branchOwned
  · ext q
    simp [s6Step265EarlyControlOutputArena,s6Step265EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step265EarlyControl_classEqualityBorrow : s6Step265EarlyControlPositiveArena.checkBorrow (([854, 794] : List Wire).length-1) s6Step265EarlyControlLog.classWork=some s6Step265EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step265EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step265EarlyControlEqualityArena,s6Step265EarlyControlPositiveArena,s6Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step265EarlyControl_classEqualityOwned : ([854, 794] : List Wire).toFinset⊆s6Step265EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_classEquality : compileHmrEqualityLog s6Step265EarlyControlPositiveArena [854, 794] 0 s6Step265EarlyControlLog.classWork=some (s6Step265EarlyControlEqualityArena,s6Step265EarlyControlLog.classWork,s6Step265EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step265EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step265EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step265EarlyControl_classOwned : ([769, 927, 854] : List Wire).toFinset⊆s6Step265EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_positiveBorrow : s6Step265EarlyControlZeroArena.checkBorrow (1) s6Step265EarlyControlLog.positiveWork=some s6Step265EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step265EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step265EarlyControlPositiveArena,s6Step265EarlyControlZeroArena,s6Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step265EarlyControl_class : compileHmrSourceClassLog s6Step265EarlyControlZeroArena false 769 s6Step265EarlyControlZeroPlan.top 0 854 s6Step265EarlyControlLog.positiveWork s6Step265EarlyControlLog.classWork=some s6Step265EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step265EarlyControlClassPlan s6Step265EarlyControlZeroArena false 769 s6Step265EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step265EarlyControl_classOwned
  · exact s6Step265EarlyControl_positiveBorrow
  · exact s6Step265EarlyControl_classEquality

private theorem s6Step265EarlyControl_entryRecordOwned : ([903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_fitBorrow : s6Step265EarlyControlFlagArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step265EarlyControlLog.recordFresh=some s6Step265EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step265EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step265EarlyControlFittedArena,s6Step265EarlyControlFlagArena,s6Step265EarlyControlLog,arenaWires]

private theorem s6Step265EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step265EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_fit : compileHmrRecordGrowLog s6Step265EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step265EarlyControlLog.recordFresh=some s6Step265EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step265EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step265EarlyControl_fitBorrow

private theorem s6Step265EarlyControl_flagsBorrow : s6Step265EarlyControlEqualityArena.checkBorrow (6) s6Step265EarlyControlLog.flagWork=some s6Step265EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step265EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step265EarlyControlFlagArena,s6Step265EarlyControlEqualityArena,s6Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step265EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s6Step265EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_flags : compileHmrFlagsLog s6Step265EarlyControlClassPlan.equalityArena s6Step265EarlyControlClassPlan.equality.top 253 252 251 s6Step265EarlyControlLog.flagWork=some s6Step265EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step265EarlyControl_flagsOwned⟩
  · exact s6Step265EarlyControl_flagsBorrow

private theorem s6Step265EarlyControl_historyBorrow : s6Step265EarlyControlArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step265EarlyControlLog.recordFresh=some s6Step265EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step265EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step265EarlyControlHistoryArena,s6Step265EarlyControlArena,s6Step265EarlyControlLog,arenaWires]

private theorem s6Step265EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_history : compileHmrRecordGrowLog s6Step265EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step265EarlyControlLog.recordFresh=some s6Step265EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step265EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step265EarlyControl_historyBorrow

private theorem s6Step265EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step265EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step265EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_sigmaRelease : s6Step265EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step265EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step265EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step265EarlyControlSigmaArena,s6Step265EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step265EarlyControl_sigma : compileHmrSigmaDropLog s6Step265EarlyControlHistoryArena false 0 0 254 854 []=some s6Step265EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step265EarlyControl_sigmaOwned⟩
  · exact s6Step265EarlyControl_sigmaRelease

private theorem s6Step265EarlyControl_zeroBorrow : s6Step265EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step265EarlyControlLog.zeroWork=some s6Step265EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step265EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step265EarlyControlZeroArena,s6Step265EarlyControlArena,s6Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step265EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step265EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EarlyControl_zero : compileHmrEqualityLog s6Step265EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step265EarlyControlLog.zeroWork=some (s6Step265EarlyControlZeroArena,s6Step265EarlyControlLog.zeroWork,s6Step265EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step265EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step265EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step265EarlyControl_logged : s6Step265EarlyControlPlan.Logged s6Step265EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 854 254 253 252 251 903 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step265EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step265EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step265EarlyControl_zero
  · exact s6Step265EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step265EarlyControl_flags
  · exact s6Step265EarlyControl_fit
  · exact s6Step265EarlyControl_history
  · exact s6Step265EarlyControl_sigma
  · exact s6Step265EarlyControl_branch

private theorem s6Step265EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step265EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 854 254 253 252 251 903 52 s6Step265EarlyControlLog=some s6Step265EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step265EarlyControlPlan s6Step265EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 854 254 253 252 251 903 52 s6Step265EarlyControl_logged

private def s6Step265EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step265EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step265EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],777⟩

private def s6Step265EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791],775⟩

private def s6Step265FrontBank : WindowBank := ⟨s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow⟩

private def s6Step265Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 927, 795]

private def s6Step265Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809, 907, 777]

private def s6Step265Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 833, 776]

private def s6Step265Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859, 862, 775]

private theorem s6Step265Counter_apart : Disjoint s6Step265HeadFvAfter.live s6Step265CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step265HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265Counter_borrowed : s6Step265HeadFvAfter.checkBorrow 4 s6Step265CounterWork=some s6Step265CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step265HeadFvAfter s6Step265CounterDuring s6Step265CounterWork.toFinset s6Step265Counter_bounded s6Step265Counter_apart rfl

private theorem s6Step265Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step265HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step265HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265Counter_checked : compileHmrCounterStepLog s6Step265HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step265CounterWork=some s6Step265CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step265HeadFvAfter.live := fun q hq => s6Step265Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step265Counter_borrowed

private def s6Step265EntryFAfter : Arena := s6Step265EntryFBefore

private theorem s6Step265EntryBank_incomingDistinct : ([s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265EntryF_Incoming : rowsOwned s6Step265EntryFBefore [s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow] 0 s6Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265EntryBank_outgoingOwned : rowsOwned s6Step265EntryGvAfter [s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step265EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265EntryF_Outgoing : rowsOwned s6Step265EntryGvAfter [s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut] :=
  hmrRows_owned_drop s6Step265EntryGvAfter [s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut] 0 s6Step265EntryBank_outgoingOwned

private theorem s6Step265EntryF_distinct : (s6Step265EntryFRow.sign::s6Step265EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265EntryF_owned : (s6Step265EntryFRow.sign::s6Step265EntryFRow.payload).toFinset⊆s6Step265EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EntryF_reserved : s6Step265EntryFBefore.reserve s6Step265EntryFFresh.toFinset=some s6Step265EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265EntryFFresh,arenaWires]
  · norm_num [s6Step265EntryFBefore,s6Step265EntryFFresh,arenaWires]
  · simp only [s6Step265EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step265EntryF_checked : planRowResizeLog s6Step265EntryFBefore s6Step265EntryFRow 139 s6Step265EntryFFresh=
    some (s6Step265EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩,growRow 795 s6Step265EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step265EntryFBefore s6Step265EntryFAfter s6Step265EntryFRow 139 s6Step265EntryFFresh
    s6Step265EntryF_distinct s6Step265EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265EntryF_reserved
  have rowEq : WindowRow.mk (s6Step265EntryFRow.payload++s6Step265EntryFFresh) s6Step265EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step265EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265EntryFvAfter : Arena := s6Step265EntryGAfter

private def s6Step265EntryFvBefore : Arena := s6Step265EntryGAfter

private theorem s6Step265EntryFv_Incoming : rowsOwned s6Step265EntryFvBefore [s6Step265EntryFvRow,s6Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow] 2 s6Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265EntryFv_Outgoing : rowsOwned s6Step265EntryGvAfter [s6Step265EntryFvOut,s6Step265EntryGvOut] :=
  hmrRows_owned_drop s6Step265EntryGvAfter [s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut] 2 s6Step265EntryBank_outgoingOwned

private theorem s6Step265EntryFv_distinct : (s6Step265EntryFvRow.sign::s6Step265EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265EntryFv_owned : (s6Step265EntryFvRow.sign::s6Step265EntryFvRow.payload).toFinset⊆s6Step265EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EntryFv_reserved : s6Step265EntryFvBefore.reserve s6Step265EntryFvFresh.toFinset=some s6Step265EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265EntryFvFresh,arenaWires]
  · norm_num [s6Step265EntryFvBefore,s6Step265EntryGAfter,s6Step265EntryFvFresh,arenaWires]
  · simp only [s6Step265EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step265EntryFv_checked : planRowResizeLog s6Step265EntryFvBefore s6Step265EntryFvRow 148 s6Step265EntryFvFresh=
    some (s6Step265EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩,growRow 776 s6Step265EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step265EntryFvBefore s6Step265EntryFvAfter s6Step265EntryFvRow 148 s6Step265EntryFvFresh
    s6Step265EntryFv_distinct s6Step265EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step265EntryFvRow.payload++s6Step265EntryFvFresh) s6Step265EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step265EntryGBefore : Arena := s6Step265EntryFBefore

private theorem s6Step265EntryG_Incoming : rowsOwned s6Step265EntryGBefore [s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow] 1 s6Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265EntryG_Outgoing : rowsOwned s6Step265EntryGvAfter [s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut] :=
  hmrRows_owned_drop s6Step265EntryGvAfter [s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut] 1 s6Step265EntryBank_outgoingOwned

private theorem s6Step265EntryG_distinct : (s6Step265EntryGRow.sign::s6Step265EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265EntryG_owned : (s6Step265EntryGRow.sign::s6Step265EntryGRow.payload).toFinset⊆s6Step265EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EntryG_reserved : s6Step265EntryGBefore.reserve s6Step265EntryGFresh.toFinset=some s6Step265EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step265EntryGBefore,s6Step265EntryFBefore,s6Step265EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step265EntryGAfter,s6Step265EntryGBefore,s6Step265EntryFBefore,s6Step265EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265EntryG_checked : planRowResizeLog s6Step265EntryGBefore s6Step265EntryGRow 139 s6Step265EntryGFresh=
    some (s6Step265EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809],777⟩,growRow 777 s6Step265EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step265EntryGBefore s6Step265EntryGAfter s6Step265EntryGRow 139 s6Step265EntryGFresh
    s6Step265EntryG_distinct s6Step265EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265EntryG_reserved
  have rowEq : WindowRow.mk (s6Step265EntryGRow.payload++s6Step265EntryGFresh) s6Step265EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step265EntryGvBefore : Arena := s6Step265EntryGAfter

private theorem s6Step265EntryGv_Incoming : rowsOwned s6Step265EntryGvBefore [s6Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow] 3 s6Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265EntryGv_Outgoing : rowsOwned s6Step265EntryGvAfter [s6Step265EntryGvOut] :=
  hmrRows_owned_drop s6Step265EntryGvAfter [s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut] 3 s6Step265EntryBank_outgoingOwned

private theorem s6Step265EntryGv_distinct : (s6Step265EntryGvRow.sign::s6Step265EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265EntryGv_owned : (s6Step265EntryGvRow.sign::s6Step265EntryGvRow.payload).toFinset⊆s6Step265EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265EntryGv_reserved : s6Step265EntryGvBefore.reserve s6Step265EntryGvFresh.toFinset=some s6Step265EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265EntryGvFresh,arenaWires]
  · norm_num [s6Step265EntryGvBefore,s6Step265EntryGAfter,s6Step265EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step265EntryGvAfter,s6Step265EntryGvBefore,s6Step265EntryGAfter,s6Step265EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265EntryGv_checked : planRowResizeLog s6Step265EntryGvBefore s6Step265EntryGvRow 148 s6Step265EntryGvFresh=
    some (s6Step265EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859],775⟩,growRow 775 s6Step265EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step265EntryGvBefore s6Step265EntryGvAfter s6Step265EntryGvRow 148 s6Step265EntryGvFresh
    s6Step265EntryGv_distinct s6Step265EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step265EntryGvRow.payload++s6Step265EntryGvFresh) s6Step265EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step265EntryBank_rows : planWindowRowsLog s6Step265EntryFBefore [(s6Step265EntryFRow,139),(s6Step265EntryGRow,139),(s6Step265EntryFvRow,148),(s6Step265EntryGvRow,148)] [s6Step265EntryFFresh,s6Step265EntryGFresh,s6Step265EntryFvFresh,s6Step265EntryGvFresh]=
    some (s6Step265EntryGvAfter,[s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut],(growRow 795 s6Step265EntryFFresh ++ (growRow 777 s6Step265EntryGFresh ++ (growRow 776 s6Step265EntryFvFresh ++ (growRow 775 s6Step265EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step265EntryGvAfter [] []=some (s6Step265EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step265EntryGvBefore s6Step265EntryGvAfter s6Step265EntryGvAfter
    s6Step265EntryGvRow s6Step265EntryGvOut 148 s6Step265EntryGvFresh [] [] []
    (growRow 775 s6Step265EntryGvFresh) ([]) s6Step265EntryGv_Incoming s6Step265EntryGv_checked h4 s6Step265EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step265EntryFvBefore s6Step265EntryFvAfter s6Step265EntryGvAfter
    s6Step265EntryFvRow s6Step265EntryFvOut 148 s6Step265EntryFvFresh [(s6Step265EntryGvRow,148)] [s6Step265EntryGvFresh] [s6Step265EntryGvOut]
    (growRow 776 s6Step265EntryFvFresh) ((growRow 775 s6Step265EntryGvFresh ++ [])) s6Step265EntryFv_Incoming s6Step265EntryFv_checked h3 s6Step265EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step265EntryGBefore s6Step265EntryGAfter s6Step265EntryGvAfter
    s6Step265EntryGRow s6Step265EntryGOut 139 s6Step265EntryGFresh [(s6Step265EntryFvRow,148),(s6Step265EntryGvRow,148)] [s6Step265EntryFvFresh,s6Step265EntryGvFresh] [s6Step265EntryFvOut,s6Step265EntryGvOut]
    (growRow 777 s6Step265EntryGFresh) ((growRow 776 s6Step265EntryFvFresh ++ (growRow 775 s6Step265EntryGvFresh ++ []))) s6Step265EntryG_Incoming s6Step265EntryG_checked h2 s6Step265EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step265EntryFBefore s6Step265EntryFAfter s6Step265EntryGvAfter
    s6Step265EntryFRow s6Step265EntryFOut 139 s6Step265EntryFFresh [(s6Step265EntryGRow,139),(s6Step265EntryFvRow,148),(s6Step265EntryGvRow,148)] [s6Step265EntryGFresh,s6Step265EntryFvFresh,s6Step265EntryGvFresh] [s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut]
    (growRow 795 s6Step265EntryFFresh) ((growRow 777 s6Step265EntryGFresh ++ (growRow 776 s6Step265EntryFvFresh ++ (growRow 775 s6Step265EntryGvFresh ++ [])))) s6Step265EntryF_Incoming s6Step265EntryF_checked h1 s6Step265EntryF_Outgoing
  exact h0

private theorem s6Step265EntryBank_checked : compileHmrBankResizeLog .entry s6Step265EntryFBefore ⟨s6Step265EntryFRow,s6Step265EntryGRow,s6Step265EntryFvRow,s6Step265EntryGvRow⟩ ⟨139,139,148,148⟩ [s6Step265EntryFFresh,s6Step265EntryGFresh,s6Step265EntryFvFresh,s6Step265EntryGvFresh]=
    some (s6Step265EntryGvAfter,⟨s6Step265EntryFOut,s6Step265EntryGOut,s6Step265EntryFvOut,s6Step265EntryGvOut⟩,(growRow 795 s6Step265EntryFFresh ++ (growRow 777 s6Step265EntryGFresh ++ (growRow 776 s6Step265EntryFvFresh ++ (growRow 775 s6Step265EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step265EntryBank_rows]
  rfl

private def s6Step265ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265ExitFBefore : Arena := s6Step265ExitGAfter

private def s6Step265ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 927],795⟩

private def s6Step265ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 833],776⟩

private def s6Step265ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809, 907],777⟩

private def s6Step265ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859, 862],775⟩

private theorem s6Step265ExitBank_incomingDistinct : ([s6Step265ExitGRow,s6Step265ExitFRow,s6Step265ExitFvRow,s6Step265ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265ExitF_Incoming : rowsOwned s6Step265ExitFBefore [s6Step265ExitFRow,s6Step265ExitFvRow,s6Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265ExitGRow,s6Step265ExitFRow,s6Step265ExitFvRow,s6Step265ExitGvRow] 1 s6Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265ExitBank_outgoingOwned : rowsOwned s6Step265ExitGvAfter [s6Step265ExitGOut,s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step265ExitGvAfter (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265ExitF_Outgoing : rowsOwned s6Step265ExitGvAfter [s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut] :=
  hmrRows_owned_drop s6Step265ExitGvAfter [s6Step265ExitGOut,s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut] 1 s6Step265ExitBank_outgoingOwned

private theorem s6Step265ExitF_distinct : (s6Step265ExitFRow.sign::s6Step265ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265ExitF_owned : (s6Step265ExitFRow.sign::s6Step265ExitFRow.payload).toFinset⊆s6Step265ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265ExitF_retired : s6Step265ExitFBefore.retireSet s6Step265ExitFExtra.toFinset=s6Step265ExitFAfter := by
  unfold Arena.retireSet s6Step265ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step265ExitFBefore,s6Step265ExitGAfter,s6Step265ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step265ExitF_checked : planRowResizeLog s6Step265ExitFBefore s6Step265ExitFRow 138 []=
    some (s6Step265ExitFAfter,s6Step265ExitFOut,shrinkRow 795 s6Step265ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step265ExitFBefore s6Step265ExitFRow 138 s6Step265ExitF_distinct s6Step265ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step265ExitFRow.payload.take 138) s6Step265ExitFRow.sign=s6Step265ExitFOut := by decide +kernel
  have hi : s6Step265ExitFRow.payload.drop 138=s6Step265ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step265ExitF_retired] at result
  exact result

private def s6Step265ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265ExitFvBefore : Arena := s6Step265ExitFAfter

private theorem s6Step265ExitFv_Incoming : rowsOwned s6Step265ExitFvBefore [s6Step265ExitFvRow,s6Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265ExitGRow,s6Step265ExitFRow,s6Step265ExitFvRow,s6Step265ExitGvRow] 2 s6Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265ExitFvBefore (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265ExitFv_Outgoing : rowsOwned s6Step265ExitGvAfter [s6Step265ExitFvOut,s6Step265ExitGvOut] :=
  hmrRows_owned_drop s6Step265ExitGvAfter [s6Step265ExitGOut,s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut] 2 s6Step265ExitBank_outgoingOwned

private theorem s6Step265ExitFv_distinct : (s6Step265ExitFvRow.sign::s6Step265ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265ExitFv_owned : (s6Step265ExitFvRow.sign::s6Step265ExitFvRow.payload).toFinset⊆s6Step265ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265ExitFvBefore (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265ExitFv_retired : s6Step265ExitFvBefore.retireSet s6Step265ExitFvExtra.toFinset=s6Step265ExitFvAfter := by
  unfold Arena.retireSet s6Step265ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step265ExitFvBefore,s6Step265ExitFAfter,s6Step265ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step265ExitFv_checked : planRowResizeLog s6Step265ExitFvBefore s6Step265ExitFvRow 148 []=
    some (s6Step265ExitFvAfter,s6Step265ExitFvOut,shrinkRow 776 s6Step265ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step265ExitFvBefore s6Step265ExitFvRow 148 s6Step265ExitFv_distinct s6Step265ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step265ExitFvRow.payload.take 148) s6Step265ExitFvRow.sign=s6Step265ExitFvOut := by decide +kernel
  have hi : s6Step265ExitFvRow.payload.drop 148=s6Step265ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step265ExitFv_retired] at result
  exact result

private def s6Step265ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step265ExitG_Incoming : rowsOwned s6Step265ExitGBefore [s6Step265ExitGRow,s6Step265ExitFRow,s6Step265ExitFvRow,s6Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265ExitGRow,s6Step265ExitFRow,s6Step265ExitFvRow,s6Step265ExitGvRow] 0 s6Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265ExitG_Outgoing : rowsOwned s6Step265ExitGvAfter [s6Step265ExitGOut,s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut] :=
  hmrRows_owned_drop s6Step265ExitGvAfter [s6Step265ExitGOut,s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut] 0 s6Step265ExitBank_outgoingOwned

private theorem s6Step265ExitG_distinct : (s6Step265ExitGRow.sign::s6Step265ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265ExitG_owned : (s6Step265ExitGRow.sign::s6Step265ExitGRow.payload).toFinset⊆s6Step265ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265ExitG_retired : s6Step265ExitGBefore.retireSet s6Step265ExitGExtra.toFinset=s6Step265ExitGAfter := by
  unfold Arena.retireSet s6Step265ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step265ExitGBefore,s6Step265ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step265ExitG_checked : planRowResizeLog s6Step265ExitGBefore s6Step265ExitGRow 137 []=
    some (s6Step265ExitGAfter,s6Step265ExitGOut,shrinkRow 777 s6Step265ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step265ExitGBefore s6Step265ExitGRow 137 s6Step265ExitG_distinct s6Step265ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step265ExitGRow.payload.take 137) s6Step265ExitGRow.sign=s6Step265ExitGOut := by decide +kernel
  have hi : s6Step265ExitGRow.payload.drop 137=s6Step265ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step265ExitG_retired] at result
  exact result

private def s6Step265ExitGvBefore : Arena := s6Step265ExitFvAfter

private theorem s6Step265ExitGv_Incoming : rowsOwned s6Step265ExitGvBefore [s6Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265ExitGRow,s6Step265ExitFRow,s6Step265ExitFvRow,s6Step265ExitGvRow] 3 s6Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265ExitGvBefore (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265ExitGv_Outgoing : rowsOwned s6Step265ExitGvAfter [s6Step265ExitGvOut] :=
  hmrRows_owned_drop s6Step265ExitGvAfter [s6Step265ExitGOut,s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut] 3 s6Step265ExitBank_outgoingOwned

private theorem s6Step265ExitGv_distinct : (s6Step265ExitGvRow.sign::s6Step265ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265ExitGv_owned : (s6Step265ExitGvRow.sign::s6Step265ExitGvRow.payload).toFinset⊆s6Step265ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265ExitGvBefore (fun q => (0≤q ∧ q<394) ∨ (395≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265ExitGv_retired : s6Step265ExitGvBefore.retireSet s6Step265ExitGvExtra.toFinset=s6Step265ExitGvAfter := by
  unfold Arena.retireSet s6Step265ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step265ExitGvBefore,s6Step265ExitFvAfter,s6Step265ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step265ExitGv_checked : planRowResizeLog s6Step265ExitGvBefore s6Step265ExitGvRow 147 []=
    some (s6Step265ExitGvAfter,s6Step265ExitGvOut,shrinkRow 775 s6Step265ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step265ExitGvBefore s6Step265ExitGvRow 147 s6Step265ExitGv_distinct s6Step265ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step265ExitGvRow.payload.take 147) s6Step265ExitGvRow.sign=s6Step265ExitGvOut := by decide +kernel
  have hi : s6Step265ExitGvRow.payload.drop 147=s6Step265ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step265ExitGv_retired] at result
  exact result

private theorem s6Step265ExitBank_rows : planWindowRowsLog s6Step265ExitGBefore [(s6Step265ExitGRow,137),(s6Step265ExitFRow,138),(s6Step265ExitFvRow,148),(s6Step265ExitGvRow,147)] [[],[],[],[]]=
    some (s6Step265ExitGvAfter,[s6Step265ExitGOut,s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut],(shrinkRow 777 s6Step265ExitGExtra ++ (shrinkRow 795 s6Step265ExitFExtra ++ (shrinkRow 776 s6Step265ExitFvExtra ++ (shrinkRow 775 s6Step265ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step265ExitGvAfter [] []=some (s6Step265ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step265ExitGvBefore s6Step265ExitGvAfter s6Step265ExitGvAfter
    s6Step265ExitGvRow s6Step265ExitGvOut 147 [] [] [] []
    (shrinkRow 775 s6Step265ExitGvExtra) ([]) s6Step265ExitGv_Incoming s6Step265ExitGv_checked h4 s6Step265ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step265ExitFvBefore s6Step265ExitFvAfter s6Step265ExitGvAfter
    s6Step265ExitFvRow s6Step265ExitFvOut 148 [] [(s6Step265ExitGvRow,147)] [[]] [s6Step265ExitGvOut]
    (shrinkRow 776 s6Step265ExitFvExtra) ((shrinkRow 775 s6Step265ExitGvExtra ++ [])) s6Step265ExitFv_Incoming s6Step265ExitFv_checked h3 s6Step265ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step265ExitFBefore s6Step265ExitFAfter s6Step265ExitGvAfter
    s6Step265ExitFRow s6Step265ExitFOut 138 [] [(s6Step265ExitFvRow,148),(s6Step265ExitGvRow,147)] [[],[]] [s6Step265ExitFvOut,s6Step265ExitGvOut]
    (shrinkRow 795 s6Step265ExitFExtra) ((shrinkRow 776 s6Step265ExitFvExtra ++ (shrinkRow 775 s6Step265ExitGvExtra ++ []))) s6Step265ExitF_Incoming s6Step265ExitF_checked h2 s6Step265ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step265ExitGBefore s6Step265ExitGAfter s6Step265ExitGvAfter
    s6Step265ExitGRow s6Step265ExitGOut 137 [] [(s6Step265ExitFRow,138),(s6Step265ExitFvRow,148),(s6Step265ExitGvRow,147)] [[],[],[]] [s6Step265ExitFOut,s6Step265ExitFvOut,s6Step265ExitGvOut]
    (shrinkRow 777 s6Step265ExitGExtra) ((shrinkRow 795 s6Step265ExitFExtra ++ (shrinkRow 776 s6Step265ExitFvExtra ++ (shrinkRow 775 s6Step265ExitGvExtra ++ [])))) s6Step265ExitG_Incoming s6Step265ExitG_checked h1 s6Step265ExitG_Outgoing
  exact h0

private theorem s6Step265ExitBank_checked : compileHmrBankResizeLog .exit s6Step265ExitGBefore ⟨s6Step265ExitFRow,s6Step265ExitGRow,s6Step265ExitFvRow,s6Step265ExitGvRow⟩ ⟨138,137,148,147⟩ [[],[],[],[]]=
    some (s6Step265ExitGvAfter,⟨s6Step265ExitFOut,s6Step265ExitGOut,s6Step265ExitFvOut,s6Step265ExitGvOut⟩,(shrinkRow 777 s6Step265ExitGExtra ++ (shrinkRow 795 s6Step265ExitFExtra ++ (shrinkRow 776 s6Step265ExitFvExtra ++ (shrinkRow 775 s6Step265ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step265ExitBank_rows]
  rfl

private theorem s6Step265Add0_apart : Disjoint s6Step265Add0Arena.live s6Step265Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step265Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265Add0_card : s6Step265Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step265Add0_borrowed : s6Step265Add0Arena.checkBorrow (hmrHybridCount s6Step265Add0Arena s6Step265Add0B.length) s6Step265Add0Work=some s6Step265Add0During := by
  have len : s6Step265Add0Work.length=hmrHybridCount s6Step265Add0Arena s6Step265Add0B.length := by
    rw [hmrHybridCount,s6Step265Add0_card]
    decide +kernel
  have nd : s6Step265Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step265Add0Arena s6Step265Add0During s6Step265Add0Work.toFinset s6Step265Add0_bounded s6Step265Add0_apart rfl

private theorem s6Step265Add0_distinct : (830::903::805::(s6Step265Add0A++s6Step265Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265Add0_owned : (830::903::805::(s6Step265Add0A++s6Step265Add0B)).toFinset⊆s6Step265Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step265Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265Add0_checked : compileHmrHybridCinLog s6Step265Add0Arena 903 830 805 s6Step265Add0A s6Step265Add0B s6Step265Add0Work=some s6Step265Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step265Add0Arena s6Step265Add0During 903 830 805 s6Step265Add0A s6Step265Add0B s6Step265Add0Work
    (by decide +kernel) (by decide +kernel) s6Step265Add0_distinct
    (fun q hq => s6Step265Add0_owned (List.mem_toFinset.mpr hq)) s6Step265Add0_borrowed

private theorem s6Step265Add1_apart : Disjoint s6Step265Add1Arena.live s6Step265Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step265Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265Add1_card : s6Step265Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step265Add1_borrowed : s6Step265Add1Arena.checkBorrow (hmrHybridCount s6Step265Add1Arena s6Step265Add1B.length) s6Step265Add1Work=some s6Step265Add1During := by
  have len : s6Step265Add1Work.length=hmrHybridCount s6Step265Add1Arena s6Step265Add1B.length := by
    rw [hmrHybridCount,s6Step265Add1_card]
    decide +kernel
  have nd : s6Step265Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step265Add1Arena s6Step265Add1During s6Step265Add1Work.toFinset s6Step265Add1_bounded s6Step265Add1_apart rfl

private theorem s6Step265Add1_distinct : (830::903::805::(s6Step265Add1A++s6Step265Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265Add1_owned : (830::903::805::(s6Step265Add1A++s6Step265Add1B)).toFinset⊆s6Step265Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step265Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265Add1_checked : compileHmrHybridCinLog s6Step265Add1Arena 903 830 805 s6Step265Add1A s6Step265Add1B s6Step265Add1Work=some s6Step265Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step265Add1Arena s6Step265Add1During 903 830 805 s6Step265Add1A s6Step265Add1B s6Step265Add1Work
    (by decide +kernel) (by decide +kernel) s6Step265Add1_distinct
    (fun q hq => s6Step265Add1_owned (List.mem_toFinset.mpr hq)) s6Step265Add1_borrowed

private theorem s6Step265F4_apart : Disjoint (s6Step265Add0A++s6Step265Add0B).toFinset (s6Step265Add1A++s6Step265Add1B).toFinset := by
  have nd : ((s6Step265Add0A++s6Step265Add0B)++(s6Step265Add1A++s6Step265Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step265F4_carry : s6Step265F4FlagArena.checkBorrow 1 [805]=some s6Step265Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step265F4FlagArena,s6Step265HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step265F4FlagArena,s6Step265HeadFvAfter,s6Step265Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265F4_distinct : (854::903::830::805::((s6Step265Add0A++s6Step265Add1A)++(s6Step265Add0B++s6Step265Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265F4_flag : s6Step265HeadFvAfter.checkBorrow 1 [830]=some s6Step265F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step265HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step265F4_owned : (854::903::((s6Step265Add0A++s6Step265Add1A)++(s6Step265Add0B++s6Step265Add1B))).toFinset⊆s6Step265HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step265HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265F4_checked : compileHmrHybridF4Log s6Step265HeadFvAfter 854 903 s6Step265Add0A s6Step265Add0B s6Step265Add1A s6Step265Add1B [830] [805] s6Step265Add0Work s6Step265Add1Work=some s6Step265F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step265HeadFvAfter s6Step265F4FlagArena s6Step265Add0Arena s6Step265Add0During s6Step265Add1During 854 903
    s6Step265Add0A s6Step265Add0B s6Step265Add1A s6Step265Add1B [830] [805] s6Step265Add0Work s6Step265Add1Work
    (fun q hq => s6Step265F4_owned (List.mem_toFinset.mpr hq)) s6Step265F4_flag s6Step265F4_carry
    s6Step265F4_distinct s6Step265F4_apart s6Step265Add0_checked s6Step265Add1_checked

private theorem s6Step265Front_branch : s6Step265FrontSigmaArena.checkBorrow 1 [903]=some s6Step265HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step265FrontSigmaArena,s6Step265EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step265FrontSigmaArena,s6Step265EntryGvAfter,s6Step265HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265Front_entry : HmrFrontEntryValid s6Step265EntryFBefore s6Step265FrontBank 139 148 ⟨138,137,148,147⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step265FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step265EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step265EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (860≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step265FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step265Front_sigma : s6Step265EntryGvAfter.checkBorrow 1 [854]=some s6Step265FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step265EntryGvAfter,arenaWires]
  · rfl

private def s6Step265HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265HeadFBefore : Arena := s6Step265HeadGAfter

private def s6Step265HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step265HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810],776⟩

private def s6Step265HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809],777⟩

private def s6Step265HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859],775⟩

private theorem s6Step265HeadBank_incomingDistinct : ([s6Step265HeadGRow,s6Step265HeadFRow,s6Step265HeadGvRow,s6Step265HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265HeadF_Incoming : rowsOwned s6Step265HeadFBefore [s6Step265HeadFRow,s6Step265HeadGvRow,s6Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265HeadGRow,s6Step265HeadFRow,s6Step265HeadGvRow,s6Step265HeadFvRow] 1 s6Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265HeadBank_outgoingOwned : rowsOwned s6Step265HeadFvAfter [s6Step265HeadGOut,s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step265HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265HeadF_Outgoing : rowsOwned s6Step265HeadFvAfter [s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut] :=
  hmrRows_owned_drop s6Step265HeadFvAfter [s6Step265HeadGOut,s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut] 1 s6Step265HeadBank_outgoingOwned

private theorem s6Step265HeadF_distinct : (s6Step265HeadFRow.sign::s6Step265HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265HeadF_owned : (s6Step265HeadFRow.sign::s6Step265HeadFRow.payload).toFinset⊆s6Step265HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265HeadF_reserved : s6Step265HeadFBefore.reserve s6Step265HeadFFresh.toFinset=some s6Step265HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265HeadFFresh,arenaWires]
  · norm_num [s6Step265HeadFBefore,s6Step265HeadGAfter,s6Step265HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step265HeadFAfter,s6Step265HeadFBefore,s6Step265HeadGAfter,s6Step265HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265HeadF_checked : planRowResizeLog s6Step265HeadFBefore s6Step265HeadFRow 140 s6Step265HeadFFresh=
    some (s6Step265HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 927],795⟩,growRow 795 s6Step265HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step265HeadFBefore s6Step265HeadFAfter s6Step265HeadFRow 140 s6Step265HeadFFresh
    s6Step265HeadF_distinct s6Step265HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265HeadF_reserved
  have rowEq : WindowRow.mk (s6Step265HeadFRow.payload++s6Step265HeadFFresh) s6Step265HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 927],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step265HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step265HeadFvBefore : Arena := s6Step265HeadGvAfter

private theorem s6Step265HeadFv_Incoming : rowsOwned s6Step265HeadFvBefore [s6Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265HeadGRow,s6Step265HeadFRow,s6Step265HeadGvRow,s6Step265HeadFvRow] 3 s6Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265HeadFv_Outgoing : rowsOwned s6Step265HeadFvAfter [s6Step265HeadFvOut] :=
  hmrRows_owned_drop s6Step265HeadFvAfter [s6Step265HeadGOut,s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut] 3 s6Step265HeadBank_outgoingOwned

private theorem s6Step265HeadFv_distinct : (s6Step265HeadFvRow.sign::s6Step265HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265HeadFv_owned : (s6Step265HeadFvRow.sign::s6Step265HeadFvRow.payload).toFinset⊆s6Step265HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265HeadFv_reserved : s6Step265HeadFvBefore.reserve s6Step265HeadFvFresh.toFinset=some s6Step265HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265HeadFvFresh,arenaWires]
  · norm_num [s6Step265HeadFvBefore,s6Step265HeadGvAfter,s6Step265HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step265HeadFvAfter,s6Step265HeadFvBefore,s6Step265HeadGvAfter,s6Step265HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265HeadFv_checked : planRowResizeLog s6Step265HeadFvBefore s6Step265HeadFvRow 149 s6Step265HeadFvFresh=
    some (s6Step265HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 833],776⟩,growRow 776 s6Step265HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step265HeadFvBefore s6Step265HeadFvAfter s6Step265HeadFvRow 149 s6Step265HeadFvFresh
    s6Step265HeadFv_distinct s6Step265HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step265HeadFvRow.payload++s6Step265HeadFvFresh) s6Step265HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 833],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step265HeadG_Incoming : rowsOwned s6Step265HeadGBefore [s6Step265HeadGRow,s6Step265HeadFRow,s6Step265HeadGvRow,s6Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265HeadGRow,s6Step265HeadFRow,s6Step265HeadGvRow,s6Step265HeadFvRow] 0 s6Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265HeadG_Outgoing : rowsOwned s6Step265HeadFvAfter [s6Step265HeadGOut,s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut] :=
  hmrRows_owned_drop s6Step265HeadFvAfter [s6Step265HeadGOut,s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut] 0 s6Step265HeadBank_outgoingOwned

private theorem s6Step265HeadG_distinct : (s6Step265HeadGRow.sign::s6Step265HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265HeadG_owned : (s6Step265HeadGRow.sign::s6Step265HeadGRow.payload).toFinset⊆s6Step265HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265HeadG_reserved : s6Step265HeadGBefore.reserve s6Step265HeadGFresh.toFinset=some s6Step265HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265HeadGFresh,arenaWires]
  · norm_num [s6Step265HeadGBefore,s6Step265HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step265HeadGAfter,s6Step265HeadGBefore,s6Step265HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265HeadG_checked : planRowResizeLog s6Step265HeadGBefore s6Step265HeadGRow 140 s6Step265HeadGFresh=
    some (s6Step265HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809, 907],777⟩,growRow 777 s6Step265HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step265HeadGBefore s6Step265HeadGAfter s6Step265HeadGRow 140 s6Step265HeadGFresh
    s6Step265HeadG_distinct s6Step265HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265HeadG_reserved
  have rowEq : WindowRow.mk (s6Step265HeadGRow.payload++s6Step265HeadGFresh) s6Step265HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 794, 809, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step265HeadGvBefore : Arena := s6Step265HeadFAfter

private theorem s6Step265HeadGv_Incoming : rowsOwned s6Step265HeadGvBefore [s6Step265HeadGvRow,s6Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step265HeadGRow,s6Step265HeadFRow,s6Step265HeadGvRow,s6Step265HeadFvRow] 2 s6Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step265HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step265HeadGv_Outgoing : rowsOwned s6Step265HeadFvAfter [s6Step265HeadGvOut,s6Step265HeadFvOut] :=
  hmrRows_owned_drop s6Step265HeadFvAfter [s6Step265HeadGOut,s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut] 2 s6Step265HeadBank_outgoingOwned

private theorem s6Step265HeadGv_distinct : (s6Step265HeadGvRow.sign::s6Step265HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step265HeadGv_owned : (s6Step265HeadGvRow.sign::s6Step265HeadGvRow.payload).toFinset⊆s6Step265HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step265HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step265HeadGv_reserved : s6Step265HeadGvBefore.reserve s6Step265HeadGvFresh.toFinset=some s6Step265HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step265HeadGvFresh,arenaWires]
  · norm_num [s6Step265HeadGvBefore,s6Step265HeadFAfter,s6Step265HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step265HeadGvAfter,s6Step265HeadGvBefore,s6Step265HeadFAfter,s6Step265HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step265HeadGv_checked : planRowResizeLog s6Step265HeadGvBefore s6Step265HeadGvRow 149 s6Step265HeadGvFresh=
    some (s6Step265HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859, 862],775⟩,growRow 775 s6Step265HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step265HeadGvBefore s6Step265HeadGvAfter s6Step265HeadGvRow 149 s6Step265HeadGvFresh
    s6Step265HeadGv_distinct s6Step265HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step265HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step265HeadGvRow.payload++s6Step265HeadGvFresh) s6Step265HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 859, 862],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step265HeadBank_rows : planWindowRowsLog s6Step265HeadGBefore [(s6Step265HeadGRow,140),(s6Step265HeadFRow,140),(s6Step265HeadGvRow,149),(s6Step265HeadFvRow,149)] [s6Step265HeadGFresh,s6Step265HeadFFresh,s6Step265HeadGvFresh,s6Step265HeadFvFresh]=
    some (s6Step265HeadFvAfter,[s6Step265HeadGOut,s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut],(growRow 777 s6Step265HeadGFresh ++ (growRow 795 s6Step265HeadFFresh ++ (growRow 775 s6Step265HeadGvFresh ++ (growRow 776 s6Step265HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step265HeadFvAfter [] []=some (s6Step265HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step265HeadFvBefore s6Step265HeadFvAfter s6Step265HeadFvAfter
    s6Step265HeadFvRow s6Step265HeadFvOut 149 s6Step265HeadFvFresh [] [] []
    (growRow 776 s6Step265HeadFvFresh) ([]) s6Step265HeadFv_Incoming s6Step265HeadFv_checked h4 s6Step265HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step265HeadGvBefore s6Step265HeadGvAfter s6Step265HeadFvAfter
    s6Step265HeadGvRow s6Step265HeadGvOut 149 s6Step265HeadGvFresh [(s6Step265HeadFvRow,149)] [s6Step265HeadFvFresh] [s6Step265HeadFvOut]
    (growRow 775 s6Step265HeadGvFresh) ((growRow 776 s6Step265HeadFvFresh ++ [])) s6Step265HeadGv_Incoming s6Step265HeadGv_checked h3 s6Step265HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step265HeadFBefore s6Step265HeadFAfter s6Step265HeadFvAfter
    s6Step265HeadFRow s6Step265HeadFOut 140 s6Step265HeadFFresh [(s6Step265HeadGvRow,149),(s6Step265HeadFvRow,149)] [s6Step265HeadGvFresh,s6Step265HeadFvFresh] [s6Step265HeadGvOut,s6Step265HeadFvOut]
    (growRow 795 s6Step265HeadFFresh) ((growRow 775 s6Step265HeadGvFresh ++ (growRow 776 s6Step265HeadFvFresh ++ []))) s6Step265HeadF_Incoming s6Step265HeadF_checked h2 s6Step265HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step265HeadGBefore s6Step265HeadGAfter s6Step265HeadFvAfter
    s6Step265HeadGRow s6Step265HeadGOut 140 s6Step265HeadGFresh [(s6Step265HeadFRow,140),(s6Step265HeadGvRow,149),(s6Step265HeadFvRow,149)] [s6Step265HeadFFresh,s6Step265HeadGvFresh,s6Step265HeadFvFresh] [s6Step265HeadFOut,s6Step265HeadGvOut,s6Step265HeadFvOut]
    (growRow 777 s6Step265HeadGFresh) ((growRow 795 s6Step265HeadFFresh ++ (growRow 775 s6Step265HeadGvFresh ++ (growRow 776 s6Step265HeadFvFresh ++ [])))) s6Step265HeadG_Incoming s6Step265HeadG_checked h1 s6Step265HeadG_Outgoing
  exact h0

private theorem s6Step265HeadBank_checked : compileHmrBankResizeLog .headroom s6Step265HeadGBefore ⟨s6Step265HeadFRow,s6Step265HeadGRow,s6Step265HeadFvRow,s6Step265HeadGvRow⟩ ⟨140,140,149,149⟩ [s6Step265HeadGFresh,s6Step265HeadFFresh,s6Step265HeadGvFresh,s6Step265HeadFvFresh]=
    some (s6Step265HeadFvAfter,⟨s6Step265HeadFOut,s6Step265HeadGOut,s6Step265HeadFvOut,s6Step265HeadGvOut⟩,(growRow 777 s6Step265HeadGFresh ++ (growRow 795 s6Step265HeadFFresh ++ (growRow 775 s6Step265HeadGvFresh ++ (growRow 776 s6Step265HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step265HeadBank_rows]
  rfl

private theorem s6Step265Front_checked : compileHmrSourceFrontLog s6Step265EntryFBefore s6Step265FrontBank 139 148 ⟨138,137,148,147⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step265FrontLog=some s6Step265FrontPlan := by
  have pairEq : s6Step265FrontPair=⟨s6Step265HeadFRow,s6Step265HeadGRow,s6Step265HeadFvRow,s6Step265HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step265FrontHead=⟨s6Step265ExitFRow,s6Step265ExitGRow,s6Step265ExitFvRow,s6Step265ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step265Add0A=s6Step265FrontHead.f.wires := by decide +kernel
  have gEq : s6Step265Add0B=s6Step265FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step265Add1A=s6Step265FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step265Add1B=s6Step265FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step265EntryFBefore s6Step265FrontBank 139 148 ⟨138,137,148,147⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step265FrontLog s6Step265FrontPlan
  · exact s6Step265Front_entry
  · exact s6Step265EntryBank_checked
  · exact s6Step265Front_sigma
  · rfl
  · exact s6Step265Front_branch
  · rfl
  · simpa only [s6Step265FrontPlan,pairEq] using s6Step265HeadBank_checked
  · simpa only [s6Step265FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step265F4_checked
  · exact s6Step265Counter_checked
  · rfl
  · simpa only [s6Step265FrontPlan,headEq] using s6Step265ExitBank_checked

private theorem s6Step265Complete_explicit_checked : compileHmrEarlyStepLog s6Step265EntryFBefore s6Step265FrontBank 139 148 ⟨138,137,148,147⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step265CompleteLog=some s6Step265CompletePlan := by
  let Q := s6Step265EarlyControlPlan
  have hq := s6Step265EarlyControl_plan_checked
  have fv1 : s6Step265CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step265CompleteOut.fv.payload[2]?.getD s6Step265CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step265CompleteOut.fv.payload[3]?.getD s6Step265CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step265CompleteOut.fv.payload[4]?.getD s6Step265CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step265EntryFBefore s6Step265EarlyControlArena s6Step265FrontBank 139 148 ⟨138,137,148,147⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step265CompleteLog s6Step265FrontPlan Q
    s6Step265Front_checked s6Step265Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step265Complete_owned s6Step265Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step265EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 854 s6Step265CompleteOut.fv.second (s6Step265CompleteOut.fv.payload[2]?.getD s6Step265CompleteOut.fv.sign) (s6Step265CompleteOut.fv.payload[3]?.getD s6Step265CompleteOut.fv.sign) (s6Step265CompleteOut.fv.payload[4]?.getD s6Step265CompleteOut.fv.sign) 903 52 s6Step265EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep265Arena : Arena := s6Step265EntryFBefore
def s6PrivateStep265Bank : WindowBank := s6Step265FrontBank
def s6PrivateStep265Spec : HmrSourceWalkStepLog := ⟨139,148,⟨138,137,148,147⟩,52,.early s6Step265CompleteLog⟩
def s6PrivateStep265Plan : HmrSourceStepPlan := .early s6Step265CompletePlan
theorem s6PrivateStep265_source : s6PrivateStep265Spec=s6ObservedLogs256[9] := rfl
theorem s6PrivateStep265_checked : compileHmrSourceStepLog s6PrivateStep265Arena s6PrivateStep265Bank
    s6PrivateStep265Spec.fgWidth s6PrivateStep265Spec.vWidth s6PrivateStep265Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]
    6 498 265 s6PrivateStep265Spec.need none s6PrivateStep265Spec.log=some s6PrivateStep265Plan := by
  change compileHmrSourceStepLog s6Step265EntryFBefore s6Step265FrontBank 139 148 ⟨138,137,148,147⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 6 498 265 52 none (.early s6Step265CompleteLog)=some (.early s6Step265CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 265<498)]
  rw [s6Step265Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
