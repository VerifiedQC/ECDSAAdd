import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep237
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

private def s6Step239CompleteMoves : List (Wire × Wire) := []

private def s6Step239EarlyControlLog : HmrEarlyControlLog := ⟨[786, 888, 818, 857, 864],[822],[869],[868, 805, 810, 809, 817, 812],[]⟩

private def s6Step239FrontLog : HmrFrontAllocationLog := ⟨⟨[[857], [], [888], []],[[869], [864], [786], [818]],[[], [], [], []]⟩,[841],[848],[868],[805],[810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809]⟩

private def s6Step239CompleteLog : HmrEarlyStepLog := ⟨s6Step239FrontLog,s6Step239CompleteMoves,s6Step239EarlyControlLog⟩

private def s6Step239ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step239ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step239ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩

private def s6Step239ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step239FrontOut : WindowBank := ⟨s6Step239ExitFOut,s6Step239ExitGOut,s6Step239ExitFvOut,s6Step239ExitGvOut⟩

private def s6Step239CompleteOut : WindowBank := s6Step239FrontOut.repacked s6Step239CompleteMoves

private def s6Step239EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step239EarlyControlPositiveArena,[822],s6Step239EarlyControlEqualityArena,[869],⟨⟨841,false⟩,[⟨⟨822,false⟩,869⟩]⟩⟩

private def s6Step239EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨772,false⟩,888⟩,⟨⟨771,false⟩,818⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,864⟩]⟩

private def s6Step239EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step239EarlyControlZeroArena,s6Step239EarlyControlZeroPlan,s6Step239EarlyControlClassPlan,s6Step239EarlyControlFlagArena,s6Step239EarlyControlFittedArena,s6Step239EarlyControlHistoryArena,s6Step239EarlyControlSigmaArena,s6Step239EarlyControlOutputArena,s6Step239EarlyControlLog⟩

private def s6Step239CounterWork : List Wire := [868, 805, 810, 809]

private theorem s6Step239Counter_bounded : s6Step239CounterWork.toFinset⊆arenaWires := by norm_num [s6Step239CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step239HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239CounterDuring : Arena := ⟨s6Step239HeadFvAfter.live∪s6Step239CounterWork.toFinset,Finset.union_subset s6Step239HeadFvAfter.bounded s6Step239Counter_bounded⟩

private def s6Step239EntryFFresh : List Wire := [857]

private def s6Step239EntryFvFresh : List Wire := [888]

private def s6Step239EntryGFresh : List Wire := []

private def s6Step239EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EntryGvAfter : Arena := s6Step239EntryFvAfter

private def s6Step239EntryGvFresh : List Wire := []

private def s6Step239ExitFExtra : List Wire := [857, 864]

private def s6Step239ExitFvExtra : List Wire := [888, 818]

private def s6Step239ExitGExtra : List Wire := [822, 869]

private def s6Step239ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239ExitGvExtra : List Wire := [786]

private def s6Step239Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239Add0Work : List Wire := [810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step239Add0_bounded : s6Step239Add0Work.toFinset⊆arenaWires := by
  have h : s6Step239Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step239Add0During : Arena := ⟨s6Step239Add0Arena.live∪s6Step239Add0Work.toFinset,Finset.union_subset s6Step239Add0Arena.bounded s6Step239Add0_bounded⟩

private def s6Step239Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239Add1Work : List Wire := [810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step239Add1_bounded : s6Step239Add1Work.toFinset⊆arenaWires := by
  have h : s6Step239Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step239Add1During : Arena := ⟨s6Step239Add1Arena.live∪s6Step239Add1Work.toFinset,Finset.union_subset s6Step239Add1Arena.bounded s6Step239Add1_bounded⟩

private def s6Step239F4FlagArena : Arena := ⟨s6Step239HeadFvAfter.live∪{868},Finset.union_subset s6Step239HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step239F4Plan : HmrHybridF4Plan := ⟨s6Step239F4FlagArena,[868],s6Step239Add0Arena,[805],s6Step239Add0During,s6Step239Add0Work,s6Step239Add1During,s6Step239Add1Work⟩

private def s6Step239HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857, 864],795⟩

private def s6Step239HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888, 818],776⟩

private def s6Step239HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 869],777⟩

private def s6Step239HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 786],775⟩

private def s6Step239FrontHead : WindowBank := ⟨s6Step239HeadFOut,s6Step239HeadGOut,s6Step239HeadFvOut,s6Step239HeadGvOut⟩

private def s6Step239EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857],795⟩

private def s6Step239EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888],776⟩

private def s6Step239EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822],777⟩

private def s6Step239EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step239FrontPair : WindowBank := ⟨s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut⟩

private def s6Step239FrontSigmaArena : Arena := ⟨s6Step239EntryGvAfter.live∪{841},Finset.union_subset s6Step239EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step239HeadFFresh : List Wire := [864]

private def s6Step239HeadFvFresh : List Wire := [818]

private def s6Step239HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239HeadGFresh : List Wire := [869]

private def s6Step239HeadGvFresh : List Wire := [786]

private def s6Step239FrontPlan : HmrSourceFront := ⟨s6Step239EntryGvAfter,s6Step239FrontPair,(growRow 795 s6Step239EntryFFresh ++ (growRow 777 s6Step239EntryGFresh ++ (growRow 776 s6Step239EntryFvFresh ++ (growRow 775 s6Step239EntryGvFresh ++ [])))),s6Step239FrontSigmaArena,[841],s6Step239HeadGBefore,[848],
  s6Step239HeadFvAfter,s6Step239FrontHead,(growRow 777 s6Step239HeadGFresh ++ (growRow 795 s6Step239HeadFFresh ++ (growRow 775 s6Step239HeadGvFresh ++ (growRow 776 s6Step239HeadFvFresh ++ [])))),s6Step239F4Plan,s6Step239CounterDuring,s6Step239CounterWork,s6Step239ExitGvAfter,s6Step239FrontOut,(shrinkRow 777 s6Step239ExitGExtra ++ (shrinkRow 795 s6Step239ExitFExtra ++ (shrinkRow 776 s6Step239ExitFvExtra ++ (shrinkRow 775 s6Step239ExitGvExtra ++ []))))⟩

private def s6Step239CompletePlan : HmrEarlyStepPlan := ⟨s6Step239FrontPlan,s6Step239EarlyControlArena,s6Step239EarlyControlPlan,s6Step239CompleteMoves⟩

private theorem s6Step239Complete_apart : List.Disjoint (s6Step239CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [841, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step239CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[841, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step239Complete_owned : (s6Step239CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239Complete_repack : s6Step239ExitGvAfter.checkRepack s6Step239CompleteMoves=some s6Step239EarlyControlArena := by rfl

private theorem s6Step239EarlyControl_branchOwned : ([848] : List Wire).toFinset⊆s6Step239EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_branch : compileHmrBranchRetirement s6Step239EarlyControlSigmaArena 848=some s6Step239EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step239EarlyControl_branchOwned
  · ext q
    simp [s6Step239EarlyControlOutputArena,s6Step239EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step239EarlyControl_classEqualityBorrow : s6Step239EarlyControlPositiveArena.checkBorrow (([841, 822] : List Wire).length-1) s6Step239EarlyControlLog.classWork=some s6Step239EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step239EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step239EarlyControlEqualityArena,s6Step239EarlyControlPositiveArena,s6Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step239EarlyControl_classEqualityOwned : ([841, 822] : List Wire).toFinset⊆s6Step239EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_classEquality : compileHmrEqualityLog s6Step239EarlyControlPositiveArena [841, 822] 0 s6Step239EarlyControlLog.classWork=some (s6Step239EarlyControlEqualityArena,s6Step239EarlyControlLog.classWork,s6Step239EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step239EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step239EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step239EarlyControl_classOwned : ([769, 864, 841] : List Wire).toFinset⊆s6Step239EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_positiveBorrow : s6Step239EarlyControlZeroArena.checkBorrow (1) s6Step239EarlyControlLog.positiveWork=some s6Step239EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step239EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step239EarlyControlPositiveArena,s6Step239EarlyControlZeroArena,s6Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step239EarlyControl_class : compileHmrSourceClassLog s6Step239EarlyControlZeroArena false 769 s6Step239EarlyControlZeroPlan.top 0 841 s6Step239EarlyControlLog.positiveWork s6Step239EarlyControlLog.classWork=some s6Step239EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step239EarlyControlClassPlan s6Step239EarlyControlZeroArena false 769 s6Step239EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s6Step239EarlyControl_classOwned
  · exact s6Step239EarlyControl_positiveBorrow
  · exact s6Step239EarlyControl_classEquality

private theorem s6Step239EarlyControl_entryRecordOwned : ([848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_entrySigmaOwned : ([841, 254] : List Wire).toFinset⊆s6Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_fitBorrow : s6Step239EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step239EarlyControlLog.recordFresh=some s6Step239EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step239EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step239EarlyControlFittedArena,s6Step239EarlyControlFlagArena,s6Step239EarlyControlLog,arenaWires]

private theorem s6Step239EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step239EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_fit : compileHmrRecordGrowLog s6Step239EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step239EarlyControlLog.recordFresh=some s6Step239EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step239EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step239EarlyControl_fitBorrow

private theorem s6Step239EarlyControl_flagsBorrow : s6Step239EarlyControlEqualityArena.checkBorrow (6) s6Step239EarlyControlLog.flagWork=some s6Step239EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step239EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step239EarlyControlFlagArena,s6Step239EarlyControlEqualityArena,s6Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step239EarlyControl_flagsOwned : ([869, 253, 252, 251] : List Wire).toFinset⊆s6Step239EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_flags : compileHmrFlagsLog s6Step239EarlyControlClassPlan.equalityArena s6Step239EarlyControlClassPlan.equality.top 253 252 251 s6Step239EarlyControlLog.flagWork=some s6Step239EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step239EarlyControl_flagsOwned⟩
  · exact s6Step239EarlyControl_flagsBorrow

private theorem s6Step239EarlyControl_historyBorrow : s6Step239EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step239EarlyControlLog.recordFresh=some s6Step239EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step239EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step239EarlyControlHistoryArena,s6Step239EarlyControlArena,s6Step239EarlyControlLog,arenaWires]

private theorem s6Step239EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_history : compileHmrRecordGrowLog s6Step239EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step239EarlyControlLog.recordFresh=some s6Step239EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step239EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step239EarlyControl_historyBorrow

private theorem s6Step239EarlyControl_sigmaOwned : ([254, 841] : List Wire).toFinset⊆s6Step239EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s6Step239EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_sigmaRelease : s6Step239EarlyControlHistoryArena.release {841} (fun _ => false)=some s6Step239EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step239EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step239EarlyControlSigmaArena,s6Step239EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step239EarlyControl_sigma : compileHmrSigmaDropLog s6Step239EarlyControlHistoryArena false 0 0 254 841 []=some s6Step239EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step239EarlyControl_sigmaOwned⟩
  · exact s6Step239EarlyControl_sigmaRelease

private theorem s6Step239EarlyControl_zeroBorrow : s6Step239EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step239EarlyControlLog.zeroWork=some s6Step239EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step239EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step239EarlyControlZeroArena,s6Step239EarlyControlArena,s6Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step239EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step239EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EarlyControl_zero : compileHmrEqualityLog s6Step239EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step239EarlyControlLog.zeroWork=some (s6Step239EarlyControlZeroArena,s6Step239EarlyControlLog.zeroWork,s6Step239EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step239EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step239EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step239EarlyControl_logged : s6Step239EarlyControlPlan.Logged s6Step239EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 841 254 253 252 251 848 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step239EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step239EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step239EarlyControl_zero
  · exact s6Step239EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step239EarlyControl_flags
  · exact s6Step239EarlyControl_fit
  · exact s6Step239EarlyControl_history
  · exact s6Step239EarlyControl_sigma
  · exact s6Step239EarlyControl_branch

private theorem s6Step239EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step239EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 841 254 253 252 251 848 49 s6Step239EarlyControlLog=some s6Step239EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step239EarlyControlPlan s6Step239EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 841 254 253 252 251 848 49 s6Step239EarlyControl_logged

private def s6Step239EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step239EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step239EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822],777⟩

private def s6Step239EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step239FrontBank : WindowBank := ⟨s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow⟩

private def s6Step239Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857, 864, 795]

private def s6Step239Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 869, 777]

private def s6Step239Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888, 818, 776]

private def s6Step239Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 786, 775]

private theorem s6Step239Counter_apart : Disjoint s6Step239HeadFvAfter.live s6Step239CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step239HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239Counter_borrowed : s6Step239HeadFvAfter.checkBorrow 4 s6Step239CounterWork=some s6Step239CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step239HeadFvAfter s6Step239CounterDuring s6Step239CounterWork.toFinset s6Step239Counter_bounded s6Step239Counter_apart rfl

private theorem s6Step239Counter_owned : (841::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step239HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step239HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239Counter_checked : compileHmrCounterStepLog s6Step239HeadFvAfter true 841 [774, 773, 772, 771, 770, 769] s6Step239CounterWork=some s6Step239CounterDuring := by
  have owned : ∀q∈841::[774, 773, 772, 771, 770, 769],q∈s6Step239HeadFvAfter.live := fun q hq => s6Step239Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step239Counter_borrowed

private def s6Step239EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step239EntryBank_incomingDistinct : ([s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239EntryF_Incoming : rowsOwned s6Step239EntryFBefore [s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow] 0 s6Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239EntryBank_outgoingOwned : rowsOwned s6Step239EntryGvAfter [s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step239EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239EntryF_Outgoing : rowsOwned s6Step239EntryGvAfter [s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut] :=
  hmrRows_owned_drop s6Step239EntryGvAfter [s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut] 0 s6Step239EntryBank_outgoingOwned

private theorem s6Step239EntryF_distinct : (s6Step239EntryFRow.sign::s6Step239EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239EntryF_owned : (s6Step239EntryFRow.sign::s6Step239EntryFRow.payload).toFinset⊆s6Step239EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EntryF_reserved : s6Step239EntryFBefore.reserve s6Step239EntryFFresh.toFinset=some s6Step239EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239EntryFFresh,arenaWires]
  · norm_num [s6Step239EntryFBefore,s6Step239EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step239EntryFAfter,s6Step239EntryFBefore,s6Step239EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239EntryF_checked : planRowResizeLog s6Step239EntryFBefore s6Step239EntryFRow 151 s6Step239EntryFFresh=
    some (s6Step239EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857],795⟩,growRow 795 s6Step239EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step239EntryFBefore s6Step239EntryFAfter s6Step239EntryFRow 151 s6Step239EntryFFresh
    s6Step239EntryF_distinct s6Step239EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239EntryF_reserved
  have rowEq : WindowRow.mk (s6Step239EntryFRow.payload++s6Step239EntryFFresh) s6Step239EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step239EntryFvBefore : Arena := s6Step239EntryFAfter

private theorem s6Step239EntryFv_Incoming : rowsOwned s6Step239EntryFvBefore [s6Step239EntryFvRow,s6Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow] 2 s6Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239EntryFv_Outgoing : rowsOwned s6Step239EntryGvAfter [s6Step239EntryFvOut,s6Step239EntryGvOut] :=
  hmrRows_owned_drop s6Step239EntryGvAfter [s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut] 2 s6Step239EntryBank_outgoingOwned

private theorem s6Step239EntryFv_distinct : (s6Step239EntryFvRow.sign::s6Step239EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239EntryFv_owned : (s6Step239EntryFvRow.sign::s6Step239EntryFvRow.payload).toFinset⊆s6Step239EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EntryFv_reserved : s6Step239EntryFvBefore.reserve s6Step239EntryFvFresh.toFinset=some s6Step239EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239EntryFvFresh,arenaWires]
  · norm_num [s6Step239EntryFvBefore,s6Step239EntryFAfter,s6Step239EntryFvFresh,arenaWires]
  · ext q
    simp only [s6Step239EntryFvAfter,s6Step239EntryFvBefore,s6Step239EntryFAfter,s6Step239EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239EntryFv_checked : planRowResizeLog s6Step239EntryFvBefore s6Step239EntryFvRow 135 s6Step239EntryFvFresh=
    some (s6Step239EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888],776⟩,growRow 776 s6Step239EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step239EntryFvBefore s6Step239EntryFvAfter s6Step239EntryFvRow 135 s6Step239EntryFvFresh
    s6Step239EntryFv_distinct s6Step239EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step239EntryFvRow.payload++s6Step239EntryFvFresh) s6Step239EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step239EntryGAfter : Arena := s6Step239EntryFAfter

private def s6Step239EntryGBefore : Arena := s6Step239EntryFAfter

private theorem s6Step239EntryG_Incoming : rowsOwned s6Step239EntryGBefore [s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow] 1 s6Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239EntryG_Outgoing : rowsOwned s6Step239EntryGvAfter [s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut] :=
  hmrRows_owned_drop s6Step239EntryGvAfter [s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut] 1 s6Step239EntryBank_outgoingOwned

private theorem s6Step239EntryG_distinct : (s6Step239EntryGRow.sign::s6Step239EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239EntryG_owned : (s6Step239EntryGRow.sign::s6Step239EntryGRow.payload).toFinset⊆s6Step239EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EntryG_reserved : s6Step239EntryGBefore.reserve s6Step239EntryGFresh.toFinset=some s6Step239EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239EntryGFresh,arenaWires]
  · norm_num [s6Step239EntryGBefore,s6Step239EntryFAfter,s6Step239EntryGFresh,arenaWires]
  · simp only [s6Step239EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step239EntryG_checked : planRowResizeLog s6Step239EntryGBefore s6Step239EntryGRow 151 s6Step239EntryGFresh=
    some (s6Step239EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822],777⟩,growRow 777 s6Step239EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step239EntryGBefore s6Step239EntryGAfter s6Step239EntryGRow 151 s6Step239EntryGFresh
    s6Step239EntryG_distinct s6Step239EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239EntryG_reserved
  have rowEq : WindowRow.mk (s6Step239EntryGRow.payload++s6Step239EntryGFresh) s6Step239EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step239EntryGvBefore : Arena := s6Step239EntryFvAfter

private theorem s6Step239EntryGv_Incoming : rowsOwned s6Step239EntryGvBefore [s6Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow] 3 s6Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239EntryGv_Outgoing : rowsOwned s6Step239EntryGvAfter [s6Step239EntryGvOut] :=
  hmrRows_owned_drop s6Step239EntryGvAfter [s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut] 3 s6Step239EntryBank_outgoingOwned

private theorem s6Step239EntryGv_distinct : (s6Step239EntryGvRow.sign::s6Step239EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239EntryGv_owned : (s6Step239EntryGvRow.sign::s6Step239EntryGvRow.payload).toFinset⊆s6Step239EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239EntryGv_reserved : s6Step239EntryGvBefore.reserve s6Step239EntryGvFresh.toFinset=some s6Step239EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239EntryGvFresh,arenaWires]
  · norm_num [s6Step239EntryGvBefore,s6Step239EntryFvAfter,s6Step239EntryGvFresh,arenaWires]
  · simp only [s6Step239EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step239EntryGv_checked : planRowResizeLog s6Step239EntryGvBefore s6Step239EntryGvRow 135 s6Step239EntryGvFresh=
    some (s6Step239EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩,growRow 775 s6Step239EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step239EntryGvBefore s6Step239EntryGvAfter s6Step239EntryGvRow 135 s6Step239EntryGvFresh
    s6Step239EntryGv_distinct s6Step239EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step239EntryGvRow.payload++s6Step239EntryGvFresh) s6Step239EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step239EntryBank_rows : planWindowRowsLog s6Step239EntryFBefore [(s6Step239EntryFRow,151),(s6Step239EntryGRow,151),(s6Step239EntryFvRow,135),(s6Step239EntryGvRow,135)] [s6Step239EntryFFresh,s6Step239EntryGFresh,s6Step239EntryFvFresh,s6Step239EntryGvFresh]=
    some (s6Step239EntryGvAfter,[s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut],(growRow 795 s6Step239EntryFFresh ++ (growRow 777 s6Step239EntryGFresh ++ (growRow 776 s6Step239EntryFvFresh ++ (growRow 775 s6Step239EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step239EntryGvAfter [] []=some (s6Step239EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step239EntryGvBefore s6Step239EntryGvAfter s6Step239EntryGvAfter
    s6Step239EntryGvRow s6Step239EntryGvOut 135 s6Step239EntryGvFresh [] [] []
    (growRow 775 s6Step239EntryGvFresh) ([]) s6Step239EntryGv_Incoming s6Step239EntryGv_checked h4 s6Step239EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step239EntryFvBefore s6Step239EntryFvAfter s6Step239EntryGvAfter
    s6Step239EntryFvRow s6Step239EntryFvOut 135 s6Step239EntryFvFresh [(s6Step239EntryGvRow,135)] [s6Step239EntryGvFresh] [s6Step239EntryGvOut]
    (growRow 776 s6Step239EntryFvFresh) ((growRow 775 s6Step239EntryGvFresh ++ [])) s6Step239EntryFv_Incoming s6Step239EntryFv_checked h3 s6Step239EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step239EntryGBefore s6Step239EntryGAfter s6Step239EntryGvAfter
    s6Step239EntryGRow s6Step239EntryGOut 151 s6Step239EntryGFresh [(s6Step239EntryFvRow,135),(s6Step239EntryGvRow,135)] [s6Step239EntryFvFresh,s6Step239EntryGvFresh] [s6Step239EntryFvOut,s6Step239EntryGvOut]
    (growRow 777 s6Step239EntryGFresh) ((growRow 776 s6Step239EntryFvFresh ++ (growRow 775 s6Step239EntryGvFresh ++ []))) s6Step239EntryG_Incoming s6Step239EntryG_checked h2 s6Step239EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step239EntryFBefore s6Step239EntryFAfter s6Step239EntryGvAfter
    s6Step239EntryFRow s6Step239EntryFOut 151 s6Step239EntryFFresh [(s6Step239EntryGRow,151),(s6Step239EntryFvRow,135),(s6Step239EntryGvRow,135)] [s6Step239EntryGFresh,s6Step239EntryFvFresh,s6Step239EntryGvFresh] [s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut]
    (growRow 795 s6Step239EntryFFresh) ((growRow 777 s6Step239EntryGFresh ++ (growRow 776 s6Step239EntryFvFresh ++ (growRow 775 s6Step239EntryGvFresh ++ [])))) s6Step239EntryF_Incoming s6Step239EntryF_checked h1 s6Step239EntryF_Outgoing
  exact h0

private theorem s6Step239EntryBank_checked : compileHmrBankResizeLog .entry s6Step239EntryFBefore ⟨s6Step239EntryFRow,s6Step239EntryGRow,s6Step239EntryFvRow,s6Step239EntryGvRow⟩ ⟨151,151,135,135⟩ [s6Step239EntryFFresh,s6Step239EntryGFresh,s6Step239EntryFvFresh,s6Step239EntryGvFresh]=
    some (s6Step239EntryGvAfter,⟨s6Step239EntryFOut,s6Step239EntryGOut,s6Step239EntryFvOut,s6Step239EntryGvOut⟩,(growRow 795 s6Step239EntryFFresh ++ (growRow 777 s6Step239EntryGFresh ++ (growRow 776 s6Step239EntryFvFresh ++ (growRow 775 s6Step239EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step239EntryBank_rows]
  rfl

private def s6Step239ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239ExitFBefore : Arena := s6Step239ExitGAfter

private def s6Step239ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857, 864],795⟩

private def s6Step239ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888, 818],776⟩

private def s6Step239ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 869],777⟩

private def s6Step239ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 786],775⟩

private theorem s6Step239ExitBank_incomingDistinct : ([s6Step239ExitGRow,s6Step239ExitFRow,s6Step239ExitFvRow,s6Step239ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239ExitF_Incoming : rowsOwned s6Step239ExitFBefore [s6Step239ExitFRow,s6Step239ExitFvRow,s6Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239ExitGRow,s6Step239ExitFRow,s6Step239ExitFvRow,s6Step239ExitGvRow] 1 s6Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239ExitBank_outgoingOwned : rowsOwned s6Step239ExitGvAfter [s6Step239ExitGOut,s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step239ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239ExitF_Outgoing : rowsOwned s6Step239ExitGvAfter [s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut] :=
  hmrRows_owned_drop s6Step239ExitGvAfter [s6Step239ExitGOut,s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut] 1 s6Step239ExitBank_outgoingOwned

private theorem s6Step239ExitF_distinct : (s6Step239ExitFRow.sign::s6Step239ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239ExitF_owned : (s6Step239ExitFRow.sign::s6Step239ExitFRow.payload).toFinset⊆s6Step239ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239ExitF_retired : s6Step239ExitFBefore.retireSet s6Step239ExitFExtra.toFinset=s6Step239ExitFAfter := by
  unfold Arena.retireSet s6Step239ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step239ExitFBefore,s6Step239ExitGAfter,s6Step239ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step239ExitF_checked : planRowResizeLog s6Step239ExitFBefore s6Step239ExitFRow 150 []=
    some (s6Step239ExitFAfter,s6Step239ExitFOut,shrinkRow 795 s6Step239ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step239ExitFBefore s6Step239ExitFRow 150 s6Step239ExitF_distinct s6Step239ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step239ExitFRow.payload.take 150) s6Step239ExitFRow.sign=s6Step239ExitFOut := by decide +kernel
  have hi : s6Step239ExitFRow.payload.drop 150=s6Step239ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step239ExitF_retired] at result
  exact result

private def s6Step239ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239ExitFvBefore : Arena := s6Step239ExitFAfter

private theorem s6Step239ExitFv_Incoming : rowsOwned s6Step239ExitFvBefore [s6Step239ExitFvRow,s6Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239ExitGRow,s6Step239ExitFRow,s6Step239ExitFvRow,s6Step239ExitGvRow] 2 s6Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239ExitFv_Outgoing : rowsOwned s6Step239ExitGvAfter [s6Step239ExitFvOut,s6Step239ExitGvOut] :=
  hmrRows_owned_drop s6Step239ExitGvAfter [s6Step239ExitGOut,s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut] 2 s6Step239ExitBank_outgoingOwned

private theorem s6Step239ExitFv_distinct : (s6Step239ExitFvRow.sign::s6Step239ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239ExitFv_owned : (s6Step239ExitFvRow.sign::s6Step239ExitFvRow.payload).toFinset⊆s6Step239ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239ExitFv_retired : s6Step239ExitFvBefore.retireSet s6Step239ExitFvExtra.toFinset=s6Step239ExitFvAfter := by
  unfold Arena.retireSet s6Step239ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step239ExitFvBefore,s6Step239ExitFAfter,s6Step239ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step239ExitFv_checked : planRowResizeLog s6Step239ExitFvBefore s6Step239ExitFvRow 134 []=
    some (s6Step239ExitFvAfter,s6Step239ExitFvOut,shrinkRow 776 s6Step239ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step239ExitFvBefore s6Step239ExitFvRow 134 s6Step239ExitFv_distinct s6Step239ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step239ExitFvRow.payload.take 134) s6Step239ExitFvRow.sign=s6Step239ExitFvOut := by decide +kernel
  have hi : s6Step239ExitFvRow.payload.drop 134=s6Step239ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step239ExitFv_retired] at result
  exact result

private def s6Step239ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step239ExitG_Incoming : rowsOwned s6Step239ExitGBefore [s6Step239ExitGRow,s6Step239ExitFRow,s6Step239ExitFvRow,s6Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239ExitGRow,s6Step239ExitFRow,s6Step239ExitFvRow,s6Step239ExitGvRow] 0 s6Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239ExitG_Outgoing : rowsOwned s6Step239ExitGvAfter [s6Step239ExitGOut,s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut] :=
  hmrRows_owned_drop s6Step239ExitGvAfter [s6Step239ExitGOut,s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut] 0 s6Step239ExitBank_outgoingOwned

private theorem s6Step239ExitG_distinct : (s6Step239ExitGRow.sign::s6Step239ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239ExitG_owned : (s6Step239ExitGRow.sign::s6Step239ExitGRow.payload).toFinset⊆s6Step239ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239ExitG_retired : s6Step239ExitGBefore.retireSet s6Step239ExitGExtra.toFinset=s6Step239ExitGAfter := by
  unfold Arena.retireSet s6Step239ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step239ExitGBefore,s6Step239ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step239ExitG_checked : planRowResizeLog s6Step239ExitGBefore s6Step239ExitGRow 150 []=
    some (s6Step239ExitGAfter,s6Step239ExitGOut,shrinkRow 777 s6Step239ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step239ExitGBefore s6Step239ExitGRow 150 s6Step239ExitG_distinct s6Step239ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step239ExitGRow.payload.take 150) s6Step239ExitGRow.sign=s6Step239ExitGOut := by decide +kernel
  have hi : s6Step239ExitGRow.payload.drop 150=s6Step239ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step239ExitG_retired] at result
  exact result

private def s6Step239ExitGvBefore : Arena := s6Step239ExitFvAfter

private theorem s6Step239ExitGv_Incoming : rowsOwned s6Step239ExitGvBefore [s6Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239ExitGRow,s6Step239ExitFRow,s6Step239ExitFvRow,s6Step239ExitGvRow] 3 s6Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239ExitGv_Outgoing : rowsOwned s6Step239ExitGvAfter [s6Step239ExitGvOut] :=
  hmrRows_owned_drop s6Step239ExitGvAfter [s6Step239ExitGOut,s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut] 3 s6Step239ExitBank_outgoingOwned

private theorem s6Step239ExitGv_distinct : (s6Step239ExitGvRow.sign::s6Step239ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239ExitGv_owned : (s6Step239ExitGvRow.sign::s6Step239ExitGvRow.payload).toFinset⊆s6Step239ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239ExitGv_retired : s6Step239ExitGvBefore.retireSet s6Step239ExitGvExtra.toFinset=s6Step239ExitGvAfter := by
  unfold Arena.retireSet s6Step239ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step239ExitGvBefore,s6Step239ExitFvAfter,s6Step239ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step239ExitGv_checked : planRowResizeLog s6Step239ExitGvBefore s6Step239ExitGvRow 135 []=
    some (s6Step239ExitGvAfter,s6Step239ExitGvOut,shrinkRow 775 s6Step239ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step239ExitGvBefore s6Step239ExitGvRow 135 s6Step239ExitGv_distinct s6Step239ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step239ExitGvRow.payload.take 135) s6Step239ExitGvRow.sign=s6Step239ExitGvOut := by decide +kernel
  have hi : s6Step239ExitGvRow.payload.drop 135=s6Step239ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step239ExitGv_retired] at result
  exact result

private theorem s6Step239ExitBank_rows : planWindowRowsLog s6Step239ExitGBefore [(s6Step239ExitGRow,150),(s6Step239ExitFRow,150),(s6Step239ExitFvRow,134),(s6Step239ExitGvRow,135)] [[],[],[],[]]=
    some (s6Step239ExitGvAfter,[s6Step239ExitGOut,s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut],(shrinkRow 777 s6Step239ExitGExtra ++ (shrinkRow 795 s6Step239ExitFExtra ++ (shrinkRow 776 s6Step239ExitFvExtra ++ (shrinkRow 775 s6Step239ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step239ExitGvAfter [] []=some (s6Step239ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step239ExitGvBefore s6Step239ExitGvAfter s6Step239ExitGvAfter
    s6Step239ExitGvRow s6Step239ExitGvOut 135 [] [] [] []
    (shrinkRow 775 s6Step239ExitGvExtra) ([]) s6Step239ExitGv_Incoming s6Step239ExitGv_checked h4 s6Step239ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step239ExitFvBefore s6Step239ExitFvAfter s6Step239ExitGvAfter
    s6Step239ExitFvRow s6Step239ExitFvOut 134 [] [(s6Step239ExitGvRow,135)] [[]] [s6Step239ExitGvOut]
    (shrinkRow 776 s6Step239ExitFvExtra) ((shrinkRow 775 s6Step239ExitGvExtra ++ [])) s6Step239ExitFv_Incoming s6Step239ExitFv_checked h3 s6Step239ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step239ExitFBefore s6Step239ExitFAfter s6Step239ExitGvAfter
    s6Step239ExitFRow s6Step239ExitFOut 150 [] [(s6Step239ExitFvRow,134),(s6Step239ExitGvRow,135)] [[],[]] [s6Step239ExitFvOut,s6Step239ExitGvOut]
    (shrinkRow 795 s6Step239ExitFExtra) ((shrinkRow 776 s6Step239ExitFvExtra ++ (shrinkRow 775 s6Step239ExitGvExtra ++ []))) s6Step239ExitF_Incoming s6Step239ExitF_checked h2 s6Step239ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step239ExitGBefore s6Step239ExitGAfter s6Step239ExitGvAfter
    s6Step239ExitGRow s6Step239ExitGOut 150 [] [(s6Step239ExitFRow,150),(s6Step239ExitFvRow,134),(s6Step239ExitGvRow,135)] [[],[],[]] [s6Step239ExitFOut,s6Step239ExitFvOut,s6Step239ExitGvOut]
    (shrinkRow 777 s6Step239ExitGExtra) ((shrinkRow 795 s6Step239ExitFExtra ++ (shrinkRow 776 s6Step239ExitFvExtra ++ (shrinkRow 775 s6Step239ExitGvExtra ++ [])))) s6Step239ExitG_Incoming s6Step239ExitG_checked h1 s6Step239ExitG_Outgoing
  exact h0

private theorem s6Step239ExitBank_checked : compileHmrBankResizeLog .exit s6Step239ExitGBefore ⟨s6Step239ExitFRow,s6Step239ExitGRow,s6Step239ExitFvRow,s6Step239ExitGvRow⟩ ⟨150,150,134,135⟩ [[],[],[],[]]=
    some (s6Step239ExitGvAfter,⟨s6Step239ExitFOut,s6Step239ExitGOut,s6Step239ExitFvOut,s6Step239ExitGvOut⟩,(shrinkRow 777 s6Step239ExitGExtra ++ (shrinkRow 795 s6Step239ExitFExtra ++ (shrinkRow 776 s6Step239ExitFvExtra ++ (shrinkRow 775 s6Step239ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step239ExitBank_rows]
  rfl

private theorem s6Step239Add0_apart : Disjoint s6Step239Add0Arena.live s6Step239Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step239Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239Add0_card : s6Step239Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step239Add0_borrowed : s6Step239Add0Arena.checkBorrow (hmrHybridCount s6Step239Add0Arena s6Step239Add0B.length) s6Step239Add0Work=some s6Step239Add0During := by
  have len : s6Step239Add0Work.length=hmrHybridCount s6Step239Add0Arena s6Step239Add0B.length := by
    rw [hmrHybridCount,s6Step239Add0_card]
    decide +kernel
  have nd : s6Step239Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step239Add0Arena s6Step239Add0During s6Step239Add0Work.toFinset s6Step239Add0_bounded s6Step239Add0_apart rfl

private theorem s6Step239Add0_distinct : (868::848::805::(s6Step239Add0A++s6Step239Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239Add0_owned : (868::848::805::(s6Step239Add0A++s6Step239Add0B)).toFinset⊆s6Step239Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step239Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239Add0_checked : compileHmrHybridCinLog s6Step239Add0Arena 848 868 805 s6Step239Add0A s6Step239Add0B s6Step239Add0Work=some s6Step239Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step239Add0Arena s6Step239Add0During 848 868 805 s6Step239Add0A s6Step239Add0B s6Step239Add0Work
    (by decide +kernel) (by decide +kernel) s6Step239Add0_distinct
    (fun q hq => s6Step239Add0_owned (List.mem_toFinset.mpr hq)) s6Step239Add0_borrowed

private theorem s6Step239Add1_apart : Disjoint s6Step239Add1Arena.live s6Step239Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step239Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239Add1_card : s6Step239Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step239Add1_borrowed : s6Step239Add1Arena.checkBorrow (hmrHybridCount s6Step239Add1Arena s6Step239Add1B.length) s6Step239Add1Work=some s6Step239Add1During := by
  have len : s6Step239Add1Work.length=hmrHybridCount s6Step239Add1Arena s6Step239Add1B.length := by
    rw [hmrHybridCount,s6Step239Add1_card]
    decide +kernel
  have nd : s6Step239Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step239Add1Arena s6Step239Add1During s6Step239Add1Work.toFinset s6Step239Add1_bounded s6Step239Add1_apart rfl

private theorem s6Step239Add1_distinct : (868::848::805::(s6Step239Add1A++s6Step239Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239Add1_owned : (868::848::805::(s6Step239Add1A++s6Step239Add1B)).toFinset⊆s6Step239Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step239Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239Add1_checked : compileHmrHybridCinLog s6Step239Add1Arena 848 868 805 s6Step239Add1A s6Step239Add1B s6Step239Add1Work=some s6Step239Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step239Add1Arena s6Step239Add1During 848 868 805 s6Step239Add1A s6Step239Add1B s6Step239Add1Work
    (by decide +kernel) (by decide +kernel) s6Step239Add1_distinct
    (fun q hq => s6Step239Add1_owned (List.mem_toFinset.mpr hq)) s6Step239Add1_borrowed

private theorem s6Step239F4_apart : Disjoint (s6Step239Add0A++s6Step239Add0B).toFinset (s6Step239Add1A++s6Step239Add1B).toFinset := by
  have nd : ((s6Step239Add0A++s6Step239Add0B)++(s6Step239Add1A++s6Step239Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step239F4_carry : s6Step239F4FlagArena.checkBorrow 1 [805]=some s6Step239Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step239F4FlagArena,s6Step239HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step239F4FlagArena,s6Step239HeadFvAfter,s6Step239Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239F4_distinct : (841::848::868::805::((s6Step239Add0A++s6Step239Add1A)++(s6Step239Add0B++s6Step239Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239F4_flag : s6Step239HeadFvAfter.checkBorrow 1 [868]=some s6Step239F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step239HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step239F4_owned : (841::848::((s6Step239Add0A++s6Step239Add1A)++(s6Step239Add0B++s6Step239Add1B))).toFinset⊆s6Step239HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step239HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239F4_checked : compileHmrHybridF4Log s6Step239HeadFvAfter 841 848 s6Step239Add0A s6Step239Add0B s6Step239Add1A s6Step239Add1B [868] [805] s6Step239Add0Work s6Step239Add1Work=some s6Step239F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step239HeadFvAfter s6Step239F4FlagArena s6Step239Add0Arena s6Step239Add0During s6Step239Add1During 841 848
    s6Step239Add0A s6Step239Add0B s6Step239Add1A s6Step239Add1B [868] [805] s6Step239Add0Work s6Step239Add1Work
    (fun q hq => s6Step239F4_owned (List.mem_toFinset.mpr hq)) s6Step239F4_flag s6Step239F4_carry
    s6Step239F4_distinct s6Step239F4_apart s6Step239Add0_checked s6Step239Add1_checked

private theorem s6Step239Front_branch : s6Step239FrontSigmaArena.checkBorrow 1 [848]=some s6Step239HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step239FrontSigmaArena,s6Step239EntryGvAfter,s6Step239EntryFvAfter,arenaWires]
  · ext q
    simp only [s6Step239FrontSigmaArena,s6Step239EntryGvAfter,s6Step239EntryFvAfter,s6Step239HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239Front_entry : HmrFrontEntryValid s6Step239EntryFBefore s6Step239FrontBank 151 135 ⟨150,150,134,135⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step239FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step239EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step239EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step239FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step239Front_sigma : s6Step239EntryGvAfter.checkBorrow 1 [841]=some s6Step239FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step239EntryGvAfter,s6Step239EntryFvAfter,arenaWires]
  · rfl

private def s6Step239HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239HeadFBefore : Arena := s6Step239HeadGAfter

private def s6Step239HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857],795⟩

private def s6Step239HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888],776⟩

private def s6Step239HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822],777⟩

private def s6Step239HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private theorem s6Step239HeadBank_incomingDistinct : ([s6Step239HeadGRow,s6Step239HeadFRow,s6Step239HeadGvRow,s6Step239HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239HeadF_Incoming : rowsOwned s6Step239HeadFBefore [s6Step239HeadFRow,s6Step239HeadGvRow,s6Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239HeadGRow,s6Step239HeadFRow,s6Step239HeadGvRow,s6Step239HeadFvRow] 1 s6Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239HeadBank_outgoingOwned : rowsOwned s6Step239HeadFvAfter [s6Step239HeadGOut,s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step239HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239HeadF_Outgoing : rowsOwned s6Step239HeadFvAfter [s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut] :=
  hmrRows_owned_drop s6Step239HeadFvAfter [s6Step239HeadGOut,s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut] 1 s6Step239HeadBank_outgoingOwned

private theorem s6Step239HeadF_distinct : (s6Step239HeadFRow.sign::s6Step239HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239HeadF_owned : (s6Step239HeadFRow.sign::s6Step239HeadFRow.payload).toFinset⊆s6Step239HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239HeadF_reserved : s6Step239HeadFBefore.reserve s6Step239HeadFFresh.toFinset=some s6Step239HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239HeadFFresh,arenaWires]
  · norm_num [s6Step239HeadFBefore,s6Step239HeadGAfter,s6Step239HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step239HeadFAfter,s6Step239HeadFBefore,s6Step239HeadGAfter,s6Step239HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239HeadF_checked : planRowResizeLog s6Step239HeadFBefore s6Step239HeadFRow 152 s6Step239HeadFFresh=
    some (s6Step239HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857, 864],795⟩,growRow 795 s6Step239HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step239HeadFBefore s6Step239HeadFAfter s6Step239HeadFRow 152 s6Step239HeadFFresh
    s6Step239HeadF_distinct s6Step239HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239HeadF_reserved
  have rowEq : WindowRow.mk (s6Step239HeadFRow.payload++s6Step239HeadFFresh) s6Step239HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 857, 864],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step239HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step239HeadFvBefore : Arena := s6Step239HeadGvAfter

private theorem s6Step239HeadFv_Incoming : rowsOwned s6Step239HeadFvBefore [s6Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239HeadGRow,s6Step239HeadFRow,s6Step239HeadGvRow,s6Step239HeadFvRow] 3 s6Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239HeadFv_Outgoing : rowsOwned s6Step239HeadFvAfter [s6Step239HeadFvOut] :=
  hmrRows_owned_drop s6Step239HeadFvAfter [s6Step239HeadGOut,s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut] 3 s6Step239HeadBank_outgoingOwned

private theorem s6Step239HeadFv_distinct : (s6Step239HeadFvRow.sign::s6Step239HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239HeadFv_owned : (s6Step239HeadFvRow.sign::s6Step239HeadFvRow.payload).toFinset⊆s6Step239HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239HeadFv_reserved : s6Step239HeadFvBefore.reserve s6Step239HeadFvFresh.toFinset=some s6Step239HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239HeadFvFresh,arenaWires]
  · norm_num [s6Step239HeadFvBefore,s6Step239HeadGvAfter,s6Step239HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step239HeadFvAfter,s6Step239HeadFvBefore,s6Step239HeadGvAfter,s6Step239HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239HeadFv_checked : planRowResizeLog s6Step239HeadFvBefore s6Step239HeadFvRow 136 s6Step239HeadFvFresh=
    some (s6Step239HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888, 818],776⟩,growRow 776 s6Step239HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step239HeadFvBefore s6Step239HeadFvAfter s6Step239HeadFvRow 136 s6Step239HeadFvFresh
    s6Step239HeadFv_distinct s6Step239HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step239HeadFvRow.payload++s6Step239HeadFvFresh) s6Step239HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 888, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step239HeadG_Incoming : rowsOwned s6Step239HeadGBefore [s6Step239HeadGRow,s6Step239HeadFRow,s6Step239HeadGvRow,s6Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239HeadGRow,s6Step239HeadFRow,s6Step239HeadGvRow,s6Step239HeadFvRow] 0 s6Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239HeadG_Outgoing : rowsOwned s6Step239HeadFvAfter [s6Step239HeadGOut,s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut] :=
  hmrRows_owned_drop s6Step239HeadFvAfter [s6Step239HeadGOut,s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut] 0 s6Step239HeadBank_outgoingOwned

private theorem s6Step239HeadG_distinct : (s6Step239HeadGRow.sign::s6Step239HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239HeadG_owned : (s6Step239HeadGRow.sign::s6Step239HeadGRow.payload).toFinset⊆s6Step239HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239HeadG_reserved : s6Step239HeadGBefore.reserve s6Step239HeadGFresh.toFinset=some s6Step239HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239HeadGFresh,arenaWires]
  · norm_num [s6Step239HeadGBefore,s6Step239HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step239HeadGAfter,s6Step239HeadGBefore,s6Step239HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239HeadG_checked : planRowResizeLog s6Step239HeadGBefore s6Step239HeadGRow 152 s6Step239HeadGFresh=
    some (s6Step239HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 869],777⟩,growRow 777 s6Step239HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step239HeadGBefore s6Step239HeadGAfter s6Step239HeadGRow 152 s6Step239HeadGFresh
    s6Step239HeadG_distinct s6Step239HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239HeadG_reserved
  have rowEq : WindowRow.mk (s6Step239HeadGRow.payload++s6Step239HeadGFresh) s6Step239HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step239HeadGvBefore : Arena := s6Step239HeadFAfter

private theorem s6Step239HeadGv_Incoming : rowsOwned s6Step239HeadGvBefore [s6Step239HeadGvRow,s6Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step239HeadGRow,s6Step239HeadFRow,s6Step239HeadGvRow,s6Step239HeadFvRow] 2 s6Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step239HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step239HeadGv_Outgoing : rowsOwned s6Step239HeadFvAfter [s6Step239HeadGvOut,s6Step239HeadFvOut] :=
  hmrRows_owned_drop s6Step239HeadFvAfter [s6Step239HeadGOut,s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut] 2 s6Step239HeadBank_outgoingOwned

private theorem s6Step239HeadGv_distinct : (s6Step239HeadGvRow.sign::s6Step239HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step239HeadGv_owned : (s6Step239HeadGvRow.sign::s6Step239HeadGvRow.payload).toFinset⊆s6Step239HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step239HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step239HeadGv_reserved : s6Step239HeadGvBefore.reserve s6Step239HeadGvFresh.toFinset=some s6Step239HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step239HeadGvFresh,arenaWires]
  · norm_num [s6Step239HeadGvBefore,s6Step239HeadFAfter,s6Step239HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step239HeadGvAfter,s6Step239HeadGvBefore,s6Step239HeadFAfter,s6Step239HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step239HeadGv_checked : planRowResizeLog s6Step239HeadGvBefore s6Step239HeadGvRow 136 s6Step239HeadGvFresh=
    some (s6Step239HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 786],775⟩,growRow 775 s6Step239HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step239HeadGvBefore s6Step239HeadGvAfter s6Step239HeadGvRow 136 s6Step239HeadGvFresh
    s6Step239HeadGv_distinct s6Step239HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step239HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step239HeadGvRow.payload++s6Step239HeadGvFresh) s6Step239HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step239HeadBank_rows : planWindowRowsLog s6Step239HeadGBefore [(s6Step239HeadGRow,152),(s6Step239HeadFRow,152),(s6Step239HeadGvRow,136),(s6Step239HeadFvRow,136)] [s6Step239HeadGFresh,s6Step239HeadFFresh,s6Step239HeadGvFresh,s6Step239HeadFvFresh]=
    some (s6Step239HeadFvAfter,[s6Step239HeadGOut,s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut],(growRow 777 s6Step239HeadGFresh ++ (growRow 795 s6Step239HeadFFresh ++ (growRow 775 s6Step239HeadGvFresh ++ (growRow 776 s6Step239HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step239HeadFvAfter [] []=some (s6Step239HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step239HeadFvBefore s6Step239HeadFvAfter s6Step239HeadFvAfter
    s6Step239HeadFvRow s6Step239HeadFvOut 136 s6Step239HeadFvFresh [] [] []
    (growRow 776 s6Step239HeadFvFresh) ([]) s6Step239HeadFv_Incoming s6Step239HeadFv_checked h4 s6Step239HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step239HeadGvBefore s6Step239HeadGvAfter s6Step239HeadFvAfter
    s6Step239HeadGvRow s6Step239HeadGvOut 136 s6Step239HeadGvFresh [(s6Step239HeadFvRow,136)] [s6Step239HeadFvFresh] [s6Step239HeadFvOut]
    (growRow 775 s6Step239HeadGvFresh) ((growRow 776 s6Step239HeadFvFresh ++ [])) s6Step239HeadGv_Incoming s6Step239HeadGv_checked h3 s6Step239HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step239HeadFBefore s6Step239HeadFAfter s6Step239HeadFvAfter
    s6Step239HeadFRow s6Step239HeadFOut 152 s6Step239HeadFFresh [(s6Step239HeadGvRow,136),(s6Step239HeadFvRow,136)] [s6Step239HeadGvFresh,s6Step239HeadFvFresh] [s6Step239HeadGvOut,s6Step239HeadFvOut]
    (growRow 795 s6Step239HeadFFresh) ((growRow 775 s6Step239HeadGvFresh ++ (growRow 776 s6Step239HeadFvFresh ++ []))) s6Step239HeadF_Incoming s6Step239HeadF_checked h2 s6Step239HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step239HeadGBefore s6Step239HeadGAfter s6Step239HeadFvAfter
    s6Step239HeadGRow s6Step239HeadGOut 152 s6Step239HeadGFresh [(s6Step239HeadFRow,152),(s6Step239HeadGvRow,136),(s6Step239HeadFvRow,136)] [s6Step239HeadFFresh,s6Step239HeadGvFresh,s6Step239HeadFvFresh] [s6Step239HeadFOut,s6Step239HeadGvOut,s6Step239HeadFvOut]
    (growRow 777 s6Step239HeadGFresh) ((growRow 795 s6Step239HeadFFresh ++ (growRow 775 s6Step239HeadGvFresh ++ (growRow 776 s6Step239HeadFvFresh ++ [])))) s6Step239HeadG_Incoming s6Step239HeadG_checked h1 s6Step239HeadG_Outgoing
  exact h0

private theorem s6Step239HeadBank_checked : compileHmrBankResizeLog .headroom s6Step239HeadGBefore ⟨s6Step239HeadFRow,s6Step239HeadGRow,s6Step239HeadFvRow,s6Step239HeadGvRow⟩ ⟨152,152,136,136⟩ [s6Step239HeadGFresh,s6Step239HeadFFresh,s6Step239HeadGvFresh,s6Step239HeadFvFresh]=
    some (s6Step239HeadFvAfter,⟨s6Step239HeadFOut,s6Step239HeadGOut,s6Step239HeadFvOut,s6Step239HeadGvOut⟩,(growRow 777 s6Step239HeadGFresh ++ (growRow 795 s6Step239HeadFFresh ++ (growRow 775 s6Step239HeadGvFresh ++ (growRow 776 s6Step239HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step239HeadBank_rows]
  rfl

private theorem s6Step239Front_checked : compileHmrSourceFrontLog s6Step239EntryFBefore s6Step239FrontBank 151 135 ⟨150,150,134,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step239FrontLog=some s6Step239FrontPlan := by
  have pairEq : s6Step239FrontPair=⟨s6Step239HeadFRow,s6Step239HeadGRow,s6Step239HeadFvRow,s6Step239HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step239FrontHead=⟨s6Step239ExitFRow,s6Step239ExitGRow,s6Step239ExitFvRow,s6Step239ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step239Add0A=s6Step239FrontHead.f.wires := by decide +kernel
  have gEq : s6Step239Add0B=s6Step239FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step239Add1A=s6Step239FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step239Add1B=s6Step239FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step239EntryFBefore s6Step239FrontBank 151 135 ⟨150,150,134,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step239FrontLog s6Step239FrontPlan
  · exact s6Step239Front_entry
  · exact s6Step239EntryBank_checked
  · exact s6Step239Front_sigma
  · rfl
  · exact s6Step239Front_branch
  · rfl
  · simpa only [s6Step239FrontPlan,pairEq] using s6Step239HeadBank_checked
  · simpa only [s6Step239FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step239F4_checked
  · exact s6Step239Counter_checked
  · rfl
  · simpa only [s6Step239FrontPlan,headEq] using s6Step239ExitBank_checked

private theorem s6Step239Complete_explicit_checked : compileHmrEarlyStepLog s6Step239EntryFBefore s6Step239FrontBank 151 135 ⟨150,150,134,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step239CompleteLog=some s6Step239CompletePlan := by
  let Q := s6Step239EarlyControlPlan
  have hq := s6Step239EarlyControl_plan_checked
  have fv1 : s6Step239CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step239CompleteOut.fv.payload[2]?.getD s6Step239CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step239CompleteOut.fv.payload[3]?.getD s6Step239CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step239CompleteOut.fv.payload[4]?.getD s6Step239CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step239EntryFBefore s6Step239EarlyControlArena s6Step239FrontBank 151 135 ⟨150,150,134,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step239CompleteLog s6Step239FrontPlan Q
    s6Step239Front_checked s6Step239Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step239Complete_owned s6Step239Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step239EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 841 s6Step239CompleteOut.fv.second (s6Step239CompleteOut.fv.payload[2]?.getD s6Step239CompleteOut.fv.sign) (s6Step239CompleteOut.fv.payload[3]?.getD s6Step239CompleteOut.fv.sign) (s6Step239CompleteOut.fv.payload[4]?.getD s6Step239CompleteOut.fv.sign) 848 49 s6Step239EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep239Arena : Arena := s6Step239EntryFBefore
def s6PrivateStep239Bank : WindowBank := s6Step239FrontBank
def s6PrivateStep239Spec : HmrSourceWalkStepLog := ⟨151,135,⟨150,150,134,135⟩,49,.early s6Step239CompleteLog⟩
def s6PrivateStep239Plan : HmrSourceStepPlan := .early s6Step239CompletePlan
theorem s6PrivateStep239_source : s6PrivateStep239Spec=s6ObservedLogs224[15] := rfl
theorem s6PrivateStep239_checked : compileHmrSourceStepLog s6PrivateStep239Arena s6PrivateStep239Bank
    s6PrivateStep239Spec.fgWidth s6PrivateStep239Spec.vWidth s6PrivateStep239Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 239 s6PrivateStep239Spec.need none s6PrivateStep239Spec.log=some s6PrivateStep239Plan := by
  change compileHmrSourceStepLog s6Step239EntryFBefore s6Step239FrontBank 151 135 ⟨150,150,134,135⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 239 49 none (.early s6Step239CompleteLog)=some (.early s6Step239CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 239<498)]
  rw [s6Step239Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
