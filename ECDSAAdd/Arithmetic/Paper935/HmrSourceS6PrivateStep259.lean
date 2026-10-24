import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep257
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

private def s6Step259CompleteMoves : List (Wire × Wire) := [(927,140)]

private def s6Step259EarlyControlLog : HmrEarlyControlLog := ⟨[927, 810, 868, 809, 907],[862],[833],[830, 805, 817, 812, 915, 932],[]⟩

private def s6Step259FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [853]],[[907], [809], [810], [868]],[[], [], [], []]⟩,[822],[854],[862],[833],[830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[862, 833, 830, 805]⟩

private def s6Step259CompleteLog : HmrEarlyStepLog := ⟨s6Step259FrontLog,s6Step259CompleteMoves,s6Step259EarlyControlLog⟩

private def s6Step259ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396],795⟩

private def s6Step259ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step259ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],777⟩

private def s6Step259ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩

private def s6Step259FrontOut : WindowBank := ⟨s6Step259ExitFOut,s6Step259ExitGOut,s6Step259ExitFvOut,s6Step259ExitGvOut⟩

private def s6Step259CompleteOut : WindowBank := s6Step259FrontOut.repacked s6Step259CompleteMoves

private def s6Step259EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step259EarlyControlPositiveArena,[862],s6Step259EarlyControlEqualityArena,[833],⟨⟨822,false⟩,[⟨⟨862,false⟩,833⟩]⟩⟩

private def s6Step259EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,927⟩,⟨⟨772,false⟩,810⟩,⟨⟨771,false⟩,868⟩,⟨⟨770,false⟩,809⟩,⟨⟨769,false⟩,907⟩]⟩

private def s6Step259EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step259EarlyControlZeroArena,s6Step259EarlyControlZeroPlan,s6Step259EarlyControlClassPlan,s6Step259EarlyControlFlagArena,s6Step259EarlyControlFittedArena,s6Step259EarlyControlHistoryArena,s6Step259EarlyControlSigmaArena,s6Step259EarlyControlOutputArena,s6Step259EarlyControlLog⟩

private def s6Step259CounterWork : List Wire := [862, 833, 830, 805]

private theorem s6Step259Counter_bounded : s6Step259CounterWork.toFinset⊆arenaWires := by norm_num [s6Step259CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step259HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259CounterDuring : Arena := ⟨s6Step259HeadFvAfter.live∪s6Step259CounterWork.toFinset,Finset.union_subset s6Step259HeadFvAfter.bounded s6Step259Counter_bounded⟩

private def s6Step259EntryFFresh : List Wire := []

private def s6Step259EntryFvFresh : List Wire := []

private def s6Step259EntryGFresh : List Wire := []

private def s6Step259EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259EntryGvFresh : List Wire := [853]

private def s6Step259ExitFExtra : List Wire := [809]

private def s6Step259ExitFvExtra : List Wire := [868]

private def s6Step259ExitGExtra : List Wire := [140, 907]

private def s6Step259ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259ExitGvExtra : List Wire := [810]

private def s6Step259Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259Add0Work : List Wire := [830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step259Add0_bounded : s6Step259Add0Work.toFinset⊆arenaWires := by
  have h : s6Step259Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step259Add0During : Arena := ⟨s6Step259Add0Arena.live∪s6Step259Add0Work.toFinset,Finset.union_subset s6Step259Add0Arena.bounded s6Step259Add0_bounded⟩

private def s6Step259Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259Add1Work : List Wire := [830, 805, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step259Add1_bounded : s6Step259Add1Work.toFinset⊆arenaWires := by
  have h : s6Step259Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step259Add1During : Arena := ⟨s6Step259Add1Arena.live∪s6Step259Add1Work.toFinset,Finset.union_subset s6Step259Add1Arena.bounded s6Step259Add1_bounded⟩

private def s6Step259F4FlagArena : Arena := ⟨s6Step259HeadFvAfter.live∪{862},Finset.union_subset s6Step259HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step259F4Plan : HmrHybridF4Plan := ⟨s6Step259F4FlagArena,[862],s6Step259Add0Arena,[833],s6Step259Add0During,s6Step259Add0Work,s6Step259Add1During,s6Step259Add1Work⟩

private def s6Step259HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 809],795⟩

private def s6Step259HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩

private def s6Step259HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 907],777⟩

private def s6Step259HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 810],775⟩

private def s6Step259FrontHead : WindowBank := ⟨s6Step259HeadFOut,s6Step259HeadGOut,s6Step259HeadFvOut,s6Step259HeadGvOut⟩

private def s6Step259EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396],795⟩

private def s6Step259EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step259EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],777⟩

private def s6Step259EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩

private def s6Step259FrontPair : WindowBank := ⟨s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut⟩

private def s6Step259FrontSigmaArena : Arena := ⟨s6Step259EntryGvAfter.live∪{822},Finset.union_subset s6Step259EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step259HeadFFresh : List Wire := [809]

private def s6Step259HeadFvFresh : List Wire := [868]

private def s6Step259HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259HeadGFresh : List Wire := [907]

private def s6Step259HeadGvFresh : List Wire := [810]

private def s6Step259FrontPlan : HmrSourceFront := ⟨s6Step259EntryGvAfter,s6Step259FrontPair,(growRow 795 s6Step259EntryFFresh ++ (growRow 777 s6Step259EntryGFresh ++ (growRow 776 s6Step259EntryFvFresh ++ (growRow 775 s6Step259EntryGvFresh ++ [])))),s6Step259FrontSigmaArena,[822],s6Step259HeadGBefore,[854],
  s6Step259HeadFvAfter,s6Step259FrontHead,(growRow 777 s6Step259HeadGFresh ++ (growRow 795 s6Step259HeadFFresh ++ (growRow 775 s6Step259HeadGvFresh ++ (growRow 776 s6Step259HeadFvFresh ++ [])))),s6Step259F4Plan,s6Step259CounterDuring,s6Step259CounterWork,s6Step259ExitGvAfter,s6Step259FrontOut,(shrinkRow 777 s6Step259ExitGExtra ++ (shrinkRow 795 s6Step259ExitFExtra ++ (shrinkRow 776 s6Step259ExitFvExtra ++ (shrinkRow 775 s6Step259ExitGvExtra ++ []))))⟩

private def s6Step259CompletePlan : HmrEarlyStepPlan := ⟨s6Step259FrontPlan,s6Step259EarlyControlArena,s6Step259EarlyControlPlan,s6Step259CompleteMoves⟩

private theorem s6Step259Complete_apart : List.Disjoint (s6Step259CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step259CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step259Complete_owned : (s6Step259CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private def s6Step259CompleteMoveArena : Arena := ⟨s6Step259ExitGvAfter.live∪{140},Finset.union_subset s6Step259ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step259Complete_repack : s6Step259ExitGvAfter.checkRepack s6Step259CompleteMoves=some s6Step259EarlyControlArena := by
  have owned : 927∈s6Step259ExitGvAfter.live := by norm_num [s6Step259ExitGvAfter,arenaWires]
  have reserve : s6Step259ExitGvAfter.reserve {140}=some s6Step259CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step259ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step259CompleteMoveArena.retireSet {927}=s6Step259EarlyControlArena := by
    unfold Arena.retireSet s6Step259EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step259CompleteMoveArena,s6Step259ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step259CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step259CompleteMoveArena.retireSet {927}).checkRepack []=some s6Step259EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step259EarlyControl_branchOwned : ([854] : List Wire).toFinset⊆s6Step259EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_branch : compileHmrBranchRetirement s6Step259EarlyControlSigmaArena 854=some s6Step259EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step259EarlyControl_branchOwned
  · ext q
    simp [s6Step259EarlyControlOutputArena,s6Step259EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step259EarlyControl_classEqualityBorrow : s6Step259EarlyControlPositiveArena.checkBorrow (([822, 862] : List Wire).length-1) s6Step259EarlyControlLog.classWork=some s6Step259EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step259EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step259EarlyControlEqualityArena,s6Step259EarlyControlPositiveArena,s6Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step259EarlyControl_classEqualityOwned : ([822, 862] : List Wire).toFinset⊆s6Step259EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_classEquality : compileHmrEqualityLog s6Step259EarlyControlPositiveArena [822, 862] 0 s6Step259EarlyControlLog.classWork=some (s6Step259EarlyControlEqualityArena,s6Step259EarlyControlLog.classWork,s6Step259EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step259EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step259EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step259EarlyControl_classOwned : ([769, 907, 822] : List Wire).toFinset⊆s6Step259EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_positiveBorrow : s6Step259EarlyControlZeroArena.checkBorrow (1) s6Step259EarlyControlLog.positiveWork=some s6Step259EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step259EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step259EarlyControlPositiveArena,s6Step259EarlyControlZeroArena,s6Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step259EarlyControl_class : compileHmrSourceClassLog s6Step259EarlyControlZeroArena false 769 s6Step259EarlyControlZeroPlan.top 0 822 s6Step259EarlyControlLog.positiveWork s6Step259EarlyControlLog.classWork=some s6Step259EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step259EarlyControlClassPlan s6Step259EarlyControlZeroArena false 769 s6Step259EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step259EarlyControl_classOwned
  · exact s6Step259EarlyControl_positiveBorrow
  · exact s6Step259EarlyControl_classEquality

private theorem s6Step259EarlyControl_entryRecordOwned : ([854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s6Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_fitBorrow : s6Step259EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step259EarlyControlLog.recordFresh=some s6Step259EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step259EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step259EarlyControlFittedArena,s6Step259EarlyControlFlagArena,s6Step259EarlyControlLog,arenaWires]

private theorem s6Step259EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step259EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_fit : compileHmrRecordGrowLog s6Step259EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step259EarlyControlLog.recordFresh=some s6Step259EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step259EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step259EarlyControl_fitBorrow

private theorem s6Step259EarlyControl_flagsBorrow : s6Step259EarlyControlEqualityArena.checkBorrow (6) s6Step259EarlyControlLog.flagWork=some s6Step259EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step259EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step259EarlyControlFlagArena,s6Step259EarlyControlEqualityArena,s6Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step259EarlyControl_flagsOwned : ([833, 253, 252, 251] : List Wire).toFinset⊆s6Step259EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_flags : compileHmrFlagsLog s6Step259EarlyControlClassPlan.equalityArena s6Step259EarlyControlClassPlan.equality.top 253 252 251 s6Step259EarlyControlLog.flagWork=some s6Step259EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step259EarlyControl_flagsOwned⟩
  · exact s6Step259EarlyControl_flagsBorrow

private theorem s6Step259EarlyControl_historyBorrow : s6Step259EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step259EarlyControlLog.recordFresh=some s6Step259EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
      decide +kernel
    · ext q
      simp [s6Step259EarlyControlHistoryArena,s6Step259EarlyControlArena,s6Step259EarlyControlLog,arenaWires]

private theorem s6Step259EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_history : compileHmrRecordGrowLog s6Step259EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step259EarlyControlLog.recordFresh=some s6Step259EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step259EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step259EarlyControl_historyBorrow

private theorem s6Step259EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s6Step259EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step259EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_sigmaRelease : s6Step259EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step259EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step259EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step259EarlyControlSigmaArena,s6Step259EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step259EarlyControl_sigma : compileHmrSigmaDropLog s6Step259EarlyControlHistoryArena false 0 0 254 822 []=some s6Step259EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step259EarlyControl_sigmaOwned⟩
  · exact s6Step259EarlyControl_sigmaRelease

private theorem s6Step259EarlyControl_zeroBorrow : s6Step259EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step259EarlyControlLog.zeroWork=some s6Step259EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
      decide +kernel
    · ext q
      simp [s6Step259EarlyControlZeroArena,s6Step259EarlyControlArena,s6Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step259EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step259EarlyControl_zero : compileHmrEqualityLog s6Step259EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step259EarlyControlLog.zeroWork=some (s6Step259EarlyControlZeroArena,s6Step259EarlyControlLog.zeroWork,s6Step259EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step259EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step259EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step259EarlyControl_logged : s6Step259EarlyControlPlan.Logged s6Step259EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 854 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step259EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step259EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step259EarlyControl_zero
  · exact s6Step259EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step259EarlyControl_flags
  · exact s6Step259EarlyControl_fit
  · exact s6Step259EarlyControl_history
  · exact s6Step259EarlyControl_sigma
  · exact s6Step259EarlyControl_branch

private theorem s6Step259EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step259EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 854 51 s6Step259EarlyControlLog=some s6Step259EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step259EarlyControlPlan s6Step259EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 854 51 s6Step259EarlyControl_logged

private def s6Step259EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396],795⟩

private def s6Step259EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step259EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],777⟩

private def s6Step259EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860],775⟩

private def s6Step259FrontBank : WindowBank := ⟨s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow⟩

private def s6Step259Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 809, 795]

private def s6Step259Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 907, 777]

private def s6Step259Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 776]

private def s6Step259Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 810, 775]

private theorem s6Step259Counter_apart : Disjoint s6Step259HeadFvAfter.live s6Step259CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259Counter_borrowed : s6Step259HeadFvAfter.checkBorrow 4 s6Step259CounterWork=some s6Step259CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step259HeadFvAfter s6Step259CounterDuring s6Step259CounterWork.toFinset s6Step259Counter_bounded s6Step259Counter_apart rfl

private theorem s6Step259Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step259HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259Counter_checked : compileHmrCounterStepLog s6Step259HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step259CounterWork=some s6Step259CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step259HeadFvAfter.live := fun q hq => s6Step259Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step259Counter_borrowed

private def s6Step259EntryFAfter : Arena := s6Step259EntryFBefore

private theorem s6Step259EntryBank_incomingDistinct : ([s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259EntryF_Incoming : rowsOwned s6Step259EntryFBefore [s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow] 0 s6Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259EntryBank_outgoingOwned : rowsOwned s6Step259EntryGvAfter [s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step259EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259EntryF_Outgoing : rowsOwned s6Step259EntryGvAfter [s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut] :=
  hmrRows_owned_drop s6Step259EntryGvAfter [s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut] 0 s6Step259EntryBank_outgoingOwned

private theorem s6Step259EntryF_distinct : (s6Step259EntryFRow.sign::s6Step259EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259EntryF_owned : (s6Step259EntryFRow.sign::s6Step259EntryFRow.payload).toFinset⊆s6Step259EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259EntryF_reserved : s6Step259EntryFBefore.reserve s6Step259EntryFFresh.toFinset=some s6Step259EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259EntryFFresh,arenaWires]
  · norm_num [s6Step259EntryFBefore,s6Step259EntryFFresh,arenaWires]
  · simp only [s6Step259EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step259EntryF_checked : planRowResizeLog s6Step259EntryFBefore s6Step259EntryFRow 141 s6Step259EntryFFresh=
    some (s6Step259EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396],795⟩,growRow 795 s6Step259EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step259EntryFBefore s6Step259EntryFAfter s6Step259EntryFRow 141 s6Step259EntryFFresh
    s6Step259EntryF_distinct s6Step259EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259EntryF_reserved
  have rowEq : WindowRow.mk (s6Step259EntryFRow.payload++s6Step259EntryFFresh) s6Step259EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step259EntryFvAfter : Arena := s6Step259EntryFBefore

private def s6Step259EntryFvBefore : Arena := s6Step259EntryFBefore

private theorem s6Step259EntryFv_Incoming : rowsOwned s6Step259EntryFvBefore [s6Step259EntryFvRow,s6Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow] 2 s6Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259EntryFv_Outgoing : rowsOwned s6Step259EntryGvAfter [s6Step259EntryFvOut,s6Step259EntryGvOut] :=
  hmrRows_owned_drop s6Step259EntryGvAfter [s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut] 2 s6Step259EntryBank_outgoingOwned

private theorem s6Step259EntryFv_distinct : (s6Step259EntryFvRow.sign::s6Step259EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259EntryFv_owned : (s6Step259EntryFvRow.sign::s6Step259EntryFvRow.payload).toFinset⊆s6Step259EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259EntryFv_reserved : s6Step259EntryFvBefore.reserve s6Step259EntryFvFresh.toFinset=some s6Step259EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259EntryFvFresh,arenaWires]
  · norm_num [s6Step259EntryFvBefore,s6Step259EntryFBefore,s6Step259EntryFvFresh,arenaWires]
  · simp only [s6Step259EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step259EntryFv_checked : planRowResizeLog s6Step259EntryFvBefore s6Step259EntryFvRow 145 s6Step259EntryFvFresh=
    some (s6Step259EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩,growRow 776 s6Step259EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step259EntryFvBefore s6Step259EntryFvAfter s6Step259EntryFvRow 145 s6Step259EntryFvFresh
    s6Step259EntryFv_distinct s6Step259EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step259EntryFvRow.payload++s6Step259EntryFvFresh) s6Step259EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step259EntryGAfter : Arena := s6Step259EntryFBefore

private def s6Step259EntryGBefore : Arena := s6Step259EntryFBefore

private theorem s6Step259EntryG_Incoming : rowsOwned s6Step259EntryGBefore [s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow] 1 s6Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259EntryG_Outgoing : rowsOwned s6Step259EntryGvAfter [s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut] :=
  hmrRows_owned_drop s6Step259EntryGvAfter [s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut] 1 s6Step259EntryBank_outgoingOwned

private theorem s6Step259EntryG_distinct : (s6Step259EntryGRow.sign::s6Step259EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259EntryG_owned : (s6Step259EntryGRow.sign::s6Step259EntryGRow.payload).toFinset⊆s6Step259EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259EntryG_reserved : s6Step259EntryGBefore.reserve s6Step259EntryGFresh.toFinset=some s6Step259EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259EntryGFresh,arenaWires]
  · norm_num [s6Step259EntryGBefore,s6Step259EntryFBefore,s6Step259EntryGFresh,arenaWires]
  · simp only [s6Step259EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step259EntryG_checked : planRowResizeLog s6Step259EntryGBefore s6Step259EntryGRow 141 s6Step259EntryGFresh=
    some (s6Step259EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],777⟩,growRow 777 s6Step259EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step259EntryGBefore s6Step259EntryGAfter s6Step259EntryGRow 141 s6Step259EntryGFresh
    s6Step259EntryG_distinct s6Step259EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259EntryG_reserved
  have rowEq : WindowRow.mk (s6Step259EntryGRow.payload++s6Step259EntryGFresh) s6Step259EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step259EntryGvBefore : Arena := s6Step259EntryFBefore

private theorem s6Step259EntryGv_Incoming : rowsOwned s6Step259EntryGvBefore [s6Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow] 3 s6Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259EntryGv_Outgoing : rowsOwned s6Step259EntryGvAfter [s6Step259EntryGvOut] :=
  hmrRows_owned_drop s6Step259EntryGvAfter [s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut] 3 s6Step259EntryBank_outgoingOwned

private theorem s6Step259EntryGv_distinct : (s6Step259EntryGvRow.sign::s6Step259EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259EntryGv_owned : (s6Step259EntryGvRow.sign::s6Step259EntryGvRow.payload).toFinset⊆s6Step259EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259EntryGv_reserved : s6Step259EntryGvBefore.reserve s6Step259EntryGvFresh.toFinset=some s6Step259EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259EntryGvFresh,arenaWires]
  · norm_num [s6Step259EntryGvBefore,s6Step259EntryFBefore,s6Step259EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step259EntryGvAfter,s6Step259EntryGvBefore,s6Step259EntryFBefore,s6Step259EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step259EntryGv_checked : planRowResizeLog s6Step259EntryGvBefore s6Step259EntryGvRow 145 s6Step259EntryGvFresh=
    some (s6Step259EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩,growRow 775 s6Step259EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step259EntryGvBefore s6Step259EntryGvAfter s6Step259EntryGvRow 145 s6Step259EntryGvFresh
    s6Step259EntryGv_distinct s6Step259EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step259EntryGvRow.payload++s6Step259EntryGvFresh) s6Step259EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step259EntryBank_rows : planWindowRowsLog s6Step259EntryFBefore [(s6Step259EntryFRow,141),(s6Step259EntryGRow,141),(s6Step259EntryFvRow,145),(s6Step259EntryGvRow,145)] [s6Step259EntryFFresh,s6Step259EntryGFresh,s6Step259EntryFvFresh,s6Step259EntryGvFresh]=
    some (s6Step259EntryGvAfter,[s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut],(growRow 795 s6Step259EntryFFresh ++ (growRow 777 s6Step259EntryGFresh ++ (growRow 776 s6Step259EntryFvFresh ++ (growRow 775 s6Step259EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step259EntryGvAfter [] []=some (s6Step259EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step259EntryGvBefore s6Step259EntryGvAfter s6Step259EntryGvAfter
    s6Step259EntryGvRow s6Step259EntryGvOut 145 s6Step259EntryGvFresh [] [] []
    (growRow 775 s6Step259EntryGvFresh) ([]) s6Step259EntryGv_Incoming s6Step259EntryGv_checked h4 s6Step259EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step259EntryFvBefore s6Step259EntryFvAfter s6Step259EntryGvAfter
    s6Step259EntryFvRow s6Step259EntryFvOut 145 s6Step259EntryFvFresh [(s6Step259EntryGvRow,145)] [s6Step259EntryGvFresh] [s6Step259EntryGvOut]
    (growRow 776 s6Step259EntryFvFresh) ((growRow 775 s6Step259EntryGvFresh ++ [])) s6Step259EntryFv_Incoming s6Step259EntryFv_checked h3 s6Step259EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step259EntryGBefore s6Step259EntryGAfter s6Step259EntryGvAfter
    s6Step259EntryGRow s6Step259EntryGOut 141 s6Step259EntryGFresh [(s6Step259EntryFvRow,145),(s6Step259EntryGvRow,145)] [s6Step259EntryFvFresh,s6Step259EntryGvFresh] [s6Step259EntryFvOut,s6Step259EntryGvOut]
    (growRow 777 s6Step259EntryGFresh) ((growRow 776 s6Step259EntryFvFresh ++ (growRow 775 s6Step259EntryGvFresh ++ []))) s6Step259EntryG_Incoming s6Step259EntryG_checked h2 s6Step259EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step259EntryFBefore s6Step259EntryFAfter s6Step259EntryGvAfter
    s6Step259EntryFRow s6Step259EntryFOut 141 s6Step259EntryFFresh [(s6Step259EntryGRow,141),(s6Step259EntryFvRow,145),(s6Step259EntryGvRow,145)] [s6Step259EntryGFresh,s6Step259EntryFvFresh,s6Step259EntryGvFresh] [s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut]
    (growRow 795 s6Step259EntryFFresh) ((growRow 777 s6Step259EntryGFresh ++ (growRow 776 s6Step259EntryFvFresh ++ (growRow 775 s6Step259EntryGvFresh ++ [])))) s6Step259EntryF_Incoming s6Step259EntryF_checked h1 s6Step259EntryF_Outgoing
  exact h0

private theorem s6Step259EntryBank_checked : compileHmrBankResizeLog .entry s6Step259EntryFBefore ⟨s6Step259EntryFRow,s6Step259EntryGRow,s6Step259EntryFvRow,s6Step259EntryGvRow⟩ ⟨141,141,145,145⟩ [s6Step259EntryFFresh,s6Step259EntryGFresh,s6Step259EntryFvFresh,s6Step259EntryGvFresh]=
    some (s6Step259EntryGvAfter,⟨s6Step259EntryFOut,s6Step259EntryGOut,s6Step259EntryFvOut,s6Step259EntryGvOut⟩,(growRow 795 s6Step259EntryFFresh ++ (growRow 777 s6Step259EntryGFresh ++ (growRow 776 s6Step259EntryFvFresh ++ (growRow 775 s6Step259EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step259EntryBank_rows]
  rfl

private def s6Step259ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259ExitFBefore : Arena := s6Step259ExitGAfter

private def s6Step259ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 809],795⟩

private def s6Step259ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩

private def s6Step259ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 907],777⟩

private def s6Step259ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 810],775⟩

private theorem s6Step259ExitBank_incomingDistinct : ([s6Step259ExitGRow,s6Step259ExitFRow,s6Step259ExitFvRow,s6Step259ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259ExitF_Incoming : rowsOwned s6Step259ExitFBefore [s6Step259ExitFRow,s6Step259ExitFvRow,s6Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259ExitGRow,s6Step259ExitFRow,s6Step259ExitFvRow,s6Step259ExitGvRow] 1 s6Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259ExitFBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259ExitBank_outgoingOwned : rowsOwned s6Step259ExitGvAfter [s6Step259ExitGOut,s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step259ExitGvAfter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259ExitF_Outgoing : rowsOwned s6Step259ExitGvAfter [s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut] :=
  hmrRows_owned_drop s6Step259ExitGvAfter [s6Step259ExitGOut,s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut] 1 s6Step259ExitBank_outgoingOwned

private theorem s6Step259ExitF_distinct : (s6Step259ExitFRow.sign::s6Step259ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259ExitF_owned : (s6Step259ExitFRow.sign::s6Step259ExitFRow.payload).toFinset⊆s6Step259ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259ExitFBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259ExitF_retired : s6Step259ExitFBefore.retireSet s6Step259ExitFExtra.toFinset=s6Step259ExitFAfter := by
  unfold Arena.retireSet s6Step259ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step259ExitFBefore,s6Step259ExitGAfter,s6Step259ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step259ExitF_checked : planRowResizeLog s6Step259ExitFBefore s6Step259ExitFRow 141 []=
    some (s6Step259ExitFAfter,s6Step259ExitFOut,shrinkRow 795 s6Step259ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step259ExitFBefore s6Step259ExitFRow 141 s6Step259ExitF_distinct s6Step259ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step259ExitFRow.payload.take 141) s6Step259ExitFRow.sign=s6Step259ExitFOut := by decide +kernel
  have hi : s6Step259ExitFRow.payload.drop 141=s6Step259ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step259ExitF_retired] at result
  exact result

private def s6Step259ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259ExitFvBefore : Arena := s6Step259ExitFAfter

private theorem s6Step259ExitFv_Incoming : rowsOwned s6Step259ExitFvBefore [s6Step259ExitFvRow,s6Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259ExitGRow,s6Step259ExitFRow,s6Step259ExitFvRow,s6Step259ExitGvRow] 2 s6Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259ExitFvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259ExitFv_Outgoing : rowsOwned s6Step259ExitGvAfter [s6Step259ExitFvOut,s6Step259ExitGvOut] :=
  hmrRows_owned_drop s6Step259ExitGvAfter [s6Step259ExitGOut,s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut] 2 s6Step259ExitBank_outgoingOwned

private theorem s6Step259ExitFv_distinct : (s6Step259ExitFvRow.sign::s6Step259ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259ExitFv_owned : (s6Step259ExitFvRow.sign::s6Step259ExitFvRow.payload).toFinset⊆s6Step259ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259ExitFvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259ExitFv_retired : s6Step259ExitFvBefore.retireSet s6Step259ExitFvExtra.toFinset=s6Step259ExitFvAfter := by
  unfold Arena.retireSet s6Step259ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step259ExitFvBefore,s6Step259ExitFAfter,s6Step259ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step259ExitFv_checked : planRowResizeLog s6Step259ExitFvBefore s6Step259ExitFvRow 145 []=
    some (s6Step259ExitFvAfter,s6Step259ExitFvOut,shrinkRow 776 s6Step259ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step259ExitFvBefore s6Step259ExitFvRow 145 s6Step259ExitFv_distinct s6Step259ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step259ExitFvRow.payload.take 145) s6Step259ExitFvRow.sign=s6Step259ExitFvOut := by decide +kernel
  have hi : s6Step259ExitFvRow.payload.drop 145=s6Step259ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step259ExitFv_retired] at result
  exact result

private def s6Step259ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step259ExitG_Incoming : rowsOwned s6Step259ExitGBefore [s6Step259ExitGRow,s6Step259ExitFRow,s6Step259ExitFvRow,s6Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259ExitGRow,s6Step259ExitFRow,s6Step259ExitFvRow,s6Step259ExitGvRow] 0 s6Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259ExitG_Outgoing : rowsOwned s6Step259ExitGvAfter [s6Step259ExitGOut,s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut] :=
  hmrRows_owned_drop s6Step259ExitGvAfter [s6Step259ExitGOut,s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut] 0 s6Step259ExitBank_outgoingOwned

private theorem s6Step259ExitG_distinct : (s6Step259ExitGRow.sign::s6Step259ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259ExitG_owned : (s6Step259ExitGRow.sign::s6Step259ExitGRow.payload).toFinset⊆s6Step259ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259ExitG_retired : s6Step259ExitGBefore.retireSet s6Step259ExitGExtra.toFinset=s6Step259ExitGAfter := by
  unfold Arena.retireSet s6Step259ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step259ExitGBefore,s6Step259ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step259ExitG_checked : planRowResizeLog s6Step259ExitGBefore s6Step259ExitGRow 140 []=
    some (s6Step259ExitGAfter,s6Step259ExitGOut,shrinkRow 777 s6Step259ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step259ExitGBefore s6Step259ExitGRow 140 s6Step259ExitG_distinct s6Step259ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step259ExitGRow.payload.take 140) s6Step259ExitGRow.sign=s6Step259ExitGOut := by decide +kernel
  have hi : s6Step259ExitGRow.payload.drop 140=s6Step259ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step259ExitG_retired] at result
  exact result

private def s6Step259ExitGvBefore : Arena := s6Step259ExitFvAfter

private theorem s6Step259ExitGv_Incoming : rowsOwned s6Step259ExitGvBefore [s6Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259ExitGRow,s6Step259ExitFRow,s6Step259ExitFvRow,s6Step259ExitGvRow] 3 s6Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259ExitGvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259ExitGv_Outgoing : rowsOwned s6Step259ExitGvAfter [s6Step259ExitGvOut] :=
  hmrRows_owned_drop s6Step259ExitGvAfter [s6Step259ExitGOut,s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut] 3 s6Step259ExitBank_outgoingOwned

private theorem s6Step259ExitGv_distinct : (s6Step259ExitGvRow.sign::s6Step259ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259ExitGv_owned : (s6Step259ExitGvRow.sign::s6Step259ExitGvRow.payload).toFinset⊆s6Step259ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259ExitGvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259ExitGv_retired : s6Step259ExitGvBefore.retireSet s6Step259ExitGvExtra.toFinset=s6Step259ExitGvAfter := by
  unfold Arena.retireSet s6Step259ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step259ExitGvBefore,s6Step259ExitFvAfter,s6Step259ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step259ExitGv_checked : planRowResizeLog s6Step259ExitGvBefore s6Step259ExitGvRow 145 []=
    some (s6Step259ExitGvAfter,s6Step259ExitGvOut,shrinkRow 775 s6Step259ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step259ExitGvBefore s6Step259ExitGvRow 145 s6Step259ExitGv_distinct s6Step259ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step259ExitGvRow.payload.take 145) s6Step259ExitGvRow.sign=s6Step259ExitGvOut := by decide +kernel
  have hi : s6Step259ExitGvRow.payload.drop 145=s6Step259ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step259ExitGv_retired] at result
  exact result

private theorem s6Step259ExitBank_rows : planWindowRowsLog s6Step259ExitGBefore [(s6Step259ExitGRow,140),(s6Step259ExitFRow,141),(s6Step259ExitFvRow,145),(s6Step259ExitGvRow,145)] [[],[],[],[]]=
    some (s6Step259ExitGvAfter,[s6Step259ExitGOut,s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut],(shrinkRow 777 s6Step259ExitGExtra ++ (shrinkRow 795 s6Step259ExitFExtra ++ (shrinkRow 776 s6Step259ExitFvExtra ++ (shrinkRow 775 s6Step259ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step259ExitGvAfter [] []=some (s6Step259ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step259ExitGvBefore s6Step259ExitGvAfter s6Step259ExitGvAfter
    s6Step259ExitGvRow s6Step259ExitGvOut 145 [] [] [] []
    (shrinkRow 775 s6Step259ExitGvExtra) ([]) s6Step259ExitGv_Incoming s6Step259ExitGv_checked h4 s6Step259ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step259ExitFvBefore s6Step259ExitFvAfter s6Step259ExitGvAfter
    s6Step259ExitFvRow s6Step259ExitFvOut 145 [] [(s6Step259ExitGvRow,145)] [[]] [s6Step259ExitGvOut]
    (shrinkRow 776 s6Step259ExitFvExtra) ((shrinkRow 775 s6Step259ExitGvExtra ++ [])) s6Step259ExitFv_Incoming s6Step259ExitFv_checked h3 s6Step259ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step259ExitFBefore s6Step259ExitFAfter s6Step259ExitGvAfter
    s6Step259ExitFRow s6Step259ExitFOut 141 [] [(s6Step259ExitFvRow,145),(s6Step259ExitGvRow,145)] [[],[]] [s6Step259ExitFvOut,s6Step259ExitGvOut]
    (shrinkRow 795 s6Step259ExitFExtra) ((shrinkRow 776 s6Step259ExitFvExtra ++ (shrinkRow 775 s6Step259ExitGvExtra ++ []))) s6Step259ExitF_Incoming s6Step259ExitF_checked h2 s6Step259ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step259ExitGBefore s6Step259ExitGAfter s6Step259ExitGvAfter
    s6Step259ExitGRow s6Step259ExitGOut 140 [] [(s6Step259ExitFRow,141),(s6Step259ExitFvRow,145),(s6Step259ExitGvRow,145)] [[],[],[]] [s6Step259ExitFOut,s6Step259ExitFvOut,s6Step259ExitGvOut]
    (shrinkRow 777 s6Step259ExitGExtra) ((shrinkRow 795 s6Step259ExitFExtra ++ (shrinkRow 776 s6Step259ExitFvExtra ++ (shrinkRow 775 s6Step259ExitGvExtra ++ [])))) s6Step259ExitG_Incoming s6Step259ExitG_checked h1 s6Step259ExitG_Outgoing
  exact h0

private theorem s6Step259ExitBank_checked : compileHmrBankResizeLog .exit s6Step259ExitGBefore ⟨s6Step259ExitFRow,s6Step259ExitGRow,s6Step259ExitFvRow,s6Step259ExitGvRow⟩ ⟨141,140,145,145⟩ [[],[],[],[]]=
    some (s6Step259ExitGvAfter,⟨s6Step259ExitFOut,s6Step259ExitGOut,s6Step259ExitFvOut,s6Step259ExitGvOut⟩,(shrinkRow 777 s6Step259ExitGExtra ++ (shrinkRow 795 s6Step259ExitFExtra ++ (shrinkRow 776 s6Step259ExitFvExtra ++ (shrinkRow 775 s6Step259ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step259ExitBank_rows]
  rfl

private theorem s6Step259Add0_apart : Disjoint s6Step259Add0Arena.live s6Step259Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step259Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259Add0_card : s6Step259Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step259Add0_borrowed : s6Step259Add0Arena.checkBorrow (hmrHybridCount s6Step259Add0Arena s6Step259Add0B.length) s6Step259Add0Work=some s6Step259Add0During := by
  have len : s6Step259Add0Work.length=hmrHybridCount s6Step259Add0Arena s6Step259Add0B.length := by
    rw [hmrHybridCount,s6Step259Add0_card]
    decide +kernel
  have nd : s6Step259Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step259Add0Arena s6Step259Add0During s6Step259Add0Work.toFinset s6Step259Add0_bounded s6Step259Add0_apart rfl

private theorem s6Step259Add0_distinct : (862::854::833::(s6Step259Add0A++s6Step259Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259Add0_owned : (862::854::833::(s6Step259Add0A++s6Step259Add0B)).toFinset⊆s6Step259Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step259Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259Add0_checked : compileHmrHybridCinLog s6Step259Add0Arena 854 862 833 s6Step259Add0A s6Step259Add0B s6Step259Add0Work=some s6Step259Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step259Add0Arena s6Step259Add0During 854 862 833 s6Step259Add0A s6Step259Add0B s6Step259Add0Work
    (by decide +kernel) (by decide +kernel) s6Step259Add0_distinct
    (fun q hq => s6Step259Add0_owned (List.mem_toFinset.mpr hq)) s6Step259Add0_borrowed

private theorem s6Step259Add1_apart : Disjoint s6Step259Add1Arena.live s6Step259Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step259Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259Add1_card : s6Step259Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step259Add1_borrowed : s6Step259Add1Arena.checkBorrow (hmrHybridCount s6Step259Add1Arena s6Step259Add1B.length) s6Step259Add1Work=some s6Step259Add1During := by
  have len : s6Step259Add1Work.length=hmrHybridCount s6Step259Add1Arena s6Step259Add1B.length := by
    rw [hmrHybridCount,s6Step259Add1_card]
    decide +kernel
  have nd : s6Step259Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step259Add1Arena s6Step259Add1During s6Step259Add1Work.toFinset s6Step259Add1_bounded s6Step259Add1_apart rfl

private theorem s6Step259Add1_distinct : (862::854::833::(s6Step259Add1A++s6Step259Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259Add1_owned : (862::854::833::(s6Step259Add1A++s6Step259Add1B)).toFinset⊆s6Step259Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step259Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259Add1_checked : compileHmrHybridCinLog s6Step259Add1Arena 854 862 833 s6Step259Add1A s6Step259Add1B s6Step259Add1Work=some s6Step259Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step259Add1Arena s6Step259Add1During 854 862 833 s6Step259Add1A s6Step259Add1B s6Step259Add1Work
    (by decide +kernel) (by decide +kernel) s6Step259Add1_distinct
    (fun q hq => s6Step259Add1_owned (List.mem_toFinset.mpr hq)) s6Step259Add1_borrowed

private theorem s6Step259F4_apart : Disjoint (s6Step259Add0A++s6Step259Add0B).toFinset (s6Step259Add1A++s6Step259Add1B).toFinset := by
  have nd : ((s6Step259Add0A++s6Step259Add0B)++(s6Step259Add1A++s6Step259Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step259F4_carry : s6Step259F4FlagArena.checkBorrow 1 [833]=some s6Step259Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step259F4FlagArena,s6Step259HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step259F4FlagArena,s6Step259HeadFvAfter,s6Step259Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step259F4_distinct : (822::854::862::833::((s6Step259Add0A++s6Step259Add1A)++(s6Step259Add0B++s6Step259Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259F4_flag : s6Step259HeadFvAfter.checkBorrow 1 [862]=some s6Step259F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step259HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step259F4_owned : (822::854::((s6Step259Add0A++s6Step259Add1A)++(s6Step259Add0B++s6Step259Add1B))).toFinset⊆s6Step259HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259F4_checked : compileHmrHybridF4Log s6Step259HeadFvAfter 822 854 s6Step259Add0A s6Step259Add0B s6Step259Add1A s6Step259Add1B [862] [833] s6Step259Add0Work s6Step259Add1Work=some s6Step259F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step259HeadFvAfter s6Step259F4FlagArena s6Step259Add0Arena s6Step259Add0During s6Step259Add1During 822 854
    s6Step259Add0A s6Step259Add0B s6Step259Add1A s6Step259Add1B [862] [833] s6Step259Add0Work s6Step259Add1Work
    (fun q hq => s6Step259F4_owned (List.mem_toFinset.mpr hq)) s6Step259F4_flag s6Step259F4_carry
    s6Step259F4_distinct s6Step259F4_apart s6Step259Add0_checked s6Step259Add1_checked

private theorem s6Step259Front_branch : s6Step259FrontSigmaArena.checkBorrow 1 [854]=some s6Step259HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step259FrontSigmaArena,s6Step259EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step259FrontSigmaArena,s6Step259EntryGvAfter,s6Step259HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step259Front_entry : HmrFrontEntryValid s6Step259EntryFBefore s6Step259FrontBank 141 145 ⟨141,140,145,145⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step259FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step259EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step259EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step259FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step259Front_sigma : s6Step259EntryGvAfter.checkBorrow 1 [822]=some s6Step259FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step259EntryGvAfter,arenaWires]
  · rfl

private def s6Step259HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259HeadFBefore : Arena := s6Step259HeadGAfter

private def s6Step259HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396],795⟩

private def s6Step259HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step259HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],777⟩

private def s6Step259HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩

private theorem s6Step259HeadBank_incomingDistinct : ([s6Step259HeadGRow,s6Step259HeadFRow,s6Step259HeadGvRow,s6Step259HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259HeadF_Incoming : rowsOwned s6Step259HeadFBefore [s6Step259HeadFRow,s6Step259HeadGvRow,s6Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259HeadGRow,s6Step259HeadFRow,s6Step259HeadGvRow,s6Step259HeadFvRow] 1 s6Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259HeadBank_outgoingOwned : rowsOwned s6Step259HeadFvAfter [s6Step259HeadGOut,s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259HeadF_Outgoing : rowsOwned s6Step259HeadFvAfter [s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut] :=
  hmrRows_owned_drop s6Step259HeadFvAfter [s6Step259HeadGOut,s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut] 1 s6Step259HeadBank_outgoingOwned

private theorem s6Step259HeadF_distinct : (s6Step259HeadFRow.sign::s6Step259HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259HeadF_owned : (s6Step259HeadFRow.sign::s6Step259HeadFRow.payload).toFinset⊆s6Step259HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259HeadF_reserved : s6Step259HeadFBefore.reserve s6Step259HeadFFresh.toFinset=some s6Step259HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259HeadFFresh,arenaWires]
  · norm_num [s6Step259HeadFBefore,s6Step259HeadGAfter,s6Step259HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step259HeadFAfter,s6Step259HeadFBefore,s6Step259HeadGAfter,s6Step259HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step259HeadF_checked : planRowResizeLog s6Step259HeadFBefore s6Step259HeadFRow 142 s6Step259HeadFFresh=
    some (s6Step259HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 809],795⟩,growRow 795 s6Step259HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step259HeadFBefore s6Step259HeadFAfter s6Step259HeadFRow 142 s6Step259HeadFFresh
    s6Step259HeadF_distinct s6Step259HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259HeadF_reserved
  have rowEq : WindowRow.mk (s6Step259HeadFRow.payload++s6Step259HeadFFresh) s6Step259HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 809],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step259HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step259HeadFvBefore : Arena := s6Step259HeadGvAfter

private theorem s6Step259HeadFv_Incoming : rowsOwned s6Step259HeadFvBefore [s6Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259HeadGRow,s6Step259HeadFRow,s6Step259HeadGvRow,s6Step259HeadFvRow] 3 s6Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259HeadFv_Outgoing : rowsOwned s6Step259HeadFvAfter [s6Step259HeadFvOut] :=
  hmrRows_owned_drop s6Step259HeadFvAfter [s6Step259HeadGOut,s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut] 3 s6Step259HeadBank_outgoingOwned

private theorem s6Step259HeadFv_distinct : (s6Step259HeadFvRow.sign::s6Step259HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259HeadFv_owned : (s6Step259HeadFvRow.sign::s6Step259HeadFvRow.payload).toFinset⊆s6Step259HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259HeadFv_reserved : s6Step259HeadFvBefore.reserve s6Step259HeadFvFresh.toFinset=some s6Step259HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259HeadFvFresh,arenaWires]
  · norm_num [s6Step259HeadFvBefore,s6Step259HeadGvAfter,s6Step259HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step259HeadFvAfter,s6Step259HeadFvBefore,s6Step259HeadGvAfter,s6Step259HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step259HeadFv_checked : planRowResizeLog s6Step259HeadFvBefore s6Step259HeadFvRow 146 s6Step259HeadFvFresh=
    some (s6Step259HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩,growRow 776 s6Step259HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step259HeadFvBefore s6Step259HeadFvAfter s6Step259HeadFvRow 146 s6Step259HeadFvFresh
    s6Step259HeadFv_distinct s6Step259HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step259HeadFvRow.payload++s6Step259HeadFvFresh) s6Step259HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step259HeadG_Incoming : rowsOwned s6Step259HeadGBefore [s6Step259HeadGRow,s6Step259HeadFRow,s6Step259HeadGvRow,s6Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259HeadGRow,s6Step259HeadFRow,s6Step259HeadGvRow,s6Step259HeadFvRow] 0 s6Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259HeadG_Outgoing : rowsOwned s6Step259HeadFvAfter [s6Step259HeadGOut,s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut] :=
  hmrRows_owned_drop s6Step259HeadFvAfter [s6Step259HeadGOut,s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut] 0 s6Step259HeadBank_outgoingOwned

private theorem s6Step259HeadG_distinct : (s6Step259HeadGRow.sign::s6Step259HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259HeadG_owned : (s6Step259HeadGRow.sign::s6Step259HeadGRow.payload).toFinset⊆s6Step259HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259HeadG_reserved : s6Step259HeadGBefore.reserve s6Step259HeadGFresh.toFinset=some s6Step259HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259HeadGFresh,arenaWires]
  · norm_num [s6Step259HeadGBefore,s6Step259HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step259HeadGAfter,s6Step259HeadGBefore,s6Step259HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step259HeadG_checked : planRowResizeLog s6Step259HeadGBefore s6Step259HeadGRow 142 s6Step259HeadGFresh=
    some (s6Step259HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 907],777⟩,growRow 777 s6Step259HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step259HeadGBefore s6Step259HeadGAfter s6Step259HeadGRow 142 s6Step259HeadGFresh
    s6Step259HeadG_distinct s6Step259HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259HeadG_reserved
  have rowEq : WindowRow.mk (s6Step259HeadGRow.payload++s6Step259HeadGFresh) s6Step259HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step259HeadGvBefore : Arena := s6Step259HeadFAfter

private theorem s6Step259HeadGv_Incoming : rowsOwned s6Step259HeadGvBefore [s6Step259HeadGvRow,s6Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step259HeadGRow,s6Step259HeadFRow,s6Step259HeadGvRow,s6Step259HeadFvRow] 2 s6Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step259HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step259HeadGv_Outgoing : rowsOwned s6Step259HeadFvAfter [s6Step259HeadGvOut,s6Step259HeadFvOut] :=
  hmrRows_owned_drop s6Step259HeadFvAfter [s6Step259HeadGOut,s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut] 2 s6Step259HeadBank_outgoingOwned

private theorem s6Step259HeadGv_distinct : (s6Step259HeadGvRow.sign::s6Step259HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step259HeadGv_owned : (s6Step259HeadGvRow.sign::s6Step259HeadGvRow.payload).toFinset⊆s6Step259HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step259HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step259HeadGv_reserved : s6Step259HeadGvBefore.reserve s6Step259HeadGvFresh.toFinset=some s6Step259HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step259HeadGvFresh,arenaWires]
  · norm_num [s6Step259HeadGvBefore,s6Step259HeadFAfter,s6Step259HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step259HeadGvAfter,s6Step259HeadGvBefore,s6Step259HeadFAfter,s6Step259HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step259HeadGv_checked : planRowResizeLog s6Step259HeadGvBefore s6Step259HeadGvRow 146 s6Step259HeadGvFresh=
    some (s6Step259HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 810],775⟩,growRow 775 s6Step259HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step259HeadGvBefore s6Step259HeadGvAfter s6Step259HeadGvRow 146 s6Step259HeadGvFresh
    s6Step259HeadGv_distinct s6Step259HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step259HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step259HeadGvRow.payload++s6Step259HeadGvFresh) s6Step259HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 810],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step259HeadBank_rows : planWindowRowsLog s6Step259HeadGBefore [(s6Step259HeadGRow,142),(s6Step259HeadFRow,142),(s6Step259HeadGvRow,146),(s6Step259HeadFvRow,146)] [s6Step259HeadGFresh,s6Step259HeadFFresh,s6Step259HeadGvFresh,s6Step259HeadFvFresh]=
    some (s6Step259HeadFvAfter,[s6Step259HeadGOut,s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut],(growRow 777 s6Step259HeadGFresh ++ (growRow 795 s6Step259HeadFFresh ++ (growRow 775 s6Step259HeadGvFresh ++ (growRow 776 s6Step259HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step259HeadFvAfter [] []=some (s6Step259HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step259HeadFvBefore s6Step259HeadFvAfter s6Step259HeadFvAfter
    s6Step259HeadFvRow s6Step259HeadFvOut 146 s6Step259HeadFvFresh [] [] []
    (growRow 776 s6Step259HeadFvFresh) ([]) s6Step259HeadFv_Incoming s6Step259HeadFv_checked h4 s6Step259HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step259HeadGvBefore s6Step259HeadGvAfter s6Step259HeadFvAfter
    s6Step259HeadGvRow s6Step259HeadGvOut 146 s6Step259HeadGvFresh [(s6Step259HeadFvRow,146)] [s6Step259HeadFvFresh] [s6Step259HeadFvOut]
    (growRow 775 s6Step259HeadGvFresh) ((growRow 776 s6Step259HeadFvFresh ++ [])) s6Step259HeadGv_Incoming s6Step259HeadGv_checked h3 s6Step259HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step259HeadFBefore s6Step259HeadFAfter s6Step259HeadFvAfter
    s6Step259HeadFRow s6Step259HeadFOut 142 s6Step259HeadFFresh [(s6Step259HeadGvRow,146),(s6Step259HeadFvRow,146)] [s6Step259HeadGvFresh,s6Step259HeadFvFresh] [s6Step259HeadGvOut,s6Step259HeadFvOut]
    (growRow 795 s6Step259HeadFFresh) ((growRow 775 s6Step259HeadGvFresh ++ (growRow 776 s6Step259HeadFvFresh ++ []))) s6Step259HeadF_Incoming s6Step259HeadF_checked h2 s6Step259HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step259HeadGBefore s6Step259HeadGAfter s6Step259HeadFvAfter
    s6Step259HeadGRow s6Step259HeadGOut 142 s6Step259HeadGFresh [(s6Step259HeadFRow,142),(s6Step259HeadGvRow,146),(s6Step259HeadFvRow,146)] [s6Step259HeadFFresh,s6Step259HeadGvFresh,s6Step259HeadFvFresh] [s6Step259HeadFOut,s6Step259HeadGvOut,s6Step259HeadFvOut]
    (growRow 777 s6Step259HeadGFresh) ((growRow 795 s6Step259HeadFFresh ++ (growRow 775 s6Step259HeadGvFresh ++ (growRow 776 s6Step259HeadFvFresh ++ [])))) s6Step259HeadG_Incoming s6Step259HeadG_checked h1 s6Step259HeadG_Outgoing
  exact h0

private theorem s6Step259HeadBank_checked : compileHmrBankResizeLog .headroom s6Step259HeadGBefore ⟨s6Step259HeadFRow,s6Step259HeadGRow,s6Step259HeadFvRow,s6Step259HeadGvRow⟩ ⟨142,142,146,146⟩ [s6Step259HeadGFresh,s6Step259HeadFFresh,s6Step259HeadGvFresh,s6Step259HeadFvFresh]=
    some (s6Step259HeadFvAfter,⟨s6Step259HeadFOut,s6Step259HeadGOut,s6Step259HeadFvOut,s6Step259HeadGvOut⟩,(growRow 777 s6Step259HeadGFresh ++ (growRow 795 s6Step259HeadFFresh ++ (growRow 775 s6Step259HeadGvFresh ++ (growRow 776 s6Step259HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step259HeadBank_rows]
  rfl

private theorem s6Step259Front_checked : compileHmrSourceFrontLog s6Step259EntryFBefore s6Step259FrontBank 141 145 ⟨141,140,145,145⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step259FrontLog=some s6Step259FrontPlan := by
  have pairEq : s6Step259FrontPair=⟨s6Step259HeadFRow,s6Step259HeadGRow,s6Step259HeadFvRow,s6Step259HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step259FrontHead=⟨s6Step259ExitFRow,s6Step259ExitGRow,s6Step259ExitFvRow,s6Step259ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step259Add0A=s6Step259FrontHead.f.wires := by decide +kernel
  have gEq : s6Step259Add0B=s6Step259FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step259Add1A=s6Step259FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step259Add1B=s6Step259FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step259EntryFBefore s6Step259FrontBank 141 145 ⟨141,140,145,145⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step259FrontLog s6Step259FrontPlan
  · exact s6Step259Front_entry
  · exact s6Step259EntryBank_checked
  · exact s6Step259Front_sigma
  · rfl
  · exact s6Step259Front_branch
  · rfl
  · simpa only [s6Step259FrontPlan,pairEq] using s6Step259HeadBank_checked
  · simpa only [s6Step259FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step259F4_checked
  · exact s6Step259Counter_checked
  · rfl
  · simpa only [s6Step259FrontPlan,headEq] using s6Step259ExitBank_checked

private theorem s6Step259Complete_explicit_checked : compileHmrEarlyStepLog s6Step259EntryFBefore s6Step259FrontBank 141 145 ⟨141,140,145,145⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step259CompleteLog=some s6Step259CompletePlan := by
  let Q := s6Step259EarlyControlPlan
  have hq := s6Step259EarlyControl_plan_checked
  have fv1 : s6Step259CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step259CompleteOut.fv.payload[2]?.getD s6Step259CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step259CompleteOut.fv.payload[3]?.getD s6Step259CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step259CompleteOut.fv.payload[4]?.getD s6Step259CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step259EntryFBefore s6Step259EarlyControlArena s6Step259FrontBank 141 145 ⟨141,140,145,145⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step259CompleteLog s6Step259FrontPlan Q
    s6Step259Front_checked s6Step259Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step259Complete_owned s6Step259Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step259EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 s6Step259CompleteOut.fv.second (s6Step259CompleteOut.fv.payload[2]?.getD s6Step259CompleteOut.fv.sign) (s6Step259CompleteOut.fv.payload[3]?.getD s6Step259CompleteOut.fv.sign) (s6Step259CompleteOut.fv.payload[4]?.getD s6Step259CompleteOut.fv.sign) 854 51 s6Step259EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep259Arena : Arena := s6Step259EntryFBefore
def s6PrivateStep259Bank : WindowBank := s6Step259FrontBank
def s6PrivateStep259Spec : HmrSourceWalkStepLog := ⟨141,145,⟨141,140,145,145⟩,51,.early s6Step259CompleteLog⟩
def s6PrivateStep259Plan : HmrSourceStepPlan := .early s6Step259CompletePlan
theorem s6PrivateStep259_source : s6PrivateStep259Spec=s6ObservedLogs256[3] := rfl
theorem s6PrivateStep259_checked : compileHmrSourceStepLog s6PrivateStep259Arena s6PrivateStep259Bank
    s6PrivateStep259Spec.fgWidth s6PrivateStep259Spec.vWidth s6PrivateStep259Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 259 s6PrivateStep259Spec.need none s6PrivateStep259Spec.log=some s6PrivateStep259Plan := by
  change compileHmrSourceStepLog s6Step259EntryFBefore s6Step259FrontBank 141 145 ⟨141,140,145,145⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 259 51 none (.early s6Step259CompleteLog)=some (.early s6Step259CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 259<498)]
  rw [s6Step259Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
