import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep240
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

private def s6Step242CompleteMoves : List (Wire × Wire) := [(803,148)]

private def s6Step242EarlyControlLog : HmrEarlyControlLog := ⟨[803, 864, 888, 841, 818],[822],[869],[868, 805, 810, 809, 817, 812],[909]⟩

private def s6Step242FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [841], [], []],[[818], [888], [864], [857]],[[], [], [], []]⟩,[786],[830],[822],[869],[868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 869, 868, 805]⟩

private def s6Step242CompleteLog : HmrEarlyStepLog := ⟨s6Step242FrontLog,s6Step242CompleteMoves,s6Step242EarlyControlLog⟩

private def s6Step242ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step242ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩

private def s6Step242ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step242ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step242FrontOut : WindowBank := ⟨s6Step242ExitFOut,s6Step242ExitGOut,s6Step242ExitFvOut,s6Step242ExitGvOut⟩

private def s6Step242CompleteOut : WindowBank := s6Step242FrontOut.repacked s6Step242CompleteMoves

private def s6Step242EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step242EarlyControlPositiveArena,[822],s6Step242EarlyControlEqualityArena,[869],⟨⟨786,false⟩,[⟨⟨822,false⟩,869⟩]⟩⟩

private def s6Step242EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨772,false⟩,864⟩,⟨⟨771,false⟩,888⟩,⟨⟨770,false⟩,841⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step242EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step242EarlyControlZeroArena,s6Step242EarlyControlZeroPlan,s6Step242EarlyControlClassPlan,s6Step242EarlyControlFlagArena,s6Step242EarlyControlFittedArena,s6Step242EarlyControlHistoryArena,s6Step242EarlyControlSigmaArena,s6Step242EarlyControlOutputArena,s6Step242EarlyControlLog⟩

private def s6Step242CounterWork : List Wire := [822, 869, 868, 805]

private theorem s6Step242Counter_bounded : s6Step242CounterWork.toFinset⊆arenaWires := by norm_num [s6Step242CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step242HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242CounterDuring : Arena := ⟨s6Step242HeadFvAfter.live∪s6Step242CounterWork.toFinset,Finset.union_subset s6Step242HeadFvAfter.bounded s6Step242Counter_bounded⟩

private def s6Step242EntryFFresh : List Wire := []

private def s6Step242EntryFvFresh : List Wire := []

private def s6Step242EntryGFresh : List Wire := [841]

private def s6Step242EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EntryGvAfter : Arena := s6Step242EntryGAfter

private def s6Step242EntryGvFresh : List Wire := []

private def s6Step242ExitFExtra : List Wire := [888]

private def s6Step242ExitGExtra : List Wire := [148, 841, 818]

private def s6Step242ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242ExitGvExtra : List Wire := [864]

private def s6Step242Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242Add0Work : List Wire := [868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step242Add0_bounded : s6Step242Add0Work.toFinset⊆arenaWires := by
  have h : s6Step242Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step242Add0During : Arena := ⟨s6Step242Add0Arena.live∪s6Step242Add0Work.toFinset,Finset.union_subset s6Step242Add0Arena.bounded s6Step242Add0_bounded⟩

private def s6Step242Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242Add1Work : List Wire := [868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step242Add1_bounded : s6Step242Add1Work.toFinset⊆arenaWires := by
  have h : s6Step242Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step242Add1During : Arena := ⟨s6Step242Add1Arena.live∪s6Step242Add1Work.toFinset,Finset.union_subset s6Step242Add1Arena.bounded s6Step242Add1_bounded⟩

private def s6Step242F4FlagArena : Arena := ⟨s6Step242HeadFvAfter.live∪{822},Finset.union_subset s6Step242HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step242F4Plan : HmrHybridF4Plan := ⟨s6Step242F4FlagArena,[822],s6Step242Add0Arena,[869],s6Step242Add0During,s6Step242Add0Work,s6Step242Add1During,s6Step242Add1Work⟩

private def s6Step242HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 888],795⟩

private def s6Step242HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩

private def s6Step242HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841, 818],777⟩

private def s6Step242HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 864],775⟩

private def s6Step242FrontHead : WindowBank := ⟨s6Step242HeadFOut,s6Step242HeadGOut,s6Step242HeadFvOut,s6Step242HeadGvOut⟩

private def s6Step242EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step242EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩

private def s6Step242EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841],777⟩

private def s6Step242EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step242FrontPair : WindowBank := ⟨s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut⟩

private def s6Step242FrontSigmaArena : Arena := ⟨s6Step242EntryGvAfter.live∪{786},Finset.union_subset s6Step242EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step242HeadFFresh : List Wire := [888]

private def s6Step242HeadFvFresh : List Wire := [857]

private def s6Step242HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242HeadGFresh : List Wire := [818]

private def s6Step242HeadGvFresh : List Wire := [864]

private def s6Step242FrontPlan : HmrSourceFront := ⟨s6Step242EntryGvAfter,s6Step242FrontPair,(growRow 795 s6Step242EntryFFresh ++ (growRow 777 s6Step242EntryGFresh ++ (growRow 776 s6Step242EntryFvFresh ++ (growRow 775 s6Step242EntryGvFresh ++ [])))),s6Step242FrontSigmaArena,[786],s6Step242HeadGBefore,[830],
  s6Step242HeadFvAfter,s6Step242FrontHead,(growRow 777 s6Step242HeadGFresh ++ (growRow 795 s6Step242HeadFFresh ++ (growRow 775 s6Step242HeadGvFresh ++ (growRow 776 s6Step242HeadFvFresh ++ [])))),s6Step242F4Plan,s6Step242CounterDuring,s6Step242CounterWork,s6Step242ExitGvAfter,s6Step242FrontOut,(shrinkRow 777 s6Step242ExitGExtra ++ (shrinkRow 795 s6Step242ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step242ExitGvExtra ++ []))))⟩

private def s6Step242CompletePlan : HmrEarlyStepPlan := ⟨s6Step242FrontPlan,s6Step242EarlyControlArena,s6Step242EarlyControlPlan,s6Step242CompleteMoves⟩

private theorem s6Step242Complete_apart : List.Disjoint (s6Step242CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [786, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step242CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[786, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step242Complete_owned : (s6Step242CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step242EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step242CompleteMoveArena : Arena := ⟨s6Step242ExitGvAfter.live∪{148},Finset.union_subset s6Step242ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step242Complete_repack : s6Step242ExitGvAfter.checkRepack s6Step242CompleteMoves=some s6Step242EarlyControlArena := by
  have owned : 803∈s6Step242ExitGvAfter.live := by norm_num [s6Step242ExitGvAfter,arenaWires]
  have reserve : s6Step242ExitGvAfter.reserve {148}=some s6Step242CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step242ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step242CompleteMoveArena.retireSet {803}=s6Step242EarlyControlArena := by
    unfold Arena.retireSet s6Step242EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step242CompleteMoveArena,s6Step242ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step242CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step242CompleteMoveArena.retireSet {803}).checkRepack []=some s6Step242EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step242EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s6Step242EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_branch : compileHmrBranchRetirement s6Step242EarlyControlSigmaArena 830=some s6Step242EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step242EarlyControl_branchOwned
  · ext q
    simp [s6Step242EarlyControlOutputArena,s6Step242EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step242EarlyControl_classEqualityBorrow : s6Step242EarlyControlPositiveArena.checkBorrow (([786, 822] : List Wire).length-1) s6Step242EarlyControlLog.classWork=some s6Step242EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step242EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step242EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step242EarlyControlEqualityArena,s6Step242EarlyControlPositiveArena,s6Step242EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step242EarlyControl_classEqualityOwned : ([786, 822] : List Wire).toFinset⊆s6Step242EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_classEquality : compileHmrEqualityLog s6Step242EarlyControlPositiveArena [786, 822] 0 s6Step242EarlyControlLog.classWork=some (s6Step242EarlyControlEqualityArena,s6Step242EarlyControlLog.classWork,s6Step242EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step242EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step242EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step242EarlyControl_classOwned : ([769, 818, 786] : List Wire).toFinset⊆s6Step242EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_positiveBorrow : s6Step242EarlyControlZeroArena.checkBorrow (1) s6Step242EarlyControlLog.positiveWork=some s6Step242EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step242EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step242EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step242EarlyControlPositiveArena,s6Step242EarlyControlZeroArena,s6Step242EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step242EarlyControl_class : compileHmrSourceClassLog s6Step242EarlyControlZeroArena false 769 s6Step242EarlyControlZeroPlan.top 0 786 s6Step242EarlyControlLog.positiveWork s6Step242EarlyControlLog.classWork=some s6Step242EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step242EarlyControlClassPlan s6Step242EarlyControlZeroArena false 769 s6Step242EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s6Step242EarlyControl_classOwned
  · exact s6Step242EarlyControl_positiveBorrow
  · exact s6Step242EarlyControl_classEquality

private theorem s6Step242EarlyControl_entryRecordOwned : ([830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step242EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s6Step242EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_fitBorrow : s6Step242EarlyControlFlagArena.checkBorrow ((50-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step242EarlyControlLog.recordFresh=some s6Step242EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step242EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step242EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step242EarlyControlFittedArena,s6Step242EarlyControlFlagArena,s6Step242EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step242EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step242EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_fit : compileHmrRecordGrowLog s6Step242EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 50 s6Step242EarlyControlLog.recordFresh=some s6Step242EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step242EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step242EarlyControl_fitBorrow

private theorem s6Step242EarlyControl_flagsBorrow : s6Step242EarlyControlEqualityArena.checkBorrow (6) s6Step242EarlyControlLog.flagWork=some s6Step242EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step242EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step242EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step242EarlyControlFlagArena,s6Step242EarlyControlEqualityArena,s6Step242EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step242EarlyControl_flagsOwned : ([869, 253, 252, 251] : List Wire).toFinset⊆s6Step242EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_flags : compileHmrFlagsLog s6Step242EarlyControlClassPlan.equalityArena s6Step242EarlyControlClassPlan.equality.top 253 252 251 s6Step242EarlyControlLog.flagWork=some s6Step242EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step242EarlyControl_flagsOwned⟩
  · exact s6Step242EarlyControl_flagsBorrow

private theorem s6Step242EarlyControl_historyBorrow : s6Step242EarlyControlArena.checkBorrow ((50-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step242EarlyControlLog.recordFresh=some s6Step242EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step242EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step242EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step242EarlyControlHistoryArena,s6Step242EarlyControlArena,s6Step242EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step242EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step242EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_history : compileHmrRecordGrowLog s6Step242EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 50 s6Step242EarlyControlLog.recordFresh=some s6Step242EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step242EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step242EarlyControl_historyBorrow

private theorem s6Step242EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s6Step242EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s6Step242EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_sigmaRelease : s6Step242EarlyControlHistoryArena.release {786} (fun _ => false)=some s6Step242EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step242EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step242EarlyControlSigmaArena,s6Step242EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step242EarlyControl_sigma : compileHmrSigmaDropLog s6Step242EarlyControlHistoryArena false 0 0 254 786 []=some s6Step242EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step242EarlyControl_sigmaOwned⟩
  · exact s6Step242EarlyControl_sigmaRelease

private theorem s6Step242EarlyControl_zeroBorrow : s6Step242EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step242EarlyControlLog.zeroWork=some s6Step242EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step242EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step242EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step242EarlyControlZeroArena,s6Step242EarlyControlArena,s6Step242EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step242EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step242EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step242EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EarlyControl_zero : compileHmrEqualityLog s6Step242EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step242EarlyControlLog.zeroWork=some (s6Step242EarlyControlZeroArena,s6Step242EarlyControlLog.zeroWork,s6Step242EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step242EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step242EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step242EarlyControl_logged : s6Step242EarlyControlPlan.Logged s6Step242EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 254 253 252 251 830 50 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step242EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step242EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step242EarlyControl_zero
  · exact s6Step242EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step242EarlyControl_flags
  · exact s6Step242EarlyControl_fit
  · exact s6Step242EarlyControl_history
  · exact s6Step242EarlyControl_sigma
  · exact s6Step242EarlyControl_branch

private theorem s6Step242EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step242EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 254 253 252 251 830 50 s6Step242EarlyControlLog=some s6Step242EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step242EarlyControlPlan s6Step242EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 254 253 252 251 830 50 s6Step242EarlyControl_logged

private def s6Step242EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step242EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩

private def s6Step242EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148],777⟩

private def s6Step242EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step242FrontBank : WindowBank := ⟨s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow⟩

private def s6Step242Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 888, 795]

private def s6Step242Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841, 818, 777]

private def s6Step242Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 776]

private def s6Step242Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 864, 775]

private theorem s6Step242Counter_apart : Disjoint s6Step242HeadFvAfter.live s6Step242CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step242HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242Counter_borrowed : s6Step242HeadFvAfter.checkBorrow 4 s6Step242CounterWork=some s6Step242CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step242HeadFvAfter s6Step242CounterDuring s6Step242CounterWork.toFinset s6Step242Counter_bounded s6Step242Counter_apart rfl

private theorem s6Step242Counter_owned : (786::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step242HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step242HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242Counter_checked : compileHmrCounterStepLog s6Step242HeadFvAfter true 786 [774, 773, 772, 771, 770, 769] s6Step242CounterWork=some s6Step242CounterDuring := by
  have owned : ∀q∈786::[774, 773, 772, 771, 770, 769],q∈s6Step242HeadFvAfter.live := fun q hq => s6Step242Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step242Counter_borrowed

private def s6Step242EntryFAfter : Arena := s6Step242EntryFBefore

private theorem s6Step242EntryBank_incomingDistinct : ([s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242EntryF_Incoming : rowsOwned s6Step242EntryFBefore [s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow] 0 s6Step242EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242EntryBank_outgoingOwned : rowsOwned s6Step242EntryGvAfter [s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step242EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242EntryF_Outgoing : rowsOwned s6Step242EntryGvAfter [s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut] :=
  hmrRows_owned_drop s6Step242EntryGvAfter [s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut] 0 s6Step242EntryBank_outgoingOwned

private theorem s6Step242EntryF_distinct : (s6Step242EntryFRow.sign::s6Step242EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242EntryF_owned : (s6Step242EntryFRow.sign::s6Step242EntryFRow.payload).toFinset⊆s6Step242EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EntryF_reserved : s6Step242EntryFBefore.reserve s6Step242EntryFFresh.toFinset=some s6Step242EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242EntryFFresh,arenaWires]
  · norm_num [s6Step242EntryFBefore,s6Step242EntryFFresh,arenaWires]
  · simp only [s6Step242EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step242EntryF_checked : planRowResizeLog s6Step242EntryFBefore s6Step242EntryFRow 150 s6Step242EntryFFresh=
    some (s6Step242EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩,growRow 795 s6Step242EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step242EntryFBefore s6Step242EntryFAfter s6Step242EntryFRow 150 s6Step242EntryFFresh
    s6Step242EntryF_distinct s6Step242EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242EntryF_reserved
  have rowEq : WindowRow.mk (s6Step242EntryFRow.payload++s6Step242EntryFFresh) s6Step242EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step242EntryFvAfter : Arena := s6Step242EntryGAfter

private def s6Step242EntryFvBefore : Arena := s6Step242EntryGAfter

private theorem s6Step242EntryFv_Incoming : rowsOwned s6Step242EntryFvBefore [s6Step242EntryFvRow,s6Step242EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow] 2 s6Step242EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242EntryFv_Outgoing : rowsOwned s6Step242EntryGvAfter [s6Step242EntryFvOut,s6Step242EntryGvOut] :=
  hmrRows_owned_drop s6Step242EntryGvAfter [s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut] 2 s6Step242EntryBank_outgoingOwned

private theorem s6Step242EntryFv_distinct : (s6Step242EntryFvRow.sign::s6Step242EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242EntryFv_owned : (s6Step242EntryFvRow.sign::s6Step242EntryFvRow.payload).toFinset⊆s6Step242EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EntryFv_reserved : s6Step242EntryFvBefore.reserve s6Step242EntryFvFresh.toFinset=some s6Step242EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242EntryFvFresh,arenaWires]
  · norm_num [s6Step242EntryFvBefore,s6Step242EntryGAfter,s6Step242EntryFvFresh,arenaWires]
  · simp only [s6Step242EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step242EntryFv_checked : planRowResizeLog s6Step242EntryFvBefore s6Step242EntryFvRow 135 s6Step242EntryFvFresh=
    some (s6Step242EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩,growRow 776 s6Step242EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step242EntryFvBefore s6Step242EntryFvAfter s6Step242EntryFvRow 135 s6Step242EntryFvFresh
    s6Step242EntryFv_distinct s6Step242EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step242EntryFvRow.payload++s6Step242EntryFvFresh) s6Step242EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step242EntryGBefore : Arena := s6Step242EntryFBefore

private theorem s6Step242EntryG_Incoming : rowsOwned s6Step242EntryGBefore [s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow] 1 s6Step242EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242EntryG_Outgoing : rowsOwned s6Step242EntryGvAfter [s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut] :=
  hmrRows_owned_drop s6Step242EntryGvAfter [s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut] 1 s6Step242EntryBank_outgoingOwned

private theorem s6Step242EntryG_distinct : (s6Step242EntryGRow.sign::s6Step242EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242EntryG_owned : (s6Step242EntryGRow.sign::s6Step242EntryGRow.payload).toFinset⊆s6Step242EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EntryG_reserved : s6Step242EntryGBefore.reserve s6Step242EntryGFresh.toFinset=some s6Step242EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242EntryGFresh,arenaWires]
  · norm_num [s6Step242EntryGBefore,s6Step242EntryFBefore,s6Step242EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step242EntryGAfter,s6Step242EntryGBefore,s6Step242EntryFBefore,s6Step242EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step242EntryG_checked : planRowResizeLog s6Step242EntryGBefore s6Step242EntryGRow 150 s6Step242EntryGFresh=
    some (s6Step242EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841],777⟩,growRow 777 s6Step242EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step242EntryGBefore s6Step242EntryGAfter s6Step242EntryGRow 150 s6Step242EntryGFresh
    s6Step242EntryG_distinct s6Step242EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242EntryG_reserved
  have rowEq : WindowRow.mk (s6Step242EntryGRow.payload++s6Step242EntryGFresh) s6Step242EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step242EntryGvBefore : Arena := s6Step242EntryGAfter

private theorem s6Step242EntryGv_Incoming : rowsOwned s6Step242EntryGvBefore [s6Step242EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow] 3 s6Step242EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242EntryGv_Outgoing : rowsOwned s6Step242EntryGvAfter [s6Step242EntryGvOut] :=
  hmrRows_owned_drop s6Step242EntryGvAfter [s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut] 3 s6Step242EntryBank_outgoingOwned

private theorem s6Step242EntryGv_distinct : (s6Step242EntryGvRow.sign::s6Step242EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242EntryGv_owned : (s6Step242EntryGvRow.sign::s6Step242EntryGvRow.payload).toFinset⊆s6Step242EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242EntryGv_reserved : s6Step242EntryGvBefore.reserve s6Step242EntryGvFresh.toFinset=some s6Step242EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242EntryGvFresh,arenaWires]
  · norm_num [s6Step242EntryGvBefore,s6Step242EntryGAfter,s6Step242EntryGvFresh,arenaWires]
  · simp only [s6Step242EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step242EntryGv_checked : planRowResizeLog s6Step242EntryGvBefore s6Step242EntryGvRow 135 s6Step242EntryGvFresh=
    some (s6Step242EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩,growRow 775 s6Step242EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step242EntryGvBefore s6Step242EntryGvAfter s6Step242EntryGvRow 135 s6Step242EntryGvFresh
    s6Step242EntryGv_distinct s6Step242EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step242EntryGvRow.payload++s6Step242EntryGvFresh) s6Step242EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step242EntryBank_rows : planWindowRowsLog s6Step242EntryFBefore [(s6Step242EntryFRow,150),(s6Step242EntryGRow,150),(s6Step242EntryFvRow,135),(s6Step242EntryGvRow,135)] [s6Step242EntryFFresh,s6Step242EntryGFresh,s6Step242EntryFvFresh,s6Step242EntryGvFresh]=
    some (s6Step242EntryGvAfter,[s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut],(growRow 795 s6Step242EntryFFresh ++ (growRow 777 s6Step242EntryGFresh ++ (growRow 776 s6Step242EntryFvFresh ++ (growRow 775 s6Step242EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step242EntryGvAfter [] []=some (s6Step242EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step242EntryGvBefore s6Step242EntryGvAfter s6Step242EntryGvAfter
    s6Step242EntryGvRow s6Step242EntryGvOut 135 s6Step242EntryGvFresh [] [] []
    (growRow 775 s6Step242EntryGvFresh) ([]) s6Step242EntryGv_Incoming s6Step242EntryGv_checked h4 s6Step242EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step242EntryFvBefore s6Step242EntryFvAfter s6Step242EntryGvAfter
    s6Step242EntryFvRow s6Step242EntryFvOut 135 s6Step242EntryFvFresh [(s6Step242EntryGvRow,135)] [s6Step242EntryGvFresh] [s6Step242EntryGvOut]
    (growRow 776 s6Step242EntryFvFresh) ((growRow 775 s6Step242EntryGvFresh ++ [])) s6Step242EntryFv_Incoming s6Step242EntryFv_checked h3 s6Step242EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step242EntryGBefore s6Step242EntryGAfter s6Step242EntryGvAfter
    s6Step242EntryGRow s6Step242EntryGOut 150 s6Step242EntryGFresh [(s6Step242EntryFvRow,135),(s6Step242EntryGvRow,135)] [s6Step242EntryFvFresh,s6Step242EntryGvFresh] [s6Step242EntryFvOut,s6Step242EntryGvOut]
    (growRow 777 s6Step242EntryGFresh) ((growRow 776 s6Step242EntryFvFresh ++ (growRow 775 s6Step242EntryGvFresh ++ []))) s6Step242EntryG_Incoming s6Step242EntryG_checked h2 s6Step242EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step242EntryFBefore s6Step242EntryFAfter s6Step242EntryGvAfter
    s6Step242EntryFRow s6Step242EntryFOut 150 s6Step242EntryFFresh [(s6Step242EntryGRow,150),(s6Step242EntryFvRow,135),(s6Step242EntryGvRow,135)] [s6Step242EntryGFresh,s6Step242EntryFvFresh,s6Step242EntryGvFresh] [s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut]
    (growRow 795 s6Step242EntryFFresh) ((growRow 777 s6Step242EntryGFresh ++ (growRow 776 s6Step242EntryFvFresh ++ (growRow 775 s6Step242EntryGvFresh ++ [])))) s6Step242EntryF_Incoming s6Step242EntryF_checked h1 s6Step242EntryF_Outgoing
  exact h0

private theorem s6Step242EntryBank_checked : compileHmrBankResizeLog .entry s6Step242EntryFBefore ⟨s6Step242EntryFRow,s6Step242EntryGRow,s6Step242EntryFvRow,s6Step242EntryGvRow⟩ ⟨150,150,135,135⟩ [s6Step242EntryFFresh,s6Step242EntryGFresh,s6Step242EntryFvFresh,s6Step242EntryGvFresh]=
    some (s6Step242EntryGvAfter,⟨s6Step242EntryFOut,s6Step242EntryGOut,s6Step242EntryFvOut,s6Step242EntryGvOut⟩,(growRow 795 s6Step242EntryFFresh ++ (growRow 777 s6Step242EntryGFresh ++ (growRow 776 s6Step242EntryFvFresh ++ (growRow 775 s6Step242EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step242EntryBank_rows]
  rfl

private def s6Step242ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242ExitFBefore : Arena := s6Step242ExitGAfter

private def s6Step242ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 888],795⟩

private def s6Step242ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩

private def s6Step242ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841, 818],777⟩

private def s6Step242ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 864],775⟩

private theorem s6Step242ExitBank_incomingDistinct : ([s6Step242ExitGRow,s6Step242ExitFRow,s6Step242ExitFvRow,s6Step242ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242ExitF_Incoming : rowsOwned s6Step242ExitFBefore [s6Step242ExitFRow,s6Step242ExitFvRow,s6Step242ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242ExitGRow,s6Step242ExitFRow,s6Step242ExitFvRow,s6Step242ExitGvRow] 1 s6Step242ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242ExitFBefore (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242ExitBank_outgoingOwned : rowsOwned s6Step242ExitGvAfter [s6Step242ExitGOut,s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step242ExitGvAfter (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242ExitF_Outgoing : rowsOwned s6Step242ExitGvAfter [s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut] :=
  hmrRows_owned_drop s6Step242ExitGvAfter [s6Step242ExitGOut,s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut] 1 s6Step242ExitBank_outgoingOwned

private theorem s6Step242ExitF_distinct : (s6Step242ExitFRow.sign::s6Step242ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242ExitF_owned : (s6Step242ExitFRow.sign::s6Step242ExitFRow.payload).toFinset⊆s6Step242ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242ExitFBefore (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242ExitF_retired : s6Step242ExitFBefore.retireSet s6Step242ExitFExtra.toFinset=s6Step242ExitFAfter := by
  unfold Arena.retireSet s6Step242ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step242ExitFBefore,s6Step242ExitGAfter,s6Step242ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step242ExitF_checked : planRowResizeLog s6Step242ExitFBefore s6Step242ExitFRow 150 []=
    some (s6Step242ExitFAfter,s6Step242ExitFOut,shrinkRow 795 s6Step242ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step242ExitFBefore s6Step242ExitFRow 150 s6Step242ExitF_distinct s6Step242ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step242ExitFRow.payload.take 150) s6Step242ExitFRow.sign=s6Step242ExitFOut := by decide +kernel
  have hi : s6Step242ExitFRow.payload.drop 150=s6Step242ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step242ExitF_retired] at result
  exact result

private def s6Step242ExitFvAfter : Arena := s6Step242ExitFAfter

private def s6Step242ExitFvBefore : Arena := s6Step242ExitFAfter

private theorem s6Step242ExitFv_Incoming : rowsOwned s6Step242ExitFvBefore [s6Step242ExitFvRow,s6Step242ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242ExitGRow,s6Step242ExitFRow,s6Step242ExitFvRow,s6Step242ExitGvRow] 2 s6Step242ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242ExitFvBefore (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242ExitFv_Outgoing : rowsOwned s6Step242ExitGvAfter [s6Step242ExitFvOut,s6Step242ExitGvOut] :=
  hmrRows_owned_drop s6Step242ExitGvAfter [s6Step242ExitGOut,s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut] 2 s6Step242ExitBank_outgoingOwned

private theorem s6Step242ExitFv_distinct : (s6Step242ExitFvRow.sign::s6Step242ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242ExitFv_owned : (s6Step242ExitFvRow.sign::s6Step242ExitFvRow.payload).toFinset⊆s6Step242ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242ExitFvBefore (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242ExitFv_reserved : s6Step242ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step242ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step242ExitFv_checked : planRowResizeLog s6Step242ExitFvBefore s6Step242ExitFvRow 136 []=
    some (s6Step242ExitFvAfter,s6Step242ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step242ExitFvBefore s6Step242ExitFvAfter s6Step242ExitFvRow 136 []
    s6Step242ExitFv_distinct s6Step242ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step242ExitFvRow.payload++[]) s6Step242ExitFvRow.sign=s6Step242ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step242ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step242ExitG_Incoming : rowsOwned s6Step242ExitGBefore [s6Step242ExitGRow,s6Step242ExitFRow,s6Step242ExitFvRow,s6Step242ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242ExitGRow,s6Step242ExitFRow,s6Step242ExitFvRow,s6Step242ExitGvRow] 0 s6Step242ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242ExitG_Outgoing : rowsOwned s6Step242ExitGvAfter [s6Step242ExitGOut,s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut] :=
  hmrRows_owned_drop s6Step242ExitGvAfter [s6Step242ExitGOut,s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut] 0 s6Step242ExitBank_outgoingOwned

private theorem s6Step242ExitG_distinct : (s6Step242ExitGRow.sign::s6Step242ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242ExitG_owned : (s6Step242ExitGRow.sign::s6Step242ExitGRow.payload).toFinset⊆s6Step242ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242ExitG_retired : s6Step242ExitGBefore.retireSet s6Step242ExitGExtra.toFinset=s6Step242ExitGAfter := by
  unfold Arena.retireSet s6Step242ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step242ExitGBefore,s6Step242ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step242ExitG_checked : planRowResizeLog s6Step242ExitGBefore s6Step242ExitGRow 148 []=
    some (s6Step242ExitGAfter,s6Step242ExitGOut,shrinkRow 777 s6Step242ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step242ExitGBefore s6Step242ExitGRow 148 s6Step242ExitG_distinct s6Step242ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step242ExitGRow.payload.take 148) s6Step242ExitGRow.sign=s6Step242ExitGOut := by decide +kernel
  have hi : s6Step242ExitGRow.payload.drop 148=s6Step242ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step242ExitG_retired] at result
  exact result

private def s6Step242ExitGvBefore : Arena := s6Step242ExitFAfter

private theorem s6Step242ExitGv_Incoming : rowsOwned s6Step242ExitGvBefore [s6Step242ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242ExitGRow,s6Step242ExitFRow,s6Step242ExitFvRow,s6Step242ExitGvRow] 3 s6Step242ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242ExitGvBefore (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242ExitGv_Outgoing : rowsOwned s6Step242ExitGvAfter [s6Step242ExitGvOut] :=
  hmrRows_owned_drop s6Step242ExitGvAfter [s6Step242ExitGOut,s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut] 3 s6Step242ExitBank_outgoingOwned

private theorem s6Step242ExitGv_distinct : (s6Step242ExitGvRow.sign::s6Step242ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242ExitGv_owned : (s6Step242ExitGvRow.sign::s6Step242ExitGvRow.payload).toFinset⊆s6Step242ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242ExitGvBefore (fun q => (0≤q ∧ q<148) ∨ (149≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242ExitGv_retired : s6Step242ExitGvBefore.retireSet s6Step242ExitGvExtra.toFinset=s6Step242ExitGvAfter := by
  unfold Arena.retireSet s6Step242ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step242ExitGvBefore,s6Step242ExitFAfter,s6Step242ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step242ExitGv_checked : planRowResizeLog s6Step242ExitGvBefore s6Step242ExitGvRow 135 []=
    some (s6Step242ExitGvAfter,s6Step242ExitGvOut,shrinkRow 775 s6Step242ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step242ExitGvBefore s6Step242ExitGvRow 135 s6Step242ExitGv_distinct s6Step242ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step242ExitGvRow.payload.take 135) s6Step242ExitGvRow.sign=s6Step242ExitGvOut := by decide +kernel
  have hi : s6Step242ExitGvRow.payload.drop 135=s6Step242ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step242ExitGv_retired] at result
  exact result

private theorem s6Step242ExitBank_rows : planWindowRowsLog s6Step242ExitGBefore [(s6Step242ExitGRow,148),(s6Step242ExitFRow,150),(s6Step242ExitFvRow,136),(s6Step242ExitGvRow,135)] [[],[],[],[]]=
    some (s6Step242ExitGvAfter,[s6Step242ExitGOut,s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut],(shrinkRow 777 s6Step242ExitGExtra ++ (shrinkRow 795 s6Step242ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step242ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step242ExitGvAfter [] []=some (s6Step242ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step242ExitGvBefore s6Step242ExitGvAfter s6Step242ExitGvAfter
    s6Step242ExitGvRow s6Step242ExitGvOut 135 [] [] [] []
    (shrinkRow 775 s6Step242ExitGvExtra) ([]) s6Step242ExitGv_Incoming s6Step242ExitGv_checked h4 s6Step242ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step242ExitFvBefore s6Step242ExitFvAfter s6Step242ExitGvAfter
    s6Step242ExitFvRow s6Step242ExitFvOut 136 [] [(s6Step242ExitGvRow,135)] [[]] [s6Step242ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step242ExitGvExtra ++ [])) s6Step242ExitFv_Incoming s6Step242ExitFv_checked h3 s6Step242ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step242ExitFBefore s6Step242ExitFAfter s6Step242ExitGvAfter
    s6Step242ExitFRow s6Step242ExitFOut 150 [] [(s6Step242ExitFvRow,136),(s6Step242ExitGvRow,135)] [[],[]] [s6Step242ExitFvOut,s6Step242ExitGvOut]
    (shrinkRow 795 s6Step242ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step242ExitGvExtra ++ []))) s6Step242ExitF_Incoming s6Step242ExitF_checked h2 s6Step242ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step242ExitGBefore s6Step242ExitGAfter s6Step242ExitGvAfter
    s6Step242ExitGRow s6Step242ExitGOut 148 [] [(s6Step242ExitFRow,150),(s6Step242ExitFvRow,136),(s6Step242ExitGvRow,135)] [[],[],[]] [s6Step242ExitFOut,s6Step242ExitFvOut,s6Step242ExitGvOut]
    (shrinkRow 777 s6Step242ExitGExtra) ((shrinkRow 795 s6Step242ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step242ExitGvExtra ++ [])))) s6Step242ExitG_Incoming s6Step242ExitG_checked h1 s6Step242ExitG_Outgoing
  exact h0

private theorem s6Step242ExitBank_checked : compileHmrBankResizeLog .exit s6Step242ExitGBefore ⟨s6Step242ExitFRow,s6Step242ExitGRow,s6Step242ExitFvRow,s6Step242ExitGvRow⟩ ⟨150,148,136,135⟩ [[],[],[],[]]=
    some (s6Step242ExitGvAfter,⟨s6Step242ExitFOut,s6Step242ExitGOut,s6Step242ExitFvOut,s6Step242ExitGvOut⟩,(shrinkRow 777 s6Step242ExitGExtra ++ (shrinkRow 795 s6Step242ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step242ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step242ExitBank_rows]
  rfl

private theorem s6Step242Add0_apart : Disjoint s6Step242Add0Arena.live s6Step242Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step242Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242Add0_card : s6Step242Add0Arena.live.card=893 := by
  decide +kernel

private theorem s6Step242Add0_borrowed : s6Step242Add0Arena.checkBorrow (hmrHybridCount s6Step242Add0Arena s6Step242Add0B.length) s6Step242Add0Work=some s6Step242Add0During := by
  have len : s6Step242Add0Work.length=hmrHybridCount s6Step242Add0Arena s6Step242Add0B.length := by
    rw [hmrHybridCount,s6Step242Add0_card]
    decide +kernel
  have nd : s6Step242Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step242Add0Arena s6Step242Add0During s6Step242Add0Work.toFinset s6Step242Add0_bounded s6Step242Add0_apart rfl

private theorem s6Step242Add0_distinct : (822::830::869::(s6Step242Add0A++s6Step242Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242Add0_owned : (822::830::869::(s6Step242Add0A++s6Step242Add0B)).toFinset⊆s6Step242Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step242Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242Add0_checked : compileHmrHybridCinLog s6Step242Add0Arena 830 822 869 s6Step242Add0A s6Step242Add0B s6Step242Add0Work=some s6Step242Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step242Add0Arena s6Step242Add0During 830 822 869 s6Step242Add0A s6Step242Add0B s6Step242Add0Work
    (by decide +kernel) (by decide +kernel) s6Step242Add0_distinct
    (fun q hq => s6Step242Add0_owned (List.mem_toFinset.mpr hq)) s6Step242Add0_borrowed

private theorem s6Step242Add1_apart : Disjoint s6Step242Add1Arena.live s6Step242Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step242Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242Add1_card : s6Step242Add1Arena.live.card=893 := by
  decide +kernel

private theorem s6Step242Add1_borrowed : s6Step242Add1Arena.checkBorrow (hmrHybridCount s6Step242Add1Arena s6Step242Add1B.length) s6Step242Add1Work=some s6Step242Add1During := by
  have len : s6Step242Add1Work.length=hmrHybridCount s6Step242Add1Arena s6Step242Add1B.length := by
    rw [hmrHybridCount,s6Step242Add1_card]
    decide +kernel
  have nd : s6Step242Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step242Add1Arena s6Step242Add1During s6Step242Add1Work.toFinset s6Step242Add1_bounded s6Step242Add1_apart rfl

private theorem s6Step242Add1_distinct : (822::830::869::(s6Step242Add1A++s6Step242Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242Add1_owned : (822::830::869::(s6Step242Add1A++s6Step242Add1B)).toFinset⊆s6Step242Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step242Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242Add1_checked : compileHmrHybridCinLog s6Step242Add1Arena 830 822 869 s6Step242Add1A s6Step242Add1B s6Step242Add1Work=some s6Step242Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step242Add1Arena s6Step242Add1During 830 822 869 s6Step242Add1A s6Step242Add1B s6Step242Add1Work
    (by decide +kernel) (by decide +kernel) s6Step242Add1_distinct
    (fun q hq => s6Step242Add1_owned (List.mem_toFinset.mpr hq)) s6Step242Add1_borrowed

private theorem s6Step242F4_apart : Disjoint (s6Step242Add0A++s6Step242Add0B).toFinset (s6Step242Add1A++s6Step242Add1B).toFinset := by
  have nd : ((s6Step242Add0A++s6Step242Add0B)++(s6Step242Add1A++s6Step242Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step242F4_carry : s6Step242F4FlagArena.checkBorrow 1 [869]=some s6Step242Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step242F4FlagArena,s6Step242HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step242F4FlagArena,s6Step242HeadFvAfter,s6Step242Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step242F4_distinct : (786::830::822::869::((s6Step242Add0A++s6Step242Add1A)++(s6Step242Add0B++s6Step242Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242F4_flag : s6Step242HeadFvAfter.checkBorrow 1 [822]=some s6Step242F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step242HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step242F4_owned : (786::830::((s6Step242Add0A++s6Step242Add1A)++(s6Step242Add0B++s6Step242Add1B))).toFinset⊆s6Step242HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step242HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242F4_checked : compileHmrHybridF4Log s6Step242HeadFvAfter 786 830 s6Step242Add0A s6Step242Add0B s6Step242Add1A s6Step242Add1B [822] [869] s6Step242Add0Work s6Step242Add1Work=some s6Step242F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step242HeadFvAfter s6Step242F4FlagArena s6Step242Add0Arena s6Step242Add0During s6Step242Add1During 786 830
    s6Step242Add0A s6Step242Add0B s6Step242Add1A s6Step242Add1B [822] [869] s6Step242Add0Work s6Step242Add1Work
    (fun q hq => s6Step242F4_owned (List.mem_toFinset.mpr hq)) s6Step242F4_flag s6Step242F4_carry
    s6Step242F4_distinct s6Step242F4_apart s6Step242Add0_checked s6Step242Add1_checked

private theorem s6Step242Front_branch : s6Step242FrontSigmaArena.checkBorrow 1 [830]=some s6Step242HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step242FrontSigmaArena,s6Step242EntryGvAfter,s6Step242EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step242FrontSigmaArena,s6Step242EntryGvAfter,s6Step242EntryGAfter,s6Step242HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step242Front_entry : HmrFrontEntryValid s6Step242EntryFBefore s6Step242FrontBank 150 135 ⟨150,148,136,135⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step242FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step242EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step242EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step242FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step242Front_sigma : s6Step242EntryGvAfter.checkBorrow 1 [786]=some s6Step242FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step242EntryGvAfter,s6Step242EntryGAfter,arenaWires]
  · rfl

private def s6Step242HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242HeadFBefore : Arena := s6Step242HeadGAfter

private def s6Step242HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step242HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩

private def s6Step242HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841],777⟩

private def s6Step242HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private theorem s6Step242HeadBank_incomingDistinct : ([s6Step242HeadGRow,s6Step242HeadFRow,s6Step242HeadGvRow,s6Step242HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242HeadF_Incoming : rowsOwned s6Step242HeadFBefore [s6Step242HeadFRow,s6Step242HeadGvRow,s6Step242HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242HeadGRow,s6Step242HeadFRow,s6Step242HeadGvRow,s6Step242HeadFvRow] 1 s6Step242HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242HeadBank_outgoingOwned : rowsOwned s6Step242HeadFvAfter [s6Step242HeadGOut,s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step242HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242HeadF_Outgoing : rowsOwned s6Step242HeadFvAfter [s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut] :=
  hmrRows_owned_drop s6Step242HeadFvAfter [s6Step242HeadGOut,s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut] 1 s6Step242HeadBank_outgoingOwned

private theorem s6Step242HeadF_distinct : (s6Step242HeadFRow.sign::s6Step242HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242HeadF_owned : (s6Step242HeadFRow.sign::s6Step242HeadFRow.payload).toFinset⊆s6Step242HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242HeadF_reserved : s6Step242HeadFBefore.reserve s6Step242HeadFFresh.toFinset=some s6Step242HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242HeadFFresh,arenaWires]
  · norm_num [s6Step242HeadFBefore,s6Step242HeadGAfter,s6Step242HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step242HeadFAfter,s6Step242HeadFBefore,s6Step242HeadGAfter,s6Step242HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step242HeadF_checked : planRowResizeLog s6Step242HeadFBefore s6Step242HeadFRow 151 s6Step242HeadFFresh=
    some (s6Step242HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 888],795⟩,growRow 795 s6Step242HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step242HeadFBefore s6Step242HeadFAfter s6Step242HeadFRow 151 s6Step242HeadFFresh
    s6Step242HeadF_distinct s6Step242HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242HeadF_reserved
  have rowEq : WindowRow.mk (s6Step242HeadFRow.payload++s6Step242HeadFFresh) s6Step242HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 888],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step242HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step242HeadFvBefore : Arena := s6Step242HeadGvAfter

private theorem s6Step242HeadFv_Incoming : rowsOwned s6Step242HeadFvBefore [s6Step242HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242HeadGRow,s6Step242HeadFRow,s6Step242HeadGvRow,s6Step242HeadFvRow] 3 s6Step242HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242HeadFv_Outgoing : rowsOwned s6Step242HeadFvAfter [s6Step242HeadFvOut] :=
  hmrRows_owned_drop s6Step242HeadFvAfter [s6Step242HeadGOut,s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut] 3 s6Step242HeadBank_outgoingOwned

private theorem s6Step242HeadFv_distinct : (s6Step242HeadFvRow.sign::s6Step242HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242HeadFv_owned : (s6Step242HeadFvRow.sign::s6Step242HeadFvRow.payload).toFinset⊆s6Step242HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242HeadFv_reserved : s6Step242HeadFvBefore.reserve s6Step242HeadFvFresh.toFinset=some s6Step242HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242HeadFvFresh,arenaWires]
  · norm_num [s6Step242HeadFvBefore,s6Step242HeadGvAfter,s6Step242HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step242HeadFvAfter,s6Step242HeadFvBefore,s6Step242HeadGvAfter,s6Step242HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step242HeadFv_checked : planRowResizeLog s6Step242HeadFvBefore s6Step242HeadFvRow 136 s6Step242HeadFvFresh=
    some (s6Step242HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩,growRow 776 s6Step242HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step242HeadFvBefore s6Step242HeadFvAfter s6Step242HeadFvRow 136 s6Step242HeadFvFresh
    s6Step242HeadFv_distinct s6Step242HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step242HeadFvRow.payload++s6Step242HeadFvFresh) s6Step242HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step242HeadG_Incoming : rowsOwned s6Step242HeadGBefore [s6Step242HeadGRow,s6Step242HeadFRow,s6Step242HeadGvRow,s6Step242HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242HeadGRow,s6Step242HeadFRow,s6Step242HeadGvRow,s6Step242HeadFvRow] 0 s6Step242HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242HeadG_Outgoing : rowsOwned s6Step242HeadFvAfter [s6Step242HeadGOut,s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut] :=
  hmrRows_owned_drop s6Step242HeadFvAfter [s6Step242HeadGOut,s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut] 0 s6Step242HeadBank_outgoingOwned

private theorem s6Step242HeadG_distinct : (s6Step242HeadGRow.sign::s6Step242HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242HeadG_owned : (s6Step242HeadGRow.sign::s6Step242HeadGRow.payload).toFinset⊆s6Step242HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242HeadG_reserved : s6Step242HeadGBefore.reserve s6Step242HeadGFresh.toFinset=some s6Step242HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242HeadGFresh,arenaWires]
  · norm_num [s6Step242HeadGBefore,s6Step242HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step242HeadGAfter,s6Step242HeadGBefore,s6Step242HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step242HeadG_checked : planRowResizeLog s6Step242HeadGBefore s6Step242HeadGRow 151 s6Step242HeadGFresh=
    some (s6Step242HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841, 818],777⟩,growRow 777 s6Step242HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step242HeadGBefore s6Step242HeadGAfter s6Step242HeadGRow 151 s6Step242HeadGFresh
    s6Step242HeadG_distinct s6Step242HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242HeadG_reserved
  have rowEq : WindowRow.mk (s6Step242HeadGRow.payload++s6Step242HeadGFresh) s6Step242HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 841, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step242HeadGvBefore : Arena := s6Step242HeadFAfter

private theorem s6Step242HeadGv_Incoming : rowsOwned s6Step242HeadGvBefore [s6Step242HeadGvRow,s6Step242HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step242HeadGRow,s6Step242HeadFRow,s6Step242HeadGvRow,s6Step242HeadFvRow] 2 s6Step242HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step242HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step242HeadGv_Outgoing : rowsOwned s6Step242HeadFvAfter [s6Step242HeadGvOut,s6Step242HeadFvOut] :=
  hmrRows_owned_drop s6Step242HeadFvAfter [s6Step242HeadGOut,s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut] 2 s6Step242HeadBank_outgoingOwned

private theorem s6Step242HeadGv_distinct : (s6Step242HeadGvRow.sign::s6Step242HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step242HeadGv_owned : (s6Step242HeadGvRow.sign::s6Step242HeadGvRow.payload).toFinset⊆s6Step242HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step242HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step242HeadGv_reserved : s6Step242HeadGvBefore.reserve s6Step242HeadGvFresh.toFinset=some s6Step242HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step242HeadGvFresh,arenaWires]
  · norm_num [s6Step242HeadGvBefore,s6Step242HeadFAfter,s6Step242HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step242HeadGvAfter,s6Step242HeadGvBefore,s6Step242HeadFAfter,s6Step242HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step242HeadGv_checked : planRowResizeLog s6Step242HeadGvBefore s6Step242HeadGvRow 136 s6Step242HeadGvFresh=
    some (s6Step242HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 864],775⟩,growRow 775 s6Step242HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step242HeadGvBefore s6Step242HeadGvAfter s6Step242HeadGvRow 136 s6Step242HeadGvFresh
    s6Step242HeadGv_distinct s6Step242HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step242HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step242HeadGvRow.payload++s6Step242HeadGvFresh) s6Step242HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 864],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step242HeadBank_rows : planWindowRowsLog s6Step242HeadGBefore [(s6Step242HeadGRow,151),(s6Step242HeadFRow,151),(s6Step242HeadGvRow,136),(s6Step242HeadFvRow,136)] [s6Step242HeadGFresh,s6Step242HeadFFresh,s6Step242HeadGvFresh,s6Step242HeadFvFresh]=
    some (s6Step242HeadFvAfter,[s6Step242HeadGOut,s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut],(growRow 777 s6Step242HeadGFresh ++ (growRow 795 s6Step242HeadFFresh ++ (growRow 775 s6Step242HeadGvFresh ++ (growRow 776 s6Step242HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step242HeadFvAfter [] []=some (s6Step242HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step242HeadFvBefore s6Step242HeadFvAfter s6Step242HeadFvAfter
    s6Step242HeadFvRow s6Step242HeadFvOut 136 s6Step242HeadFvFresh [] [] []
    (growRow 776 s6Step242HeadFvFresh) ([]) s6Step242HeadFv_Incoming s6Step242HeadFv_checked h4 s6Step242HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step242HeadGvBefore s6Step242HeadGvAfter s6Step242HeadFvAfter
    s6Step242HeadGvRow s6Step242HeadGvOut 136 s6Step242HeadGvFresh [(s6Step242HeadFvRow,136)] [s6Step242HeadFvFresh] [s6Step242HeadFvOut]
    (growRow 775 s6Step242HeadGvFresh) ((growRow 776 s6Step242HeadFvFresh ++ [])) s6Step242HeadGv_Incoming s6Step242HeadGv_checked h3 s6Step242HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step242HeadFBefore s6Step242HeadFAfter s6Step242HeadFvAfter
    s6Step242HeadFRow s6Step242HeadFOut 151 s6Step242HeadFFresh [(s6Step242HeadGvRow,136),(s6Step242HeadFvRow,136)] [s6Step242HeadGvFresh,s6Step242HeadFvFresh] [s6Step242HeadGvOut,s6Step242HeadFvOut]
    (growRow 795 s6Step242HeadFFresh) ((growRow 775 s6Step242HeadGvFresh ++ (growRow 776 s6Step242HeadFvFresh ++ []))) s6Step242HeadF_Incoming s6Step242HeadF_checked h2 s6Step242HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step242HeadGBefore s6Step242HeadGAfter s6Step242HeadFvAfter
    s6Step242HeadGRow s6Step242HeadGOut 151 s6Step242HeadGFresh [(s6Step242HeadFRow,151),(s6Step242HeadGvRow,136),(s6Step242HeadFvRow,136)] [s6Step242HeadFFresh,s6Step242HeadGvFresh,s6Step242HeadFvFresh] [s6Step242HeadFOut,s6Step242HeadGvOut,s6Step242HeadFvOut]
    (growRow 777 s6Step242HeadGFresh) ((growRow 795 s6Step242HeadFFresh ++ (growRow 775 s6Step242HeadGvFresh ++ (growRow 776 s6Step242HeadFvFresh ++ [])))) s6Step242HeadG_Incoming s6Step242HeadG_checked h1 s6Step242HeadG_Outgoing
  exact h0

private theorem s6Step242HeadBank_checked : compileHmrBankResizeLog .headroom s6Step242HeadGBefore ⟨s6Step242HeadFRow,s6Step242HeadGRow,s6Step242HeadFvRow,s6Step242HeadGvRow⟩ ⟨151,151,136,136⟩ [s6Step242HeadGFresh,s6Step242HeadFFresh,s6Step242HeadGvFresh,s6Step242HeadFvFresh]=
    some (s6Step242HeadFvAfter,⟨s6Step242HeadFOut,s6Step242HeadGOut,s6Step242HeadFvOut,s6Step242HeadGvOut⟩,(growRow 777 s6Step242HeadGFresh ++ (growRow 795 s6Step242HeadFFresh ++ (growRow 775 s6Step242HeadGvFresh ++ (growRow 776 s6Step242HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step242HeadBank_rows]
  rfl

private theorem s6Step242Front_checked : compileHmrSourceFrontLog s6Step242EntryFBefore s6Step242FrontBank 150 135 ⟨150,148,136,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step242FrontLog=some s6Step242FrontPlan := by
  have pairEq : s6Step242FrontPair=⟨s6Step242HeadFRow,s6Step242HeadGRow,s6Step242HeadFvRow,s6Step242HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step242FrontHead=⟨s6Step242ExitFRow,s6Step242ExitGRow,s6Step242ExitFvRow,s6Step242ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step242Add0A=s6Step242FrontHead.f.wires := by decide +kernel
  have gEq : s6Step242Add0B=s6Step242FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step242Add1A=s6Step242FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step242Add1B=s6Step242FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step242EntryFBefore s6Step242FrontBank 150 135 ⟨150,148,136,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step242FrontLog s6Step242FrontPlan
  · exact s6Step242Front_entry
  · exact s6Step242EntryBank_checked
  · exact s6Step242Front_sigma
  · rfl
  · exact s6Step242Front_branch
  · rfl
  · simpa only [s6Step242FrontPlan,pairEq] using s6Step242HeadBank_checked
  · simpa only [s6Step242FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step242F4_checked
  · exact s6Step242Counter_checked
  · rfl
  · simpa only [s6Step242FrontPlan,headEq] using s6Step242ExitBank_checked

private theorem s6Step242Complete_explicit_checked : compileHmrEarlyStepLog s6Step242EntryFBefore s6Step242FrontBank 150 135 ⟨150,148,136,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 50 s6Step242CompleteLog=some s6Step242CompletePlan := by
  let Q := s6Step242EarlyControlPlan
  have hq := s6Step242EarlyControl_plan_checked
  have fv1 : s6Step242CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step242CompleteOut.fv.payload[2]?.getD s6Step242CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step242CompleteOut.fv.payload[3]?.getD s6Step242CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step242CompleteOut.fv.payload[4]?.getD s6Step242CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step242EntryFBefore s6Step242EarlyControlArena s6Step242FrontBank 150 135 ⟨150,148,136,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 50 s6Step242CompleteLog s6Step242FrontPlan Q
    s6Step242Front_checked s6Step242Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step242Complete_owned s6Step242Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step242EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 s6Step242CompleteOut.fv.second (s6Step242CompleteOut.fv.payload[2]?.getD s6Step242CompleteOut.fv.sign) (s6Step242CompleteOut.fv.payload[3]?.getD s6Step242CompleteOut.fv.sign) (s6Step242CompleteOut.fv.payload[4]?.getD s6Step242CompleteOut.fv.sign) 830 50 s6Step242EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep242Arena : Arena := s6Step242EntryFBefore
def s6PrivateStep242Bank : WindowBank := s6Step242FrontBank
def s6PrivateStep242Spec : HmrSourceWalkStepLog := ⟨150,135,⟨150,148,136,135⟩,50,.early s6Step242CompleteLog⟩
def s6PrivateStep242Plan : HmrSourceStepPlan := .early s6Step242CompletePlan
theorem s6PrivateStep242_source : s6PrivateStep242Spec=s6ObservedLogs240[2] := rfl
theorem s6PrivateStep242_checked : compileHmrSourceStepLog s6PrivateStep242Arena s6PrivateStep242Bank
    s6PrivateStep242Spec.fgWidth s6PrivateStep242Spec.vWidth s6PrivateStep242Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 242 s6PrivateStep242Spec.need none s6PrivateStep242Spec.log=some s6PrivateStep242Plan := by
  change compileHmrSourceStepLog s6Step242EntryFBefore s6Step242FrontBank 150 135 ⟨150,148,136,135⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 242 50 none (.early s6Step242CompleteLog)=some (.early s6Step242CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 242<498)]
  rw [s6Step242Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
