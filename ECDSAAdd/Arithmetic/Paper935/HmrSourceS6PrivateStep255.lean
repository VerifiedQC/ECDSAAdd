import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep253
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

private def s6Step255CompleteMoves : List (Wire × Wire) := [(833,142),(853,399)]

private def s6Step255EarlyControlLog : HmrEarlyControlLog := ⟨[853, 833, 810, 809, 868],[830],[805],[817, 812, 915, 932, 906, 899],[]⟩

private def s6Step255FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830], [], [843, 860]],[[805], [868], [810], [809]],[[], [], [], []]⟩,[822],[862],[817],[812],[915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 932]⟩

private def s6Step255CompleteLog : HmrEarlyStepLog := ⟨s6Step255FrontLog,s6Step255CompleteMoves,s6Step255EarlyControlLog⟩

private def s6Step255ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398],795⟩

private def s6Step255ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step255ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step255ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step255FrontOut : WindowBank := ⟨s6Step255ExitFOut,s6Step255ExitGOut,s6Step255ExitFvOut,s6Step255ExitGvOut⟩

private def s6Step255CompleteOut : WindowBank := s6Step255FrontOut.repacked s6Step255CompleteMoves

private def s6Step255EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step255EarlyControlPositiveArena,[830],s6Step255EarlyControlEqualityArena,[805],⟨⟨822,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step255EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,853⟩,⟨⟨772,false⟩,833⟩,⟨⟨771,false⟩,810⟩,⟨⟨770,false⟩,809⟩,⟨⟨769,false⟩,868⟩]⟩

private def s6Step255EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step255EarlyControlZeroArena,s6Step255EarlyControlZeroPlan,s6Step255EarlyControlClassPlan,s6Step255EarlyControlFlagArena,s6Step255EarlyControlFittedArena,s6Step255EarlyControlHistoryArena,s6Step255EarlyControlSigmaArena,s6Step255EarlyControlOutputArena,s6Step255EarlyControlLog⟩

private def s6Step255CounterWork : List Wire := [817, 812, 915, 932]

private theorem s6Step255Counter_bounded : s6Step255CounterWork.toFinset⊆arenaWires := by norm_num [s6Step255CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step255HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255CounterDuring : Arena := ⟨s6Step255HeadFvAfter.live∪s6Step255CounterWork.toFinset,Finset.union_subset s6Step255HeadFvAfter.bounded s6Step255Counter_bounded⟩

private def s6Step255EntryFFresh : List Wire := []

private def s6Step255EntryFvFresh : List Wire := []

private def s6Step255EntryGFresh : List Wire := [830]

private def s6Step255EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EntryGvFresh : List Wire := [843, 860]

private def s6Step255ExitFExtra : List Wire := [399, 868]

private def s6Step255ExitFvExtra : List Wire := [809]

private def s6Step255ExitGExtra : List Wire := [142, 830, 805]

private def s6Step255ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255ExitGvExtra : List Wire := [810]

private def s6Step255Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255Add0Work : List Wire := [915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step255Add0_bounded : s6Step255Add0Work.toFinset⊆arenaWires := by
  have h : s6Step255Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step255Add0During : Arena := ⟨s6Step255Add0Arena.live∪s6Step255Add0Work.toFinset,Finset.union_subset s6Step255Add0Arena.bounded s6Step255Add0_bounded⟩

private def s6Step255Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255Add1Work : List Wire := [915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step255Add1_bounded : s6Step255Add1Work.toFinset⊆arenaWires := by
  have h : s6Step255Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step255Add1During : Arena := ⟨s6Step255Add1Arena.live∪s6Step255Add1Work.toFinset,Finset.union_subset s6Step255Add1Arena.bounded s6Step255Add1_bounded⟩

private def s6Step255F4FlagArena : Arena := ⟨s6Step255HeadFvAfter.live∪{817},Finset.union_subset s6Step255HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step255F4Plan : HmrHybridF4Plan := ⟨s6Step255F4FlagArena,[817],s6Step255Add0Arena,[812],s6Step255Add0During,s6Step255Add0Work,s6Step255Add1During,s6Step255Add1Work⟩

private def s6Step255HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩

private def s6Step255HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 809],776⟩

private def s6Step255HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 805],777⟩

private def s6Step255HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 810],775⟩

private def s6Step255FrontHead : WindowBank := ⟨s6Step255HeadFOut,s6Step255HeadGOut,s6Step255HeadFvOut,s6Step255HeadGvOut⟩

private def s6Step255EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step255EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step255EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],777⟩

private def s6Step255EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step255FrontPair : WindowBank := ⟨s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut⟩

private def s6Step255FrontSigmaArena : Arena := ⟨s6Step255EntryGvAfter.live∪{822},Finset.union_subset s6Step255EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step255HeadFFresh : List Wire := [868]

private def s6Step255HeadFvFresh : List Wire := [809]

private def s6Step255HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255HeadGFresh : List Wire := [805]

private def s6Step255HeadGvFresh : List Wire := [810]

private def s6Step255FrontPlan : HmrSourceFront := ⟨s6Step255EntryGvAfter,s6Step255FrontPair,(growRow 795 s6Step255EntryFFresh ++ (growRow 777 s6Step255EntryGFresh ++ (growRow 776 s6Step255EntryFvFresh ++ (growRow 775 s6Step255EntryGvFresh ++ [])))),s6Step255FrontSigmaArena,[822],s6Step255HeadGBefore,[862],
  s6Step255HeadFvAfter,s6Step255FrontHead,(growRow 777 s6Step255HeadGFresh ++ (growRow 795 s6Step255HeadFFresh ++ (growRow 775 s6Step255HeadGvFresh ++ (growRow 776 s6Step255HeadFvFresh ++ [])))),s6Step255F4Plan,s6Step255CounterDuring,s6Step255CounterWork,s6Step255ExitGvAfter,s6Step255FrontOut,(shrinkRow 777 s6Step255ExitGExtra ++ (shrinkRow 795 s6Step255ExitFExtra ++ (shrinkRow 776 s6Step255ExitFvExtra ++ (shrinkRow 775 s6Step255ExitGvExtra ++ []))))⟩

private def s6Step255CompletePlan : HmrEarlyStepPlan := ⟨s6Step255FrontPlan,s6Step255EarlyControlArena,s6Step255EarlyControlPlan,s6Step255CompleteMoves⟩

private theorem s6Step255Complete_apart : List.Disjoint (s6Step255CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step255CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step255Complete_owned : (s6Step255CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step255CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,399),(400,782),(783,787),(788,790),(791,792),(793,797),(799,800),(802,805),(806,808),(813,815),(818,819),(821,830),(831,832),(834,842),(843,849),(850,868),(869,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step255CompleteRelocationMove0Borrowed : Arena := ⟨s6Step255ExitGvAfter.live∪{142},Finset.union_subset s6Step255ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step255CompleteRelocationMove1Borrowed : Arena := ⟨s6Step255CompleteRelocationMove0After.live∪{399},Finset.union_subset s6Step255CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step255CompleteRelocation_move0_owned : 833∈s6Step255ExitGvAfter.live := by norm_num [s6Step255ExitGvAfter,arenaWires]

private theorem s6Step255CompleteRelocation_move0_reserve : s6Step255ExitGvAfter.reserve {142}=some s6Step255CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step255ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step255CompleteRelocation_move0_retire : s6Step255CompleteRelocationMove0Borrowed.retireSet {833}=s6Step255CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step255CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step255CompleteRelocationMove0Borrowed,s6Step255ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step255CompleteRelocation_move1_owned : 853∈s6Step255CompleteRelocationMove0After.live := by norm_num [s6Step255CompleteRelocationMove0After,arenaWires]

private theorem s6Step255CompleteRelocation_move1_reserve : s6Step255CompleteRelocationMove0After.reserve {399}=some s6Step255CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step255CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step255CompleteRelocation_move1_retire : s6Step255CompleteRelocationMove1Borrowed.retireSet {853}=s6Step255EarlyControlArena := by
  unfold Arena.retireSet s6Step255EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step255CompleteRelocationMove1Borrowed,s6Step255CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step255CompleteRelocation_checked : s6Step255ExitGvAfter.checkRepack [(833,142),(853,399)]=some s6Step255EarlyControlArena := by
  have tail2 : s6Step255EarlyControlArena.checkRepack []=some s6Step255EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step255CompleteRelocationMove0After s6Step255CompleteRelocationMove1Borrowed s6Step255EarlyControlArena s6Step255EarlyControlArena 853 399 []
    s6Step255CompleteRelocation_move1_owned s6Step255CompleteRelocation_move1_reserve s6Step255CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step255ExitGvAfter s6Step255CompleteRelocationMove0Borrowed s6Step255CompleteRelocationMove0After s6Step255EarlyControlArena 833 142 [(853,399)]
    s6Step255CompleteRelocation_move0_owned s6Step255CompleteRelocation_move0_reserve s6Step255CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step255Complete_repack : s6Step255ExitGvAfter.checkRepack s6Step255CompleteMoves=some s6Step255EarlyControlArena := by
  simpa only [s6Step255CompleteMoves] using s6Step255CompleteRelocation_checked

private theorem s6Step255EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step255EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_branch : compileHmrBranchRetirement s6Step255EarlyControlSigmaArena 862=some s6Step255EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step255EarlyControl_branchOwned
  · ext q
    simp [s6Step255EarlyControlOutputArena,s6Step255EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step255EarlyControl_classEqualityBorrow : s6Step255EarlyControlPositiveArena.checkBorrow (([822, 830] : List Wire).length-1) s6Step255EarlyControlLog.classWork=some s6Step255EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step255EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step255EarlyControlEqualityArena,s6Step255EarlyControlPositiveArena,s6Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step255EarlyControl_classEqualityOwned : ([822, 830] : List Wire).toFinset⊆s6Step255EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_classEquality : compileHmrEqualityLog s6Step255EarlyControlPositiveArena [822, 830] 0 s6Step255EarlyControlLog.classWork=some (s6Step255EarlyControlEqualityArena,s6Step255EarlyControlLog.classWork,s6Step255EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step255EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step255EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step255EarlyControl_classOwned : ([769, 868, 822] : List Wire).toFinset⊆s6Step255EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_positiveBorrow : s6Step255EarlyControlZeroArena.checkBorrow (1) s6Step255EarlyControlLog.positiveWork=some s6Step255EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step255EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step255EarlyControlPositiveArena,s6Step255EarlyControlZeroArena,s6Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step255EarlyControl_class : compileHmrSourceClassLog s6Step255EarlyControlZeroArena false 769 s6Step255EarlyControlZeroPlan.top 0 822 s6Step255EarlyControlLog.positiveWork s6Step255EarlyControlLog.classWork=some s6Step255EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step255EarlyControlClassPlan s6Step255EarlyControlZeroArena false 769 s6Step255EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step255EarlyControl_classOwned
  · exact s6Step255EarlyControl_positiveBorrow
  · exact s6Step255EarlyControl_classEquality

private theorem s6Step255EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s6Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_fitBorrow : s6Step255EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step255EarlyControlLog.recordFresh=some s6Step255EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step255EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step255EarlyControlFittedArena,s6Step255EarlyControlFlagArena,s6Step255EarlyControlLog,arenaWires]

private theorem s6Step255EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step255EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_fit : compileHmrRecordGrowLog s6Step255EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step255EarlyControlLog.recordFresh=some s6Step255EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step255EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step255EarlyControl_fitBorrow

private theorem s6Step255EarlyControl_flagsBorrow : s6Step255EarlyControlEqualityArena.checkBorrow (6) s6Step255EarlyControlLog.flagWork=some s6Step255EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step255EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step255EarlyControlFlagArena,s6Step255EarlyControlEqualityArena,s6Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step255EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step255EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_flags : compileHmrFlagsLog s6Step255EarlyControlClassPlan.equalityArena s6Step255EarlyControlClassPlan.equality.top 253 252 251 s6Step255EarlyControlLog.flagWork=some s6Step255EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step255EarlyControl_flagsOwned⟩
  · exact s6Step255EarlyControl_flagsBorrow

private theorem s6Step255EarlyControl_historyBorrow : s6Step255EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step255EarlyControlLog.recordFresh=some s6Step255EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step255EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step255EarlyControlHistoryArena,s6Step255EarlyControlArena,s6Step255EarlyControlLog,arenaWires]

private theorem s6Step255EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_history : compileHmrRecordGrowLog s6Step255EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step255EarlyControlLog.recordFresh=some s6Step255EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step255EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step255EarlyControl_historyBorrow

private theorem s6Step255EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s6Step255EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step255EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_sigmaRelease : s6Step255EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step255EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step255EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step255EarlyControlSigmaArena,s6Step255EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step255EarlyControl_sigma : compileHmrSigmaDropLog s6Step255EarlyControlHistoryArena false 0 0 254 822 []=some s6Step255EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step255EarlyControl_sigmaOwned⟩
  · exact s6Step255EarlyControl_sigmaRelease

private theorem s6Step255EarlyControl_zeroBorrow : s6Step255EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step255EarlyControlLog.zeroWork=some s6Step255EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step255EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step255EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step255EarlyControlZeroArena,s6Step255EarlyControlArena,s6Step255EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step255EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step255EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step255EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EarlyControl_zero : compileHmrEqualityLog s6Step255EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step255EarlyControlLog.zeroWork=some (s6Step255EarlyControlZeroArena,s6Step255EarlyControlLog.zeroWork,s6Step255EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step255EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step255EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step255EarlyControl_logged : s6Step255EarlyControlPlan.Logged s6Step255EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 862 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step255EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step255EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step255EarlyControl_zero
  · exact s6Step255EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step255EarlyControl_flags
  · exact s6Step255EarlyControl_fit
  · exact s6Step255EarlyControl_history
  · exact s6Step255EarlyControl_sigma
  · exact s6Step255EarlyControl_branch

private theorem s6Step255EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step255EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 862 51 s6Step255EarlyControlLog=some s6Step255EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step255EarlyControlPlan s6Step255EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 862 51 s6Step255EarlyControl_logged

private def s6Step255EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step255EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step255EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142],777⟩

private def s6Step255EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850],775⟩

private def s6Step255FrontBank : WindowBank := ⟨s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow⟩

private def s6Step255Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868, 795]

private def s6Step255Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 805, 777]

private def s6Step255Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 809, 776]

private def s6Step255Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 810, 775]

private theorem s6Step255Counter_apart : Disjoint s6Step255HeadFvAfter.live s6Step255CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step255HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255Counter_borrowed : s6Step255HeadFvAfter.checkBorrow 4 s6Step255CounterWork=some s6Step255CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step255HeadFvAfter s6Step255CounterDuring s6Step255CounterWork.toFinset s6Step255Counter_bounded s6Step255Counter_apart rfl

private theorem s6Step255Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step255HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step255HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255Counter_checked : compileHmrCounterStepLog s6Step255HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step255CounterWork=some s6Step255CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step255HeadFvAfter.live := fun q hq => s6Step255Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step255Counter_borrowed

private def s6Step255EntryFAfter : Arena := s6Step255EntryFBefore

private theorem s6Step255EntryBank_incomingDistinct : ([s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255EntryF_Incoming : rowsOwned s6Step255EntryFBefore [s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow] 0 s6Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255EntryBank_outgoingOwned : rowsOwned s6Step255EntryGvAfter [s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step255EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255EntryF_Outgoing : rowsOwned s6Step255EntryGvAfter [s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut] :=
  hmrRows_owned_drop s6Step255EntryGvAfter [s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut] 0 s6Step255EntryBank_outgoingOwned

private theorem s6Step255EntryF_distinct : (s6Step255EntryFRow.sign::s6Step255EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255EntryF_owned : (s6Step255EntryFRow.sign::s6Step255EntryFRow.payload).toFinset⊆s6Step255EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EntryF_reserved : s6Step255EntryFBefore.reserve s6Step255EntryFFresh.toFinset=some s6Step255EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255EntryFFresh,arenaWires]
  · norm_num [s6Step255EntryFBefore,s6Step255EntryFFresh,arenaWires]
  · simp only [s6Step255EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step255EntryF_checked : planRowResizeLog s6Step255EntryFBefore s6Step255EntryFRow 144 s6Step255EntryFFresh=
    some (s6Step255EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩,growRow 795 s6Step255EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step255EntryFBefore s6Step255EntryFAfter s6Step255EntryFRow 144 s6Step255EntryFFresh
    s6Step255EntryF_distinct s6Step255EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255EntryF_reserved
  have rowEq : WindowRow.mk (s6Step255EntryFRow.payload++s6Step255EntryFFresh) s6Step255EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step255EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255EntryFvAfter : Arena := s6Step255EntryGAfter

private def s6Step255EntryFvBefore : Arena := s6Step255EntryGAfter

private theorem s6Step255EntryFv_Incoming : rowsOwned s6Step255EntryFvBefore [s6Step255EntryFvRow,s6Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow] 2 s6Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255EntryFv_Outgoing : rowsOwned s6Step255EntryGvAfter [s6Step255EntryFvOut,s6Step255EntryGvOut] :=
  hmrRows_owned_drop s6Step255EntryGvAfter [s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut] 2 s6Step255EntryBank_outgoingOwned

private theorem s6Step255EntryFv_distinct : (s6Step255EntryFvRow.sign::s6Step255EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255EntryFv_owned : (s6Step255EntryFvRow.sign::s6Step255EntryFvRow.payload).toFinset⊆s6Step255EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EntryFv_reserved : s6Step255EntryFvBefore.reserve s6Step255EntryFvFresh.toFinset=some s6Step255EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255EntryFvFresh,arenaWires]
  · norm_num [s6Step255EntryFvBefore,s6Step255EntryGAfter,s6Step255EntryFvFresh,arenaWires]
  · simp only [s6Step255EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step255EntryFv_checked : planRowResizeLog s6Step255EntryFvBefore s6Step255EntryFvRow 144 s6Step255EntryFvFresh=
    some (s6Step255EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩,growRow 776 s6Step255EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step255EntryFvBefore s6Step255EntryFvAfter s6Step255EntryFvRow 144 s6Step255EntryFvFresh
    s6Step255EntryFv_distinct s6Step255EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step255EntryFvRow.payload++s6Step255EntryFvFresh) s6Step255EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step255EntryGBefore : Arena := s6Step255EntryFBefore

private theorem s6Step255EntryG_Incoming : rowsOwned s6Step255EntryGBefore [s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow] 1 s6Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255EntryG_Outgoing : rowsOwned s6Step255EntryGvAfter [s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut] :=
  hmrRows_owned_drop s6Step255EntryGvAfter [s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut] 1 s6Step255EntryBank_outgoingOwned

private theorem s6Step255EntryG_distinct : (s6Step255EntryGRow.sign::s6Step255EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255EntryG_owned : (s6Step255EntryGRow.sign::s6Step255EntryGRow.payload).toFinset⊆s6Step255EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EntryG_reserved : s6Step255EntryGBefore.reserve s6Step255EntryGFresh.toFinset=some s6Step255EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255EntryGFresh,arenaWires]
  · norm_num [s6Step255EntryGBefore,s6Step255EntryFBefore,s6Step255EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step255EntryGAfter,s6Step255EntryGBefore,s6Step255EntryFBefore,s6Step255EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255EntryG_checked : planRowResizeLog s6Step255EntryGBefore s6Step255EntryGRow 144 s6Step255EntryGFresh=
    some (s6Step255EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],777⟩,growRow 777 s6Step255EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step255EntryGBefore s6Step255EntryGAfter s6Step255EntryGRow 144 s6Step255EntryGFresh
    s6Step255EntryG_distinct s6Step255EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255EntryG_reserved
  have rowEq : WindowRow.mk (s6Step255EntryGRow.payload++s6Step255EntryGFresh) s6Step255EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step255EntryGvBefore : Arena := s6Step255EntryGAfter

private theorem s6Step255EntryGv_Incoming : rowsOwned s6Step255EntryGvBefore [s6Step255EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow] 3 s6Step255EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255EntryGv_Outgoing : rowsOwned s6Step255EntryGvAfter [s6Step255EntryGvOut] :=
  hmrRows_owned_drop s6Step255EntryGvAfter [s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut] 3 s6Step255EntryBank_outgoingOwned

private theorem s6Step255EntryGv_distinct : (s6Step255EntryGvRow.sign::s6Step255EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255EntryGv_owned : (s6Step255EntryGvRow.sign::s6Step255EntryGvRow.payload).toFinset⊆s6Step255EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255EntryGv_reserved : s6Step255EntryGvBefore.reserve s6Step255EntryGvFresh.toFinset=some s6Step255EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step255EntryGvBefore,s6Step255EntryGAfter,s6Step255EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step255EntryGvAfter,s6Step255EntryGvBefore,s6Step255EntryGAfter,s6Step255EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255EntryGv_checked : planRowResizeLog s6Step255EntryGvBefore s6Step255EntryGvRow 144 s6Step255EntryGvFresh=
    some (s6Step255EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩,growRow 775 s6Step255EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step255EntryGvBefore s6Step255EntryGvAfter s6Step255EntryGvRow 144 s6Step255EntryGvFresh
    s6Step255EntryGv_distinct s6Step255EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step255EntryGvRow.payload++s6Step255EntryGvFresh) s6Step255EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step255EntryBank_rows : planWindowRowsLog s6Step255EntryFBefore [(s6Step255EntryFRow,144),(s6Step255EntryGRow,144),(s6Step255EntryFvRow,144),(s6Step255EntryGvRow,144)] [s6Step255EntryFFresh,s6Step255EntryGFresh,s6Step255EntryFvFresh,s6Step255EntryGvFresh]=
    some (s6Step255EntryGvAfter,[s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut],(growRow 795 s6Step255EntryFFresh ++ (growRow 777 s6Step255EntryGFresh ++ (growRow 776 s6Step255EntryFvFresh ++ (growRow 775 s6Step255EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step255EntryGvAfter [] []=some (s6Step255EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step255EntryGvBefore s6Step255EntryGvAfter s6Step255EntryGvAfter
    s6Step255EntryGvRow s6Step255EntryGvOut 144 s6Step255EntryGvFresh [] [] []
    (growRow 775 s6Step255EntryGvFresh) ([]) s6Step255EntryGv_Incoming s6Step255EntryGv_checked h4 s6Step255EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step255EntryFvBefore s6Step255EntryFvAfter s6Step255EntryGvAfter
    s6Step255EntryFvRow s6Step255EntryFvOut 144 s6Step255EntryFvFresh [(s6Step255EntryGvRow,144)] [s6Step255EntryGvFresh] [s6Step255EntryGvOut]
    (growRow 776 s6Step255EntryFvFresh) ((growRow 775 s6Step255EntryGvFresh ++ [])) s6Step255EntryFv_Incoming s6Step255EntryFv_checked h3 s6Step255EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step255EntryGBefore s6Step255EntryGAfter s6Step255EntryGvAfter
    s6Step255EntryGRow s6Step255EntryGOut 144 s6Step255EntryGFresh [(s6Step255EntryFvRow,144),(s6Step255EntryGvRow,144)] [s6Step255EntryFvFresh,s6Step255EntryGvFresh] [s6Step255EntryFvOut,s6Step255EntryGvOut]
    (growRow 777 s6Step255EntryGFresh) ((growRow 776 s6Step255EntryFvFresh ++ (growRow 775 s6Step255EntryGvFresh ++ []))) s6Step255EntryG_Incoming s6Step255EntryG_checked h2 s6Step255EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step255EntryFBefore s6Step255EntryFAfter s6Step255EntryGvAfter
    s6Step255EntryFRow s6Step255EntryFOut 144 s6Step255EntryFFresh [(s6Step255EntryGRow,144),(s6Step255EntryFvRow,144),(s6Step255EntryGvRow,144)] [s6Step255EntryGFresh,s6Step255EntryFvFresh,s6Step255EntryGvFresh] [s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut]
    (growRow 795 s6Step255EntryFFresh) ((growRow 777 s6Step255EntryGFresh ++ (growRow 776 s6Step255EntryFvFresh ++ (growRow 775 s6Step255EntryGvFresh ++ [])))) s6Step255EntryF_Incoming s6Step255EntryF_checked h1 s6Step255EntryF_Outgoing
  exact h0

private theorem s6Step255EntryBank_checked : compileHmrBankResizeLog .entry s6Step255EntryFBefore ⟨s6Step255EntryFRow,s6Step255EntryGRow,s6Step255EntryFvRow,s6Step255EntryGvRow⟩ ⟨144,144,144,144⟩ [s6Step255EntryFFresh,s6Step255EntryGFresh,s6Step255EntryFvFresh,s6Step255EntryGvFresh]=
    some (s6Step255EntryGvAfter,⟨s6Step255EntryFOut,s6Step255EntryGOut,s6Step255EntryFvOut,s6Step255EntryGvOut⟩,(growRow 795 s6Step255EntryFFresh ++ (growRow 777 s6Step255EntryGFresh ++ (growRow 776 s6Step255EntryFvFresh ++ (growRow 775 s6Step255EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step255EntryBank_rows]
  rfl

private def s6Step255ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255ExitFBefore : Arena := s6Step255ExitGAfter

private def s6Step255ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩

private def s6Step255ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 809],776⟩

private def s6Step255ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 805],777⟩

private def s6Step255ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 810],775⟩

private theorem s6Step255ExitBank_incomingDistinct : ([s6Step255ExitGRow,s6Step255ExitFRow,s6Step255ExitFvRow,s6Step255ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255ExitF_Incoming : rowsOwned s6Step255ExitFBefore [s6Step255ExitFRow,s6Step255ExitFvRow,s6Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255ExitGRow,s6Step255ExitFRow,s6Step255ExitFvRow,s6Step255ExitGvRow] 1 s6Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255ExitFBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255ExitBank_outgoingOwned : rowsOwned s6Step255ExitGvAfter [s6Step255ExitGOut,s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step255ExitGvAfter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255ExitF_Outgoing : rowsOwned s6Step255ExitGvAfter [s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut] :=
  hmrRows_owned_drop s6Step255ExitGvAfter [s6Step255ExitGOut,s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut] 1 s6Step255ExitBank_outgoingOwned

private theorem s6Step255ExitF_distinct : (s6Step255ExitFRow.sign::s6Step255ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255ExitF_owned : (s6Step255ExitFRow.sign::s6Step255ExitFRow.payload).toFinset⊆s6Step255ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255ExitFBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255ExitF_retired : s6Step255ExitFBefore.retireSet s6Step255ExitFExtra.toFinset=s6Step255ExitFAfter := by
  unfold Arena.retireSet s6Step255ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step255ExitFBefore,s6Step255ExitGAfter,s6Step255ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step255ExitF_checked : planRowResizeLog s6Step255ExitFBefore s6Step255ExitFRow 143 []=
    some (s6Step255ExitFAfter,s6Step255ExitFOut,shrinkRow 795 s6Step255ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step255ExitFBefore s6Step255ExitFRow 143 s6Step255ExitF_distinct s6Step255ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step255ExitFRow.payload.take 143) s6Step255ExitFRow.sign=s6Step255ExitFOut := by decide +kernel
  have hi : s6Step255ExitFRow.payload.drop 143=s6Step255ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step255ExitF_retired] at result
  exact result

private def s6Step255ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255ExitFvBefore : Arena := s6Step255ExitFAfter

private theorem s6Step255ExitFv_Incoming : rowsOwned s6Step255ExitFvBefore [s6Step255ExitFvRow,s6Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255ExitGRow,s6Step255ExitFRow,s6Step255ExitFvRow,s6Step255ExitGvRow] 2 s6Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255ExitFvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255ExitFv_Outgoing : rowsOwned s6Step255ExitGvAfter [s6Step255ExitFvOut,s6Step255ExitGvOut] :=
  hmrRows_owned_drop s6Step255ExitGvAfter [s6Step255ExitGOut,s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut] 2 s6Step255ExitBank_outgoingOwned

private theorem s6Step255ExitFv_distinct : (s6Step255ExitFvRow.sign::s6Step255ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255ExitFv_owned : (s6Step255ExitFvRow.sign::s6Step255ExitFvRow.payload).toFinset⊆s6Step255ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255ExitFvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255ExitFv_retired : s6Step255ExitFvBefore.retireSet s6Step255ExitFvExtra.toFinset=s6Step255ExitFvAfter := by
  unfold Arena.retireSet s6Step255ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step255ExitFvBefore,s6Step255ExitFAfter,s6Step255ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step255ExitFv_checked : planRowResizeLog s6Step255ExitFvBefore s6Step255ExitFvRow 144 []=
    some (s6Step255ExitFvAfter,s6Step255ExitFvOut,shrinkRow 776 s6Step255ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step255ExitFvBefore s6Step255ExitFvRow 144 s6Step255ExitFv_distinct s6Step255ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step255ExitFvRow.payload.take 144) s6Step255ExitFvRow.sign=s6Step255ExitFvOut := by decide +kernel
  have hi : s6Step255ExitFvRow.payload.drop 144=s6Step255ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step255ExitFv_retired] at result
  exact result

private def s6Step255ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step255ExitG_Incoming : rowsOwned s6Step255ExitGBefore [s6Step255ExitGRow,s6Step255ExitFRow,s6Step255ExitFvRow,s6Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255ExitGRow,s6Step255ExitFRow,s6Step255ExitFvRow,s6Step255ExitGvRow] 0 s6Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255ExitG_Outgoing : rowsOwned s6Step255ExitGvAfter [s6Step255ExitGOut,s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut] :=
  hmrRows_owned_drop s6Step255ExitGvAfter [s6Step255ExitGOut,s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut] 0 s6Step255ExitBank_outgoingOwned

private theorem s6Step255ExitG_distinct : (s6Step255ExitGRow.sign::s6Step255ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255ExitG_owned : (s6Step255ExitGRow.sign::s6Step255ExitGRow.payload).toFinset⊆s6Step255ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255ExitG_retired : s6Step255ExitGBefore.retireSet s6Step255ExitGExtra.toFinset=s6Step255ExitGAfter := by
  unfold Arena.retireSet s6Step255ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step255ExitGBefore,s6Step255ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step255ExitG_checked : planRowResizeLog s6Step255ExitGBefore s6Step255ExitGRow 142 []=
    some (s6Step255ExitGAfter,s6Step255ExitGOut,shrinkRow 777 s6Step255ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step255ExitGBefore s6Step255ExitGRow 142 s6Step255ExitG_distinct s6Step255ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step255ExitGRow.payload.take 142) s6Step255ExitGRow.sign=s6Step255ExitGOut := by decide +kernel
  have hi : s6Step255ExitGRow.payload.drop 142=s6Step255ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step255ExitG_retired] at result
  exact result

private def s6Step255ExitGvBefore : Arena := s6Step255ExitFvAfter

private theorem s6Step255ExitGv_Incoming : rowsOwned s6Step255ExitGvBefore [s6Step255ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255ExitGRow,s6Step255ExitFRow,s6Step255ExitFvRow,s6Step255ExitGvRow] 3 s6Step255ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255ExitGvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255ExitGv_Outgoing : rowsOwned s6Step255ExitGvAfter [s6Step255ExitGvOut] :=
  hmrRows_owned_drop s6Step255ExitGvAfter [s6Step255ExitGOut,s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut] 3 s6Step255ExitBank_outgoingOwned

private theorem s6Step255ExitGv_distinct : (s6Step255ExitGvRow.sign::s6Step255ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255ExitGv_owned : (s6Step255ExitGvRow.sign::s6Step255ExitGvRow.payload).toFinset⊆s6Step255ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255ExitGvBefore (fun q => (0≤q ∧ q<142) ∨ (143≤q ∧ q<399) ∨ (400≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255ExitGv_retired : s6Step255ExitGvBefore.retireSet s6Step255ExitGvExtra.toFinset=s6Step255ExitGvAfter := by
  unfold Arena.retireSet s6Step255ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step255ExitGvBefore,s6Step255ExitFvAfter,s6Step255ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step255ExitGv_checked : planRowResizeLog s6Step255ExitGvBefore s6Step255ExitGvRow 144 []=
    some (s6Step255ExitGvAfter,s6Step255ExitGvOut,shrinkRow 775 s6Step255ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step255ExitGvBefore s6Step255ExitGvRow 144 s6Step255ExitGv_distinct s6Step255ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step255ExitGvRow.payload.take 144) s6Step255ExitGvRow.sign=s6Step255ExitGvOut := by decide +kernel
  have hi : s6Step255ExitGvRow.payload.drop 144=s6Step255ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step255ExitGv_retired] at result
  exact result

private theorem s6Step255ExitBank_rows : planWindowRowsLog s6Step255ExitGBefore [(s6Step255ExitGRow,142),(s6Step255ExitFRow,143),(s6Step255ExitFvRow,144),(s6Step255ExitGvRow,144)] [[],[],[],[]]=
    some (s6Step255ExitGvAfter,[s6Step255ExitGOut,s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut],(shrinkRow 777 s6Step255ExitGExtra ++ (shrinkRow 795 s6Step255ExitFExtra ++ (shrinkRow 776 s6Step255ExitFvExtra ++ (shrinkRow 775 s6Step255ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step255ExitGvAfter [] []=some (s6Step255ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step255ExitGvBefore s6Step255ExitGvAfter s6Step255ExitGvAfter
    s6Step255ExitGvRow s6Step255ExitGvOut 144 [] [] [] []
    (shrinkRow 775 s6Step255ExitGvExtra) ([]) s6Step255ExitGv_Incoming s6Step255ExitGv_checked h4 s6Step255ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step255ExitFvBefore s6Step255ExitFvAfter s6Step255ExitGvAfter
    s6Step255ExitFvRow s6Step255ExitFvOut 144 [] [(s6Step255ExitGvRow,144)] [[]] [s6Step255ExitGvOut]
    (shrinkRow 776 s6Step255ExitFvExtra) ((shrinkRow 775 s6Step255ExitGvExtra ++ [])) s6Step255ExitFv_Incoming s6Step255ExitFv_checked h3 s6Step255ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step255ExitFBefore s6Step255ExitFAfter s6Step255ExitGvAfter
    s6Step255ExitFRow s6Step255ExitFOut 143 [] [(s6Step255ExitFvRow,144),(s6Step255ExitGvRow,144)] [[],[]] [s6Step255ExitFvOut,s6Step255ExitGvOut]
    (shrinkRow 795 s6Step255ExitFExtra) ((shrinkRow 776 s6Step255ExitFvExtra ++ (shrinkRow 775 s6Step255ExitGvExtra ++ []))) s6Step255ExitF_Incoming s6Step255ExitF_checked h2 s6Step255ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step255ExitGBefore s6Step255ExitGAfter s6Step255ExitGvAfter
    s6Step255ExitGRow s6Step255ExitGOut 142 [] [(s6Step255ExitFRow,143),(s6Step255ExitFvRow,144),(s6Step255ExitGvRow,144)] [[],[],[]] [s6Step255ExitFOut,s6Step255ExitFvOut,s6Step255ExitGvOut]
    (shrinkRow 777 s6Step255ExitGExtra) ((shrinkRow 795 s6Step255ExitFExtra ++ (shrinkRow 776 s6Step255ExitFvExtra ++ (shrinkRow 775 s6Step255ExitGvExtra ++ [])))) s6Step255ExitG_Incoming s6Step255ExitG_checked h1 s6Step255ExitG_Outgoing
  exact h0

private theorem s6Step255ExitBank_checked : compileHmrBankResizeLog .exit s6Step255ExitGBefore ⟨s6Step255ExitFRow,s6Step255ExitGRow,s6Step255ExitFvRow,s6Step255ExitGvRow⟩ ⟨143,142,144,144⟩ [[],[],[],[]]=
    some (s6Step255ExitGvAfter,⟨s6Step255ExitFOut,s6Step255ExitGOut,s6Step255ExitFvOut,s6Step255ExitGvOut⟩,(shrinkRow 777 s6Step255ExitGExtra ++ (shrinkRow 795 s6Step255ExitFExtra ++ (shrinkRow 776 s6Step255ExitFvExtra ++ (shrinkRow 775 s6Step255ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step255ExitBank_rows]
  rfl

private theorem s6Step255Add0_apart : Disjoint s6Step255Add0Arena.live s6Step255Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step255Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255Add0_card : s6Step255Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step255Add0_borrowed : s6Step255Add0Arena.checkBorrow (hmrHybridCount s6Step255Add0Arena s6Step255Add0B.length) s6Step255Add0Work=some s6Step255Add0During := by
  have len : s6Step255Add0Work.length=hmrHybridCount s6Step255Add0Arena s6Step255Add0B.length := by
    rw [hmrHybridCount,s6Step255Add0_card]
    decide +kernel
  have nd : s6Step255Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step255Add0Arena s6Step255Add0During s6Step255Add0Work.toFinset s6Step255Add0_bounded s6Step255Add0_apart rfl

private theorem s6Step255Add0_distinct : (817::862::812::(s6Step255Add0A++s6Step255Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255Add0_owned : (817::862::812::(s6Step255Add0A++s6Step255Add0B)).toFinset⊆s6Step255Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step255Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255Add0_checked : compileHmrHybridCinLog s6Step255Add0Arena 862 817 812 s6Step255Add0A s6Step255Add0B s6Step255Add0Work=some s6Step255Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step255Add0Arena s6Step255Add0During 862 817 812 s6Step255Add0A s6Step255Add0B s6Step255Add0Work
    (by decide +kernel) (by decide +kernel) s6Step255Add0_distinct
    (fun q hq => s6Step255Add0_owned (List.mem_toFinset.mpr hq)) s6Step255Add0_borrowed

private theorem s6Step255Add1_apart : Disjoint s6Step255Add1Arena.live s6Step255Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step255Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255Add1_card : s6Step255Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step255Add1_borrowed : s6Step255Add1Arena.checkBorrow (hmrHybridCount s6Step255Add1Arena s6Step255Add1B.length) s6Step255Add1Work=some s6Step255Add1During := by
  have len : s6Step255Add1Work.length=hmrHybridCount s6Step255Add1Arena s6Step255Add1B.length := by
    rw [hmrHybridCount,s6Step255Add1_card]
    decide +kernel
  have nd : s6Step255Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step255Add1Arena s6Step255Add1During s6Step255Add1Work.toFinset s6Step255Add1_bounded s6Step255Add1_apart rfl

private theorem s6Step255Add1_distinct : (817::862::812::(s6Step255Add1A++s6Step255Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255Add1_owned : (817::862::812::(s6Step255Add1A++s6Step255Add1B)).toFinset⊆s6Step255Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step255Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255Add1_checked : compileHmrHybridCinLog s6Step255Add1Arena 862 817 812 s6Step255Add1A s6Step255Add1B s6Step255Add1Work=some s6Step255Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step255Add1Arena s6Step255Add1During 862 817 812 s6Step255Add1A s6Step255Add1B s6Step255Add1Work
    (by decide +kernel) (by decide +kernel) s6Step255Add1_distinct
    (fun q hq => s6Step255Add1_owned (List.mem_toFinset.mpr hq)) s6Step255Add1_borrowed

private theorem s6Step255F4_apart : Disjoint (s6Step255Add0A++s6Step255Add0B).toFinset (s6Step255Add1A++s6Step255Add1B).toFinset := by
  have nd : ((s6Step255Add0A++s6Step255Add0B)++(s6Step255Add1A++s6Step255Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step255F4_carry : s6Step255F4FlagArena.checkBorrow 1 [812]=some s6Step255Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step255F4FlagArena,s6Step255HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step255F4FlagArena,s6Step255HeadFvAfter,s6Step255Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255F4_distinct : (822::862::817::812::((s6Step255Add0A++s6Step255Add1A)++(s6Step255Add0B++s6Step255Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255F4_flag : s6Step255HeadFvAfter.checkBorrow 1 [817]=some s6Step255F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step255HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step255F4_owned : (822::862::((s6Step255Add0A++s6Step255Add1A)++(s6Step255Add0B++s6Step255Add1B))).toFinset⊆s6Step255HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step255HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255F4_checked : compileHmrHybridF4Log s6Step255HeadFvAfter 822 862 s6Step255Add0A s6Step255Add0B s6Step255Add1A s6Step255Add1B [817] [812] s6Step255Add0Work s6Step255Add1Work=some s6Step255F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step255HeadFvAfter s6Step255F4FlagArena s6Step255Add0Arena s6Step255Add0During s6Step255Add1During 822 862
    s6Step255Add0A s6Step255Add0B s6Step255Add1A s6Step255Add1B [817] [812] s6Step255Add0Work s6Step255Add1Work
    (fun q hq => s6Step255F4_owned (List.mem_toFinset.mpr hq)) s6Step255F4_flag s6Step255F4_carry
    s6Step255F4_distinct s6Step255F4_apart s6Step255Add0_checked s6Step255Add1_checked

private theorem s6Step255Front_branch : s6Step255FrontSigmaArena.checkBorrow 1 [862]=some s6Step255HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step255FrontSigmaArena,s6Step255EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step255FrontSigmaArena,s6Step255EntryGvAfter,s6Step255HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255Front_entry : HmrFrontEntryValid s6Step255EntryFBefore s6Step255FrontBank 144 144 ⟨143,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step255FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step255EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step255EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step255FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step255Front_sigma : s6Step255EntryGvAfter.checkBorrow 1 [822]=some s6Step255FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step255EntryGvAfter,arenaWires]
  · rfl

private def s6Step255HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255HeadFBefore : Arena := s6Step255HeadGAfter

private def s6Step255HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step255HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step255HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830],777⟩

private def s6Step255HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private theorem s6Step255HeadBank_incomingDistinct : ([s6Step255HeadGRow,s6Step255HeadFRow,s6Step255HeadGvRow,s6Step255HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255HeadF_Incoming : rowsOwned s6Step255HeadFBefore [s6Step255HeadFRow,s6Step255HeadGvRow,s6Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255HeadGRow,s6Step255HeadFRow,s6Step255HeadGvRow,s6Step255HeadFvRow] 1 s6Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255HeadBank_outgoingOwned : rowsOwned s6Step255HeadFvAfter [s6Step255HeadGOut,s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step255HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255HeadF_Outgoing : rowsOwned s6Step255HeadFvAfter [s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut] :=
  hmrRows_owned_drop s6Step255HeadFvAfter [s6Step255HeadGOut,s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut] 1 s6Step255HeadBank_outgoingOwned

private theorem s6Step255HeadF_distinct : (s6Step255HeadFRow.sign::s6Step255HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255HeadF_owned : (s6Step255HeadFRow.sign::s6Step255HeadFRow.payload).toFinset⊆s6Step255HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255HeadF_reserved : s6Step255HeadFBefore.reserve s6Step255HeadFFresh.toFinset=some s6Step255HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255HeadFFresh,arenaWires]
  · norm_num [s6Step255HeadFBefore,s6Step255HeadGAfter,s6Step255HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step255HeadFAfter,s6Step255HeadFBefore,s6Step255HeadGAfter,s6Step255HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255HeadF_checked : planRowResizeLog s6Step255HeadFBefore s6Step255HeadFRow 145 s6Step255HeadFFresh=
    some (s6Step255HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩,growRow 795 s6Step255HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step255HeadFBefore s6Step255HeadFAfter s6Step255HeadFRow 145 s6Step255HeadFFresh
    s6Step255HeadF_distinct s6Step255HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255HeadF_reserved
  have rowEq : WindowRow.mk (s6Step255HeadFRow.payload++s6Step255HeadFFresh) s6Step255HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 868],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step255HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step255HeadFvBefore : Arena := s6Step255HeadGvAfter

private theorem s6Step255HeadFv_Incoming : rowsOwned s6Step255HeadFvBefore [s6Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255HeadGRow,s6Step255HeadFRow,s6Step255HeadGvRow,s6Step255HeadFvRow] 3 s6Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255HeadFv_Outgoing : rowsOwned s6Step255HeadFvAfter [s6Step255HeadFvOut] :=
  hmrRows_owned_drop s6Step255HeadFvAfter [s6Step255HeadGOut,s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut] 3 s6Step255HeadBank_outgoingOwned

private theorem s6Step255HeadFv_distinct : (s6Step255HeadFvRow.sign::s6Step255HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255HeadFv_owned : (s6Step255HeadFvRow.sign::s6Step255HeadFvRow.payload).toFinset⊆s6Step255HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255HeadFv_reserved : s6Step255HeadFvBefore.reserve s6Step255HeadFvFresh.toFinset=some s6Step255HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255HeadFvFresh,arenaWires]
  · norm_num [s6Step255HeadFvBefore,s6Step255HeadGvAfter,s6Step255HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step255HeadFvAfter,s6Step255HeadFvBefore,s6Step255HeadGvAfter,s6Step255HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255HeadFv_checked : planRowResizeLog s6Step255HeadFvBefore s6Step255HeadFvRow 145 s6Step255HeadFvFresh=
    some (s6Step255HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 809],776⟩,growRow 776 s6Step255HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step255HeadFvBefore s6Step255HeadFvAfter s6Step255HeadFvRow 145 s6Step255HeadFvFresh
    s6Step255HeadFv_distinct s6Step255HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step255HeadFvRow.payload++s6Step255HeadFvFresh) s6Step255HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 809],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step255HeadG_Incoming : rowsOwned s6Step255HeadGBefore [s6Step255HeadGRow,s6Step255HeadFRow,s6Step255HeadGvRow,s6Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255HeadGRow,s6Step255HeadFRow,s6Step255HeadGvRow,s6Step255HeadFvRow] 0 s6Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255HeadG_Outgoing : rowsOwned s6Step255HeadFvAfter [s6Step255HeadGOut,s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut] :=
  hmrRows_owned_drop s6Step255HeadFvAfter [s6Step255HeadGOut,s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut] 0 s6Step255HeadBank_outgoingOwned

private theorem s6Step255HeadG_distinct : (s6Step255HeadGRow.sign::s6Step255HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255HeadG_owned : (s6Step255HeadGRow.sign::s6Step255HeadGRow.payload).toFinset⊆s6Step255HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255HeadG_reserved : s6Step255HeadGBefore.reserve s6Step255HeadGFresh.toFinset=some s6Step255HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255HeadGFresh,arenaWires]
  · norm_num [s6Step255HeadGBefore,s6Step255HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step255HeadGAfter,s6Step255HeadGBefore,s6Step255HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255HeadG_checked : planRowResizeLog s6Step255HeadGBefore s6Step255HeadGRow 145 s6Step255HeadGFresh=
    some (s6Step255HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 805],777⟩,growRow 777 s6Step255HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step255HeadGBefore s6Step255HeadGAfter s6Step255HeadGRow 145 s6Step255HeadGFresh
    s6Step255HeadG_distinct s6Step255HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255HeadG_reserved
  have rowEq : WindowRow.mk (s6Step255HeadGRow.payload++s6Step255HeadGFresh) s6Step255HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 830, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step255HeadGvBefore : Arena := s6Step255HeadFAfter

private theorem s6Step255HeadGv_Incoming : rowsOwned s6Step255HeadGvBefore [s6Step255HeadGvRow,s6Step255HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step255HeadGRow,s6Step255HeadFRow,s6Step255HeadGvRow,s6Step255HeadFvRow] 2 s6Step255HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step255HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step255HeadGv_Outgoing : rowsOwned s6Step255HeadFvAfter [s6Step255HeadGvOut,s6Step255HeadFvOut] :=
  hmrRows_owned_drop s6Step255HeadFvAfter [s6Step255HeadGOut,s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut] 2 s6Step255HeadBank_outgoingOwned

private theorem s6Step255HeadGv_distinct : (s6Step255HeadGvRow.sign::s6Step255HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step255HeadGv_owned : (s6Step255HeadGvRow.sign::s6Step255HeadGvRow.payload).toFinset⊆s6Step255HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step255HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step255HeadGv_reserved : s6Step255HeadGvBefore.reserve s6Step255HeadGvFresh.toFinset=some s6Step255HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step255HeadGvFresh,arenaWires]
  · norm_num [s6Step255HeadGvBefore,s6Step255HeadFAfter,s6Step255HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step255HeadGvAfter,s6Step255HeadGvBefore,s6Step255HeadFAfter,s6Step255HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step255HeadGv_checked : planRowResizeLog s6Step255HeadGvBefore s6Step255HeadGvRow 145 s6Step255HeadGvFresh=
    some (s6Step255HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 810],775⟩,growRow 775 s6Step255HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step255HeadGvBefore s6Step255HeadGvAfter s6Step255HeadGvRow 145 s6Step255HeadGvFresh
    s6Step255HeadGv_distinct s6Step255HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step255HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step255HeadGvRow.payload++s6Step255HeadGvFresh) s6Step255HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 810],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step255HeadBank_rows : planWindowRowsLog s6Step255HeadGBefore [(s6Step255HeadGRow,145),(s6Step255HeadFRow,145),(s6Step255HeadGvRow,145),(s6Step255HeadFvRow,145)] [s6Step255HeadGFresh,s6Step255HeadFFresh,s6Step255HeadGvFresh,s6Step255HeadFvFresh]=
    some (s6Step255HeadFvAfter,[s6Step255HeadGOut,s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut],(growRow 777 s6Step255HeadGFresh ++ (growRow 795 s6Step255HeadFFresh ++ (growRow 775 s6Step255HeadGvFresh ++ (growRow 776 s6Step255HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step255HeadFvAfter [] []=some (s6Step255HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step255HeadFvBefore s6Step255HeadFvAfter s6Step255HeadFvAfter
    s6Step255HeadFvRow s6Step255HeadFvOut 145 s6Step255HeadFvFresh [] [] []
    (growRow 776 s6Step255HeadFvFresh) ([]) s6Step255HeadFv_Incoming s6Step255HeadFv_checked h4 s6Step255HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step255HeadGvBefore s6Step255HeadGvAfter s6Step255HeadFvAfter
    s6Step255HeadGvRow s6Step255HeadGvOut 145 s6Step255HeadGvFresh [(s6Step255HeadFvRow,145)] [s6Step255HeadFvFresh] [s6Step255HeadFvOut]
    (growRow 775 s6Step255HeadGvFresh) ((growRow 776 s6Step255HeadFvFresh ++ [])) s6Step255HeadGv_Incoming s6Step255HeadGv_checked h3 s6Step255HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step255HeadFBefore s6Step255HeadFAfter s6Step255HeadFvAfter
    s6Step255HeadFRow s6Step255HeadFOut 145 s6Step255HeadFFresh [(s6Step255HeadGvRow,145),(s6Step255HeadFvRow,145)] [s6Step255HeadGvFresh,s6Step255HeadFvFresh] [s6Step255HeadGvOut,s6Step255HeadFvOut]
    (growRow 795 s6Step255HeadFFresh) ((growRow 775 s6Step255HeadGvFresh ++ (growRow 776 s6Step255HeadFvFresh ++ []))) s6Step255HeadF_Incoming s6Step255HeadF_checked h2 s6Step255HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step255HeadGBefore s6Step255HeadGAfter s6Step255HeadFvAfter
    s6Step255HeadGRow s6Step255HeadGOut 145 s6Step255HeadGFresh [(s6Step255HeadFRow,145),(s6Step255HeadGvRow,145),(s6Step255HeadFvRow,145)] [s6Step255HeadFFresh,s6Step255HeadGvFresh,s6Step255HeadFvFresh] [s6Step255HeadFOut,s6Step255HeadGvOut,s6Step255HeadFvOut]
    (growRow 777 s6Step255HeadGFresh) ((growRow 795 s6Step255HeadFFresh ++ (growRow 775 s6Step255HeadGvFresh ++ (growRow 776 s6Step255HeadFvFresh ++ [])))) s6Step255HeadG_Incoming s6Step255HeadG_checked h1 s6Step255HeadG_Outgoing
  exact h0

private theorem s6Step255HeadBank_checked : compileHmrBankResizeLog .headroom s6Step255HeadGBefore ⟨s6Step255HeadFRow,s6Step255HeadGRow,s6Step255HeadFvRow,s6Step255HeadGvRow⟩ ⟨145,145,145,145⟩ [s6Step255HeadGFresh,s6Step255HeadFFresh,s6Step255HeadGvFresh,s6Step255HeadFvFresh]=
    some (s6Step255HeadFvAfter,⟨s6Step255HeadFOut,s6Step255HeadGOut,s6Step255HeadFvOut,s6Step255HeadGvOut⟩,(growRow 777 s6Step255HeadGFresh ++ (growRow 795 s6Step255HeadFFresh ++ (growRow 775 s6Step255HeadGvFresh ++ (growRow 776 s6Step255HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step255HeadBank_rows]
  rfl

private theorem s6Step255Front_checked : compileHmrSourceFrontLog s6Step255EntryFBefore s6Step255FrontBank 144 144 ⟨143,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step255FrontLog=some s6Step255FrontPlan := by
  have pairEq : s6Step255FrontPair=⟨s6Step255HeadFRow,s6Step255HeadGRow,s6Step255HeadFvRow,s6Step255HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step255FrontHead=⟨s6Step255ExitFRow,s6Step255ExitGRow,s6Step255ExitFvRow,s6Step255ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step255Add0A=s6Step255FrontHead.f.wires := by decide +kernel
  have gEq : s6Step255Add0B=s6Step255FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step255Add1A=s6Step255FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step255Add1B=s6Step255FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step255EntryFBefore s6Step255FrontBank 144 144 ⟨143,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step255FrontLog s6Step255FrontPlan
  · exact s6Step255Front_entry
  · exact s6Step255EntryBank_checked
  · exact s6Step255Front_sigma
  · rfl
  · exact s6Step255Front_branch
  · rfl
  · simpa only [s6Step255FrontPlan,pairEq] using s6Step255HeadBank_checked
  · simpa only [s6Step255FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step255F4_checked
  · exact s6Step255Counter_checked
  · rfl
  · simpa only [s6Step255FrontPlan,headEq] using s6Step255ExitBank_checked

private theorem s6Step255Complete_explicit_checked : compileHmrEarlyStepLog s6Step255EntryFBefore s6Step255FrontBank 144 144 ⟨143,142,144,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step255CompleteLog=some s6Step255CompletePlan := by
  let Q := s6Step255EarlyControlPlan
  have hq := s6Step255EarlyControl_plan_checked
  have fv1 : s6Step255CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step255CompleteOut.fv.payload[2]?.getD s6Step255CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step255CompleteOut.fv.payload[3]?.getD s6Step255CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step255CompleteOut.fv.payload[4]?.getD s6Step255CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step255EntryFBefore s6Step255EarlyControlArena s6Step255FrontBank 144 144 ⟨143,142,144,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step255CompleteLog s6Step255FrontPlan Q
    s6Step255Front_checked s6Step255Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step255Complete_owned s6Step255Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step255EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 s6Step255CompleteOut.fv.second (s6Step255CompleteOut.fv.payload[2]?.getD s6Step255CompleteOut.fv.sign) (s6Step255CompleteOut.fv.payload[3]?.getD s6Step255CompleteOut.fv.sign) (s6Step255CompleteOut.fv.payload[4]?.getD s6Step255CompleteOut.fv.sign) 862 51 s6Step255EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep255Arena : Arena := s6Step255EntryFBefore
def s6PrivateStep255Bank : WindowBank := s6Step255FrontBank
def s6PrivateStep255Spec : HmrSourceWalkStepLog := ⟨144,144,⟨143,142,144,144⟩,51,.early s6Step255CompleteLog⟩
def s6PrivateStep255Plan : HmrSourceStepPlan := .early s6Step255CompletePlan
theorem s6PrivateStep255_source : s6PrivateStep255Spec=s6ObservedLogs240[15] := rfl
theorem s6PrivateStep255_checked : compileHmrSourceStepLog s6PrivateStep255Arena s6PrivateStep255Bank
    s6PrivateStep255Spec.fgWidth s6PrivateStep255Spec.vWidth s6PrivateStep255Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 255 s6PrivateStep255Spec.need none s6PrivateStep255Spec.log=some s6PrivateStep255Plan := by
  change compileHmrSourceStepLog s6Step255EntryFBefore s6Step255FrontBank 144 144 ⟨143,142,144,144⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 255 51 none (.early s6Step255CompleteLog)=some (.early s6Step255CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 255<498)]
  rw [s6Step255Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
