import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep246
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

private def s6Step248CompleteMoves : List (Wire × Wire) := [(863,145)]

private def s6Step248EarlyControlLog : HmrEarlyControlLog := ⟨[863, 786, 830, 864, 839],[868],[805],[810, 809, 817, 812, 915, 932],[]⟩

private def s6Step248FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [864], [], [890]],[[839], [830], [786], [841]],[[], [], [], []]⟩,[822],[818],[868],[805],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809]⟩

private def s6Step248CompleteLog : HmrEarlyStepLog := ⟨s6Step248FrontLog,s6Step248CompleteMoves,s6Step248EarlyControlLog⟩

private def s6Step248ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step248ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step248ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144],777⟩

private def s6Step248ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩

private def s6Step248FrontOut : WindowBank := ⟨s6Step248ExitFOut,s6Step248ExitGOut,s6Step248ExitFvOut,s6Step248ExitGvOut⟩

private def s6Step248CompleteOut : WindowBank := s6Step248FrontOut.repacked s6Step248CompleteMoves

private def s6Step248EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step248EarlyControlPositiveArena,[868],s6Step248EarlyControlEqualityArena,[805],⟨⟨822,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩

private def s6Step248EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,863⟩,⟨⟨772,false⟩,786⟩,⟨⟨771,false⟩,830⟩,⟨⟨770,false⟩,864⟩,⟨⟨769,false⟩,839⟩]⟩

private def s6Step248EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step248EarlyControlZeroArena,s6Step248EarlyControlZeroPlan,s6Step248EarlyControlClassPlan,s6Step248EarlyControlFlagArena,s6Step248EarlyControlFittedArena,s6Step248EarlyControlHistoryArena,s6Step248EarlyControlSigmaArena,s6Step248EarlyControlOutputArena,s6Step248EarlyControlLog⟩

private def s6Step248CounterWork : List Wire := [868, 805, 810, 809]

private theorem s6Step248Counter_bounded : s6Step248CounterWork.toFinset⊆arenaWires := by norm_num [s6Step248CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step248HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248CounterDuring : Arena := ⟨s6Step248HeadFvAfter.live∪s6Step248CounterWork.toFinset,Finset.union_subset s6Step248HeadFvAfter.bounded s6Step248Counter_bounded⟩

private def s6Step248EntryFFresh : List Wire := []

private def s6Step248EntryFvFresh : List Wire := []

private def s6Step248EntryGFresh : List Wire := [864]

private def s6Step248EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EntryGvFresh : List Wire := [890]

private def s6Step248ExitFExtra : List Wire := [830]

private def s6Step248ExitGExtra : List Wire := [145, 864, 839]

private def s6Step248ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248ExitGvExtra : List Wire := [786]

private def s6Step248Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248Add0Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step248Add0_bounded : s6Step248Add0Work.toFinset⊆arenaWires := by
  have h : s6Step248Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step248Add0During : Arena := ⟨s6Step248Add0Arena.live∪s6Step248Add0Work.toFinset,Finset.union_subset s6Step248Add0Arena.bounded s6Step248Add0_bounded⟩

private def s6Step248Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248Add1Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step248Add1_bounded : s6Step248Add1Work.toFinset⊆arenaWires := by
  have h : s6Step248Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step248Add1During : Arena := ⟨s6Step248Add1Arena.live∪s6Step248Add1Work.toFinset,Finset.union_subset s6Step248Add1Arena.bounded s6Step248Add1_bounded⟩

private def s6Step248F4FlagArena : Arena := ⟨s6Step248HeadFvAfter.live∪{868},Finset.union_subset s6Step248HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step248F4Plan : HmrHybridF4Plan := ⟨s6Step248F4FlagArena,[868],s6Step248Add0Arena,[805],s6Step248Add0During,s6Step248Add0Work,s6Step248Add1During,s6Step248Add1Work⟩

private def s6Step248HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 830],795⟩

private def s6Step248HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step248HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864, 839],777⟩

private def s6Step248HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 786],775⟩

private def s6Step248FrontHead : WindowBank := ⟨s6Step248HeadFOut,s6Step248HeadGOut,s6Step248HeadFvOut,s6Step248HeadGvOut⟩

private def s6Step248EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step248EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩

private def s6Step248EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864],777⟩

private def s6Step248EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩

private def s6Step248FrontPair : WindowBank := ⟨s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut⟩

private def s6Step248FrontSigmaArena : Arena := ⟨s6Step248EntryGvAfter.live∪{822},Finset.union_subset s6Step248EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step248HeadFFresh : List Wire := [830]

private def s6Step248HeadFvFresh : List Wire := [841]

private def s6Step248HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248HeadGFresh : List Wire := [839]

private def s6Step248HeadGvFresh : List Wire := [786]

private def s6Step248FrontPlan : HmrSourceFront := ⟨s6Step248EntryGvAfter,s6Step248FrontPair,(growRow 795 s6Step248EntryFFresh ++ (growRow 777 s6Step248EntryGFresh ++ (growRow 776 s6Step248EntryFvFresh ++ (growRow 775 s6Step248EntryGvFresh ++ [])))),s6Step248FrontSigmaArena,[822],s6Step248HeadGBefore,[818],
  s6Step248HeadFvAfter,s6Step248FrontHead,(growRow 777 s6Step248HeadGFresh ++ (growRow 795 s6Step248HeadFFresh ++ (growRow 775 s6Step248HeadGvFresh ++ (growRow 776 s6Step248HeadFvFresh ++ [])))),s6Step248F4Plan,s6Step248CounterDuring,s6Step248CounterWork,s6Step248ExitGvAfter,s6Step248FrontOut,(shrinkRow 777 s6Step248ExitGExtra ++ (shrinkRow 795 s6Step248ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step248ExitGvExtra ++ []))))⟩

private def s6Step248CompletePlan : HmrEarlyStepPlan := ⟨s6Step248FrontPlan,s6Step248EarlyControlArena,s6Step248EarlyControlPlan,s6Step248CompleteMoves⟩

private theorem s6Step248Complete_apart : List.Disjoint (s6Step248CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step248CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step248Complete_owned : (s6Step248CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step248CompleteMoveArena : Arena := ⟨s6Step248ExitGvAfter.live∪{145},Finset.union_subset s6Step248ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step248Complete_repack : s6Step248ExitGvAfter.checkRepack s6Step248CompleteMoves=some s6Step248EarlyControlArena := by
  have owned : 863∈s6Step248ExitGvAfter.live := by norm_num [s6Step248ExitGvAfter,arenaWires]
  have reserve : s6Step248ExitGvAfter.reserve {145}=some s6Step248CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step248ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step248CompleteMoveArena.retireSet {863}=s6Step248EarlyControlArena := by
    unfold Arena.retireSet s6Step248EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step248CompleteMoveArena,s6Step248ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step248CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step248CompleteMoveArena.retireSet {863}).checkRepack []=some s6Step248EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step248EarlyControl_branchOwned : ([818] : List Wire).toFinset⊆s6Step248EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_branch : compileHmrBranchRetirement s6Step248EarlyControlSigmaArena 818=some s6Step248EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step248EarlyControl_branchOwned
  · ext q
    simp [s6Step248EarlyControlOutputArena,s6Step248EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step248EarlyControl_classEqualityBorrow : s6Step248EarlyControlPositiveArena.checkBorrow (([822, 868] : List Wire).length-1) s6Step248EarlyControlLog.classWork=some s6Step248EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step248EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step248EarlyControlEqualityArena,s6Step248EarlyControlPositiveArena,s6Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step248EarlyControl_classEqualityOwned : ([822, 868] : List Wire).toFinset⊆s6Step248EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_classEquality : compileHmrEqualityLog s6Step248EarlyControlPositiveArena [822, 868] 0 s6Step248EarlyControlLog.classWork=some (s6Step248EarlyControlEqualityArena,s6Step248EarlyControlLog.classWork,s6Step248EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step248EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step248EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step248EarlyControl_classOwned : ([769, 839, 822] : List Wire).toFinset⊆s6Step248EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_positiveBorrow : s6Step248EarlyControlZeroArena.checkBorrow (1) s6Step248EarlyControlLog.positiveWork=some s6Step248EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step248EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step248EarlyControlPositiveArena,s6Step248EarlyControlZeroArena,s6Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step248EarlyControl_class : compileHmrSourceClassLog s6Step248EarlyControlZeroArena false 769 s6Step248EarlyControlZeroPlan.top 0 822 s6Step248EarlyControlLog.positiveWork s6Step248EarlyControlLog.classWork=some s6Step248EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step248EarlyControlClassPlan s6Step248EarlyControlZeroArena false 769 s6Step248EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step248EarlyControl_classOwned
  · exact s6Step248EarlyControl_positiveBorrow
  · exact s6Step248EarlyControl_classEquality

private theorem s6Step248EarlyControl_entryRecordOwned : ([818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s6Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_fitBorrow : s6Step248EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step248EarlyControlLog.recordFresh=some s6Step248EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step248EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step248EarlyControlFittedArena,s6Step248EarlyControlFlagArena,s6Step248EarlyControlLog,arenaWires]

private theorem s6Step248EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step248EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_fit : compileHmrRecordGrowLog s6Step248EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step248EarlyControlLog.recordFresh=some s6Step248EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step248EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step248EarlyControl_fitBorrow

private theorem s6Step248EarlyControl_flagsBorrow : s6Step248EarlyControlEqualityArena.checkBorrow (6) s6Step248EarlyControlLog.flagWork=some s6Step248EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step248EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step248EarlyControlFlagArena,s6Step248EarlyControlEqualityArena,s6Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step248EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step248EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_flags : compileHmrFlagsLog s6Step248EarlyControlClassPlan.equalityArena s6Step248EarlyControlClassPlan.equality.top 253 252 251 s6Step248EarlyControlLog.flagWork=some s6Step248EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step248EarlyControl_flagsOwned⟩
  · exact s6Step248EarlyControl_flagsBorrow

private theorem s6Step248EarlyControl_historyBorrow : s6Step248EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step248EarlyControlLog.recordFresh=some s6Step248EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step248EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step248EarlyControlHistoryArena,s6Step248EarlyControlArena,s6Step248EarlyControlLog,arenaWires]

private theorem s6Step248EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_history : compileHmrRecordGrowLog s6Step248EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step248EarlyControlLog.recordFresh=some s6Step248EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step248EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step248EarlyControl_historyBorrow

private theorem s6Step248EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s6Step248EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step248EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_sigmaRelease : s6Step248EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step248EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step248EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step248EarlyControlSigmaArena,s6Step248EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step248EarlyControl_sigma : compileHmrSigmaDropLog s6Step248EarlyControlHistoryArena false 0 0 254 822 []=some s6Step248EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step248EarlyControl_sigmaOwned⟩
  · exact s6Step248EarlyControl_sigmaRelease

private theorem s6Step248EarlyControl_zeroBorrow : s6Step248EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step248EarlyControlLog.zeroWork=some s6Step248EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step248EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step248EarlyControlZeroArena,s6Step248EarlyControlArena,s6Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step248EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step248EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EarlyControl_zero : compileHmrEqualityLog s6Step248EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step248EarlyControlLog.zeroWork=some (s6Step248EarlyControlZeroArena,s6Step248EarlyControlLog.zeroWork,s6Step248EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step248EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step248EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step248EarlyControl_logged : s6Step248EarlyControlPlan.Logged s6Step248EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 818 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step248EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step248EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step248EarlyControl_zero
  · exact s6Step248EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step248EarlyControl_flags
  · exact s6Step248EarlyControl_fit
  · exact s6Step248EarlyControl_history
  · exact s6Step248EarlyControl_sigma
  · exact s6Step248EarlyControl_branch

private theorem s6Step248EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step248EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 818 51 s6Step248EarlyControlLog=some s6Step248EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step248EarlyControlPlan s6Step248EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 254 253 252 251 818 51 s6Step248EarlyControl_logged

private def s6Step248EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step248EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩

private def s6Step248EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],777⟩

private def s6Step248EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796],775⟩

private def s6Step248FrontBank : WindowBank := ⟨s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow⟩

private def s6Step248Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 830, 795]

private def s6Step248Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864, 839, 777]

private def s6Step248Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 776]

private def s6Step248Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 786, 775]

private theorem s6Step248Counter_apart : Disjoint s6Step248HeadFvAfter.live s6Step248CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step248HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248Counter_borrowed : s6Step248HeadFvAfter.checkBorrow 4 s6Step248CounterWork=some s6Step248CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step248HeadFvAfter s6Step248CounterDuring s6Step248CounterWork.toFinset s6Step248Counter_bounded s6Step248Counter_apart rfl

private theorem s6Step248Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step248HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step248HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248Counter_checked : compileHmrCounterStepLog s6Step248HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step248CounterWork=some s6Step248CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step248HeadFvAfter.live := fun q hq => s6Step248Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step248Counter_borrowed

private def s6Step248EntryFAfter : Arena := s6Step248EntryFBefore

private theorem s6Step248EntryBank_incomingDistinct : ([s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248EntryF_Incoming : rowsOwned s6Step248EntryFBefore [s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow] 0 s6Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248EntryBank_outgoingOwned : rowsOwned s6Step248EntryGvAfter [s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step248EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248EntryF_Outgoing : rowsOwned s6Step248EntryGvAfter [s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut] :=
  hmrRows_owned_drop s6Step248EntryGvAfter [s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut] 0 s6Step248EntryBank_outgoingOwned

private theorem s6Step248EntryF_distinct : (s6Step248EntryFRow.sign::s6Step248EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248EntryF_owned : (s6Step248EntryFRow.sign::s6Step248EntryFRow.payload).toFinset⊆s6Step248EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EntryF_reserved : s6Step248EntryFBefore.reserve s6Step248EntryFFresh.toFinset=some s6Step248EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248EntryFFresh,arenaWires]
  · norm_num [s6Step248EntryFBefore,s6Step248EntryFFresh,arenaWires]
  · simp only [s6Step248EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step248EntryF_checked : planRowResizeLog s6Step248EntryFBefore s6Step248EntryFRow 147 s6Step248EntryFFresh=
    some (s6Step248EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩,growRow 795 s6Step248EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step248EntryFBefore s6Step248EntryFAfter s6Step248EntryFRow 147 s6Step248EntryFFresh
    s6Step248EntryF_distinct s6Step248EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248EntryF_reserved
  have rowEq : WindowRow.mk (s6Step248EntryFRow.payload++s6Step248EntryFFresh) s6Step248EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step248EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248EntryFvAfter : Arena := s6Step248EntryGAfter

private def s6Step248EntryFvBefore : Arena := s6Step248EntryGAfter

private theorem s6Step248EntryFv_Incoming : rowsOwned s6Step248EntryFvBefore [s6Step248EntryFvRow,s6Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow] 2 s6Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248EntryFv_Outgoing : rowsOwned s6Step248EntryGvAfter [s6Step248EntryFvOut,s6Step248EntryGvOut] :=
  hmrRows_owned_drop s6Step248EntryGvAfter [s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut] 2 s6Step248EntryBank_outgoingOwned

private theorem s6Step248EntryFv_distinct : (s6Step248EntryFvRow.sign::s6Step248EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248EntryFv_owned : (s6Step248EntryFvRow.sign::s6Step248EntryFvRow.payload).toFinset⊆s6Step248EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EntryFv_reserved : s6Step248EntryFvBefore.reserve s6Step248EntryFvFresh.toFinset=some s6Step248EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248EntryFvFresh,arenaWires]
  · norm_num [s6Step248EntryFvBefore,s6Step248EntryGAfter,s6Step248EntryFvFresh,arenaWires]
  · simp only [s6Step248EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step248EntryFv_checked : planRowResizeLog s6Step248EntryFvBefore s6Step248EntryFvRow 139 s6Step248EntryFvFresh=
    some (s6Step248EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩,growRow 776 s6Step248EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step248EntryFvBefore s6Step248EntryFvAfter s6Step248EntryFvRow 139 s6Step248EntryFvFresh
    s6Step248EntryFv_distinct s6Step248EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step248EntryFvRow.payload++s6Step248EntryFvFresh) s6Step248EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step248EntryGBefore : Arena := s6Step248EntryFBefore

private theorem s6Step248EntryG_Incoming : rowsOwned s6Step248EntryGBefore [s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow] 1 s6Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248EntryG_Outgoing : rowsOwned s6Step248EntryGvAfter [s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut] :=
  hmrRows_owned_drop s6Step248EntryGvAfter [s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut] 1 s6Step248EntryBank_outgoingOwned

private theorem s6Step248EntryG_distinct : (s6Step248EntryGRow.sign::s6Step248EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248EntryG_owned : (s6Step248EntryGRow.sign::s6Step248EntryGRow.payload).toFinset⊆s6Step248EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EntryG_reserved : s6Step248EntryGBefore.reserve s6Step248EntryGFresh.toFinset=some s6Step248EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248EntryGFresh,arenaWires]
  · norm_num [s6Step248EntryGBefore,s6Step248EntryFBefore,s6Step248EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step248EntryGAfter,s6Step248EntryGBefore,s6Step248EntryFBefore,s6Step248EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248EntryG_checked : planRowResizeLog s6Step248EntryGBefore s6Step248EntryGRow 147 s6Step248EntryGFresh=
    some (s6Step248EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864],777⟩,growRow 777 s6Step248EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step248EntryGBefore s6Step248EntryGAfter s6Step248EntryGRow 147 s6Step248EntryGFresh
    s6Step248EntryG_distinct s6Step248EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248EntryG_reserved
  have rowEq : WindowRow.mk (s6Step248EntryGRow.payload++s6Step248EntryGFresh) s6Step248EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step248EntryGvBefore : Arena := s6Step248EntryGAfter

private theorem s6Step248EntryGv_Incoming : rowsOwned s6Step248EntryGvBefore [s6Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow] 3 s6Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248EntryGv_Outgoing : rowsOwned s6Step248EntryGvAfter [s6Step248EntryGvOut] :=
  hmrRows_owned_drop s6Step248EntryGvAfter [s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut] 3 s6Step248EntryBank_outgoingOwned

private theorem s6Step248EntryGv_distinct : (s6Step248EntryGvRow.sign::s6Step248EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248EntryGv_owned : (s6Step248EntryGvRow.sign::s6Step248EntryGvRow.payload).toFinset⊆s6Step248EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248EntryGv_reserved : s6Step248EntryGvBefore.reserve s6Step248EntryGvFresh.toFinset=some s6Step248EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248EntryGvFresh,arenaWires]
  · norm_num [s6Step248EntryGvBefore,s6Step248EntryGAfter,s6Step248EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step248EntryGvAfter,s6Step248EntryGvBefore,s6Step248EntryGAfter,s6Step248EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248EntryGv_checked : planRowResizeLog s6Step248EntryGvBefore s6Step248EntryGvRow 139 s6Step248EntryGvFresh=
    some (s6Step248EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩,growRow 775 s6Step248EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step248EntryGvBefore s6Step248EntryGvAfter s6Step248EntryGvRow 139 s6Step248EntryGvFresh
    s6Step248EntryGv_distinct s6Step248EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step248EntryGvRow.payload++s6Step248EntryGvFresh) s6Step248EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step248EntryBank_rows : planWindowRowsLog s6Step248EntryFBefore [(s6Step248EntryFRow,147),(s6Step248EntryGRow,147),(s6Step248EntryFvRow,139),(s6Step248EntryGvRow,139)] [s6Step248EntryFFresh,s6Step248EntryGFresh,s6Step248EntryFvFresh,s6Step248EntryGvFresh]=
    some (s6Step248EntryGvAfter,[s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut],(growRow 795 s6Step248EntryFFresh ++ (growRow 777 s6Step248EntryGFresh ++ (growRow 776 s6Step248EntryFvFresh ++ (growRow 775 s6Step248EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step248EntryGvAfter [] []=some (s6Step248EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step248EntryGvBefore s6Step248EntryGvAfter s6Step248EntryGvAfter
    s6Step248EntryGvRow s6Step248EntryGvOut 139 s6Step248EntryGvFresh [] [] []
    (growRow 775 s6Step248EntryGvFresh) ([]) s6Step248EntryGv_Incoming s6Step248EntryGv_checked h4 s6Step248EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step248EntryFvBefore s6Step248EntryFvAfter s6Step248EntryGvAfter
    s6Step248EntryFvRow s6Step248EntryFvOut 139 s6Step248EntryFvFresh [(s6Step248EntryGvRow,139)] [s6Step248EntryGvFresh] [s6Step248EntryGvOut]
    (growRow 776 s6Step248EntryFvFresh) ((growRow 775 s6Step248EntryGvFresh ++ [])) s6Step248EntryFv_Incoming s6Step248EntryFv_checked h3 s6Step248EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step248EntryGBefore s6Step248EntryGAfter s6Step248EntryGvAfter
    s6Step248EntryGRow s6Step248EntryGOut 147 s6Step248EntryGFresh [(s6Step248EntryFvRow,139),(s6Step248EntryGvRow,139)] [s6Step248EntryFvFresh,s6Step248EntryGvFresh] [s6Step248EntryFvOut,s6Step248EntryGvOut]
    (growRow 777 s6Step248EntryGFresh) ((growRow 776 s6Step248EntryFvFresh ++ (growRow 775 s6Step248EntryGvFresh ++ []))) s6Step248EntryG_Incoming s6Step248EntryG_checked h2 s6Step248EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step248EntryFBefore s6Step248EntryFAfter s6Step248EntryGvAfter
    s6Step248EntryFRow s6Step248EntryFOut 147 s6Step248EntryFFresh [(s6Step248EntryGRow,147),(s6Step248EntryFvRow,139),(s6Step248EntryGvRow,139)] [s6Step248EntryGFresh,s6Step248EntryFvFresh,s6Step248EntryGvFresh] [s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut]
    (growRow 795 s6Step248EntryFFresh) ((growRow 777 s6Step248EntryGFresh ++ (growRow 776 s6Step248EntryFvFresh ++ (growRow 775 s6Step248EntryGvFresh ++ [])))) s6Step248EntryF_Incoming s6Step248EntryF_checked h1 s6Step248EntryF_Outgoing
  exact h0

private theorem s6Step248EntryBank_checked : compileHmrBankResizeLog .entry s6Step248EntryFBefore ⟨s6Step248EntryFRow,s6Step248EntryGRow,s6Step248EntryFvRow,s6Step248EntryGvRow⟩ ⟨147,147,139,139⟩ [s6Step248EntryFFresh,s6Step248EntryGFresh,s6Step248EntryFvFresh,s6Step248EntryGvFresh]=
    some (s6Step248EntryGvAfter,⟨s6Step248EntryFOut,s6Step248EntryGOut,s6Step248EntryFvOut,s6Step248EntryGvOut⟩,(growRow 795 s6Step248EntryFFresh ++ (growRow 777 s6Step248EntryGFresh ++ (growRow 776 s6Step248EntryFvFresh ++ (growRow 775 s6Step248EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step248EntryBank_rows]
  rfl

private def s6Step248ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248ExitFBefore : Arena := s6Step248ExitGAfter

private def s6Step248ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 830],795⟩

private def s6Step248ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step248ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864, 839],777⟩

private def s6Step248ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 786],775⟩

private theorem s6Step248ExitBank_incomingDistinct : ([s6Step248ExitGRow,s6Step248ExitFRow,s6Step248ExitFvRow,s6Step248ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248ExitF_Incoming : rowsOwned s6Step248ExitFBefore [s6Step248ExitFRow,s6Step248ExitFvRow,s6Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248ExitGRow,s6Step248ExitFRow,s6Step248ExitFvRow,s6Step248ExitGvRow] 1 s6Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248ExitFBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248ExitBank_outgoingOwned : rowsOwned s6Step248ExitGvAfter [s6Step248ExitGOut,s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step248ExitGvAfter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248ExitF_Outgoing : rowsOwned s6Step248ExitGvAfter [s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut] :=
  hmrRows_owned_drop s6Step248ExitGvAfter [s6Step248ExitGOut,s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut] 1 s6Step248ExitBank_outgoingOwned

private theorem s6Step248ExitF_distinct : (s6Step248ExitFRow.sign::s6Step248ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248ExitF_owned : (s6Step248ExitFRow.sign::s6Step248ExitFRow.payload).toFinset⊆s6Step248ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248ExitFBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248ExitF_retired : s6Step248ExitFBefore.retireSet s6Step248ExitFExtra.toFinset=s6Step248ExitFAfter := by
  unfold Arena.retireSet s6Step248ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step248ExitFBefore,s6Step248ExitGAfter,s6Step248ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step248ExitF_checked : planRowResizeLog s6Step248ExitFBefore s6Step248ExitFRow 147 []=
    some (s6Step248ExitFAfter,s6Step248ExitFOut,shrinkRow 795 s6Step248ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step248ExitFBefore s6Step248ExitFRow 147 s6Step248ExitF_distinct s6Step248ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step248ExitFRow.payload.take 147) s6Step248ExitFRow.sign=s6Step248ExitFOut := by decide +kernel
  have hi : s6Step248ExitFRow.payload.drop 147=s6Step248ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step248ExitF_retired] at result
  exact result

private def s6Step248ExitFvAfter : Arena := s6Step248ExitFAfter

private def s6Step248ExitFvBefore : Arena := s6Step248ExitFAfter

private theorem s6Step248ExitFv_Incoming : rowsOwned s6Step248ExitFvBefore [s6Step248ExitFvRow,s6Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248ExitGRow,s6Step248ExitFRow,s6Step248ExitFvRow,s6Step248ExitGvRow] 2 s6Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248ExitFvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248ExitFv_Outgoing : rowsOwned s6Step248ExitGvAfter [s6Step248ExitFvOut,s6Step248ExitGvOut] :=
  hmrRows_owned_drop s6Step248ExitGvAfter [s6Step248ExitGOut,s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut] 2 s6Step248ExitBank_outgoingOwned

private theorem s6Step248ExitFv_distinct : (s6Step248ExitFvRow.sign::s6Step248ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248ExitFv_owned : (s6Step248ExitFvRow.sign::s6Step248ExitFvRow.payload).toFinset⊆s6Step248ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248ExitFvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248ExitFv_reserved : s6Step248ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step248ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step248ExitFv_checked : planRowResizeLog s6Step248ExitFvBefore s6Step248ExitFvRow 140 []=
    some (s6Step248ExitFvAfter,s6Step248ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step248ExitFvBefore s6Step248ExitFvAfter s6Step248ExitFvRow 140 []
    s6Step248ExitFv_distinct s6Step248ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step248ExitFvRow.payload++[]) s6Step248ExitFvRow.sign=s6Step248ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step248ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step248ExitG_Incoming : rowsOwned s6Step248ExitGBefore [s6Step248ExitGRow,s6Step248ExitFRow,s6Step248ExitFvRow,s6Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248ExitGRow,s6Step248ExitFRow,s6Step248ExitFvRow,s6Step248ExitGvRow] 0 s6Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248ExitG_Outgoing : rowsOwned s6Step248ExitGvAfter [s6Step248ExitGOut,s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut] :=
  hmrRows_owned_drop s6Step248ExitGvAfter [s6Step248ExitGOut,s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut] 0 s6Step248ExitBank_outgoingOwned

private theorem s6Step248ExitG_distinct : (s6Step248ExitGRow.sign::s6Step248ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248ExitG_owned : (s6Step248ExitGRow.sign::s6Step248ExitGRow.payload).toFinset⊆s6Step248ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248ExitG_retired : s6Step248ExitGBefore.retireSet s6Step248ExitGExtra.toFinset=s6Step248ExitGAfter := by
  unfold Arena.retireSet s6Step248ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step248ExitGBefore,s6Step248ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step248ExitG_checked : planRowResizeLog s6Step248ExitGBefore s6Step248ExitGRow 145 []=
    some (s6Step248ExitGAfter,s6Step248ExitGOut,shrinkRow 777 s6Step248ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step248ExitGBefore s6Step248ExitGRow 145 s6Step248ExitG_distinct s6Step248ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step248ExitGRow.payload.take 145) s6Step248ExitGRow.sign=s6Step248ExitGOut := by decide +kernel
  have hi : s6Step248ExitGRow.payload.drop 145=s6Step248ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step248ExitG_retired] at result
  exact result

private def s6Step248ExitGvBefore : Arena := s6Step248ExitFAfter

private theorem s6Step248ExitGv_Incoming : rowsOwned s6Step248ExitGvBefore [s6Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248ExitGRow,s6Step248ExitFRow,s6Step248ExitFvRow,s6Step248ExitGvRow] 3 s6Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248ExitGvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248ExitGv_Outgoing : rowsOwned s6Step248ExitGvAfter [s6Step248ExitGvOut] :=
  hmrRows_owned_drop s6Step248ExitGvAfter [s6Step248ExitGOut,s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut] 3 s6Step248ExitBank_outgoingOwned

private theorem s6Step248ExitGv_distinct : (s6Step248ExitGvRow.sign::s6Step248ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248ExitGv_owned : (s6Step248ExitGvRow.sign::s6Step248ExitGvRow.payload).toFinset⊆s6Step248ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248ExitGvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248ExitGv_retired : s6Step248ExitGvBefore.retireSet s6Step248ExitGvExtra.toFinset=s6Step248ExitGvAfter := by
  unfold Arena.retireSet s6Step248ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step248ExitGvBefore,s6Step248ExitFAfter,s6Step248ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step248ExitGv_checked : planRowResizeLog s6Step248ExitGvBefore s6Step248ExitGvRow 139 []=
    some (s6Step248ExitGvAfter,s6Step248ExitGvOut,shrinkRow 775 s6Step248ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step248ExitGvBefore s6Step248ExitGvRow 139 s6Step248ExitGv_distinct s6Step248ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step248ExitGvRow.payload.take 139) s6Step248ExitGvRow.sign=s6Step248ExitGvOut := by decide +kernel
  have hi : s6Step248ExitGvRow.payload.drop 139=s6Step248ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step248ExitGv_retired] at result
  exact result

private theorem s6Step248ExitBank_rows : planWindowRowsLog s6Step248ExitGBefore [(s6Step248ExitGRow,145),(s6Step248ExitFRow,147),(s6Step248ExitFvRow,140),(s6Step248ExitGvRow,139)] [[],[],[],[]]=
    some (s6Step248ExitGvAfter,[s6Step248ExitGOut,s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut],(shrinkRow 777 s6Step248ExitGExtra ++ (shrinkRow 795 s6Step248ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step248ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step248ExitGvAfter [] []=some (s6Step248ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step248ExitGvBefore s6Step248ExitGvAfter s6Step248ExitGvAfter
    s6Step248ExitGvRow s6Step248ExitGvOut 139 [] [] [] []
    (shrinkRow 775 s6Step248ExitGvExtra) ([]) s6Step248ExitGv_Incoming s6Step248ExitGv_checked h4 s6Step248ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step248ExitFvBefore s6Step248ExitFvAfter s6Step248ExitGvAfter
    s6Step248ExitFvRow s6Step248ExitFvOut 140 [] [(s6Step248ExitGvRow,139)] [[]] [s6Step248ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step248ExitGvExtra ++ [])) s6Step248ExitFv_Incoming s6Step248ExitFv_checked h3 s6Step248ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step248ExitFBefore s6Step248ExitFAfter s6Step248ExitGvAfter
    s6Step248ExitFRow s6Step248ExitFOut 147 [] [(s6Step248ExitFvRow,140),(s6Step248ExitGvRow,139)] [[],[]] [s6Step248ExitFvOut,s6Step248ExitGvOut]
    (shrinkRow 795 s6Step248ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step248ExitGvExtra ++ []))) s6Step248ExitF_Incoming s6Step248ExitF_checked h2 s6Step248ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step248ExitGBefore s6Step248ExitGAfter s6Step248ExitGvAfter
    s6Step248ExitGRow s6Step248ExitGOut 145 [] [(s6Step248ExitFRow,147),(s6Step248ExitFvRow,140),(s6Step248ExitGvRow,139)] [[],[],[]] [s6Step248ExitFOut,s6Step248ExitFvOut,s6Step248ExitGvOut]
    (shrinkRow 777 s6Step248ExitGExtra) ((shrinkRow 795 s6Step248ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step248ExitGvExtra ++ [])))) s6Step248ExitG_Incoming s6Step248ExitG_checked h1 s6Step248ExitG_Outgoing
  exact h0

private theorem s6Step248ExitBank_checked : compileHmrBankResizeLog .exit s6Step248ExitGBefore ⟨s6Step248ExitFRow,s6Step248ExitGRow,s6Step248ExitFvRow,s6Step248ExitGvRow⟩ ⟨147,145,140,139⟩ [[],[],[],[]]=
    some (s6Step248ExitGvAfter,⟨s6Step248ExitFOut,s6Step248ExitGOut,s6Step248ExitFvOut,s6Step248ExitGvOut⟩,(shrinkRow 777 s6Step248ExitGExtra ++ (shrinkRow 795 s6Step248ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step248ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step248ExitBank_rows]
  rfl

private theorem s6Step248Add0_apart : Disjoint s6Step248Add0Arena.live s6Step248Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step248Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248Add0_card : s6Step248Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step248Add0_borrowed : s6Step248Add0Arena.checkBorrow (hmrHybridCount s6Step248Add0Arena s6Step248Add0B.length) s6Step248Add0Work=some s6Step248Add0During := by
  have len : s6Step248Add0Work.length=hmrHybridCount s6Step248Add0Arena s6Step248Add0B.length := by
    rw [hmrHybridCount,s6Step248Add0_card]
    decide +kernel
  have nd : s6Step248Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step248Add0Arena s6Step248Add0During s6Step248Add0Work.toFinset s6Step248Add0_bounded s6Step248Add0_apart rfl

private theorem s6Step248Add0_distinct : (868::818::805::(s6Step248Add0A++s6Step248Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248Add0_owned : (868::818::805::(s6Step248Add0A++s6Step248Add0B)).toFinset⊆s6Step248Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step248Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248Add0_checked : compileHmrHybridCinLog s6Step248Add0Arena 818 868 805 s6Step248Add0A s6Step248Add0B s6Step248Add0Work=some s6Step248Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step248Add0Arena s6Step248Add0During 818 868 805 s6Step248Add0A s6Step248Add0B s6Step248Add0Work
    (by decide +kernel) (by decide +kernel) s6Step248Add0_distinct
    (fun q hq => s6Step248Add0_owned (List.mem_toFinset.mpr hq)) s6Step248Add0_borrowed

private theorem s6Step248Add1_apart : Disjoint s6Step248Add1Arena.live s6Step248Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step248Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248Add1_card : s6Step248Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step248Add1_borrowed : s6Step248Add1Arena.checkBorrow (hmrHybridCount s6Step248Add1Arena s6Step248Add1B.length) s6Step248Add1Work=some s6Step248Add1During := by
  have len : s6Step248Add1Work.length=hmrHybridCount s6Step248Add1Arena s6Step248Add1B.length := by
    rw [hmrHybridCount,s6Step248Add1_card]
    decide +kernel
  have nd : s6Step248Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step248Add1Arena s6Step248Add1During s6Step248Add1Work.toFinset s6Step248Add1_bounded s6Step248Add1_apart rfl

private theorem s6Step248Add1_distinct : (868::818::805::(s6Step248Add1A++s6Step248Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248Add1_owned : (868::818::805::(s6Step248Add1A++s6Step248Add1B)).toFinset⊆s6Step248Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step248Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248Add1_checked : compileHmrHybridCinLog s6Step248Add1Arena 818 868 805 s6Step248Add1A s6Step248Add1B s6Step248Add1Work=some s6Step248Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step248Add1Arena s6Step248Add1During 818 868 805 s6Step248Add1A s6Step248Add1B s6Step248Add1Work
    (by decide +kernel) (by decide +kernel) s6Step248Add1_distinct
    (fun q hq => s6Step248Add1_owned (List.mem_toFinset.mpr hq)) s6Step248Add1_borrowed

private theorem s6Step248F4_apart : Disjoint (s6Step248Add0A++s6Step248Add0B).toFinset (s6Step248Add1A++s6Step248Add1B).toFinset := by
  have nd : ((s6Step248Add0A++s6Step248Add0B)++(s6Step248Add1A++s6Step248Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step248F4_carry : s6Step248F4FlagArena.checkBorrow 1 [805]=some s6Step248Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step248F4FlagArena,s6Step248HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step248F4FlagArena,s6Step248HeadFvAfter,s6Step248Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248F4_distinct : (822::818::868::805::((s6Step248Add0A++s6Step248Add1A)++(s6Step248Add0B++s6Step248Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248F4_flag : s6Step248HeadFvAfter.checkBorrow 1 [868]=some s6Step248F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step248HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step248F4_owned : (822::818::((s6Step248Add0A++s6Step248Add1A)++(s6Step248Add0B++s6Step248Add1B))).toFinset⊆s6Step248HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step248HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248F4_checked : compileHmrHybridF4Log s6Step248HeadFvAfter 822 818 s6Step248Add0A s6Step248Add0B s6Step248Add1A s6Step248Add1B [868] [805] s6Step248Add0Work s6Step248Add1Work=some s6Step248F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step248HeadFvAfter s6Step248F4FlagArena s6Step248Add0Arena s6Step248Add0During s6Step248Add1During 822 818
    s6Step248Add0A s6Step248Add0B s6Step248Add1A s6Step248Add1B [868] [805] s6Step248Add0Work s6Step248Add1Work
    (fun q hq => s6Step248F4_owned (List.mem_toFinset.mpr hq)) s6Step248F4_flag s6Step248F4_carry
    s6Step248F4_distinct s6Step248F4_apart s6Step248Add0_checked s6Step248Add1_checked

private theorem s6Step248Front_branch : s6Step248FrontSigmaArena.checkBorrow 1 [818]=some s6Step248HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step248FrontSigmaArena,s6Step248EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step248FrontSigmaArena,s6Step248EntryGvAfter,s6Step248HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248Front_entry : HmrFrontEntryValid s6Step248EntryFBefore s6Step248FrontBank 147 139 ⟨147,145,140,139⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step248FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step248EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step248EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step248FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step248Front_sigma : s6Step248EntryGvAfter.checkBorrow 1 [822]=some s6Step248FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step248EntryGvAfter,arenaWires]
  · rfl

private def s6Step248HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248HeadFBefore : Arena := s6Step248HeadGAfter

private def s6Step248HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step248HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩

private def s6Step248HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864],777⟩

private def s6Step248HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩

private theorem s6Step248HeadBank_incomingDistinct : ([s6Step248HeadGRow,s6Step248HeadFRow,s6Step248HeadGvRow,s6Step248HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248HeadF_Incoming : rowsOwned s6Step248HeadFBefore [s6Step248HeadFRow,s6Step248HeadGvRow,s6Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248HeadGRow,s6Step248HeadFRow,s6Step248HeadGvRow,s6Step248HeadFvRow] 1 s6Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248HeadBank_outgoingOwned : rowsOwned s6Step248HeadFvAfter [s6Step248HeadGOut,s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step248HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248HeadF_Outgoing : rowsOwned s6Step248HeadFvAfter [s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut] :=
  hmrRows_owned_drop s6Step248HeadFvAfter [s6Step248HeadGOut,s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut] 1 s6Step248HeadBank_outgoingOwned

private theorem s6Step248HeadF_distinct : (s6Step248HeadFRow.sign::s6Step248HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248HeadF_owned : (s6Step248HeadFRow.sign::s6Step248HeadFRow.payload).toFinset⊆s6Step248HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248HeadF_reserved : s6Step248HeadFBefore.reserve s6Step248HeadFFresh.toFinset=some s6Step248HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248HeadFFresh,arenaWires]
  · norm_num [s6Step248HeadFBefore,s6Step248HeadGAfter,s6Step248HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step248HeadFAfter,s6Step248HeadFBefore,s6Step248HeadGAfter,s6Step248HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248HeadF_checked : planRowResizeLog s6Step248HeadFBefore s6Step248HeadFRow 148 s6Step248HeadFFresh=
    some (s6Step248HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 830],795⟩,growRow 795 s6Step248HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step248HeadFBefore s6Step248HeadFAfter s6Step248HeadFRow 148 s6Step248HeadFFresh
    s6Step248HeadF_distinct s6Step248HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248HeadF_reserved
  have rowEq : WindowRow.mk (s6Step248HeadFRow.payload++s6Step248HeadFFresh) s6Step248HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 830],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step248HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step248HeadFvBefore : Arena := s6Step248HeadGvAfter

private theorem s6Step248HeadFv_Incoming : rowsOwned s6Step248HeadFvBefore [s6Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248HeadGRow,s6Step248HeadFRow,s6Step248HeadGvRow,s6Step248HeadFvRow] 3 s6Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248HeadFv_Outgoing : rowsOwned s6Step248HeadFvAfter [s6Step248HeadFvOut] :=
  hmrRows_owned_drop s6Step248HeadFvAfter [s6Step248HeadGOut,s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut] 3 s6Step248HeadBank_outgoingOwned

private theorem s6Step248HeadFv_distinct : (s6Step248HeadFvRow.sign::s6Step248HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248HeadFv_owned : (s6Step248HeadFvRow.sign::s6Step248HeadFvRow.payload).toFinset⊆s6Step248HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248HeadFv_reserved : s6Step248HeadFvBefore.reserve s6Step248HeadFvFresh.toFinset=some s6Step248HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248HeadFvFresh,arenaWires]
  · norm_num [s6Step248HeadFvBefore,s6Step248HeadGvAfter,s6Step248HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step248HeadFvAfter,s6Step248HeadFvBefore,s6Step248HeadGvAfter,s6Step248HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248HeadFv_checked : planRowResizeLog s6Step248HeadFvBefore s6Step248HeadFvRow 140 s6Step248HeadFvFresh=
    some (s6Step248HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩,growRow 776 s6Step248HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step248HeadFvBefore s6Step248HeadFvAfter s6Step248HeadFvRow 140 s6Step248HeadFvFresh
    s6Step248HeadFv_distinct s6Step248HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step248HeadFvRow.payload++s6Step248HeadFvFresh) s6Step248HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step248HeadG_Incoming : rowsOwned s6Step248HeadGBefore [s6Step248HeadGRow,s6Step248HeadFRow,s6Step248HeadGvRow,s6Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248HeadGRow,s6Step248HeadFRow,s6Step248HeadGvRow,s6Step248HeadFvRow] 0 s6Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248HeadG_Outgoing : rowsOwned s6Step248HeadFvAfter [s6Step248HeadGOut,s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut] :=
  hmrRows_owned_drop s6Step248HeadFvAfter [s6Step248HeadGOut,s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut] 0 s6Step248HeadBank_outgoingOwned

private theorem s6Step248HeadG_distinct : (s6Step248HeadGRow.sign::s6Step248HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248HeadG_owned : (s6Step248HeadGRow.sign::s6Step248HeadGRow.payload).toFinset⊆s6Step248HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248HeadG_reserved : s6Step248HeadGBefore.reserve s6Step248HeadGFresh.toFinset=some s6Step248HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248HeadGFresh,arenaWires]
  · norm_num [s6Step248HeadGBefore,s6Step248HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step248HeadGAfter,s6Step248HeadGBefore,s6Step248HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248HeadG_checked : planRowResizeLog s6Step248HeadGBefore s6Step248HeadGRow 148 s6Step248HeadGFresh=
    some (s6Step248HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864, 839],777⟩,growRow 777 s6Step248HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step248HeadGBefore s6Step248HeadGAfter s6Step248HeadGRow 148 s6Step248HeadGFresh
    s6Step248HeadG_distinct s6Step248HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248HeadG_reserved
  have rowEq : WindowRow.mk (s6Step248HeadGRow.payload++s6Step248HeadGFresh) s6Step248HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 864, 839],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step248HeadGvBefore : Arena := s6Step248HeadFAfter

private theorem s6Step248HeadGv_Incoming : rowsOwned s6Step248HeadGvBefore [s6Step248HeadGvRow,s6Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step248HeadGRow,s6Step248HeadFRow,s6Step248HeadGvRow,s6Step248HeadFvRow] 2 s6Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step248HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step248HeadGv_Outgoing : rowsOwned s6Step248HeadFvAfter [s6Step248HeadGvOut,s6Step248HeadFvOut] :=
  hmrRows_owned_drop s6Step248HeadFvAfter [s6Step248HeadGOut,s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut] 2 s6Step248HeadBank_outgoingOwned

private theorem s6Step248HeadGv_distinct : (s6Step248HeadGvRow.sign::s6Step248HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step248HeadGv_owned : (s6Step248HeadGvRow.sign::s6Step248HeadGvRow.payload).toFinset⊆s6Step248HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step248HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step248HeadGv_reserved : s6Step248HeadGvBefore.reserve s6Step248HeadGvFresh.toFinset=some s6Step248HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step248HeadGvFresh,arenaWires]
  · norm_num [s6Step248HeadGvBefore,s6Step248HeadFAfter,s6Step248HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step248HeadGvAfter,s6Step248HeadGvBefore,s6Step248HeadFAfter,s6Step248HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step248HeadGv_checked : planRowResizeLog s6Step248HeadGvBefore s6Step248HeadGvRow 140 s6Step248HeadGvFresh=
    some (s6Step248HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 786],775⟩,growRow 775 s6Step248HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step248HeadGvBefore s6Step248HeadGvAfter s6Step248HeadGvRow 140 s6Step248HeadGvFresh
    s6Step248HeadGv_distinct s6Step248HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step248HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step248HeadGvRow.payload++s6Step248HeadGvFresh) s6Step248HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step248HeadBank_rows : planWindowRowsLog s6Step248HeadGBefore [(s6Step248HeadGRow,148),(s6Step248HeadFRow,148),(s6Step248HeadGvRow,140),(s6Step248HeadFvRow,140)] [s6Step248HeadGFresh,s6Step248HeadFFresh,s6Step248HeadGvFresh,s6Step248HeadFvFresh]=
    some (s6Step248HeadFvAfter,[s6Step248HeadGOut,s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut],(growRow 777 s6Step248HeadGFresh ++ (growRow 795 s6Step248HeadFFresh ++ (growRow 775 s6Step248HeadGvFresh ++ (growRow 776 s6Step248HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step248HeadFvAfter [] []=some (s6Step248HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step248HeadFvBefore s6Step248HeadFvAfter s6Step248HeadFvAfter
    s6Step248HeadFvRow s6Step248HeadFvOut 140 s6Step248HeadFvFresh [] [] []
    (growRow 776 s6Step248HeadFvFresh) ([]) s6Step248HeadFv_Incoming s6Step248HeadFv_checked h4 s6Step248HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step248HeadGvBefore s6Step248HeadGvAfter s6Step248HeadFvAfter
    s6Step248HeadGvRow s6Step248HeadGvOut 140 s6Step248HeadGvFresh [(s6Step248HeadFvRow,140)] [s6Step248HeadFvFresh] [s6Step248HeadFvOut]
    (growRow 775 s6Step248HeadGvFresh) ((growRow 776 s6Step248HeadFvFresh ++ [])) s6Step248HeadGv_Incoming s6Step248HeadGv_checked h3 s6Step248HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step248HeadFBefore s6Step248HeadFAfter s6Step248HeadFvAfter
    s6Step248HeadFRow s6Step248HeadFOut 148 s6Step248HeadFFresh [(s6Step248HeadGvRow,140),(s6Step248HeadFvRow,140)] [s6Step248HeadGvFresh,s6Step248HeadFvFresh] [s6Step248HeadGvOut,s6Step248HeadFvOut]
    (growRow 795 s6Step248HeadFFresh) ((growRow 775 s6Step248HeadGvFresh ++ (growRow 776 s6Step248HeadFvFresh ++ []))) s6Step248HeadF_Incoming s6Step248HeadF_checked h2 s6Step248HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step248HeadGBefore s6Step248HeadGAfter s6Step248HeadFvAfter
    s6Step248HeadGRow s6Step248HeadGOut 148 s6Step248HeadGFresh [(s6Step248HeadFRow,148),(s6Step248HeadGvRow,140),(s6Step248HeadFvRow,140)] [s6Step248HeadFFresh,s6Step248HeadGvFresh,s6Step248HeadFvFresh] [s6Step248HeadFOut,s6Step248HeadGvOut,s6Step248HeadFvOut]
    (growRow 777 s6Step248HeadGFresh) ((growRow 795 s6Step248HeadFFresh ++ (growRow 775 s6Step248HeadGvFresh ++ (growRow 776 s6Step248HeadFvFresh ++ [])))) s6Step248HeadG_Incoming s6Step248HeadG_checked h1 s6Step248HeadG_Outgoing
  exact h0

private theorem s6Step248HeadBank_checked : compileHmrBankResizeLog .headroom s6Step248HeadGBefore ⟨s6Step248HeadFRow,s6Step248HeadGRow,s6Step248HeadFvRow,s6Step248HeadGvRow⟩ ⟨148,148,140,140⟩ [s6Step248HeadGFresh,s6Step248HeadFFresh,s6Step248HeadGvFresh,s6Step248HeadFvFresh]=
    some (s6Step248HeadFvAfter,⟨s6Step248HeadFOut,s6Step248HeadGOut,s6Step248HeadFvOut,s6Step248HeadGvOut⟩,(growRow 777 s6Step248HeadGFresh ++ (growRow 795 s6Step248HeadFFresh ++ (growRow 775 s6Step248HeadGvFresh ++ (growRow 776 s6Step248HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step248HeadBank_rows]
  rfl

private theorem s6Step248Front_checked : compileHmrSourceFrontLog s6Step248EntryFBefore s6Step248FrontBank 147 139 ⟨147,145,140,139⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step248FrontLog=some s6Step248FrontPlan := by
  have pairEq : s6Step248FrontPair=⟨s6Step248HeadFRow,s6Step248HeadGRow,s6Step248HeadFvRow,s6Step248HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step248FrontHead=⟨s6Step248ExitFRow,s6Step248ExitGRow,s6Step248ExitFvRow,s6Step248ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step248Add0A=s6Step248FrontHead.f.wires := by decide +kernel
  have gEq : s6Step248Add0B=s6Step248FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step248Add1A=s6Step248FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step248Add1B=s6Step248FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step248EntryFBefore s6Step248FrontBank 147 139 ⟨147,145,140,139⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step248FrontLog s6Step248FrontPlan
  · exact s6Step248Front_entry
  · exact s6Step248EntryBank_checked
  · exact s6Step248Front_sigma
  · rfl
  · exact s6Step248Front_branch
  · rfl
  · simpa only [s6Step248FrontPlan,pairEq] using s6Step248HeadBank_checked
  · simpa only [s6Step248FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step248F4_checked
  · exact s6Step248Counter_checked
  · rfl
  · simpa only [s6Step248FrontPlan,headEq] using s6Step248ExitBank_checked

private theorem s6Step248Complete_explicit_checked : compileHmrEarlyStepLog s6Step248EntryFBefore s6Step248FrontBank 147 139 ⟨147,145,140,139⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step248CompleteLog=some s6Step248CompletePlan := by
  let Q := s6Step248EarlyControlPlan
  have hq := s6Step248EarlyControl_plan_checked
  have fv1 : s6Step248CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step248CompleteOut.fv.payload[2]?.getD s6Step248CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step248CompleteOut.fv.payload[3]?.getD s6Step248CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step248CompleteOut.fv.payload[4]?.getD s6Step248CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step248EntryFBefore s6Step248EarlyControlArena s6Step248FrontBank 147 139 ⟨147,145,140,139⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step248CompleteLog s6Step248FrontPlan Q
    s6Step248Front_checked s6Step248Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step248Complete_owned s6Step248Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step248EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 822 s6Step248CompleteOut.fv.second (s6Step248CompleteOut.fv.payload[2]?.getD s6Step248CompleteOut.fv.sign) (s6Step248CompleteOut.fv.payload[3]?.getD s6Step248CompleteOut.fv.sign) (s6Step248CompleteOut.fv.payload[4]?.getD s6Step248CompleteOut.fv.sign) 818 51 s6Step248EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep248Arena : Arena := s6Step248EntryFBefore
def s6PrivateStep248Bank : WindowBank := s6Step248FrontBank
def s6PrivateStep248Spec : HmrSourceWalkStepLog := ⟨147,139,⟨147,145,140,139⟩,51,.early s6Step248CompleteLog⟩
def s6PrivateStep248Plan : HmrSourceStepPlan := .early s6Step248CompletePlan
theorem s6PrivateStep248_source : s6PrivateStep248Spec=s6ObservedLogs240[8] := rfl
theorem s6PrivateStep248_checked : compileHmrSourceStepLog s6PrivateStep248Arena s6PrivateStep248Bank
    s6PrivateStep248Spec.fgWidth s6PrivateStep248Spec.vWidth s6PrivateStep248Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 248 s6PrivateStep248Spec.need none s6PrivateStep248Spec.log=some s6PrivateStep248Plan := by
  change compileHmrSourceStepLog s6Step248EntryFBefore s6Step248FrontBank 147 139 ⟨147,145,140,139⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 248 51 none (.early s6Step248CompleteLog)=some (.early s6Step248CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 248<498)]
  rw [s6Step248Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
