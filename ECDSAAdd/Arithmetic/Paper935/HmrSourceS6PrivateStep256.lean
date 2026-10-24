import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep254
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

private def s6Step256CompleteMoves : List (Wire × Wire) := [(880,398)]

private def s6Step256EarlyControlLog : HmrEarlyControlLog := ⟨[880, 809, 868, 810, 862],[833],[830],[805, 817, 812, 915, 932, 906],[]⟩

private def s6Step256FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], []],[[833], [810], [809], [868]],[[], [], [], []]⟩,[822],[853],[830],[805],[817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step256CompleteLog : HmrEarlyStepLog := ⟨s6Step256FrontLog,s6Step256CompleteMoves,s6Step256EarlyControlLog⟩

private def s6Step256ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step256ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step256ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step256ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step256FrontOut : WindowBank := ⟨s6Step256ExitFOut,s6Step256ExitGOut,s6Step256ExitFvOut,s6Step256ExitGvOut⟩

private def s6Step256CompleteOut : WindowBank := s6Step256FrontOut.repacked s6Step256CompleteMoves

private def s6Step256EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step256EarlyControlPositiveArena,[833],s6Step256EarlyControlEqualityArena,[830],⟨⟨822,false⟩,[⟨⟨833,false⟩,830⟩]⟩⟩

private def s6Step256EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,880⟩,⟨⟨772,false⟩,809⟩,⟨⟨771,false⟩,868⟩,⟨⟨770,false⟩,810⟩,⟨⟨769,false⟩,862⟩]⟩

private def s6Step256EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step256EarlyControlZeroArena,s6Step256EarlyControlZeroPlan,s6Step256EarlyControlClassPlan,s6Step256EarlyControlFlagArena,s6Step256EarlyControlFittedArena,s6Step256EarlyControlHistoryArena,s6Step256EarlyControlSigmaArena,s6Step256EarlyControlOutputArena,s6Step256EarlyControlLog⟩

private def s6Step256CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step256Counter_bounded : s6Step256CounterWork.toFinset⊆arenaWires := by norm_num [s6Step256CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step256HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256CounterDuring : Arena := ⟨s6Step256HeadFvAfter.live∪s6Step256CounterWork.toFinset,Finset.union_subset s6Step256HeadFvAfter.bounded s6Step256Counter_bounded⟩

private def s6Step256EntryFFresh : List Wire := []

private def s6Step256EntryFvFresh : List Wire := []

private def s6Step256EntryGFresh : List Wire := [862]

private def s6Step256EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EntryGvAfter : Arena := s6Step256EntryGAfter

private def s6Step256EntryGvFresh : List Wire := []

private def s6Step256ExitFExtra : List Wire := [398, 810]

private def s6Step256ExitFvExtra : List Wire := [868]

private def s6Step256ExitGExtra : List Wire := [862, 833]

private def s6Step256ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256ExitGvExtra : List Wire := [809]

private def s6Step256Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256Add0Work : List Wire := [817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step256Add0_bounded : s6Step256Add0Work.toFinset⊆arenaWires := by
  have h : s6Step256Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step256Add0During : Arena := ⟨s6Step256Add0Arena.live∪s6Step256Add0Work.toFinset,Finset.union_subset s6Step256Add0Arena.bounded s6Step256Add0_bounded⟩

private def s6Step256Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256Add1Work : List Wire := [817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step256Add1_bounded : s6Step256Add1Work.toFinset⊆arenaWires := by
  have h : s6Step256Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step256Add1During : Arena := ⟨s6Step256Add1Arena.live∪s6Step256Add1Work.toFinset,Finset.union_subset s6Step256Add1Arena.bounded s6Step256Add1_bounded⟩

private def s6Step256F4FlagArena : Arena := ⟨s6Step256HeadFvAfter.live∪{830},Finset.union_subset s6Step256HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step256F4Plan : HmrHybridF4Plan := ⟨s6Step256F4FlagArena,[830],s6Step256Add0Arena,[805],s6Step256Add0During,s6Step256Add0Work,s6Step256Add1During,s6Step256Add1Work⟩

private def s6Step256HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 810],795⟩

private def s6Step256HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 868],776⟩

private def s6Step256HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862, 833],777⟩

private def s6Step256HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩

private def s6Step256FrontHead : WindowBank := ⟨s6Step256HeadFOut,s6Step256HeadGOut,s6Step256HeadFvOut,s6Step256HeadGvOut⟩

private def s6Step256EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398],795⟩

private def s6Step256EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step256EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862],777⟩

private def s6Step256EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step256FrontPair : WindowBank := ⟨s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut⟩

private def s6Step256FrontSigmaArena : Arena := ⟨s6Step256EntryGvAfter.live∪{822},Finset.union_subset s6Step256EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step256HeadFFresh : List Wire := [810]

private def s6Step256HeadFvFresh : List Wire := [868]

private def s6Step256HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256HeadGFresh : List Wire := [833]

private def s6Step256HeadGvFresh : List Wire := [809]

private def s6Step256FrontPlan : HmrSourceFront := ⟨s6Step256EntryGvAfter,s6Step256FrontPair,(growRow 795 s6Step256EntryFFresh ++ (growRow 777 s6Step256EntryGFresh ++ (growRow 776 s6Step256EntryFvFresh ++ (growRow 775 s6Step256EntryGvFresh ++ [])))),s6Step256FrontSigmaArena,[822],s6Step256HeadGBefore,[853],
  s6Step256HeadFvAfter,s6Step256FrontHead,(growRow 777 s6Step256HeadGFresh ++ (growRow 795 s6Step256HeadFFresh ++ (growRow 775 s6Step256HeadGvFresh ++ (growRow 776 s6Step256HeadFvFresh ++ [])))),s6Step256F4Plan,s6Step256CounterDuring,s6Step256CounterWork,s6Step256ExitGvAfter,s6Step256FrontOut,(shrinkRow 777 s6Step256ExitGExtra ++ (shrinkRow 795 s6Step256ExitFExtra ++ (shrinkRow 776 s6Step256ExitFvExtra ++ (shrinkRow 775 s6Step256ExitGvExtra ++ []))))⟩

private def s6Step256CompletePlan : HmrEarlyStepPlan := ⟨s6Step256FrontPlan,s6Step256EarlyControlArena,s6Step256EarlyControlPlan,s6Step256CompleteMoves⟩

private theorem s6Step256Complete_apart : List.Disjoint (s6Step256CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step256CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step256Complete_owned : (s6Step256CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step256CompleteMoveArena : Arena := ⟨s6Step256ExitGvAfter.live∪{398},Finset.union_subset s6Step256ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step256Complete_repack : s6Step256ExitGvAfter.checkRepack s6Step256CompleteMoves=some s6Step256EarlyControlArena := by
  have owned : 880∈s6Step256ExitGvAfter.live := by norm_num [s6Step256ExitGvAfter,arenaWires]
  have reserve : s6Step256ExitGvAfter.reserve {398}=some s6Step256CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step256ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step256CompleteMoveArena.retireSet {880}=s6Step256EarlyControlArena := by
    unfold Arena.retireSet s6Step256EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step256CompleteMoveArena,s6Step256ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step256CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step256CompleteMoveArena.retireSet {880}).checkRepack []=some s6Step256EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step256EarlyControl_branchOwned : ([853] : List Wire).toFinset⊆s6Step256EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_branch : compileHmrBranchRetirement s6Step256EarlyControlSigmaArena 853=some s6Step256EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step256EarlyControl_branchOwned
  · ext q
    simp [s6Step256EarlyControlOutputArena,s6Step256EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step256EarlyControl_classEqualityBorrow : s6Step256EarlyControlPositiveArena.checkBorrow (([822, 833] : List Wire).length-1) s6Step256EarlyControlLog.classWork=some s6Step256EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step256EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step256EarlyControlEqualityArena,s6Step256EarlyControlPositiveArena,s6Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step256EarlyControl_classEqualityOwned : ([822, 833] : List Wire).toFinset⊆s6Step256EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_classEquality : compileHmrEqualityLog s6Step256EarlyControlPositiveArena [822, 833] 0 s6Step256EarlyControlLog.classWork=some (s6Step256EarlyControlEqualityArena,s6Step256EarlyControlLog.classWork,s6Step256EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step256EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step256EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step256EarlyControl_classOwned : ([769, 862, 822] : List Wire).toFinset⊆s6Step256EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_positiveBorrow : s6Step256EarlyControlZeroArena.checkBorrow (1) s6Step256EarlyControlLog.positiveWork=some s6Step256EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step256EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step256EarlyControlPositiveArena,s6Step256EarlyControlZeroArena,s6Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step256EarlyControl_class : compileHmrSourceClassLog s6Step256EarlyControlZeroArena false 769 s6Step256EarlyControlZeroPlan.top 0 822 s6Step256EarlyControlLog.positiveWork s6Step256EarlyControlLog.classWork=some s6Step256EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step256EarlyControlClassPlan s6Step256EarlyControlZeroArena false 769 s6Step256EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step256EarlyControl_classOwned
  · exact s6Step256EarlyControl_positiveBorrow
  · exact s6Step256EarlyControl_classEquality

private theorem s6Step256EarlyControl_entryRecordOwned : ([853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s6Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_fitBorrow : s6Step256EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step256EarlyControlLog.recordFresh=some s6Step256EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step256EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step256EarlyControlFittedArena,s6Step256EarlyControlFlagArena,s6Step256EarlyControlLog,arenaWires]

private theorem s6Step256EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step256EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_fit : compileHmrRecordGrowLog s6Step256EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step256EarlyControlLog.recordFresh=some s6Step256EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step256EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step256EarlyControl_fitBorrow

private theorem s6Step256EarlyControl_flagsBorrow : s6Step256EarlyControlEqualityArena.checkBorrow (6) s6Step256EarlyControlLog.flagWork=some s6Step256EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step256EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step256EarlyControlFlagArena,s6Step256EarlyControlEqualityArena,s6Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step256EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step256EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_flags : compileHmrFlagsLog s6Step256EarlyControlClassPlan.equalityArena s6Step256EarlyControlClassPlan.equality.top 253 252 251 s6Step256EarlyControlLog.flagWork=some s6Step256EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step256EarlyControl_flagsOwned⟩
  · exact s6Step256EarlyControl_flagsBorrow

private theorem s6Step256EarlyControl_historyBorrow : s6Step256EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step256EarlyControlLog.recordFresh=some s6Step256EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step256EarlyControlHistoryArena,s6Step256EarlyControlArena,s6Step256EarlyControlLog,arenaWires]

private theorem s6Step256EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_history : compileHmrRecordGrowLog s6Step256EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step256EarlyControlLog.recordFresh=some s6Step256EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step256EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step256EarlyControl_historyBorrow

private theorem s6Step256EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s6Step256EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step256EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_sigmaRelease : s6Step256EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step256EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step256EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step256EarlyControlSigmaArena,s6Step256EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step256EarlyControl_sigma : compileHmrSigmaDropLog s6Step256EarlyControlHistoryArena false 0 0 254 822 []=some s6Step256EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step256EarlyControl_sigmaOwned⟩
  · exact s6Step256EarlyControl_sigmaRelease

private theorem s6Step256EarlyControl_zeroBorrow : s6Step256EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step256EarlyControlLog.zeroWork=some s6Step256EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step256EarlyControlZeroArena,s6Step256EarlyControlArena,s6Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step256EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EarlyControl_zero : compileHmrEqualityLog s6Step256EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step256EarlyControlLog.zeroWork=some (s6Step256EarlyControlZeroArena,s6Step256EarlyControlLog.zeroWork,s6Step256EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step256EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step256EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step256EarlyControl_logged : s6Step256EarlyControlPlan.Logged s6Step256EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 853 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step256EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step256EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step256EarlyControl_zero
  · exact s6Step256EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step256EarlyControl_flags
  · exact s6Step256EarlyControl_fit
  · exact s6Step256EarlyControl_history
  · exact s6Step256EarlyControl_sigma
  · exact s6Step256EarlyControl_branch

private theorem s6Step256EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step256EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 853 51 s6Step256EarlyControlLog=some s6Step256EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step256EarlyControlPlan s6Step256EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 853 51 s6Step256EarlyControl_logged

private def s6Step256EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398],795⟩

private def s6Step256EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step256EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step256EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step256FrontBank : WindowBank := ⟨s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow⟩

private def s6Step256Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 810, 795]

private def s6Step256Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862, 833, 777]

private def s6Step256Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 868, 776]

private def s6Step256Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809, 775]

private theorem s6Step256Counter_apart : Disjoint s6Step256HeadFvAfter.live s6Step256CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step256HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256Counter_borrowed : s6Step256HeadFvAfter.checkBorrow 4 s6Step256CounterWork=some s6Step256CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step256HeadFvAfter s6Step256CounterDuring s6Step256CounterWork.toFinset s6Step256Counter_bounded s6Step256Counter_apart rfl

private theorem s6Step256Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step256HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step256HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256Counter_checked : compileHmrCounterStepLog s6Step256HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step256CounterWork=some s6Step256CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step256HeadFvAfter.live := fun q hq => s6Step256Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step256Counter_borrowed

private def s6Step256EntryFAfter : Arena := s6Step256EntryFBefore

private theorem s6Step256EntryBank_incomingDistinct : ([s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256EntryF_Incoming : rowsOwned s6Step256EntryFBefore [s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow] 0 s6Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256EntryBank_outgoingOwned : rowsOwned s6Step256EntryGvAfter [s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step256EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256EntryF_Outgoing : rowsOwned s6Step256EntryGvAfter [s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut] :=
  hmrRows_owned_drop s6Step256EntryGvAfter [s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut] 0 s6Step256EntryBank_outgoingOwned

private theorem s6Step256EntryF_distinct : (s6Step256EntryFRow.sign::s6Step256EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256EntryF_owned : (s6Step256EntryFRow.sign::s6Step256EntryFRow.payload).toFinset⊆s6Step256EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EntryF_reserved : s6Step256EntryFBefore.reserve s6Step256EntryFFresh.toFinset=some s6Step256EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256EntryFFresh,arenaWires]
  · norm_num [s6Step256EntryFBefore,s6Step256EntryFFresh,arenaWires]
  · simp only [s6Step256EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step256EntryF_checked : planRowResizeLog s6Step256EntryFBefore s6Step256EntryFRow 143 s6Step256EntryFFresh=
    some (s6Step256EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398],795⟩,growRow 795 s6Step256EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step256EntryFBefore s6Step256EntryFAfter s6Step256EntryFRow 143 s6Step256EntryFFresh
    s6Step256EntryF_distinct s6Step256EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256EntryF_reserved
  have rowEq : WindowRow.mk (s6Step256EntryFRow.payload++s6Step256EntryFFresh) s6Step256EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step256EntryFvAfter : Arena := s6Step256EntryGAfter

private def s6Step256EntryFvBefore : Arena := s6Step256EntryGAfter

private theorem s6Step256EntryFv_Incoming : rowsOwned s6Step256EntryFvBefore [s6Step256EntryFvRow,s6Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow] 2 s6Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256EntryFv_Outgoing : rowsOwned s6Step256EntryGvAfter [s6Step256EntryFvOut,s6Step256EntryGvOut] :=
  hmrRows_owned_drop s6Step256EntryGvAfter [s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut] 2 s6Step256EntryBank_outgoingOwned

private theorem s6Step256EntryFv_distinct : (s6Step256EntryFvRow.sign::s6Step256EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256EntryFv_owned : (s6Step256EntryFvRow.sign::s6Step256EntryFvRow.payload).toFinset⊆s6Step256EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EntryFv_reserved : s6Step256EntryFvBefore.reserve s6Step256EntryFvFresh.toFinset=some s6Step256EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256EntryFvFresh,arenaWires]
  · norm_num [s6Step256EntryFvBefore,s6Step256EntryGAfter,s6Step256EntryFvFresh,arenaWires]
  · simp only [s6Step256EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step256EntryFv_checked : planRowResizeLog s6Step256EntryFvBefore s6Step256EntryFvRow 144 s6Step256EntryFvFresh=
    some (s6Step256EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩,growRow 776 s6Step256EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step256EntryFvBefore s6Step256EntryFvAfter s6Step256EntryFvRow 144 s6Step256EntryFvFresh
    s6Step256EntryFv_distinct s6Step256EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step256EntryFvRow.payload++s6Step256EntryFvFresh) s6Step256EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step256EntryGBefore : Arena := s6Step256EntryFBefore

private theorem s6Step256EntryG_Incoming : rowsOwned s6Step256EntryGBefore [s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow] 1 s6Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256EntryG_Outgoing : rowsOwned s6Step256EntryGvAfter [s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut] :=
  hmrRows_owned_drop s6Step256EntryGvAfter [s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut] 1 s6Step256EntryBank_outgoingOwned

private theorem s6Step256EntryG_distinct : (s6Step256EntryGRow.sign::s6Step256EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256EntryG_owned : (s6Step256EntryGRow.sign::s6Step256EntryGRow.payload).toFinset⊆s6Step256EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EntryG_reserved : s6Step256EntryGBefore.reserve s6Step256EntryGFresh.toFinset=some s6Step256EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256EntryGFresh,arenaWires]
  · norm_num [s6Step256EntryGBefore,s6Step256EntryFBefore,s6Step256EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step256EntryGAfter,s6Step256EntryGBefore,s6Step256EntryFBefore,s6Step256EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step256EntryG_checked : planRowResizeLog s6Step256EntryGBefore s6Step256EntryGRow 143 s6Step256EntryGFresh=
    some (s6Step256EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862],777⟩,growRow 777 s6Step256EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step256EntryGBefore s6Step256EntryGAfter s6Step256EntryGRow 143 s6Step256EntryGFresh
    s6Step256EntryG_distinct s6Step256EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256EntryG_reserved
  have rowEq : WindowRow.mk (s6Step256EntryGRow.payload++s6Step256EntryGFresh) s6Step256EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step256EntryGvBefore : Arena := s6Step256EntryGAfter

private theorem s6Step256EntryGv_Incoming : rowsOwned s6Step256EntryGvBefore [s6Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow] 3 s6Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256EntryGv_Outgoing : rowsOwned s6Step256EntryGvAfter [s6Step256EntryGvOut] :=
  hmrRows_owned_drop s6Step256EntryGvAfter [s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut] 3 s6Step256EntryBank_outgoingOwned

private theorem s6Step256EntryGv_distinct : (s6Step256EntryGvRow.sign::s6Step256EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256EntryGv_owned : (s6Step256EntryGvRow.sign::s6Step256EntryGvRow.payload).toFinset⊆s6Step256EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256EntryGv_reserved : s6Step256EntryGvBefore.reserve s6Step256EntryGvFresh.toFinset=some s6Step256EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256EntryGvFresh,arenaWires]
  · norm_num [s6Step256EntryGvBefore,s6Step256EntryGAfter,s6Step256EntryGvFresh,arenaWires]
  · simp only [s6Step256EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step256EntryGv_checked : planRowResizeLog s6Step256EntryGvBefore s6Step256EntryGvRow 144 s6Step256EntryGvFresh=
    some (s6Step256EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩,growRow 775 s6Step256EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step256EntryGvBefore s6Step256EntryGvAfter s6Step256EntryGvRow 144 s6Step256EntryGvFresh
    s6Step256EntryGv_distinct s6Step256EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step256EntryGvRow.payload++s6Step256EntryGvFresh) s6Step256EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step256EntryBank_rows : planWindowRowsLog s6Step256EntryFBefore [(s6Step256EntryFRow,143),(s6Step256EntryGRow,143),(s6Step256EntryFvRow,144),(s6Step256EntryGvRow,144)] [s6Step256EntryFFresh,s6Step256EntryGFresh,s6Step256EntryFvFresh,s6Step256EntryGvFresh]=
    some (s6Step256EntryGvAfter,[s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut],(growRow 795 s6Step256EntryFFresh ++ (growRow 777 s6Step256EntryGFresh ++ (growRow 776 s6Step256EntryFvFresh ++ (growRow 775 s6Step256EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step256EntryGvAfter [] []=some (s6Step256EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step256EntryGvBefore s6Step256EntryGvAfter s6Step256EntryGvAfter
    s6Step256EntryGvRow s6Step256EntryGvOut 144 s6Step256EntryGvFresh [] [] []
    (growRow 775 s6Step256EntryGvFresh) ([]) s6Step256EntryGv_Incoming s6Step256EntryGv_checked h4 s6Step256EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step256EntryFvBefore s6Step256EntryFvAfter s6Step256EntryGvAfter
    s6Step256EntryFvRow s6Step256EntryFvOut 144 s6Step256EntryFvFresh [(s6Step256EntryGvRow,144)] [s6Step256EntryGvFresh] [s6Step256EntryGvOut]
    (growRow 776 s6Step256EntryFvFresh) ((growRow 775 s6Step256EntryGvFresh ++ [])) s6Step256EntryFv_Incoming s6Step256EntryFv_checked h3 s6Step256EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step256EntryGBefore s6Step256EntryGAfter s6Step256EntryGvAfter
    s6Step256EntryGRow s6Step256EntryGOut 143 s6Step256EntryGFresh [(s6Step256EntryFvRow,144),(s6Step256EntryGvRow,144)] [s6Step256EntryFvFresh,s6Step256EntryGvFresh] [s6Step256EntryFvOut,s6Step256EntryGvOut]
    (growRow 777 s6Step256EntryGFresh) ((growRow 776 s6Step256EntryFvFresh ++ (growRow 775 s6Step256EntryGvFresh ++ []))) s6Step256EntryG_Incoming s6Step256EntryG_checked h2 s6Step256EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step256EntryFBefore s6Step256EntryFAfter s6Step256EntryGvAfter
    s6Step256EntryFRow s6Step256EntryFOut 143 s6Step256EntryFFresh [(s6Step256EntryGRow,143),(s6Step256EntryFvRow,144),(s6Step256EntryGvRow,144)] [s6Step256EntryGFresh,s6Step256EntryFvFresh,s6Step256EntryGvFresh] [s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut]
    (growRow 795 s6Step256EntryFFresh) ((growRow 777 s6Step256EntryGFresh ++ (growRow 776 s6Step256EntryFvFresh ++ (growRow 775 s6Step256EntryGvFresh ++ [])))) s6Step256EntryF_Incoming s6Step256EntryF_checked h1 s6Step256EntryF_Outgoing
  exact h0

private theorem s6Step256EntryBank_checked : compileHmrBankResizeLog .entry s6Step256EntryFBefore ⟨s6Step256EntryFRow,s6Step256EntryGRow,s6Step256EntryFvRow,s6Step256EntryGvRow⟩ ⟨143,143,144,144⟩ [s6Step256EntryFFresh,s6Step256EntryGFresh,s6Step256EntryFvFresh,s6Step256EntryGvFresh]=
    some (s6Step256EntryGvAfter,⟨s6Step256EntryFOut,s6Step256EntryGOut,s6Step256EntryFvOut,s6Step256EntryGvOut⟩,(growRow 795 s6Step256EntryFFresh ++ (growRow 777 s6Step256EntryGFresh ++ (growRow 776 s6Step256EntryFvFresh ++ (growRow 775 s6Step256EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step256EntryBank_rows]
  rfl

private def s6Step256ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256ExitFBefore : Arena := s6Step256ExitGAfter

private def s6Step256ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 810],795⟩

private def s6Step256ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 868],776⟩

private def s6Step256ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862, 833],777⟩

private def s6Step256ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩

private theorem s6Step256ExitBank_incomingDistinct : ([s6Step256ExitGRow,s6Step256ExitFRow,s6Step256ExitFvRow,s6Step256ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256ExitF_Incoming : rowsOwned s6Step256ExitFBefore [s6Step256ExitFRow,s6Step256ExitFvRow,s6Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256ExitGRow,s6Step256ExitFRow,s6Step256ExitFvRow,s6Step256ExitGvRow] 1 s6Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256ExitBank_outgoingOwned : rowsOwned s6Step256ExitGvAfter [s6Step256ExitGOut,s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step256ExitGvAfter (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256ExitF_Outgoing : rowsOwned s6Step256ExitGvAfter [s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut] :=
  hmrRows_owned_drop s6Step256ExitGvAfter [s6Step256ExitGOut,s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut] 1 s6Step256ExitBank_outgoingOwned

private theorem s6Step256ExitF_distinct : (s6Step256ExitFRow.sign::s6Step256ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256ExitF_owned : (s6Step256ExitFRow.sign::s6Step256ExitFRow.payload).toFinset⊆s6Step256ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256ExitF_retired : s6Step256ExitFBefore.retireSet s6Step256ExitFExtra.toFinset=s6Step256ExitFAfter := by
  unfold Arena.retireSet s6Step256ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step256ExitFBefore,s6Step256ExitGAfter,s6Step256ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step256ExitF_checked : planRowResizeLog s6Step256ExitFBefore s6Step256ExitFRow 142 []=
    some (s6Step256ExitFAfter,s6Step256ExitFOut,shrinkRow 795 s6Step256ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step256ExitFBefore s6Step256ExitFRow 142 s6Step256ExitF_distinct s6Step256ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step256ExitFRow.payload.take 142) s6Step256ExitFRow.sign=s6Step256ExitFOut := by decide +kernel
  have hi : s6Step256ExitFRow.payload.drop 142=s6Step256ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step256ExitF_retired] at result
  exact result

private def s6Step256ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256ExitFvBefore : Arena := s6Step256ExitFAfter

private theorem s6Step256ExitFv_Incoming : rowsOwned s6Step256ExitFvBefore [s6Step256ExitFvRow,s6Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256ExitGRow,s6Step256ExitFRow,s6Step256ExitFvRow,s6Step256ExitGvRow] 2 s6Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256ExitFvBefore (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256ExitFv_Outgoing : rowsOwned s6Step256ExitGvAfter [s6Step256ExitFvOut,s6Step256ExitGvOut] :=
  hmrRows_owned_drop s6Step256ExitGvAfter [s6Step256ExitGOut,s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut] 2 s6Step256ExitBank_outgoingOwned

private theorem s6Step256ExitFv_distinct : (s6Step256ExitFvRow.sign::s6Step256ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256ExitFv_owned : (s6Step256ExitFvRow.sign::s6Step256ExitFvRow.payload).toFinset⊆s6Step256ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256ExitFvBefore (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256ExitFv_retired : s6Step256ExitFvBefore.retireSet s6Step256ExitFvExtra.toFinset=s6Step256ExitFvAfter := by
  unfold Arena.retireSet s6Step256ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step256ExitFvBefore,s6Step256ExitFAfter,s6Step256ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step256ExitFv_checked : planRowResizeLog s6Step256ExitFvBefore s6Step256ExitFvRow 144 []=
    some (s6Step256ExitFvAfter,s6Step256ExitFvOut,shrinkRow 776 s6Step256ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step256ExitFvBefore s6Step256ExitFvRow 144 s6Step256ExitFv_distinct s6Step256ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step256ExitFvRow.payload.take 144) s6Step256ExitFvRow.sign=s6Step256ExitFvOut := by decide +kernel
  have hi : s6Step256ExitFvRow.payload.drop 144=s6Step256ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step256ExitFv_retired] at result
  exact result

private def s6Step256ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step256ExitG_Incoming : rowsOwned s6Step256ExitGBefore [s6Step256ExitGRow,s6Step256ExitFRow,s6Step256ExitFvRow,s6Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256ExitGRow,s6Step256ExitFRow,s6Step256ExitFvRow,s6Step256ExitGvRow] 0 s6Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256ExitG_Outgoing : rowsOwned s6Step256ExitGvAfter [s6Step256ExitGOut,s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut] :=
  hmrRows_owned_drop s6Step256ExitGvAfter [s6Step256ExitGOut,s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut] 0 s6Step256ExitBank_outgoingOwned

private theorem s6Step256ExitG_distinct : (s6Step256ExitGRow.sign::s6Step256ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256ExitG_owned : (s6Step256ExitGRow.sign::s6Step256ExitGRow.payload).toFinset⊆s6Step256ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256ExitG_retired : s6Step256ExitGBefore.retireSet s6Step256ExitGExtra.toFinset=s6Step256ExitGAfter := by
  unfold Arena.retireSet s6Step256ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step256ExitGBefore,s6Step256ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step256ExitG_checked : planRowResizeLog s6Step256ExitGBefore s6Step256ExitGRow 142 []=
    some (s6Step256ExitGAfter,s6Step256ExitGOut,shrinkRow 777 s6Step256ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step256ExitGBefore s6Step256ExitGRow 142 s6Step256ExitG_distinct s6Step256ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step256ExitGRow.payload.take 142) s6Step256ExitGRow.sign=s6Step256ExitGOut := by decide +kernel
  have hi : s6Step256ExitGRow.payload.drop 142=s6Step256ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step256ExitG_retired] at result
  exact result

private def s6Step256ExitGvBefore : Arena := s6Step256ExitFvAfter

private theorem s6Step256ExitGv_Incoming : rowsOwned s6Step256ExitGvBefore [s6Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256ExitGRow,s6Step256ExitFRow,s6Step256ExitFvRow,s6Step256ExitGvRow] 3 s6Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256ExitGvBefore (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256ExitGv_Outgoing : rowsOwned s6Step256ExitGvAfter [s6Step256ExitGvOut] :=
  hmrRows_owned_drop s6Step256ExitGvAfter [s6Step256ExitGOut,s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut] 3 s6Step256ExitBank_outgoingOwned

private theorem s6Step256ExitGv_distinct : (s6Step256ExitGvRow.sign::s6Step256ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256ExitGv_owned : (s6Step256ExitGvRow.sign::s6Step256ExitGvRow.payload).toFinset⊆s6Step256ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256ExitGvBefore (fun q => (0≤q ∧ q<398) ∨ (399≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256ExitGv_retired : s6Step256ExitGvBefore.retireSet s6Step256ExitGvExtra.toFinset=s6Step256ExitGvAfter := by
  unfold Arena.retireSet s6Step256ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step256ExitGvBefore,s6Step256ExitFvAfter,s6Step256ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step256ExitGv_checked : planRowResizeLog s6Step256ExitGvBefore s6Step256ExitGvRow 144 []=
    some (s6Step256ExitGvAfter,s6Step256ExitGvOut,shrinkRow 775 s6Step256ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step256ExitGvBefore s6Step256ExitGvRow 144 s6Step256ExitGv_distinct s6Step256ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step256ExitGvRow.payload.take 144) s6Step256ExitGvRow.sign=s6Step256ExitGvOut := by decide +kernel
  have hi : s6Step256ExitGvRow.payload.drop 144=s6Step256ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step256ExitGv_retired] at result
  exact result

private theorem s6Step256ExitBank_rows : planWindowRowsLog s6Step256ExitGBefore [(s6Step256ExitGRow,142),(s6Step256ExitFRow,142),(s6Step256ExitFvRow,144),(s6Step256ExitGvRow,144)] [[],[],[],[]]=
    some (s6Step256ExitGvAfter,[s6Step256ExitGOut,s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut],(shrinkRow 777 s6Step256ExitGExtra ++ (shrinkRow 795 s6Step256ExitFExtra ++ (shrinkRow 776 s6Step256ExitFvExtra ++ (shrinkRow 775 s6Step256ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step256ExitGvAfter [] []=some (s6Step256ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step256ExitGvBefore s6Step256ExitGvAfter s6Step256ExitGvAfter
    s6Step256ExitGvRow s6Step256ExitGvOut 144 [] [] [] []
    (shrinkRow 775 s6Step256ExitGvExtra) ([]) s6Step256ExitGv_Incoming s6Step256ExitGv_checked h4 s6Step256ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step256ExitFvBefore s6Step256ExitFvAfter s6Step256ExitGvAfter
    s6Step256ExitFvRow s6Step256ExitFvOut 144 [] [(s6Step256ExitGvRow,144)] [[]] [s6Step256ExitGvOut]
    (shrinkRow 776 s6Step256ExitFvExtra) ((shrinkRow 775 s6Step256ExitGvExtra ++ [])) s6Step256ExitFv_Incoming s6Step256ExitFv_checked h3 s6Step256ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step256ExitFBefore s6Step256ExitFAfter s6Step256ExitGvAfter
    s6Step256ExitFRow s6Step256ExitFOut 142 [] [(s6Step256ExitFvRow,144),(s6Step256ExitGvRow,144)] [[],[]] [s6Step256ExitFvOut,s6Step256ExitGvOut]
    (shrinkRow 795 s6Step256ExitFExtra) ((shrinkRow 776 s6Step256ExitFvExtra ++ (shrinkRow 775 s6Step256ExitGvExtra ++ []))) s6Step256ExitF_Incoming s6Step256ExitF_checked h2 s6Step256ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step256ExitGBefore s6Step256ExitGAfter s6Step256ExitGvAfter
    s6Step256ExitGRow s6Step256ExitGOut 142 [] [(s6Step256ExitFRow,142),(s6Step256ExitFvRow,144),(s6Step256ExitGvRow,144)] [[],[],[]] [s6Step256ExitFOut,s6Step256ExitFvOut,s6Step256ExitGvOut]
    (shrinkRow 777 s6Step256ExitGExtra) ((shrinkRow 795 s6Step256ExitFExtra ++ (shrinkRow 776 s6Step256ExitFvExtra ++ (shrinkRow 775 s6Step256ExitGvExtra ++ [])))) s6Step256ExitG_Incoming s6Step256ExitG_checked h1 s6Step256ExitG_Outgoing
  exact h0

private theorem s6Step256ExitBank_checked : compileHmrBankResizeLog .exit s6Step256ExitGBefore ⟨s6Step256ExitFRow,s6Step256ExitGRow,s6Step256ExitFvRow,s6Step256ExitGvRow⟩ ⟨142,142,144,144⟩ [[],[],[],[]]=
    some (s6Step256ExitGvAfter,⟨s6Step256ExitFOut,s6Step256ExitGOut,s6Step256ExitFvOut,s6Step256ExitGvOut⟩,(shrinkRow 777 s6Step256ExitGExtra ++ (shrinkRow 795 s6Step256ExitFExtra ++ (shrinkRow 776 s6Step256ExitFvExtra ++ (shrinkRow 775 s6Step256ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step256ExitBank_rows]
  rfl

private theorem s6Step256Add0_apart : Disjoint s6Step256Add0Arena.live s6Step256Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step256Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256Add0_card : s6Step256Add0Arena.live.card=899 := by
  decide +kernel

private theorem s6Step256Add0_borrowed : s6Step256Add0Arena.checkBorrow (hmrHybridCount s6Step256Add0Arena s6Step256Add0B.length) s6Step256Add0Work=some s6Step256Add0During := by
  have len : s6Step256Add0Work.length=hmrHybridCount s6Step256Add0Arena s6Step256Add0B.length := by
    rw [hmrHybridCount,s6Step256Add0_card]
    decide +kernel
  have nd : s6Step256Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step256Add0Arena s6Step256Add0During s6Step256Add0Work.toFinset s6Step256Add0_bounded s6Step256Add0_apart rfl

private theorem s6Step256Add0_distinct : (830::853::805::(s6Step256Add0A++s6Step256Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256Add0_owned : (830::853::805::(s6Step256Add0A++s6Step256Add0B)).toFinset⊆s6Step256Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step256Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256Add0_checked : compileHmrHybridCinLog s6Step256Add0Arena 853 830 805 s6Step256Add0A s6Step256Add0B s6Step256Add0Work=some s6Step256Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step256Add0Arena s6Step256Add0During 853 830 805 s6Step256Add0A s6Step256Add0B s6Step256Add0Work
    (by decide +kernel) (by decide +kernel) s6Step256Add0_distinct
    (fun q hq => s6Step256Add0_owned (List.mem_toFinset.mpr hq)) s6Step256Add0_borrowed

private theorem s6Step256Add1_apart : Disjoint s6Step256Add1Arena.live s6Step256Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step256Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256Add1_card : s6Step256Add1Arena.live.card=899 := by
  decide +kernel

private theorem s6Step256Add1_borrowed : s6Step256Add1Arena.checkBorrow (hmrHybridCount s6Step256Add1Arena s6Step256Add1B.length) s6Step256Add1Work=some s6Step256Add1During := by
  have len : s6Step256Add1Work.length=hmrHybridCount s6Step256Add1Arena s6Step256Add1B.length := by
    rw [hmrHybridCount,s6Step256Add1_card]
    decide +kernel
  have nd : s6Step256Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step256Add1Arena s6Step256Add1During s6Step256Add1Work.toFinset s6Step256Add1_bounded s6Step256Add1_apart rfl

private theorem s6Step256Add1_distinct : (830::853::805::(s6Step256Add1A++s6Step256Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256Add1_owned : (830::853::805::(s6Step256Add1A++s6Step256Add1B)).toFinset⊆s6Step256Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step256Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256Add1_checked : compileHmrHybridCinLog s6Step256Add1Arena 853 830 805 s6Step256Add1A s6Step256Add1B s6Step256Add1Work=some s6Step256Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step256Add1Arena s6Step256Add1During 853 830 805 s6Step256Add1A s6Step256Add1B s6Step256Add1Work
    (by decide +kernel) (by decide +kernel) s6Step256Add1_distinct
    (fun q hq => s6Step256Add1_owned (List.mem_toFinset.mpr hq)) s6Step256Add1_borrowed

private theorem s6Step256F4_apart : Disjoint (s6Step256Add0A++s6Step256Add0B).toFinset (s6Step256Add1A++s6Step256Add1B).toFinset := by
  have nd : ((s6Step256Add0A++s6Step256Add0B)++(s6Step256Add1A++s6Step256Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step256F4_carry : s6Step256F4FlagArena.checkBorrow 1 [805]=some s6Step256Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step256F4FlagArena,s6Step256HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step256F4FlagArena,s6Step256HeadFvAfter,s6Step256Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step256F4_distinct : (822::853::830::805::((s6Step256Add0A++s6Step256Add1A)++(s6Step256Add0B++s6Step256Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256F4_flag : s6Step256HeadFvAfter.checkBorrow 1 [830]=some s6Step256F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step256HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step256F4_owned : (822::853::((s6Step256Add0A++s6Step256Add1A)++(s6Step256Add0B++s6Step256Add1B))).toFinset⊆s6Step256HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step256HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256F4_checked : compileHmrHybridF4Log s6Step256HeadFvAfter 822 853 s6Step256Add0A s6Step256Add0B s6Step256Add1A s6Step256Add1B [830] [805] s6Step256Add0Work s6Step256Add1Work=some s6Step256F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step256HeadFvAfter s6Step256F4FlagArena s6Step256Add0Arena s6Step256Add0During s6Step256Add1During 822 853
    s6Step256Add0A s6Step256Add0B s6Step256Add1A s6Step256Add1B [830] [805] s6Step256Add0Work s6Step256Add1Work
    (fun q hq => s6Step256F4_owned (List.mem_toFinset.mpr hq)) s6Step256F4_flag s6Step256F4_carry
    s6Step256F4_distinct s6Step256F4_apart s6Step256Add0_checked s6Step256Add1_checked

private theorem s6Step256Front_branch : s6Step256FrontSigmaArena.checkBorrow 1 [853]=some s6Step256HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step256FrontSigmaArena,s6Step256EntryGvAfter,s6Step256EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step256FrontSigmaArena,s6Step256EntryGvAfter,s6Step256EntryGAfter,s6Step256HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step256Front_entry : HmrFrontEntryValid s6Step256EntryFBefore s6Step256FrontBank 143 144 ⟨142,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step256FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step256EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step256EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step256FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step256Front_sigma : s6Step256EntryGvAfter.checkBorrow 1 [822]=some s6Step256FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step256EntryGvAfter,s6Step256EntryGAfter,arenaWires]
  · rfl

private def s6Step256HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256HeadFBefore : Arena := s6Step256HeadGAfter

private def s6Step256HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398],795⟩

private def s6Step256HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step256HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862],777⟩

private def s6Step256HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private theorem s6Step256HeadBank_incomingDistinct : ([s6Step256HeadGRow,s6Step256HeadFRow,s6Step256HeadGvRow,s6Step256HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256HeadF_Incoming : rowsOwned s6Step256HeadFBefore [s6Step256HeadFRow,s6Step256HeadGvRow,s6Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256HeadGRow,s6Step256HeadFRow,s6Step256HeadGvRow,s6Step256HeadFvRow] 1 s6Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256HeadBank_outgoingOwned : rowsOwned s6Step256HeadFvAfter [s6Step256HeadGOut,s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step256HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256HeadF_Outgoing : rowsOwned s6Step256HeadFvAfter [s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut] :=
  hmrRows_owned_drop s6Step256HeadFvAfter [s6Step256HeadGOut,s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut] 1 s6Step256HeadBank_outgoingOwned

private theorem s6Step256HeadF_distinct : (s6Step256HeadFRow.sign::s6Step256HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256HeadF_owned : (s6Step256HeadFRow.sign::s6Step256HeadFRow.payload).toFinset⊆s6Step256HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256HeadF_reserved : s6Step256HeadFBefore.reserve s6Step256HeadFFresh.toFinset=some s6Step256HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256HeadFFresh,arenaWires]
  · norm_num [s6Step256HeadFBefore,s6Step256HeadGAfter,s6Step256HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step256HeadFAfter,s6Step256HeadFBefore,s6Step256HeadGAfter,s6Step256HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step256HeadF_checked : planRowResizeLog s6Step256HeadFBefore s6Step256HeadFRow 144 s6Step256HeadFFresh=
    some (s6Step256HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 810],795⟩,growRow 795 s6Step256HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step256HeadFBefore s6Step256HeadFAfter s6Step256HeadFRow 144 s6Step256HeadFFresh
    s6Step256HeadF_distinct s6Step256HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256HeadF_reserved
  have rowEq : WindowRow.mk (s6Step256HeadFRow.payload++s6Step256HeadFFresh) s6Step256HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 810],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step256HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step256HeadFvBefore : Arena := s6Step256HeadGvAfter

private theorem s6Step256HeadFv_Incoming : rowsOwned s6Step256HeadFvBefore [s6Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256HeadGRow,s6Step256HeadFRow,s6Step256HeadGvRow,s6Step256HeadFvRow] 3 s6Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256HeadFv_Outgoing : rowsOwned s6Step256HeadFvAfter [s6Step256HeadFvOut] :=
  hmrRows_owned_drop s6Step256HeadFvAfter [s6Step256HeadGOut,s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut] 3 s6Step256HeadBank_outgoingOwned

private theorem s6Step256HeadFv_distinct : (s6Step256HeadFvRow.sign::s6Step256HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256HeadFv_owned : (s6Step256HeadFvRow.sign::s6Step256HeadFvRow.payload).toFinset⊆s6Step256HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256HeadFv_reserved : s6Step256HeadFvBefore.reserve s6Step256HeadFvFresh.toFinset=some s6Step256HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256HeadFvFresh,arenaWires]
  · norm_num [s6Step256HeadFvBefore,s6Step256HeadGvAfter,s6Step256HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step256HeadFvAfter,s6Step256HeadFvBefore,s6Step256HeadGvAfter,s6Step256HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step256HeadFv_checked : planRowResizeLog s6Step256HeadFvBefore s6Step256HeadFvRow 145 s6Step256HeadFvFresh=
    some (s6Step256HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 868],776⟩,growRow 776 s6Step256HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step256HeadFvBefore s6Step256HeadFvAfter s6Step256HeadFvRow 145 s6Step256HeadFvFresh
    s6Step256HeadFv_distinct s6Step256HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step256HeadFvRow.payload++s6Step256HeadFvFresh) s6Step256HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 868],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step256HeadG_Incoming : rowsOwned s6Step256HeadGBefore [s6Step256HeadGRow,s6Step256HeadFRow,s6Step256HeadGvRow,s6Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256HeadGRow,s6Step256HeadFRow,s6Step256HeadGvRow,s6Step256HeadFvRow] 0 s6Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256HeadG_Outgoing : rowsOwned s6Step256HeadFvAfter [s6Step256HeadGOut,s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut] :=
  hmrRows_owned_drop s6Step256HeadFvAfter [s6Step256HeadGOut,s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut] 0 s6Step256HeadBank_outgoingOwned

private theorem s6Step256HeadG_distinct : (s6Step256HeadGRow.sign::s6Step256HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256HeadG_owned : (s6Step256HeadGRow.sign::s6Step256HeadGRow.payload).toFinset⊆s6Step256HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256HeadG_reserved : s6Step256HeadGBefore.reserve s6Step256HeadGFresh.toFinset=some s6Step256HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256HeadGFresh,arenaWires]
  · norm_num [s6Step256HeadGBefore,s6Step256HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step256HeadGAfter,s6Step256HeadGBefore,s6Step256HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step256HeadG_checked : planRowResizeLog s6Step256HeadGBefore s6Step256HeadGRow 144 s6Step256HeadGFresh=
    some (s6Step256HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862, 833],777⟩,growRow 777 s6Step256HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step256HeadGBefore s6Step256HeadGAfter s6Step256HeadGRow 144 s6Step256HeadGFresh
    s6Step256HeadG_distinct s6Step256HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256HeadG_reserved
  have rowEq : WindowRow.mk (s6Step256HeadGRow.payload++s6Step256HeadGFresh) s6Step256HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 862, 833],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step256HeadGvBefore : Arena := s6Step256HeadFAfter

private theorem s6Step256HeadGv_Incoming : rowsOwned s6Step256HeadGvBefore [s6Step256HeadGvRow,s6Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step256HeadGRow,s6Step256HeadFRow,s6Step256HeadGvRow,s6Step256HeadFvRow] 2 s6Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step256HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step256HeadGv_Outgoing : rowsOwned s6Step256HeadFvAfter [s6Step256HeadGvOut,s6Step256HeadFvOut] :=
  hmrRows_owned_drop s6Step256HeadFvAfter [s6Step256HeadGOut,s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut] 2 s6Step256HeadBank_outgoingOwned

private theorem s6Step256HeadGv_distinct : (s6Step256HeadGvRow.sign::s6Step256HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step256HeadGv_owned : (s6Step256HeadGvRow.sign::s6Step256HeadGvRow.payload).toFinset⊆s6Step256HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step256HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step256HeadGv_reserved : s6Step256HeadGvBefore.reserve s6Step256HeadGvFresh.toFinset=some s6Step256HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step256HeadGvFresh,arenaWires]
  · norm_num [s6Step256HeadGvBefore,s6Step256HeadFAfter,s6Step256HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step256HeadGvAfter,s6Step256HeadGvBefore,s6Step256HeadFAfter,s6Step256HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step256HeadGv_checked : planRowResizeLog s6Step256HeadGvBefore s6Step256HeadGvRow 145 s6Step256HeadGvFresh=
    some (s6Step256HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩,growRow 775 s6Step256HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step256HeadGvBefore s6Step256HeadGvAfter s6Step256HeadGvRow 145 s6Step256HeadGvFresh
    s6Step256HeadGv_distinct s6Step256HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step256HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step256HeadGvRow.payload++s6Step256HeadGvFresh) s6Step256HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 809],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step256HeadBank_rows : planWindowRowsLog s6Step256HeadGBefore [(s6Step256HeadGRow,144),(s6Step256HeadFRow,144),(s6Step256HeadGvRow,145),(s6Step256HeadFvRow,145)] [s6Step256HeadGFresh,s6Step256HeadFFresh,s6Step256HeadGvFresh,s6Step256HeadFvFresh]=
    some (s6Step256HeadFvAfter,[s6Step256HeadGOut,s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut],(growRow 777 s6Step256HeadGFresh ++ (growRow 795 s6Step256HeadFFresh ++ (growRow 775 s6Step256HeadGvFresh ++ (growRow 776 s6Step256HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step256HeadFvAfter [] []=some (s6Step256HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step256HeadFvBefore s6Step256HeadFvAfter s6Step256HeadFvAfter
    s6Step256HeadFvRow s6Step256HeadFvOut 145 s6Step256HeadFvFresh [] [] []
    (growRow 776 s6Step256HeadFvFresh) ([]) s6Step256HeadFv_Incoming s6Step256HeadFv_checked h4 s6Step256HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step256HeadGvBefore s6Step256HeadGvAfter s6Step256HeadFvAfter
    s6Step256HeadGvRow s6Step256HeadGvOut 145 s6Step256HeadGvFresh [(s6Step256HeadFvRow,145)] [s6Step256HeadFvFresh] [s6Step256HeadFvOut]
    (growRow 775 s6Step256HeadGvFresh) ((growRow 776 s6Step256HeadFvFresh ++ [])) s6Step256HeadGv_Incoming s6Step256HeadGv_checked h3 s6Step256HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step256HeadFBefore s6Step256HeadFAfter s6Step256HeadFvAfter
    s6Step256HeadFRow s6Step256HeadFOut 144 s6Step256HeadFFresh [(s6Step256HeadGvRow,145),(s6Step256HeadFvRow,145)] [s6Step256HeadGvFresh,s6Step256HeadFvFresh] [s6Step256HeadGvOut,s6Step256HeadFvOut]
    (growRow 795 s6Step256HeadFFresh) ((growRow 775 s6Step256HeadGvFresh ++ (growRow 776 s6Step256HeadFvFresh ++ []))) s6Step256HeadF_Incoming s6Step256HeadF_checked h2 s6Step256HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step256HeadGBefore s6Step256HeadGAfter s6Step256HeadFvAfter
    s6Step256HeadGRow s6Step256HeadGOut 144 s6Step256HeadGFresh [(s6Step256HeadFRow,144),(s6Step256HeadGvRow,145),(s6Step256HeadFvRow,145)] [s6Step256HeadFFresh,s6Step256HeadGvFresh,s6Step256HeadFvFresh] [s6Step256HeadFOut,s6Step256HeadGvOut,s6Step256HeadFvOut]
    (growRow 777 s6Step256HeadGFresh) ((growRow 795 s6Step256HeadFFresh ++ (growRow 775 s6Step256HeadGvFresh ++ (growRow 776 s6Step256HeadFvFresh ++ [])))) s6Step256HeadG_Incoming s6Step256HeadG_checked h1 s6Step256HeadG_Outgoing
  exact h0

private theorem s6Step256HeadBank_checked : compileHmrBankResizeLog .headroom s6Step256HeadGBefore ⟨s6Step256HeadFRow,s6Step256HeadGRow,s6Step256HeadFvRow,s6Step256HeadGvRow⟩ ⟨144,144,145,145⟩ [s6Step256HeadGFresh,s6Step256HeadFFresh,s6Step256HeadGvFresh,s6Step256HeadFvFresh]=
    some (s6Step256HeadFvAfter,⟨s6Step256HeadFOut,s6Step256HeadGOut,s6Step256HeadFvOut,s6Step256HeadGvOut⟩,(growRow 777 s6Step256HeadGFresh ++ (growRow 795 s6Step256HeadFFresh ++ (growRow 775 s6Step256HeadGvFresh ++ (growRow 776 s6Step256HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step256HeadBank_rows]
  rfl

private theorem s6Step256Front_checked : compileHmrSourceFrontLog s6Step256EntryFBefore s6Step256FrontBank 143 144 ⟨142,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step256FrontLog=some s6Step256FrontPlan := by
  have pairEq : s6Step256FrontPair=⟨s6Step256HeadFRow,s6Step256HeadGRow,s6Step256HeadFvRow,s6Step256HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step256FrontHead=⟨s6Step256ExitFRow,s6Step256ExitGRow,s6Step256ExitFvRow,s6Step256ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step256Add0A=s6Step256FrontHead.f.wires := by decide +kernel
  have gEq : s6Step256Add0B=s6Step256FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step256Add1A=s6Step256FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step256Add1B=s6Step256FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step256EntryFBefore s6Step256FrontBank 143 144 ⟨142,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step256FrontLog s6Step256FrontPlan
  · exact s6Step256Front_entry
  · exact s6Step256EntryBank_checked
  · exact s6Step256Front_sigma
  · rfl
  · exact s6Step256Front_branch
  · rfl
  · simpa only [s6Step256FrontPlan,pairEq] using s6Step256HeadBank_checked
  · simpa only [s6Step256FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step256F4_checked
  · exact s6Step256Counter_checked
  · rfl
  · simpa only [s6Step256FrontPlan,headEq] using s6Step256ExitBank_checked

private theorem s6Step256Complete_explicit_checked : compileHmrEarlyStepLog s6Step256EntryFBefore s6Step256FrontBank 143 144 ⟨142,142,144,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step256CompleteLog=some s6Step256CompletePlan := by
  let Q := s6Step256EarlyControlPlan
  have hq := s6Step256EarlyControl_plan_checked
  have fv1 : s6Step256CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step256CompleteOut.fv.payload[2]?.getD s6Step256CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step256CompleteOut.fv.payload[3]?.getD s6Step256CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step256CompleteOut.fv.payload[4]?.getD s6Step256CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step256EntryFBefore s6Step256EarlyControlArena s6Step256FrontBank 143 144 ⟨142,142,144,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step256CompleteLog s6Step256FrontPlan Q
    s6Step256Front_checked s6Step256Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step256Complete_owned s6Step256Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step256EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 s6Step256CompleteOut.fv.second (s6Step256CompleteOut.fv.payload[2]?.getD s6Step256CompleteOut.fv.sign) (s6Step256CompleteOut.fv.payload[3]?.getD s6Step256CompleteOut.fv.sign) (s6Step256CompleteOut.fv.payload[4]?.getD s6Step256CompleteOut.fv.sign) 853 51 s6Step256EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep256Arena : Arena := s6Step256EntryFBefore
def s6PrivateStep256Bank : WindowBank := s6Step256FrontBank
def s6PrivateStep256Spec : HmrSourceWalkStepLog := ⟨143,144,⟨142,142,144,144⟩,51,.early s6Step256CompleteLog⟩
def s6PrivateStep256Plan : HmrSourceStepPlan := .early s6Step256CompletePlan
theorem s6PrivateStep256_source : s6PrivateStep256Spec=s6ObservedLogs256[0] := rfl
theorem s6PrivateStep256_checked : compileHmrSourceStepLog s6PrivateStep256Arena s6PrivateStep256Bank
    s6PrivateStep256Spec.fgWidth s6PrivateStep256Spec.vWidth s6PrivateStep256Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 256 s6PrivateStep256Spec.need none s6PrivateStep256Spec.log=some s6PrivateStep256Plan := by
  change compileHmrSourceStepLog s6Step256EntryFBefore s6Step256FrontBank 143 144 ⟨142,142,144,144⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 256 51 none (.early s6Step256CompleteLog)=some (.early s6Step256CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 256<498)]
  rw [s6Step256Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
