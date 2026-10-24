import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep255
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

private def s6Step257CompleteMoves : List (Wire × Wire) := []

private def s6Step257EarlyControlLog : HmrEarlyControlLog := ⟨[868, 810, 809, 880, 862],[833],[830],[805, 817, 812, 915, 932, 906],[]⟩

private def s6Step257FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[880], [809], [868], [810]],[[], [], [], []]⟩,[853],[822],[862],[833],[830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[862, 833, 830, 805]⟩

private def s6Step257CompleteLog : HmrEarlyStepLog := ⟨s6Step257FrontLog,s6Step257CompleteMoves,s6Step257EarlyControlLog⟩

private def s6Step257ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step257ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step257ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step257ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step257FrontOut : WindowBank := ⟨s6Step257ExitFOut,s6Step257ExitGOut,s6Step257ExitFvOut,s6Step257ExitGvOut⟩

private def s6Step257CompleteOut : WindowBank := s6Step257FrontOut.repacked s6Step257CompleteMoves

private def s6Step257EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step257EarlyControlPositiveArena,[833],s6Step257EarlyControlEqualityArena,[830],⟨⟨853,false⟩,[⟨⟨833,false⟩,830⟩]⟩⟩

private def s6Step257EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,868⟩,⟨⟨772,false⟩,810⟩,⟨⟨771,false⟩,809⟩,⟨⟨770,false⟩,880⟩,⟨⟨769,false⟩,862⟩]⟩

private def s6Step257EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step257EarlyControlZeroArena,s6Step257EarlyControlZeroPlan,s6Step257EarlyControlClassPlan,s6Step257EarlyControlFlagArena,s6Step257EarlyControlFittedArena,s6Step257EarlyControlHistoryArena,s6Step257EarlyControlSigmaArena,s6Step257EarlyControlOutputArena,s6Step257EarlyControlLog⟩

private def s6Step257CounterWork : List Wire := [862, 833, 830, 805]

private theorem s6Step257Counter_bounded : s6Step257CounterWork.toFinset⊆arenaWires := by norm_num [s6Step257CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step257HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257CounterDuring : Arena := ⟨s6Step257HeadFvAfter.live∪s6Step257CounterWork.toFinset,Finset.union_subset s6Step257HeadFvAfter.bounded s6Step257Counter_bounded⟩

private def s6Step257EntryFFresh : List Wire := []

private def s6Step257EntryFvFresh : List Wire := []

private def s6Step257EntryGFresh : List Wire := []

private def s6Step257EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257EntryGvAfter : Arena := s6Step257EntryFBefore

private def s6Step257EntryGvFresh : List Wire := []

private def s6Step257ExitFExtra : List Wire := [809]

private def s6Step257ExitFvExtra : List Wire := [810]

private def s6Step257ExitGExtra : List Wire := [880]

private def s6Step257ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257ExitGvExtra : List Wire := [868]

private def s6Step257Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257Add0Work : List Wire := [830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step257Add0_bounded : s6Step257Add0Work.toFinset⊆arenaWires := by
  have h : s6Step257Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step257Add0During : Arena := ⟨s6Step257Add0Arena.live∪s6Step257Add0Work.toFinset,Finset.union_subset s6Step257Add0Arena.bounded s6Step257Add0_bounded⟩

private def s6Step257Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257Add1Work : List Wire := [830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step257Add1_bounded : s6Step257Add1Work.toFinset⊆arenaWires := by
  have h : s6Step257Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step257Add1During : Arena := ⟨s6Step257Add1Arena.live∪s6Step257Add1Work.toFinset,Finset.union_subset s6Step257Add1Arena.bounded s6Step257Add1_bounded⟩

private def s6Step257F4FlagArena : Arena := ⟨s6Step257HeadFvAfter.live∪{862},Finset.union_subset s6Step257HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step257F4Plan : HmrHybridF4Plan := ⟨s6Step257F4FlagArena,[862],s6Step257Add0Arena,[833],s6Step257Add0During,s6Step257Add0Work,s6Step257Add1During,s6Step257Add1Work⟩

private def s6Step257HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 809],795⟩

private def s6Step257HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 810],776⟩

private def s6Step257HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 880],777⟩

private def s6Step257HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 868],775⟩

private def s6Step257FrontHead : WindowBank := ⟨s6Step257HeadFOut,s6Step257HeadGOut,s6Step257HeadFvOut,s6Step257HeadGvOut⟩

private def s6Step257EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step257EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step257EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step257EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step257FrontPair : WindowBank := ⟨s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut⟩

private def s6Step257FrontSigmaArena : Arena := ⟨s6Step257EntryGvAfter.live∪{853},Finset.union_subset s6Step257EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step257HeadFFresh : List Wire := [809]

private def s6Step257HeadFvFresh : List Wire := [810]

private def s6Step257HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257HeadGFresh : List Wire := [880]

private def s6Step257HeadGvFresh : List Wire := [868]

private def s6Step257FrontPlan : HmrSourceFront := ⟨s6Step257EntryGvAfter,s6Step257FrontPair,(growRow 795 s6Step257EntryFFresh ++ (growRow 777 s6Step257EntryGFresh ++ (growRow 776 s6Step257EntryFvFresh ++ (growRow 775 s6Step257EntryGvFresh ++ [])))),s6Step257FrontSigmaArena,[853],s6Step257HeadGBefore,[822],
  s6Step257HeadFvAfter,s6Step257FrontHead,(growRow 777 s6Step257HeadGFresh ++ (growRow 795 s6Step257HeadFFresh ++ (growRow 775 s6Step257HeadGvFresh ++ (growRow 776 s6Step257HeadFvFresh ++ [])))),s6Step257F4Plan,s6Step257CounterDuring,s6Step257CounterWork,s6Step257ExitGvAfter,s6Step257FrontOut,(shrinkRow 777 s6Step257ExitGExtra ++ (shrinkRow 795 s6Step257ExitFExtra ++ (shrinkRow 776 s6Step257ExitFvExtra ++ (shrinkRow 775 s6Step257ExitGvExtra ++ []))))⟩

private def s6Step257CompletePlan : HmrEarlyStepPlan := ⟨s6Step257FrontPlan,s6Step257EarlyControlArena,s6Step257EarlyControlPlan,s6Step257CompleteMoves⟩

private theorem s6Step257Complete_apart : List.Disjoint (s6Step257CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [853, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step257CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[853, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step257Complete_owned : (s6Step257CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257Complete_repack : s6Step257ExitGvAfter.checkRepack s6Step257CompleteMoves=some s6Step257EarlyControlArena := by rfl

private theorem s6Step257EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s6Step257EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_branch : compileHmrBranchRetirement s6Step257EarlyControlSigmaArena 822=some s6Step257EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step257EarlyControl_branchOwned
  · ext q
    simp [s6Step257EarlyControlOutputArena,s6Step257EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step257EarlyControl_classEqualityBorrow : s6Step257EarlyControlPositiveArena.checkBorrow (([853, 833] : List Wire).length-1) s6Step257EarlyControlLog.classWork=some s6Step257EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step257EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step257EarlyControlEqualityArena,s6Step257EarlyControlPositiveArena,s6Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step257EarlyControl_classEqualityOwned : ([853, 833] : List Wire).toFinset⊆s6Step257EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_classEquality : compileHmrEqualityLog s6Step257EarlyControlPositiveArena [853, 833] 0 s6Step257EarlyControlLog.classWork=some (s6Step257EarlyControlEqualityArena,s6Step257EarlyControlLog.classWork,s6Step257EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step257EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step257EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step257EarlyControl_classOwned : ([769, 862, 853] : List Wire).toFinset⊆s6Step257EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_positiveBorrow : s6Step257EarlyControlZeroArena.checkBorrow (1) s6Step257EarlyControlLog.positiveWork=some s6Step257EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step257EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step257EarlyControlPositiveArena,s6Step257EarlyControlZeroArena,s6Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step257EarlyControl_class : compileHmrSourceClassLog s6Step257EarlyControlZeroArena false 769 s6Step257EarlyControlZeroPlan.top 0 853 s6Step257EarlyControlLog.positiveWork s6Step257EarlyControlLog.classWork=some s6Step257EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step257EarlyControlClassPlan s6Step257EarlyControlZeroArena false 769 s6Step257EarlyControlZeroPlan.top 0 853
  constructor
  · decide +kernel
  · exact s6Step257EarlyControl_classOwned
  · exact s6Step257EarlyControl_positiveBorrow
  · exact s6Step257EarlyControl_classEquality

private theorem s6Step257EarlyControl_entryRecordOwned : ([822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_entrySigmaOwned : ([853, 254] : List Wire).toFinset⊆s6Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_fitBorrow : s6Step257EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step257EarlyControlLog.recordFresh=some s6Step257EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step257EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step257EarlyControlFittedArena,s6Step257EarlyControlFlagArena,s6Step257EarlyControlLog,arenaWires]

private theorem s6Step257EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step257EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_fit : compileHmrRecordGrowLog s6Step257EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step257EarlyControlLog.recordFresh=some s6Step257EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step257EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step257EarlyControl_fitBorrow

private theorem s6Step257EarlyControl_flagsBorrow : s6Step257EarlyControlEqualityArena.checkBorrow (6) s6Step257EarlyControlLog.flagWork=some s6Step257EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step257EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step257EarlyControlFlagArena,s6Step257EarlyControlEqualityArena,s6Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step257EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step257EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_flags : compileHmrFlagsLog s6Step257EarlyControlClassPlan.equalityArena s6Step257EarlyControlClassPlan.equality.top 253 252 251 s6Step257EarlyControlLog.flagWork=some s6Step257EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step257EarlyControl_flagsOwned⟩
  · exact s6Step257EarlyControl_flagsBorrow

private theorem s6Step257EarlyControl_historyBorrow : s6Step257EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step257EarlyControlLog.recordFresh=some s6Step257EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step257EarlyControlHistoryArena,s6Step257EarlyControlArena,s6Step257EarlyControlLog,arenaWires]

private theorem s6Step257EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_history : compileHmrRecordGrowLog s6Step257EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step257EarlyControlLog.recordFresh=some s6Step257EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step257EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step257EarlyControl_historyBorrow

private theorem s6Step257EarlyControl_sigmaOwned : ([254, 853] : List Wire).toFinset⊆s6Step257EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_sigmaReleaseOwned : ([853] : List Wire).toFinset⊆s6Step257EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_sigmaRelease : s6Step257EarlyControlHistoryArena.release {853} (fun _ => false)=some s6Step257EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step257EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step257EarlyControlSigmaArena,s6Step257EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step257EarlyControl_sigma : compileHmrSigmaDropLog s6Step257EarlyControlHistoryArena false 0 0 254 853 []=some s6Step257EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step257EarlyControl_sigmaOwned⟩
  · exact s6Step257EarlyControl_sigmaRelease

private theorem s6Step257EarlyControl_zeroBorrow : s6Step257EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step257EarlyControlLog.zeroWork=some s6Step257EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step257EarlyControlZeroArena,s6Step257EarlyControlArena,s6Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step257EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EarlyControl_zero : compileHmrEqualityLog s6Step257EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step257EarlyControlLog.zeroWork=some (s6Step257EarlyControlZeroArena,s6Step257EarlyControlLog.zeroWork,s6Step257EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step257EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step257EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step257EarlyControl_logged : s6Step257EarlyControlPlan.Logged s6Step257EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 853 254 253 252 251 822 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step257EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step257EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step257EarlyControl_zero
  · exact s6Step257EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step257EarlyControl_flags
  · exact s6Step257EarlyControl_fit
  · exact s6Step257EarlyControl_history
  · exact s6Step257EarlyControl_sigma
  · exact s6Step257EarlyControl_branch

private theorem s6Step257EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step257EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 853 254 253 252 251 822 51 s6Step257EarlyControlLog=some s6Step257EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step257EarlyControlPlan s6Step257EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 853 254 253 252 251 822 51 s6Step257EarlyControl_logged

private def s6Step257EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step257EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step257EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step257EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step257FrontBank : WindowBank := ⟨s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow⟩

private def s6Step257Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 809, 795]

private def s6Step257Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 880, 777]

private def s6Step257Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 810, 776]

private def s6Step257Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 868, 775]

private theorem s6Step257Counter_apart : Disjoint s6Step257HeadFvAfter.live s6Step257CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257Counter_borrowed : s6Step257HeadFvAfter.checkBorrow 4 s6Step257CounterWork=some s6Step257CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step257HeadFvAfter s6Step257CounterDuring s6Step257CounterWork.toFinset s6Step257Counter_bounded s6Step257Counter_apart rfl

private theorem s6Step257Counter_owned : (853::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step257HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257Counter_checked : compileHmrCounterStepLog s6Step257HeadFvAfter true 853 [774, 773, 772, 771, 770, 769] s6Step257CounterWork=some s6Step257CounterDuring := by
  have owned : ∀q∈853::[774, 773, 772, 771, 770, 769],q∈s6Step257HeadFvAfter.live := fun q hq => s6Step257Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step257Counter_borrowed

private def s6Step257EntryFAfter : Arena := s6Step257EntryFBefore

private theorem s6Step257EntryBank_incomingDistinct : ([s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257EntryF_Incoming : rowsOwned s6Step257EntryFBefore [s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow] 0 s6Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257EntryBank_outgoingOwned : rowsOwned s6Step257EntryGvAfter [s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step257EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257EntryF_Outgoing : rowsOwned s6Step257EntryGvAfter [s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut] :=
  hmrRows_owned_drop s6Step257EntryGvAfter [s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut] 0 s6Step257EntryBank_outgoingOwned

private theorem s6Step257EntryF_distinct : (s6Step257EntryFRow.sign::s6Step257EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257EntryF_owned : (s6Step257EntryFRow.sign::s6Step257EntryFRow.payload).toFinset⊆s6Step257EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EntryF_reserved : s6Step257EntryFBefore.reserve s6Step257EntryFFresh.toFinset=some s6Step257EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257EntryFFresh,arenaWires]
  · norm_num [s6Step257EntryFBefore,s6Step257EntryFFresh,arenaWires]
  · simp only [s6Step257EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step257EntryF_checked : planRowResizeLog s6Step257EntryFBefore s6Step257EntryFRow 142 s6Step257EntryFFresh=
    some (s6Step257EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩,growRow 795 s6Step257EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step257EntryFBefore s6Step257EntryFAfter s6Step257EntryFRow 142 s6Step257EntryFFresh
    s6Step257EntryF_distinct s6Step257EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257EntryF_reserved
  have rowEq : WindowRow.mk (s6Step257EntryFRow.payload++s6Step257EntryFFresh) s6Step257EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step257EntryFvAfter : Arena := s6Step257EntryFBefore

private def s6Step257EntryFvBefore : Arena := s6Step257EntryFBefore

private theorem s6Step257EntryFv_Incoming : rowsOwned s6Step257EntryFvBefore [s6Step257EntryFvRow,s6Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow] 2 s6Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257EntryFv_Outgoing : rowsOwned s6Step257EntryGvAfter [s6Step257EntryFvOut,s6Step257EntryGvOut] :=
  hmrRows_owned_drop s6Step257EntryGvAfter [s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut] 2 s6Step257EntryBank_outgoingOwned

private theorem s6Step257EntryFv_distinct : (s6Step257EntryFvRow.sign::s6Step257EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257EntryFv_owned : (s6Step257EntryFvRow.sign::s6Step257EntryFvRow.payload).toFinset⊆s6Step257EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EntryFv_reserved : s6Step257EntryFvBefore.reserve s6Step257EntryFvFresh.toFinset=some s6Step257EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257EntryFvFresh,arenaWires]
  · norm_num [s6Step257EntryFvBefore,s6Step257EntryFBefore,s6Step257EntryFvFresh,arenaWires]
  · simp only [s6Step257EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step257EntryFv_checked : planRowResizeLog s6Step257EntryFvBefore s6Step257EntryFvRow 144 s6Step257EntryFvFresh=
    some (s6Step257EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩,growRow 776 s6Step257EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step257EntryFvBefore s6Step257EntryFvAfter s6Step257EntryFvRow 144 s6Step257EntryFvFresh
    s6Step257EntryFv_distinct s6Step257EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step257EntryFvRow.payload++s6Step257EntryFvFresh) s6Step257EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step257EntryGAfter : Arena := s6Step257EntryFBefore

private def s6Step257EntryGBefore : Arena := s6Step257EntryFBefore

private theorem s6Step257EntryG_Incoming : rowsOwned s6Step257EntryGBefore [s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow] 1 s6Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257EntryG_Outgoing : rowsOwned s6Step257EntryGvAfter [s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut] :=
  hmrRows_owned_drop s6Step257EntryGvAfter [s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut] 1 s6Step257EntryBank_outgoingOwned

private theorem s6Step257EntryG_distinct : (s6Step257EntryGRow.sign::s6Step257EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257EntryG_owned : (s6Step257EntryGRow.sign::s6Step257EntryGRow.payload).toFinset⊆s6Step257EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EntryG_reserved : s6Step257EntryGBefore.reserve s6Step257EntryGFresh.toFinset=some s6Step257EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257EntryGFresh,arenaWires]
  · norm_num [s6Step257EntryGBefore,s6Step257EntryFBefore,s6Step257EntryGFresh,arenaWires]
  · simp only [s6Step257EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step257EntryG_checked : planRowResizeLog s6Step257EntryGBefore s6Step257EntryGRow 142 s6Step257EntryGFresh=
    some (s6Step257EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩,growRow 777 s6Step257EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step257EntryGBefore s6Step257EntryGAfter s6Step257EntryGRow 142 s6Step257EntryGFresh
    s6Step257EntryG_distinct s6Step257EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257EntryG_reserved
  have rowEq : WindowRow.mk (s6Step257EntryGRow.payload++s6Step257EntryGFresh) s6Step257EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step257EntryGvBefore : Arena := s6Step257EntryFBefore

private theorem s6Step257EntryGv_Incoming : rowsOwned s6Step257EntryGvBefore [s6Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow] 3 s6Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257EntryGv_Outgoing : rowsOwned s6Step257EntryGvAfter [s6Step257EntryGvOut] :=
  hmrRows_owned_drop s6Step257EntryGvAfter [s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut] 3 s6Step257EntryBank_outgoingOwned

private theorem s6Step257EntryGv_distinct : (s6Step257EntryGvRow.sign::s6Step257EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257EntryGv_owned : (s6Step257EntryGvRow.sign::s6Step257EntryGvRow.payload).toFinset⊆s6Step257EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257EntryGv_reserved : s6Step257EntryGvBefore.reserve s6Step257EntryGvFresh.toFinset=some s6Step257EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257EntryGvFresh,arenaWires]
  · norm_num [s6Step257EntryGvBefore,s6Step257EntryFBefore,s6Step257EntryGvFresh,arenaWires]
  · simp only [s6Step257EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step257EntryGv_checked : planRowResizeLog s6Step257EntryGvBefore s6Step257EntryGvRow 144 s6Step257EntryGvFresh=
    some (s6Step257EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩,growRow 775 s6Step257EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step257EntryGvBefore s6Step257EntryGvAfter s6Step257EntryGvRow 144 s6Step257EntryGvFresh
    s6Step257EntryGv_distinct s6Step257EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step257EntryGvRow.payload++s6Step257EntryGvFresh) s6Step257EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step257EntryBank_rows : planWindowRowsLog s6Step257EntryFBefore [(s6Step257EntryFRow,142),(s6Step257EntryGRow,142),(s6Step257EntryFvRow,144),(s6Step257EntryGvRow,144)] [s6Step257EntryFFresh,s6Step257EntryGFresh,s6Step257EntryFvFresh,s6Step257EntryGvFresh]=
    some (s6Step257EntryGvAfter,[s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut],(growRow 795 s6Step257EntryFFresh ++ (growRow 777 s6Step257EntryGFresh ++ (growRow 776 s6Step257EntryFvFresh ++ (growRow 775 s6Step257EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step257EntryGvAfter [] []=some (s6Step257EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step257EntryGvBefore s6Step257EntryGvAfter s6Step257EntryGvAfter
    s6Step257EntryGvRow s6Step257EntryGvOut 144 s6Step257EntryGvFresh [] [] []
    (growRow 775 s6Step257EntryGvFresh) ([]) s6Step257EntryGv_Incoming s6Step257EntryGv_checked h4 s6Step257EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step257EntryFvBefore s6Step257EntryFvAfter s6Step257EntryGvAfter
    s6Step257EntryFvRow s6Step257EntryFvOut 144 s6Step257EntryFvFresh [(s6Step257EntryGvRow,144)] [s6Step257EntryGvFresh] [s6Step257EntryGvOut]
    (growRow 776 s6Step257EntryFvFresh) ((growRow 775 s6Step257EntryGvFresh ++ [])) s6Step257EntryFv_Incoming s6Step257EntryFv_checked h3 s6Step257EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step257EntryGBefore s6Step257EntryGAfter s6Step257EntryGvAfter
    s6Step257EntryGRow s6Step257EntryGOut 142 s6Step257EntryGFresh [(s6Step257EntryFvRow,144),(s6Step257EntryGvRow,144)] [s6Step257EntryFvFresh,s6Step257EntryGvFresh] [s6Step257EntryFvOut,s6Step257EntryGvOut]
    (growRow 777 s6Step257EntryGFresh) ((growRow 776 s6Step257EntryFvFresh ++ (growRow 775 s6Step257EntryGvFresh ++ []))) s6Step257EntryG_Incoming s6Step257EntryG_checked h2 s6Step257EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step257EntryFBefore s6Step257EntryFAfter s6Step257EntryGvAfter
    s6Step257EntryFRow s6Step257EntryFOut 142 s6Step257EntryFFresh [(s6Step257EntryGRow,142),(s6Step257EntryFvRow,144),(s6Step257EntryGvRow,144)] [s6Step257EntryGFresh,s6Step257EntryFvFresh,s6Step257EntryGvFresh] [s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut]
    (growRow 795 s6Step257EntryFFresh) ((growRow 777 s6Step257EntryGFresh ++ (growRow 776 s6Step257EntryFvFresh ++ (growRow 775 s6Step257EntryGvFresh ++ [])))) s6Step257EntryF_Incoming s6Step257EntryF_checked h1 s6Step257EntryF_Outgoing
  exact h0

private theorem s6Step257EntryBank_checked : compileHmrBankResizeLog .entry s6Step257EntryFBefore ⟨s6Step257EntryFRow,s6Step257EntryGRow,s6Step257EntryFvRow,s6Step257EntryGvRow⟩ ⟨142,142,144,144⟩ [s6Step257EntryFFresh,s6Step257EntryGFresh,s6Step257EntryFvFresh,s6Step257EntryGvFresh]=
    some (s6Step257EntryGvAfter,⟨s6Step257EntryFOut,s6Step257EntryGOut,s6Step257EntryFvOut,s6Step257EntryGvOut⟩,(growRow 795 s6Step257EntryFFresh ++ (growRow 777 s6Step257EntryGFresh ++ (growRow 776 s6Step257EntryFvFresh ++ (growRow 775 s6Step257EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step257EntryBank_rows]
  rfl

private def s6Step257ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257ExitFBefore : Arena := s6Step257ExitGAfter

private def s6Step257ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 809],795⟩

private def s6Step257ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 810],776⟩

private def s6Step257ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 880],777⟩

private def s6Step257ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 868],775⟩

private theorem s6Step257ExitBank_incomingDistinct : ([s6Step257ExitGRow,s6Step257ExitFRow,s6Step257ExitFvRow,s6Step257ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257ExitF_Incoming : rowsOwned s6Step257ExitFBefore [s6Step257ExitFRow,s6Step257ExitFvRow,s6Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257ExitGRow,s6Step257ExitFRow,s6Step257ExitFvRow,s6Step257ExitGvRow] 1 s6Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257ExitBank_outgoingOwned : rowsOwned s6Step257ExitGvAfter [s6Step257ExitGOut,s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step257ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257ExitF_Outgoing : rowsOwned s6Step257ExitGvAfter [s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut] :=
  hmrRows_owned_drop s6Step257ExitGvAfter [s6Step257ExitGOut,s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut] 1 s6Step257ExitBank_outgoingOwned

private theorem s6Step257ExitF_distinct : (s6Step257ExitFRow.sign::s6Step257ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257ExitF_owned : (s6Step257ExitFRow.sign::s6Step257ExitFRow.payload).toFinset⊆s6Step257ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257ExitF_retired : s6Step257ExitFBefore.retireSet s6Step257ExitFExtra.toFinset=s6Step257ExitFAfter := by
  unfold Arena.retireSet s6Step257ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step257ExitFBefore,s6Step257ExitGAfter,s6Step257ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step257ExitF_checked : planRowResizeLog s6Step257ExitFBefore s6Step257ExitFRow 142 []=
    some (s6Step257ExitFAfter,s6Step257ExitFOut,shrinkRow 795 s6Step257ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step257ExitFBefore s6Step257ExitFRow 142 s6Step257ExitF_distinct s6Step257ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step257ExitFRow.payload.take 142) s6Step257ExitFRow.sign=s6Step257ExitFOut := by decide +kernel
  have hi : s6Step257ExitFRow.payload.drop 142=s6Step257ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step257ExitF_retired] at result
  exact result

private def s6Step257ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257ExitFvBefore : Arena := s6Step257ExitFAfter

private theorem s6Step257ExitFv_Incoming : rowsOwned s6Step257ExitFvBefore [s6Step257ExitFvRow,s6Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257ExitGRow,s6Step257ExitFRow,s6Step257ExitFvRow,s6Step257ExitGvRow] 2 s6Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257ExitFv_Outgoing : rowsOwned s6Step257ExitGvAfter [s6Step257ExitFvOut,s6Step257ExitGvOut] :=
  hmrRows_owned_drop s6Step257ExitGvAfter [s6Step257ExitGOut,s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut] 2 s6Step257ExitBank_outgoingOwned

private theorem s6Step257ExitFv_distinct : (s6Step257ExitFvRow.sign::s6Step257ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257ExitFv_owned : (s6Step257ExitFvRow.sign::s6Step257ExitFvRow.payload).toFinset⊆s6Step257ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257ExitFv_retired : s6Step257ExitFvBefore.retireSet s6Step257ExitFvExtra.toFinset=s6Step257ExitFvAfter := by
  unfold Arena.retireSet s6Step257ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step257ExitFvBefore,s6Step257ExitFAfter,s6Step257ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step257ExitFv_checked : planRowResizeLog s6Step257ExitFvBefore s6Step257ExitFvRow 144 []=
    some (s6Step257ExitFvAfter,s6Step257ExitFvOut,shrinkRow 776 s6Step257ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step257ExitFvBefore s6Step257ExitFvRow 144 s6Step257ExitFv_distinct s6Step257ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step257ExitFvRow.payload.take 144) s6Step257ExitFvRow.sign=s6Step257ExitFvOut := by decide +kernel
  have hi : s6Step257ExitFvRow.payload.drop 144=s6Step257ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step257ExitFv_retired] at result
  exact result

private def s6Step257ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step257ExitG_Incoming : rowsOwned s6Step257ExitGBefore [s6Step257ExitGRow,s6Step257ExitFRow,s6Step257ExitFvRow,s6Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257ExitGRow,s6Step257ExitFRow,s6Step257ExitFvRow,s6Step257ExitGvRow] 0 s6Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257ExitG_Outgoing : rowsOwned s6Step257ExitGvAfter [s6Step257ExitGOut,s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut] :=
  hmrRows_owned_drop s6Step257ExitGvAfter [s6Step257ExitGOut,s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut] 0 s6Step257ExitBank_outgoingOwned

private theorem s6Step257ExitG_distinct : (s6Step257ExitGRow.sign::s6Step257ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257ExitG_owned : (s6Step257ExitGRow.sign::s6Step257ExitGRow.payload).toFinset⊆s6Step257ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257ExitG_retired : s6Step257ExitGBefore.retireSet s6Step257ExitGExtra.toFinset=s6Step257ExitGAfter := by
  unfold Arena.retireSet s6Step257ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step257ExitGBefore,s6Step257ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step257ExitG_checked : planRowResizeLog s6Step257ExitGBefore s6Step257ExitGRow 142 []=
    some (s6Step257ExitGAfter,s6Step257ExitGOut,shrinkRow 777 s6Step257ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step257ExitGBefore s6Step257ExitGRow 142 s6Step257ExitG_distinct s6Step257ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step257ExitGRow.payload.take 142) s6Step257ExitGRow.sign=s6Step257ExitGOut := by decide +kernel
  have hi : s6Step257ExitGRow.payload.drop 142=s6Step257ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step257ExitG_retired] at result
  exact result

private def s6Step257ExitGvBefore : Arena := s6Step257ExitFvAfter

private theorem s6Step257ExitGv_Incoming : rowsOwned s6Step257ExitGvBefore [s6Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257ExitGRow,s6Step257ExitFRow,s6Step257ExitFvRow,s6Step257ExitGvRow] 3 s6Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257ExitGv_Outgoing : rowsOwned s6Step257ExitGvAfter [s6Step257ExitGvOut] :=
  hmrRows_owned_drop s6Step257ExitGvAfter [s6Step257ExitGOut,s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut] 3 s6Step257ExitBank_outgoingOwned

private theorem s6Step257ExitGv_distinct : (s6Step257ExitGvRow.sign::s6Step257ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257ExitGv_owned : (s6Step257ExitGvRow.sign::s6Step257ExitGvRow.payload).toFinset⊆s6Step257ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257ExitGv_retired : s6Step257ExitGvBefore.retireSet s6Step257ExitGvExtra.toFinset=s6Step257ExitGvAfter := by
  unfold Arena.retireSet s6Step257ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step257ExitGvBefore,s6Step257ExitFvAfter,s6Step257ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step257ExitGv_checked : planRowResizeLog s6Step257ExitGvBefore s6Step257ExitGvRow 144 []=
    some (s6Step257ExitGvAfter,s6Step257ExitGvOut,shrinkRow 775 s6Step257ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step257ExitGvBefore s6Step257ExitGvRow 144 s6Step257ExitGv_distinct s6Step257ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step257ExitGvRow.payload.take 144) s6Step257ExitGvRow.sign=s6Step257ExitGvOut := by decide +kernel
  have hi : s6Step257ExitGvRow.payload.drop 144=s6Step257ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step257ExitGv_retired] at result
  exact result

private theorem s6Step257ExitBank_rows : planWindowRowsLog s6Step257ExitGBefore [(s6Step257ExitGRow,142),(s6Step257ExitFRow,142),(s6Step257ExitFvRow,144),(s6Step257ExitGvRow,144)] [[],[],[],[]]=
    some (s6Step257ExitGvAfter,[s6Step257ExitGOut,s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut],(shrinkRow 777 s6Step257ExitGExtra ++ (shrinkRow 795 s6Step257ExitFExtra ++ (shrinkRow 776 s6Step257ExitFvExtra ++ (shrinkRow 775 s6Step257ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step257ExitGvAfter [] []=some (s6Step257ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step257ExitGvBefore s6Step257ExitGvAfter s6Step257ExitGvAfter
    s6Step257ExitGvRow s6Step257ExitGvOut 144 [] [] [] []
    (shrinkRow 775 s6Step257ExitGvExtra) ([]) s6Step257ExitGv_Incoming s6Step257ExitGv_checked h4 s6Step257ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step257ExitFvBefore s6Step257ExitFvAfter s6Step257ExitGvAfter
    s6Step257ExitFvRow s6Step257ExitFvOut 144 [] [(s6Step257ExitGvRow,144)] [[]] [s6Step257ExitGvOut]
    (shrinkRow 776 s6Step257ExitFvExtra) ((shrinkRow 775 s6Step257ExitGvExtra ++ [])) s6Step257ExitFv_Incoming s6Step257ExitFv_checked h3 s6Step257ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step257ExitFBefore s6Step257ExitFAfter s6Step257ExitGvAfter
    s6Step257ExitFRow s6Step257ExitFOut 142 [] [(s6Step257ExitFvRow,144),(s6Step257ExitGvRow,144)] [[],[]] [s6Step257ExitFvOut,s6Step257ExitGvOut]
    (shrinkRow 795 s6Step257ExitFExtra) ((shrinkRow 776 s6Step257ExitFvExtra ++ (shrinkRow 775 s6Step257ExitGvExtra ++ []))) s6Step257ExitF_Incoming s6Step257ExitF_checked h2 s6Step257ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step257ExitGBefore s6Step257ExitGAfter s6Step257ExitGvAfter
    s6Step257ExitGRow s6Step257ExitGOut 142 [] [(s6Step257ExitFRow,142),(s6Step257ExitFvRow,144),(s6Step257ExitGvRow,144)] [[],[],[]] [s6Step257ExitFOut,s6Step257ExitFvOut,s6Step257ExitGvOut]
    (shrinkRow 777 s6Step257ExitGExtra) ((shrinkRow 795 s6Step257ExitFExtra ++ (shrinkRow 776 s6Step257ExitFvExtra ++ (shrinkRow 775 s6Step257ExitGvExtra ++ [])))) s6Step257ExitG_Incoming s6Step257ExitG_checked h1 s6Step257ExitG_Outgoing
  exact h0

private theorem s6Step257ExitBank_checked : compileHmrBankResizeLog .exit s6Step257ExitGBefore ⟨s6Step257ExitFRow,s6Step257ExitGRow,s6Step257ExitFvRow,s6Step257ExitGvRow⟩ ⟨142,142,144,144⟩ [[],[],[],[]]=
    some (s6Step257ExitGvAfter,⟨s6Step257ExitFOut,s6Step257ExitGOut,s6Step257ExitFvOut,s6Step257ExitGvOut⟩,(shrinkRow 777 s6Step257ExitGExtra ++ (shrinkRow 795 s6Step257ExitFExtra ++ (shrinkRow 776 s6Step257ExitFvExtra ++ (shrinkRow 775 s6Step257ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step257ExitBank_rows]
  rfl

private theorem s6Step257Add0_apart : Disjoint s6Step257Add0Arena.live s6Step257Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step257Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257Add0_card : s6Step257Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step257Add0_borrowed : s6Step257Add0Arena.checkBorrow (hmrHybridCount s6Step257Add0Arena s6Step257Add0B.length) s6Step257Add0Work=some s6Step257Add0During := by
  have len : s6Step257Add0Work.length=hmrHybridCount s6Step257Add0Arena s6Step257Add0B.length := by
    rw [hmrHybridCount,s6Step257Add0_card]
    decide +kernel
  have nd : s6Step257Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step257Add0Arena s6Step257Add0During s6Step257Add0Work.toFinset s6Step257Add0_bounded s6Step257Add0_apart rfl

private theorem s6Step257Add0_distinct : (862::822::833::(s6Step257Add0A++s6Step257Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257Add0_owned : (862::822::833::(s6Step257Add0A++s6Step257Add0B)).toFinset⊆s6Step257Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step257Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257Add0_checked : compileHmrHybridCinLog s6Step257Add0Arena 822 862 833 s6Step257Add0A s6Step257Add0B s6Step257Add0Work=some s6Step257Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step257Add0Arena s6Step257Add0During 822 862 833 s6Step257Add0A s6Step257Add0B s6Step257Add0Work
    (by decide +kernel) (by decide +kernel) s6Step257Add0_distinct
    (fun q hq => s6Step257Add0_owned (List.mem_toFinset.mpr hq)) s6Step257Add0_borrowed

private theorem s6Step257Add1_apart : Disjoint s6Step257Add1Arena.live s6Step257Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step257Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257Add1_card : s6Step257Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step257Add1_borrowed : s6Step257Add1Arena.checkBorrow (hmrHybridCount s6Step257Add1Arena s6Step257Add1B.length) s6Step257Add1Work=some s6Step257Add1During := by
  have len : s6Step257Add1Work.length=hmrHybridCount s6Step257Add1Arena s6Step257Add1B.length := by
    rw [hmrHybridCount,s6Step257Add1_card]
    decide +kernel
  have nd : s6Step257Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step257Add1Arena s6Step257Add1During s6Step257Add1Work.toFinset s6Step257Add1_bounded s6Step257Add1_apart rfl

private theorem s6Step257Add1_distinct : (862::822::833::(s6Step257Add1A++s6Step257Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257Add1_owned : (862::822::833::(s6Step257Add1A++s6Step257Add1B)).toFinset⊆s6Step257Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step257Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257Add1_checked : compileHmrHybridCinLog s6Step257Add1Arena 822 862 833 s6Step257Add1A s6Step257Add1B s6Step257Add1Work=some s6Step257Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step257Add1Arena s6Step257Add1During 822 862 833 s6Step257Add1A s6Step257Add1B s6Step257Add1Work
    (by decide +kernel) (by decide +kernel) s6Step257Add1_distinct
    (fun q hq => s6Step257Add1_owned (List.mem_toFinset.mpr hq)) s6Step257Add1_borrowed

private theorem s6Step257F4_apart : Disjoint (s6Step257Add0A++s6Step257Add0B).toFinset (s6Step257Add1A++s6Step257Add1B).toFinset := by
  have nd : ((s6Step257Add0A++s6Step257Add0B)++(s6Step257Add1A++s6Step257Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step257F4_carry : s6Step257F4FlagArena.checkBorrow 1 [833]=some s6Step257Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step257F4FlagArena,s6Step257HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step257F4FlagArena,s6Step257HeadFvAfter,s6Step257Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step257F4_distinct : (853::822::862::833::((s6Step257Add0A++s6Step257Add1A)++(s6Step257Add0B++s6Step257Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257F4_flag : s6Step257HeadFvAfter.checkBorrow 1 [862]=some s6Step257F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step257HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step257F4_owned : (853::822::((s6Step257Add0A++s6Step257Add1A)++(s6Step257Add0B++s6Step257Add1B))).toFinset⊆s6Step257HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257F4_checked : compileHmrHybridF4Log s6Step257HeadFvAfter 853 822 s6Step257Add0A s6Step257Add0B s6Step257Add1A s6Step257Add1B [862] [833] s6Step257Add0Work s6Step257Add1Work=some s6Step257F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step257HeadFvAfter s6Step257F4FlagArena s6Step257Add0Arena s6Step257Add0During s6Step257Add1During 853 822
    s6Step257Add0A s6Step257Add0B s6Step257Add1A s6Step257Add1B [862] [833] s6Step257Add0Work s6Step257Add1Work
    (fun q hq => s6Step257F4_owned (List.mem_toFinset.mpr hq)) s6Step257F4_flag s6Step257F4_carry
    s6Step257F4_distinct s6Step257F4_apart s6Step257Add0_checked s6Step257Add1_checked

private theorem s6Step257Front_branch : s6Step257FrontSigmaArena.checkBorrow 1 [822]=some s6Step257HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step257FrontSigmaArena,s6Step257EntryGvAfter,s6Step257EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step257FrontSigmaArena,s6Step257EntryGvAfter,s6Step257EntryFBefore,s6Step257HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step257Front_entry : HmrFrontEntryValid s6Step257EntryFBefore s6Step257FrontBank 142 144 ⟨142,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step257FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step257EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step257EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step257FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step257Front_sigma : s6Step257EntryGvAfter.checkBorrow 1 [853]=some s6Step257FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step257EntryGvAfter,s6Step257EntryFBefore,arenaWires]
  · rfl

private def s6Step257HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257HeadFBefore : Arena := s6Step257HeadGAfter

private def s6Step257HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397],795⟩

private def s6Step257HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864],776⟩

private def s6Step257HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],777⟩

private def s6Step257HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private theorem s6Step257HeadBank_incomingDistinct : ([s6Step257HeadGRow,s6Step257HeadFRow,s6Step257HeadGvRow,s6Step257HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257HeadF_Incoming : rowsOwned s6Step257HeadFBefore [s6Step257HeadFRow,s6Step257HeadGvRow,s6Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257HeadGRow,s6Step257HeadFRow,s6Step257HeadGvRow,s6Step257HeadFvRow] 1 s6Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257HeadBank_outgoingOwned : rowsOwned s6Step257HeadFvAfter [s6Step257HeadGOut,s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257HeadF_Outgoing : rowsOwned s6Step257HeadFvAfter [s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut] :=
  hmrRows_owned_drop s6Step257HeadFvAfter [s6Step257HeadGOut,s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut] 1 s6Step257HeadBank_outgoingOwned

private theorem s6Step257HeadF_distinct : (s6Step257HeadFRow.sign::s6Step257HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257HeadF_owned : (s6Step257HeadFRow.sign::s6Step257HeadFRow.payload).toFinset⊆s6Step257HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257HeadF_reserved : s6Step257HeadFBefore.reserve s6Step257HeadFFresh.toFinset=some s6Step257HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257HeadFFresh,arenaWires]
  · norm_num [s6Step257HeadFBefore,s6Step257HeadGAfter,s6Step257HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step257HeadFAfter,s6Step257HeadFBefore,s6Step257HeadGAfter,s6Step257HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step257HeadF_checked : planRowResizeLog s6Step257HeadFBefore s6Step257HeadFRow 143 s6Step257HeadFFresh=
    some (s6Step257HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 809],795⟩,growRow 795 s6Step257HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step257HeadFBefore s6Step257HeadFAfter s6Step257HeadFRow 143 s6Step257HeadFFresh
    s6Step257HeadF_distinct s6Step257HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257HeadF_reserved
  have rowEq : WindowRow.mk (s6Step257HeadFRow.payload++s6Step257HeadFFresh) s6Step257HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 809],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step257HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step257HeadFvBefore : Arena := s6Step257HeadGvAfter

private theorem s6Step257HeadFv_Incoming : rowsOwned s6Step257HeadFvBefore [s6Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257HeadGRow,s6Step257HeadFRow,s6Step257HeadGvRow,s6Step257HeadFvRow] 3 s6Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257HeadFv_Outgoing : rowsOwned s6Step257HeadFvAfter [s6Step257HeadFvOut] :=
  hmrRows_owned_drop s6Step257HeadFvAfter [s6Step257HeadGOut,s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut] 3 s6Step257HeadBank_outgoingOwned

private theorem s6Step257HeadFv_distinct : (s6Step257HeadFvRow.sign::s6Step257HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257HeadFv_owned : (s6Step257HeadFvRow.sign::s6Step257HeadFvRow.payload).toFinset⊆s6Step257HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257HeadFv_reserved : s6Step257HeadFvBefore.reserve s6Step257HeadFvFresh.toFinset=some s6Step257HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257HeadFvFresh,arenaWires]
  · norm_num [s6Step257HeadFvBefore,s6Step257HeadGvAfter,s6Step257HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step257HeadFvAfter,s6Step257HeadFvBefore,s6Step257HeadGvAfter,s6Step257HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step257HeadFv_checked : planRowResizeLog s6Step257HeadFvBefore s6Step257HeadFvRow 145 s6Step257HeadFvFresh=
    some (s6Step257HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 810],776⟩,growRow 776 s6Step257HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step257HeadFvBefore s6Step257HeadFvAfter s6Step257HeadFvRow 145 s6Step257HeadFvFresh
    s6Step257HeadFv_distinct s6Step257HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step257HeadFvRow.payload++s6Step257HeadFvFresh) s6Step257HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 810],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step257HeadG_Incoming : rowsOwned s6Step257HeadGBefore [s6Step257HeadGRow,s6Step257HeadFRow,s6Step257HeadGvRow,s6Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257HeadGRow,s6Step257HeadFRow,s6Step257HeadGvRow,s6Step257HeadFvRow] 0 s6Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257HeadG_Outgoing : rowsOwned s6Step257HeadFvAfter [s6Step257HeadGOut,s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut] :=
  hmrRows_owned_drop s6Step257HeadFvAfter [s6Step257HeadGOut,s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut] 0 s6Step257HeadBank_outgoingOwned

private theorem s6Step257HeadG_distinct : (s6Step257HeadGRow.sign::s6Step257HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257HeadG_owned : (s6Step257HeadGRow.sign::s6Step257HeadGRow.payload).toFinset⊆s6Step257HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257HeadG_reserved : s6Step257HeadGBefore.reserve s6Step257HeadGFresh.toFinset=some s6Step257HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257HeadGFresh,arenaWires]
  · norm_num [s6Step257HeadGBefore,s6Step257HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step257HeadGAfter,s6Step257HeadGBefore,s6Step257HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step257HeadG_checked : planRowResizeLog s6Step257HeadGBefore s6Step257HeadGRow 143 s6Step257HeadGFresh=
    some (s6Step257HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 880],777⟩,growRow 777 s6Step257HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step257HeadGBefore s6Step257HeadGAfter s6Step257HeadGRow 143 s6Step257HeadGFresh
    s6Step257HeadG_distinct s6Step257HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257HeadG_reserved
  have rowEq : WindowRow.mk (s6Step257HeadGRow.payload++s6Step257HeadGFresh) s6Step257HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step257HeadGvBefore : Arena := s6Step257HeadFAfter

private theorem s6Step257HeadGv_Incoming : rowsOwned s6Step257HeadGvBefore [s6Step257HeadGvRow,s6Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step257HeadGRow,s6Step257HeadFRow,s6Step257HeadGvRow,s6Step257HeadFvRow] 2 s6Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step257HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step257HeadGv_Outgoing : rowsOwned s6Step257HeadFvAfter [s6Step257HeadGvOut,s6Step257HeadFvOut] :=
  hmrRows_owned_drop s6Step257HeadFvAfter [s6Step257HeadGOut,s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut] 2 s6Step257HeadBank_outgoingOwned

private theorem s6Step257HeadGv_distinct : (s6Step257HeadGvRow.sign::s6Step257HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step257HeadGv_owned : (s6Step257HeadGvRow.sign::s6Step257HeadGvRow.payload).toFinset⊆s6Step257HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step257HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step257HeadGv_reserved : s6Step257HeadGvBefore.reserve s6Step257HeadGvFresh.toFinset=some s6Step257HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step257HeadGvFresh,arenaWires]
  · norm_num [s6Step257HeadGvBefore,s6Step257HeadFAfter,s6Step257HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step257HeadGvAfter,s6Step257HeadGvBefore,s6Step257HeadFAfter,s6Step257HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step257HeadGv_checked : planRowResizeLog s6Step257HeadGvBefore s6Step257HeadGvRow 145 s6Step257HeadGvFresh=
    some (s6Step257HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 868],775⟩,growRow 775 s6Step257HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step257HeadGvBefore s6Step257HeadGvAfter s6Step257HeadGvRow 145 s6Step257HeadGvFresh
    s6Step257HeadGv_distinct s6Step257HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step257HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step257HeadGvRow.payload++s6Step257HeadGvFresh) s6Step257HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step257HeadBank_rows : planWindowRowsLog s6Step257HeadGBefore [(s6Step257HeadGRow,143),(s6Step257HeadFRow,143),(s6Step257HeadGvRow,145),(s6Step257HeadFvRow,145)] [s6Step257HeadGFresh,s6Step257HeadFFresh,s6Step257HeadGvFresh,s6Step257HeadFvFresh]=
    some (s6Step257HeadFvAfter,[s6Step257HeadGOut,s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut],(growRow 777 s6Step257HeadGFresh ++ (growRow 795 s6Step257HeadFFresh ++ (growRow 775 s6Step257HeadGvFresh ++ (growRow 776 s6Step257HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step257HeadFvAfter [] []=some (s6Step257HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step257HeadFvBefore s6Step257HeadFvAfter s6Step257HeadFvAfter
    s6Step257HeadFvRow s6Step257HeadFvOut 145 s6Step257HeadFvFresh [] [] []
    (growRow 776 s6Step257HeadFvFresh) ([]) s6Step257HeadFv_Incoming s6Step257HeadFv_checked h4 s6Step257HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step257HeadGvBefore s6Step257HeadGvAfter s6Step257HeadFvAfter
    s6Step257HeadGvRow s6Step257HeadGvOut 145 s6Step257HeadGvFresh [(s6Step257HeadFvRow,145)] [s6Step257HeadFvFresh] [s6Step257HeadFvOut]
    (growRow 775 s6Step257HeadGvFresh) ((growRow 776 s6Step257HeadFvFresh ++ [])) s6Step257HeadGv_Incoming s6Step257HeadGv_checked h3 s6Step257HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step257HeadFBefore s6Step257HeadFAfter s6Step257HeadFvAfter
    s6Step257HeadFRow s6Step257HeadFOut 143 s6Step257HeadFFresh [(s6Step257HeadGvRow,145),(s6Step257HeadFvRow,145)] [s6Step257HeadGvFresh,s6Step257HeadFvFresh] [s6Step257HeadGvOut,s6Step257HeadFvOut]
    (growRow 795 s6Step257HeadFFresh) ((growRow 775 s6Step257HeadGvFresh ++ (growRow 776 s6Step257HeadFvFresh ++ []))) s6Step257HeadF_Incoming s6Step257HeadF_checked h2 s6Step257HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step257HeadGBefore s6Step257HeadGAfter s6Step257HeadFvAfter
    s6Step257HeadGRow s6Step257HeadGOut 143 s6Step257HeadGFresh [(s6Step257HeadFRow,143),(s6Step257HeadGvRow,145),(s6Step257HeadFvRow,145)] [s6Step257HeadFFresh,s6Step257HeadGvFresh,s6Step257HeadFvFresh] [s6Step257HeadFOut,s6Step257HeadGvOut,s6Step257HeadFvOut]
    (growRow 777 s6Step257HeadGFresh) ((growRow 795 s6Step257HeadFFresh ++ (growRow 775 s6Step257HeadGvFresh ++ (growRow 776 s6Step257HeadFvFresh ++ [])))) s6Step257HeadG_Incoming s6Step257HeadG_checked h1 s6Step257HeadG_Outgoing
  exact h0

private theorem s6Step257HeadBank_checked : compileHmrBankResizeLog .headroom s6Step257HeadGBefore ⟨s6Step257HeadFRow,s6Step257HeadGRow,s6Step257HeadFvRow,s6Step257HeadGvRow⟩ ⟨143,143,145,145⟩ [s6Step257HeadGFresh,s6Step257HeadFFresh,s6Step257HeadGvFresh,s6Step257HeadFvFresh]=
    some (s6Step257HeadFvAfter,⟨s6Step257HeadFOut,s6Step257HeadGOut,s6Step257HeadFvOut,s6Step257HeadGvOut⟩,(growRow 777 s6Step257HeadGFresh ++ (growRow 795 s6Step257HeadFFresh ++ (growRow 775 s6Step257HeadGvFresh ++ (growRow 776 s6Step257HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step257HeadBank_rows]
  rfl

private theorem s6Step257Front_checked : compileHmrSourceFrontLog s6Step257EntryFBefore s6Step257FrontBank 142 144 ⟨142,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step257FrontLog=some s6Step257FrontPlan := by
  have pairEq : s6Step257FrontPair=⟨s6Step257HeadFRow,s6Step257HeadGRow,s6Step257HeadFvRow,s6Step257HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step257FrontHead=⟨s6Step257ExitFRow,s6Step257ExitGRow,s6Step257ExitFvRow,s6Step257ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step257Add0A=s6Step257FrontHead.f.wires := by decide +kernel
  have gEq : s6Step257Add0B=s6Step257FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step257Add1A=s6Step257FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step257Add1B=s6Step257FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step257EntryFBefore s6Step257FrontBank 142 144 ⟨142,142,144,144⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step257FrontLog s6Step257FrontPlan
  · exact s6Step257Front_entry
  · exact s6Step257EntryBank_checked
  · exact s6Step257Front_sigma
  · rfl
  · exact s6Step257Front_branch
  · rfl
  · simpa only [s6Step257FrontPlan,pairEq] using s6Step257HeadBank_checked
  · simpa only [s6Step257FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step257F4_checked
  · exact s6Step257Counter_checked
  · rfl
  · simpa only [s6Step257FrontPlan,headEq] using s6Step257ExitBank_checked

private theorem s6Step257Complete_explicit_checked : compileHmrEarlyStepLog s6Step257EntryFBefore s6Step257FrontBank 142 144 ⟨142,142,144,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step257CompleteLog=some s6Step257CompletePlan := by
  let Q := s6Step257EarlyControlPlan
  have hq := s6Step257EarlyControl_plan_checked
  have fv1 : s6Step257CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step257CompleteOut.fv.payload[2]?.getD s6Step257CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step257CompleteOut.fv.payload[3]?.getD s6Step257CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step257CompleteOut.fv.payload[4]?.getD s6Step257CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step257EntryFBefore s6Step257EarlyControlArena s6Step257FrontBank 142 144 ⟨142,142,144,144⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step257CompleteLog s6Step257FrontPlan Q
    s6Step257Front_checked s6Step257Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step257Complete_owned s6Step257Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step257EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 853 s6Step257CompleteOut.fv.second (s6Step257CompleteOut.fv.payload[2]?.getD s6Step257CompleteOut.fv.sign) (s6Step257CompleteOut.fv.payload[3]?.getD s6Step257CompleteOut.fv.sign) (s6Step257CompleteOut.fv.payload[4]?.getD s6Step257CompleteOut.fv.sign) 822 51 s6Step257EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep257Arena : Arena := s6Step257EntryFBefore
def s6PrivateStep257Bank : WindowBank := s6Step257FrontBank
def s6PrivateStep257Spec : HmrSourceWalkStepLog := ⟨142,144,⟨142,142,144,144⟩,51,.early s6Step257CompleteLog⟩
def s6PrivateStep257Plan : HmrSourceStepPlan := .early s6Step257CompletePlan
theorem s6PrivateStep257_source : s6PrivateStep257Spec=s6ObservedLogs256[1] := rfl
theorem s6PrivateStep257_checked : compileHmrSourceStepLog s6PrivateStep257Arena s6PrivateStep257Bank
    s6PrivateStep257Spec.fgWidth s6PrivateStep257Spec.vWidth s6PrivateStep257Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 257 s6PrivateStep257Spec.need none s6PrivateStep257Spec.log=some s6PrivateStep257Plan := by
  change compileHmrSourceStepLog s6Step257EntryFBefore s6Step257FrontBank 142 144 ⟨142,142,144,144⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 257 51 none (.early s6Step257CompleteLog)=some (.early s6Step257CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 257<498)]
  rw [s6Step257Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
