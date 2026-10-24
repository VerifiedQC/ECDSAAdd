import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep228
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

private def s6Step230CompleteMoves : List (Wire × Wire) := [(793,154)]

private def s6Step230EarlyControlLog : HmrEarlyControlLog := ⟨[793, 805, 823, 864, 908],[822],[825],[869, 786, 810, 809, 817, 812],[]⟩

private def s6Step230FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[823], [805], [879], [856]],[[], [], [], []]⟩,[886],[818],[864],[908],[822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[864, 908, 822, 825]⟩

private def s6Step230CompleteLog : HmrEarlyStepLog := ⟨s6Step230FrontLog,s6Step230CompleteMoves,s6Step230EarlyControlLog⟩

private def s6Step230ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩

private def s6Step230ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step230ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],777⟩

private def s6Step230ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private def s6Step230FrontOut : WindowBank := ⟨s6Step230ExitFOut,s6Step230ExitGOut,s6Step230ExitFvOut,s6Step230ExitGvOut⟩

private def s6Step230CompleteOut : WindowBank := s6Step230FrontOut.repacked s6Step230CompleteMoves

private def s6Step230EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step230EarlyControlPositiveArena,[822],s6Step230EarlyControlEqualityArena,[825],⟨⟨886,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step230EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨772,false⟩,805⟩,⟨⟨771,false⟩,823⟩,⟨⟨770,false⟩,864⟩,⟨⟨769,false⟩,908⟩]⟩

private def s6Step230EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step230EarlyControlZeroArena,s6Step230EarlyControlZeroPlan,s6Step230EarlyControlClassPlan,s6Step230EarlyControlFlagArena,s6Step230EarlyControlFittedArena,s6Step230EarlyControlHistoryArena,s6Step230EarlyControlSigmaArena,s6Step230EarlyControlOutputArena,s6Step230EarlyControlLog⟩

private def s6Step230CounterWork : List Wire := [864, 908, 822, 825]

private theorem s6Step230Counter_bounded : s6Step230CounterWork.toFinset⊆arenaWires := by norm_num [s6Step230CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step230HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230CounterDuring : Arena := ⟨s6Step230HeadFvAfter.live∪s6Step230CounterWork.toFinset,Finset.union_subset s6Step230HeadFvAfter.bounded s6Step230Counter_bounded⟩

private def s6Step230EntryFFresh : List Wire := []

private def s6Step230EntryFvFresh : List Wire := []

private def s6Step230EntryGFresh : List Wire := []

private def s6Step230EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230EntryGvAfter : Arena := s6Step230EntryFBefore

private def s6Step230EntryGvFresh : List Wire := []

private def s6Step230ExitFExtra : List Wire := [805]

private def s6Step230ExitGExtra : List Wire := [154, 823]

private def s6Step230ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230ExitGvAfter : Arena := s6Step230ExitFAfter

private def s6Step230Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230Add0Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step230Add0_bounded : s6Step230Add0Work.toFinset⊆arenaWires := by
  have h : s6Step230Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step230Add0During : Arena := ⟨s6Step230Add0Arena.live∪s6Step230Add0Work.toFinset,Finset.union_subset s6Step230Add0Arena.bounded s6Step230Add0_bounded⟩

private def s6Step230Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230Add1Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step230Add1_bounded : s6Step230Add1Work.toFinset⊆arenaWires := by
  have h : s6Step230Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step230Add1During : Arena := ⟨s6Step230Add1Arena.live∪s6Step230Add1Work.toFinset,Finset.union_subset s6Step230Add1Arena.bounded s6Step230Add1_bounded⟩

private def s6Step230F4FlagArena : Arena := ⟨s6Step230HeadFvAfter.live∪{864},Finset.union_subset s6Step230HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step230F4Plan : HmrHybridF4Plan := ⟨s6Step230F4FlagArena,[864],s6Step230Add0Arena,[908],s6Step230Add0During,s6Step230Add0Work,s6Step230Add1During,s6Step230Add1Work⟩

private def s6Step230HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 805],795⟩

private def s6Step230HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step230HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 823],777⟩

private def s6Step230HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private def s6Step230FrontHead : WindowBank := ⟨s6Step230HeadFOut,s6Step230HeadGOut,s6Step230HeadFvOut,s6Step230HeadGvOut⟩

private def s6Step230EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩

private def s6Step230EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step230EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],777⟩

private def s6Step230EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩

private def s6Step230FrontPair : WindowBank := ⟨s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut⟩

private def s6Step230FrontSigmaArena : Arena := ⟨s6Step230EntryGvAfter.live∪{886},Finset.union_subset s6Step230EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step230HeadFFresh : List Wire := [805]

private def s6Step230HeadFvFresh : List Wire := [856]

private def s6Step230HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230HeadGFresh : List Wire := [823]

private def s6Step230HeadGvFresh : List Wire := [879]

private def s6Step230FrontPlan : HmrSourceFront := ⟨s6Step230EntryGvAfter,s6Step230FrontPair,(growRow 795 s6Step230EntryFFresh ++ (growRow 777 s6Step230EntryGFresh ++ (growRow 776 s6Step230EntryFvFresh ++ (growRow 775 s6Step230EntryGvFresh ++ [])))),s6Step230FrontSigmaArena,[886],s6Step230HeadGBefore,[818],
  s6Step230HeadFvAfter,s6Step230FrontHead,(growRow 777 s6Step230HeadGFresh ++ (growRow 795 s6Step230HeadFFresh ++ (growRow 775 s6Step230HeadGvFresh ++ (growRow 776 s6Step230HeadFvFresh ++ [])))),s6Step230F4Plan,s6Step230CounterDuring,s6Step230CounterWork,s6Step230ExitGvAfter,s6Step230FrontOut,(shrinkRow 777 s6Step230ExitGExtra ++ (shrinkRow 795 s6Step230ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step230CompletePlan : HmrEarlyStepPlan := ⟨s6Step230FrontPlan,s6Step230EarlyControlArena,s6Step230EarlyControlPlan,s6Step230CompleteMoves⟩

private theorem s6Step230Complete_apart : List.Disjoint (s6Step230CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [886, 818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step230CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[886, 818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step230Complete_owned : (s6Step230CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step230CompleteMoveArena : Arena := ⟨s6Step230ExitGvAfter.live∪{154},Finset.union_subset s6Step230ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step230Complete_repack : s6Step230ExitGvAfter.checkRepack s6Step230CompleteMoves=some s6Step230EarlyControlArena := by
  have owned : 793∈s6Step230ExitGvAfter.live := by norm_num [s6Step230ExitGvAfter,s6Step230ExitFAfter,arenaWires]
  have reserve : s6Step230ExitGvAfter.reserve {154}=some s6Step230CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step230ExitGvAfter,s6Step230ExitFAfter,arenaWires]
    · rfl
  have retired : s6Step230CompleteMoveArena.retireSet {793}=s6Step230EarlyControlArena := by
    unfold Arena.retireSet s6Step230EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step230CompleteMoveArena,s6Step230ExitGvAfter,s6Step230ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step230CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step230CompleteMoveArena.retireSet {793}).checkRepack []=some s6Step230EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step230EarlyControl_branchOwned : ([818] : List Wire).toFinset⊆s6Step230EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_branch : compileHmrBranchRetirement s6Step230EarlyControlSigmaArena 818=some s6Step230EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step230EarlyControl_branchOwned
  · ext q
    simp [s6Step230EarlyControlOutputArena,s6Step230EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step230EarlyControl_classEqualityBorrow : s6Step230EarlyControlPositiveArena.checkBorrow (([886, 822] : List Wire).length-1) s6Step230EarlyControlLog.classWork=some s6Step230EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step230EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step230EarlyControlEqualityArena,s6Step230EarlyControlPositiveArena,s6Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step230EarlyControl_classEqualityOwned : ([886, 822] : List Wire).toFinset⊆s6Step230EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_classEquality : compileHmrEqualityLog s6Step230EarlyControlPositiveArena [886, 822] 0 s6Step230EarlyControlLog.classWork=some (s6Step230EarlyControlEqualityArena,s6Step230EarlyControlLog.classWork,s6Step230EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step230EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step230EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step230EarlyControl_classOwned : ([769, 908, 886] : List Wire).toFinset⊆s6Step230EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_positiveBorrow : s6Step230EarlyControlZeroArena.checkBorrow (1) s6Step230EarlyControlLog.positiveWork=some s6Step230EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step230EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step230EarlyControlPositiveArena,s6Step230EarlyControlZeroArena,s6Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step230EarlyControl_class : compileHmrSourceClassLog s6Step230EarlyControlZeroArena false 769 s6Step230EarlyControlZeroPlan.top 0 886 s6Step230EarlyControlLog.positiveWork s6Step230EarlyControlLog.classWork=some s6Step230EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step230EarlyControlClassPlan s6Step230EarlyControlZeroArena false 769 s6Step230EarlyControlZeroPlan.top 0 886
  constructor
  · decide +kernel
  · exact s6Step230EarlyControl_classOwned
  · exact s6Step230EarlyControl_positiveBorrow
  · exact s6Step230EarlyControl_classEquality

private theorem s6Step230EarlyControl_entryRecordOwned : ([818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_entrySigmaOwned : ([886, 254] : List Wire).toFinset⊆s6Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_fitBorrow : s6Step230EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step230EarlyControlLog.recordFresh=some s6Step230EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step230EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step230EarlyControlFittedArena,s6Step230EarlyControlFlagArena,s6Step230EarlyControlLog,arenaWires]

private theorem s6Step230EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step230EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_fit : compileHmrRecordGrowLog s6Step230EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step230EarlyControlLog.recordFresh=some s6Step230EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step230EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step230EarlyControl_fitBorrow

private theorem s6Step230EarlyControl_flagsBorrow : s6Step230EarlyControlEqualityArena.checkBorrow (6) s6Step230EarlyControlLog.flagWork=some s6Step230EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step230EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step230EarlyControlFlagArena,s6Step230EarlyControlEqualityArena,s6Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step230EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step230EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_flags : compileHmrFlagsLog s6Step230EarlyControlClassPlan.equalityArena s6Step230EarlyControlClassPlan.equality.top 253 252 251 s6Step230EarlyControlLog.flagWork=some s6Step230EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step230EarlyControl_flagsOwned⟩
  · exact s6Step230EarlyControl_flagsBorrow

private theorem s6Step230EarlyControl_historyBorrow : s6Step230EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step230EarlyControlLog.recordFresh=some s6Step230EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step230EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step230EarlyControlHistoryArena,s6Step230EarlyControlArena,s6Step230EarlyControlLog,arenaWires]

private theorem s6Step230EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_history : compileHmrRecordGrowLog s6Step230EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step230EarlyControlLog.recordFresh=some s6Step230EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step230EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step230EarlyControl_historyBorrow

private theorem s6Step230EarlyControl_sigmaOwned : ([254, 886] : List Wire).toFinset⊆s6Step230EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_sigmaReleaseOwned : ([886] : List Wire).toFinset⊆s6Step230EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_sigmaRelease : s6Step230EarlyControlHistoryArena.release {886} (fun _ => false)=some s6Step230EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step230EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step230EarlyControlSigmaArena,s6Step230EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step230EarlyControl_sigma : compileHmrSigmaDropLog s6Step230EarlyControlHistoryArena false 0 0 254 886 []=some s6Step230EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step230EarlyControl_sigmaOwned⟩
  · exact s6Step230EarlyControl_sigmaRelease

private theorem s6Step230EarlyControl_zeroBorrow : s6Step230EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step230EarlyControlLog.zeroWork=some s6Step230EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step230EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step230EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step230EarlyControlZeroArena,s6Step230EarlyControlArena,s6Step230EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step230EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step230EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step230EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EarlyControl_zero : compileHmrEqualityLog s6Step230EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step230EarlyControlLog.zeroWork=some (s6Step230EarlyControlZeroArena,s6Step230EarlyControlLog.zeroWork,s6Step230EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step230EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step230EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step230EarlyControl_logged : s6Step230EarlyControlPlan.Logged s6Step230EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 818 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step230EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step230EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step230EarlyControl_zero
  · exact s6Step230EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step230EarlyControl_flags
  · exact s6Step230EarlyControl_fit
  · exact s6Step230EarlyControl_history
  · exact s6Step230EarlyControl_sigma
  · exact s6Step230EarlyControl_branch

private theorem s6Step230EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step230EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 818 49 s6Step230EarlyControlLog=some s6Step230EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step230EarlyControlPlan s6Step230EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 818 49 s6Step230EarlyControl_logged

private def s6Step230EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩

private def s6Step230EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step230EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],777⟩

private def s6Step230EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩

private def s6Step230FrontBank : WindowBank := ⟨s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow⟩

private def s6Step230Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 805, 795]

private def s6Step230Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 823, 777]

private def s6Step230Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 776]

private def s6Step230Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 775]

private theorem s6Step230Counter_apart : Disjoint s6Step230HeadFvAfter.live s6Step230CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step230HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230Counter_borrowed : s6Step230HeadFvAfter.checkBorrow 4 s6Step230CounterWork=some s6Step230CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step230HeadFvAfter s6Step230CounterDuring s6Step230CounterWork.toFinset s6Step230Counter_bounded s6Step230Counter_apart rfl

private theorem s6Step230Counter_owned : (886::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step230HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step230HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230Counter_checked : compileHmrCounterStepLog s6Step230HeadFvAfter true 886 [774, 773, 772, 771, 770, 769] s6Step230CounterWork=some s6Step230CounterDuring := by
  have owned : ∀q∈886::[774, 773, 772, 771, 770, 769],q∈s6Step230HeadFvAfter.live := fun q hq => s6Step230Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step230Counter_borrowed

private def s6Step230EntryFAfter : Arena := s6Step230EntryFBefore

private theorem s6Step230EntryBank_incomingDistinct : ([s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230EntryF_Incoming : rowsOwned s6Step230EntryFBefore [s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow] 0 s6Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230EntryBank_outgoingOwned : rowsOwned s6Step230EntryGvAfter [s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step230EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230EntryF_Outgoing : rowsOwned s6Step230EntryGvAfter [s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut] :=
  hmrRows_owned_drop s6Step230EntryGvAfter [s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut] 0 s6Step230EntryBank_outgoingOwned

private theorem s6Step230EntryF_distinct : (s6Step230EntryFRow.sign::s6Step230EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230EntryF_owned : (s6Step230EntryFRow.sign::s6Step230EntryFRow.payload).toFinset⊆s6Step230EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EntryF_reserved : s6Step230EntryFBefore.reserve s6Step230EntryFFresh.toFinset=some s6Step230EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230EntryFFresh,arenaWires]
  · norm_num [s6Step230EntryFBefore,s6Step230EntryFFresh,arenaWires]
  · simp only [s6Step230EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step230EntryF_checked : planRowResizeLog s6Step230EntryFBefore s6Step230EntryFRow 155 s6Step230EntryFFresh=
    some (s6Step230EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩,growRow 795 s6Step230EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step230EntryFBefore s6Step230EntryFAfter s6Step230EntryFRow 155 s6Step230EntryFFresh
    s6Step230EntryF_distinct s6Step230EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230EntryF_reserved
  have rowEq : WindowRow.mk (s6Step230EntryFRow.payload++s6Step230EntryFFresh) s6Step230EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step230EntryFvAfter : Arena := s6Step230EntryFBefore

private def s6Step230EntryFvBefore : Arena := s6Step230EntryFBefore

private theorem s6Step230EntryFv_Incoming : rowsOwned s6Step230EntryFvBefore [s6Step230EntryFvRow,s6Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow] 2 s6Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230EntryFv_Outgoing : rowsOwned s6Step230EntryGvAfter [s6Step230EntryFvOut,s6Step230EntryGvOut] :=
  hmrRows_owned_drop s6Step230EntryGvAfter [s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut] 2 s6Step230EntryBank_outgoingOwned

private theorem s6Step230EntryFv_distinct : (s6Step230EntryFvRow.sign::s6Step230EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230EntryFv_owned : (s6Step230EntryFvRow.sign::s6Step230EntryFvRow.payload).toFinset⊆s6Step230EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EntryFv_reserved : s6Step230EntryFvBefore.reserve s6Step230EntryFvFresh.toFinset=some s6Step230EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230EntryFvFresh,arenaWires]
  · norm_num [s6Step230EntryFvBefore,s6Step230EntryFBefore,s6Step230EntryFvFresh,arenaWires]
  · simp only [s6Step230EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step230EntryFv_checked : planRowResizeLog s6Step230EntryFvBefore s6Step230EntryFvRow 129 s6Step230EntryFvFresh=
    some (s6Step230EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩,growRow 776 s6Step230EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step230EntryFvBefore s6Step230EntryFvAfter s6Step230EntryFvRow 129 s6Step230EntryFvFresh
    s6Step230EntryFv_distinct s6Step230EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step230EntryFvRow.payload++s6Step230EntryFvFresh) s6Step230EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step230EntryGAfter : Arena := s6Step230EntryFBefore

private def s6Step230EntryGBefore : Arena := s6Step230EntryFBefore

private theorem s6Step230EntryG_Incoming : rowsOwned s6Step230EntryGBefore [s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow] 1 s6Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230EntryG_Outgoing : rowsOwned s6Step230EntryGvAfter [s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut] :=
  hmrRows_owned_drop s6Step230EntryGvAfter [s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut] 1 s6Step230EntryBank_outgoingOwned

private theorem s6Step230EntryG_distinct : (s6Step230EntryGRow.sign::s6Step230EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230EntryG_owned : (s6Step230EntryGRow.sign::s6Step230EntryGRow.payload).toFinset⊆s6Step230EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EntryG_reserved : s6Step230EntryGBefore.reserve s6Step230EntryGFresh.toFinset=some s6Step230EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230EntryGFresh,arenaWires]
  · norm_num [s6Step230EntryGBefore,s6Step230EntryFBefore,s6Step230EntryGFresh,arenaWires]
  · simp only [s6Step230EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step230EntryG_checked : planRowResizeLog s6Step230EntryGBefore s6Step230EntryGRow 155 s6Step230EntryGFresh=
    some (s6Step230EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],777⟩,growRow 777 s6Step230EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step230EntryGBefore s6Step230EntryGAfter s6Step230EntryGRow 155 s6Step230EntryGFresh
    s6Step230EntryG_distinct s6Step230EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230EntryG_reserved
  have rowEq : WindowRow.mk (s6Step230EntryGRow.payload++s6Step230EntryGFresh) s6Step230EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step230EntryGvBefore : Arena := s6Step230EntryFBefore

private theorem s6Step230EntryGv_Incoming : rowsOwned s6Step230EntryGvBefore [s6Step230EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow] 3 s6Step230EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230EntryGv_Outgoing : rowsOwned s6Step230EntryGvAfter [s6Step230EntryGvOut] :=
  hmrRows_owned_drop s6Step230EntryGvAfter [s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut] 3 s6Step230EntryBank_outgoingOwned

private theorem s6Step230EntryGv_distinct : (s6Step230EntryGvRow.sign::s6Step230EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230EntryGv_owned : (s6Step230EntryGvRow.sign::s6Step230EntryGvRow.payload).toFinset⊆s6Step230EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230EntryGv_reserved : s6Step230EntryGvBefore.reserve s6Step230EntryGvFresh.toFinset=some s6Step230EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230EntryGvFresh,arenaWires]
  · norm_num [s6Step230EntryGvBefore,s6Step230EntryFBefore,s6Step230EntryGvFresh,arenaWires]
  · simp only [s6Step230EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step230EntryGv_checked : planRowResizeLog s6Step230EntryGvBefore s6Step230EntryGvRow 129 s6Step230EntryGvFresh=
    some (s6Step230EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩,growRow 775 s6Step230EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step230EntryGvBefore s6Step230EntryGvAfter s6Step230EntryGvRow 129 s6Step230EntryGvFresh
    s6Step230EntryGv_distinct s6Step230EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step230EntryGvRow.payload++s6Step230EntryGvFresh) s6Step230EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step230EntryBank_rows : planWindowRowsLog s6Step230EntryFBefore [(s6Step230EntryFRow,155),(s6Step230EntryGRow,155),(s6Step230EntryFvRow,129),(s6Step230EntryGvRow,129)] [s6Step230EntryFFresh,s6Step230EntryGFresh,s6Step230EntryFvFresh,s6Step230EntryGvFresh]=
    some (s6Step230EntryGvAfter,[s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut],(growRow 795 s6Step230EntryFFresh ++ (growRow 777 s6Step230EntryGFresh ++ (growRow 776 s6Step230EntryFvFresh ++ (growRow 775 s6Step230EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step230EntryGvAfter [] []=some (s6Step230EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step230EntryGvBefore s6Step230EntryGvAfter s6Step230EntryGvAfter
    s6Step230EntryGvRow s6Step230EntryGvOut 129 s6Step230EntryGvFresh [] [] []
    (growRow 775 s6Step230EntryGvFresh) ([]) s6Step230EntryGv_Incoming s6Step230EntryGv_checked h4 s6Step230EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step230EntryFvBefore s6Step230EntryFvAfter s6Step230EntryGvAfter
    s6Step230EntryFvRow s6Step230EntryFvOut 129 s6Step230EntryFvFresh [(s6Step230EntryGvRow,129)] [s6Step230EntryGvFresh] [s6Step230EntryGvOut]
    (growRow 776 s6Step230EntryFvFresh) ((growRow 775 s6Step230EntryGvFresh ++ [])) s6Step230EntryFv_Incoming s6Step230EntryFv_checked h3 s6Step230EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step230EntryGBefore s6Step230EntryGAfter s6Step230EntryGvAfter
    s6Step230EntryGRow s6Step230EntryGOut 155 s6Step230EntryGFresh [(s6Step230EntryFvRow,129),(s6Step230EntryGvRow,129)] [s6Step230EntryFvFresh,s6Step230EntryGvFresh] [s6Step230EntryFvOut,s6Step230EntryGvOut]
    (growRow 777 s6Step230EntryGFresh) ((growRow 776 s6Step230EntryFvFresh ++ (growRow 775 s6Step230EntryGvFresh ++ []))) s6Step230EntryG_Incoming s6Step230EntryG_checked h2 s6Step230EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step230EntryFBefore s6Step230EntryFAfter s6Step230EntryGvAfter
    s6Step230EntryFRow s6Step230EntryFOut 155 s6Step230EntryFFresh [(s6Step230EntryGRow,155),(s6Step230EntryFvRow,129),(s6Step230EntryGvRow,129)] [s6Step230EntryGFresh,s6Step230EntryFvFresh,s6Step230EntryGvFresh] [s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut]
    (growRow 795 s6Step230EntryFFresh) ((growRow 777 s6Step230EntryGFresh ++ (growRow 776 s6Step230EntryFvFresh ++ (growRow 775 s6Step230EntryGvFresh ++ [])))) s6Step230EntryF_Incoming s6Step230EntryF_checked h1 s6Step230EntryF_Outgoing
  exact h0

private theorem s6Step230EntryBank_checked : compileHmrBankResizeLog .entry s6Step230EntryFBefore ⟨s6Step230EntryFRow,s6Step230EntryGRow,s6Step230EntryFvRow,s6Step230EntryGvRow⟩ ⟨155,155,129,129⟩ [s6Step230EntryFFresh,s6Step230EntryGFresh,s6Step230EntryFvFresh,s6Step230EntryGvFresh]=
    some (s6Step230EntryGvAfter,⟨s6Step230EntryFOut,s6Step230EntryGOut,s6Step230EntryFvOut,s6Step230EntryGvOut⟩,(growRow 795 s6Step230EntryFFresh ++ (growRow 777 s6Step230EntryGFresh ++ (growRow 776 s6Step230EntryFvFresh ++ (growRow 775 s6Step230EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step230EntryBank_rows]
  rfl

private def s6Step230ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230ExitFBefore : Arena := s6Step230ExitGAfter

private def s6Step230ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 805],795⟩

private def s6Step230ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step230ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 823],777⟩

private def s6Step230ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private theorem s6Step230ExitBank_incomingDistinct : ([s6Step230ExitGRow,s6Step230ExitFRow,s6Step230ExitFvRow,s6Step230ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230ExitF_Incoming : rowsOwned s6Step230ExitFBefore [s6Step230ExitFRow,s6Step230ExitFvRow,s6Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230ExitGRow,s6Step230ExitFRow,s6Step230ExitFvRow,s6Step230ExitGvRow] 1 s6Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230ExitFBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230ExitBank_outgoingOwned : rowsOwned s6Step230ExitGvAfter [s6Step230ExitGOut,s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step230ExitGvAfter (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230ExitF_Outgoing : rowsOwned s6Step230ExitGvAfter [s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut] :=
  hmrRows_owned_drop s6Step230ExitGvAfter [s6Step230ExitGOut,s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut] 1 s6Step230ExitBank_outgoingOwned

private theorem s6Step230ExitF_distinct : (s6Step230ExitFRow.sign::s6Step230ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230ExitF_owned : (s6Step230ExitFRow.sign::s6Step230ExitFRow.payload).toFinset⊆s6Step230ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230ExitFBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230ExitF_retired : s6Step230ExitFBefore.retireSet s6Step230ExitFExtra.toFinset=s6Step230ExitFAfter := by
  unfold Arena.retireSet s6Step230ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step230ExitFBefore,s6Step230ExitGAfter,s6Step230ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step230ExitF_checked : planRowResizeLog s6Step230ExitFBefore s6Step230ExitFRow 155 []=
    some (s6Step230ExitFAfter,s6Step230ExitFOut,shrinkRow 795 s6Step230ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step230ExitFBefore s6Step230ExitFRow 155 s6Step230ExitF_distinct s6Step230ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step230ExitFRow.payload.take 155) s6Step230ExitFRow.sign=s6Step230ExitFOut := by decide +kernel
  have hi : s6Step230ExitFRow.payload.drop 155=s6Step230ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step230ExitF_retired] at result
  exact result

private def s6Step230ExitFvAfter : Arena := s6Step230ExitFAfter

private def s6Step230ExitFvBefore : Arena := s6Step230ExitFAfter

private theorem s6Step230ExitFv_Incoming : rowsOwned s6Step230ExitFvBefore [s6Step230ExitFvRow,s6Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230ExitGRow,s6Step230ExitFRow,s6Step230ExitFvRow,s6Step230ExitGvRow] 2 s6Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230ExitFvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230ExitFv_Outgoing : rowsOwned s6Step230ExitGvAfter [s6Step230ExitFvOut,s6Step230ExitGvOut] :=
  hmrRows_owned_drop s6Step230ExitGvAfter [s6Step230ExitGOut,s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut] 2 s6Step230ExitBank_outgoingOwned

private theorem s6Step230ExitFv_distinct : (s6Step230ExitFvRow.sign::s6Step230ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230ExitFv_owned : (s6Step230ExitFvRow.sign::s6Step230ExitFvRow.payload).toFinset⊆s6Step230ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230ExitFvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230ExitFv_reserved : s6Step230ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step230ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step230ExitFv_checked : planRowResizeLog s6Step230ExitFvBefore s6Step230ExitFvRow 130 []=
    some (s6Step230ExitFvAfter,s6Step230ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step230ExitFvBefore s6Step230ExitFvAfter s6Step230ExitFvRow 130 []
    s6Step230ExitFv_distinct s6Step230ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step230ExitFvRow.payload++[]) s6Step230ExitFvRow.sign=s6Step230ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step230ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step230ExitG_Incoming : rowsOwned s6Step230ExitGBefore [s6Step230ExitGRow,s6Step230ExitFRow,s6Step230ExitFvRow,s6Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230ExitGRow,s6Step230ExitFRow,s6Step230ExitFvRow,s6Step230ExitGvRow] 0 s6Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230ExitG_Outgoing : rowsOwned s6Step230ExitGvAfter [s6Step230ExitGOut,s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut] :=
  hmrRows_owned_drop s6Step230ExitGvAfter [s6Step230ExitGOut,s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut] 0 s6Step230ExitBank_outgoingOwned

private theorem s6Step230ExitG_distinct : (s6Step230ExitGRow.sign::s6Step230ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230ExitG_owned : (s6Step230ExitGRow.sign::s6Step230ExitGRow.payload).toFinset⊆s6Step230ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230ExitG_retired : s6Step230ExitGBefore.retireSet s6Step230ExitGExtra.toFinset=s6Step230ExitGAfter := by
  unfold Arena.retireSet s6Step230ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step230ExitGBefore,s6Step230ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step230ExitG_checked : planRowResizeLog s6Step230ExitGBefore s6Step230ExitGRow 154 []=
    some (s6Step230ExitGAfter,s6Step230ExitGOut,shrinkRow 777 s6Step230ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step230ExitGBefore s6Step230ExitGRow 154 s6Step230ExitG_distinct s6Step230ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step230ExitGRow.payload.take 154) s6Step230ExitGRow.sign=s6Step230ExitGOut := by decide +kernel
  have hi : s6Step230ExitGRow.payload.drop 154=s6Step230ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step230ExitG_retired] at result
  exact result

private def s6Step230ExitGvBefore : Arena := s6Step230ExitFAfter

private theorem s6Step230ExitGv_Incoming : rowsOwned s6Step230ExitGvBefore [s6Step230ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230ExitGRow,s6Step230ExitFRow,s6Step230ExitFvRow,s6Step230ExitGvRow] 3 s6Step230ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230ExitGvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230ExitGv_Outgoing : rowsOwned s6Step230ExitGvAfter [s6Step230ExitGvOut] :=
  hmrRows_owned_drop s6Step230ExitGvAfter [s6Step230ExitGOut,s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut] 3 s6Step230ExitBank_outgoingOwned

private theorem s6Step230ExitGv_distinct : (s6Step230ExitGvRow.sign::s6Step230ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230ExitGv_owned : (s6Step230ExitGvRow.sign::s6Step230ExitGvRow.payload).toFinset⊆s6Step230ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230ExitGvBefore (fun q => (0≤q ∧ q<154) ∨ (155≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230ExitGv_reserved : s6Step230ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step230ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step230ExitGv_checked : planRowResizeLog s6Step230ExitGvBefore s6Step230ExitGvRow 130 []=
    some (s6Step230ExitGvAfter,s6Step230ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step230ExitGvBefore s6Step230ExitGvAfter s6Step230ExitGvRow 130 []
    s6Step230ExitGv_distinct s6Step230ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step230ExitGvRow.payload++[]) s6Step230ExitGvRow.sign=s6Step230ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step230ExitBank_rows : planWindowRowsLog s6Step230ExitGBefore [(s6Step230ExitGRow,154),(s6Step230ExitFRow,155),(s6Step230ExitFvRow,130),(s6Step230ExitGvRow,130)] [[],[],[],[]]=
    some (s6Step230ExitGvAfter,[s6Step230ExitGOut,s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut],(shrinkRow 777 s6Step230ExitGExtra ++ (shrinkRow 795 s6Step230ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step230ExitGvAfter [] []=some (s6Step230ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step230ExitGvBefore s6Step230ExitGvAfter s6Step230ExitGvAfter
    s6Step230ExitGvRow s6Step230ExitGvOut 130 [] [] [] []
    (growRow 775 []) ([]) s6Step230ExitGv_Incoming s6Step230ExitGv_checked h4 s6Step230ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step230ExitFvBefore s6Step230ExitFvAfter s6Step230ExitGvAfter
    s6Step230ExitFvRow s6Step230ExitFvOut 130 [] [(s6Step230ExitGvRow,130)] [[]] [s6Step230ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step230ExitFv_Incoming s6Step230ExitFv_checked h3 s6Step230ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step230ExitFBefore s6Step230ExitFAfter s6Step230ExitGvAfter
    s6Step230ExitFRow s6Step230ExitFOut 155 [] [(s6Step230ExitFvRow,130),(s6Step230ExitGvRow,130)] [[],[]] [s6Step230ExitFvOut,s6Step230ExitGvOut]
    (shrinkRow 795 s6Step230ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step230ExitF_Incoming s6Step230ExitF_checked h2 s6Step230ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step230ExitGBefore s6Step230ExitGAfter s6Step230ExitGvAfter
    s6Step230ExitGRow s6Step230ExitGOut 154 [] [(s6Step230ExitFRow,155),(s6Step230ExitFvRow,130),(s6Step230ExitGvRow,130)] [[],[],[]] [s6Step230ExitFOut,s6Step230ExitFvOut,s6Step230ExitGvOut]
    (shrinkRow 777 s6Step230ExitGExtra) ((shrinkRow 795 s6Step230ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step230ExitG_Incoming s6Step230ExitG_checked h1 s6Step230ExitG_Outgoing
  exact h0

private theorem s6Step230ExitBank_checked : compileHmrBankResizeLog .exit s6Step230ExitGBefore ⟨s6Step230ExitFRow,s6Step230ExitGRow,s6Step230ExitFvRow,s6Step230ExitGvRow⟩ ⟨155,154,130,130⟩ [[],[],[],[]]=
    some (s6Step230ExitGvAfter,⟨s6Step230ExitFOut,s6Step230ExitGOut,s6Step230ExitFvOut,s6Step230ExitGvOut⟩,(shrinkRow 777 s6Step230ExitGExtra ++ (shrinkRow 795 s6Step230ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step230ExitBank_rows]
  rfl

private theorem s6Step230Add0_apart : Disjoint s6Step230Add0Arena.live s6Step230Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step230Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230Add0_card : s6Step230Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step230Add0_borrowed : s6Step230Add0Arena.checkBorrow (hmrHybridCount s6Step230Add0Arena s6Step230Add0B.length) s6Step230Add0Work=some s6Step230Add0During := by
  have len : s6Step230Add0Work.length=hmrHybridCount s6Step230Add0Arena s6Step230Add0B.length := by
    rw [hmrHybridCount,s6Step230Add0_card]
    decide +kernel
  have nd : s6Step230Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step230Add0Arena s6Step230Add0During s6Step230Add0Work.toFinset s6Step230Add0_bounded s6Step230Add0_apart rfl

private theorem s6Step230Add0_distinct : (864::818::908::(s6Step230Add0A++s6Step230Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230Add0_owned : (864::818::908::(s6Step230Add0A++s6Step230Add0B)).toFinset⊆s6Step230Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step230Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230Add0_checked : compileHmrHybridCinLog s6Step230Add0Arena 818 864 908 s6Step230Add0A s6Step230Add0B s6Step230Add0Work=some s6Step230Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step230Add0Arena s6Step230Add0During 818 864 908 s6Step230Add0A s6Step230Add0B s6Step230Add0Work
    (by decide +kernel) (by decide +kernel) s6Step230Add0_distinct
    (fun q hq => s6Step230Add0_owned (List.mem_toFinset.mpr hq)) s6Step230Add0_borrowed

private theorem s6Step230Add1_apart : Disjoint s6Step230Add1Arena.live s6Step230Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step230Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230Add1_card : s6Step230Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step230Add1_borrowed : s6Step230Add1Arena.checkBorrow (hmrHybridCount s6Step230Add1Arena s6Step230Add1B.length) s6Step230Add1Work=some s6Step230Add1During := by
  have len : s6Step230Add1Work.length=hmrHybridCount s6Step230Add1Arena s6Step230Add1B.length := by
    rw [hmrHybridCount,s6Step230Add1_card]
    decide +kernel
  have nd : s6Step230Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step230Add1Arena s6Step230Add1During s6Step230Add1Work.toFinset s6Step230Add1_bounded s6Step230Add1_apart rfl

private theorem s6Step230Add1_distinct : (864::818::908::(s6Step230Add1A++s6Step230Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230Add1_owned : (864::818::908::(s6Step230Add1A++s6Step230Add1B)).toFinset⊆s6Step230Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step230Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230Add1_checked : compileHmrHybridCinLog s6Step230Add1Arena 818 864 908 s6Step230Add1A s6Step230Add1B s6Step230Add1Work=some s6Step230Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step230Add1Arena s6Step230Add1During 818 864 908 s6Step230Add1A s6Step230Add1B s6Step230Add1Work
    (by decide +kernel) (by decide +kernel) s6Step230Add1_distinct
    (fun q hq => s6Step230Add1_owned (List.mem_toFinset.mpr hq)) s6Step230Add1_borrowed

private theorem s6Step230F4_apart : Disjoint (s6Step230Add0A++s6Step230Add0B).toFinset (s6Step230Add1A++s6Step230Add1B).toFinset := by
  have nd : ((s6Step230Add0A++s6Step230Add0B)++(s6Step230Add1A++s6Step230Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step230F4_carry : s6Step230F4FlagArena.checkBorrow 1 [908]=some s6Step230Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step230F4FlagArena,s6Step230HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step230F4FlagArena,s6Step230HeadFvAfter,s6Step230Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step230F4_distinct : (886::818::864::908::((s6Step230Add0A++s6Step230Add1A)++(s6Step230Add0B++s6Step230Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230F4_flag : s6Step230HeadFvAfter.checkBorrow 1 [864]=some s6Step230F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step230HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step230F4_owned : (886::818::((s6Step230Add0A++s6Step230Add1A)++(s6Step230Add0B++s6Step230Add1B))).toFinset⊆s6Step230HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step230HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230F4_checked : compileHmrHybridF4Log s6Step230HeadFvAfter 886 818 s6Step230Add0A s6Step230Add0B s6Step230Add1A s6Step230Add1B [864] [908] s6Step230Add0Work s6Step230Add1Work=some s6Step230F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step230HeadFvAfter s6Step230F4FlagArena s6Step230Add0Arena s6Step230Add0During s6Step230Add1During 886 818
    s6Step230Add0A s6Step230Add0B s6Step230Add1A s6Step230Add1B [864] [908] s6Step230Add0Work s6Step230Add1Work
    (fun q hq => s6Step230F4_owned (List.mem_toFinset.mpr hq)) s6Step230F4_flag s6Step230F4_carry
    s6Step230F4_distinct s6Step230F4_apart s6Step230Add0_checked s6Step230Add1_checked

private theorem s6Step230Front_branch : s6Step230FrontSigmaArena.checkBorrow 1 [818]=some s6Step230HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step230FrontSigmaArena,s6Step230EntryGvAfter,s6Step230EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step230FrontSigmaArena,s6Step230EntryGvAfter,s6Step230EntryFBefore,s6Step230HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step230Front_entry : HmrFrontEntryValid s6Step230EntryFBefore s6Step230FrontBank 155 129 ⟨155,154,130,130⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step230FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step230EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step230EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step230FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step230Front_sigma : s6Step230EntryGvAfter.checkBorrow 1 [886]=some s6Step230FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step230EntryGvAfter,s6Step230EntryFBefore,arenaWires]
  · rfl

private def s6Step230HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230HeadFBefore : Arena := s6Step230HeadGAfter

private def s6Step230HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩

private def s6Step230HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step230HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],777⟩

private def s6Step230HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩

private theorem s6Step230HeadBank_incomingDistinct : ([s6Step230HeadGRow,s6Step230HeadFRow,s6Step230HeadGvRow,s6Step230HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230HeadF_Incoming : rowsOwned s6Step230HeadFBefore [s6Step230HeadFRow,s6Step230HeadGvRow,s6Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230HeadGRow,s6Step230HeadFRow,s6Step230HeadGvRow,s6Step230HeadFvRow] 1 s6Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230HeadBank_outgoingOwned : rowsOwned s6Step230HeadFvAfter [s6Step230HeadGOut,s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step230HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230HeadF_Outgoing : rowsOwned s6Step230HeadFvAfter [s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut] :=
  hmrRows_owned_drop s6Step230HeadFvAfter [s6Step230HeadGOut,s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut] 1 s6Step230HeadBank_outgoingOwned

private theorem s6Step230HeadF_distinct : (s6Step230HeadFRow.sign::s6Step230HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230HeadF_owned : (s6Step230HeadFRow.sign::s6Step230HeadFRow.payload).toFinset⊆s6Step230HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230HeadF_reserved : s6Step230HeadFBefore.reserve s6Step230HeadFFresh.toFinset=some s6Step230HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230HeadFFresh,arenaWires]
  · norm_num [s6Step230HeadFBefore,s6Step230HeadGAfter,s6Step230HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step230HeadFAfter,s6Step230HeadFBefore,s6Step230HeadGAfter,s6Step230HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step230HeadF_checked : planRowResizeLog s6Step230HeadFBefore s6Step230HeadFRow 156 s6Step230HeadFFresh=
    some (s6Step230HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 805],795⟩,growRow 795 s6Step230HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step230HeadFBefore s6Step230HeadFAfter s6Step230HeadFRow 156 s6Step230HeadFFresh
    s6Step230HeadF_distinct s6Step230HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230HeadF_reserved
  have rowEq : WindowRow.mk (s6Step230HeadFRow.payload++s6Step230HeadFFresh) s6Step230HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step230HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step230HeadFvBefore : Arena := s6Step230HeadGvAfter

private theorem s6Step230HeadFv_Incoming : rowsOwned s6Step230HeadFvBefore [s6Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230HeadGRow,s6Step230HeadFRow,s6Step230HeadGvRow,s6Step230HeadFvRow] 3 s6Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230HeadFv_Outgoing : rowsOwned s6Step230HeadFvAfter [s6Step230HeadFvOut] :=
  hmrRows_owned_drop s6Step230HeadFvAfter [s6Step230HeadGOut,s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut] 3 s6Step230HeadBank_outgoingOwned

private theorem s6Step230HeadFv_distinct : (s6Step230HeadFvRow.sign::s6Step230HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230HeadFv_owned : (s6Step230HeadFvRow.sign::s6Step230HeadFvRow.payload).toFinset⊆s6Step230HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230HeadFv_reserved : s6Step230HeadFvBefore.reserve s6Step230HeadFvFresh.toFinset=some s6Step230HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230HeadFvFresh,arenaWires]
  · norm_num [s6Step230HeadFvBefore,s6Step230HeadGvAfter,s6Step230HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step230HeadFvAfter,s6Step230HeadFvBefore,s6Step230HeadGvAfter,s6Step230HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step230HeadFv_checked : planRowResizeLog s6Step230HeadFvBefore s6Step230HeadFvRow 130 s6Step230HeadFvFresh=
    some (s6Step230HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩,growRow 776 s6Step230HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step230HeadFvBefore s6Step230HeadFvAfter s6Step230HeadFvRow 130 s6Step230HeadFvFresh
    s6Step230HeadFv_distinct s6Step230HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step230HeadFvRow.payload++s6Step230HeadFvFresh) s6Step230HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step230HeadG_Incoming : rowsOwned s6Step230HeadGBefore [s6Step230HeadGRow,s6Step230HeadFRow,s6Step230HeadGvRow,s6Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230HeadGRow,s6Step230HeadFRow,s6Step230HeadGvRow,s6Step230HeadFvRow] 0 s6Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230HeadG_Outgoing : rowsOwned s6Step230HeadFvAfter [s6Step230HeadGOut,s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut] :=
  hmrRows_owned_drop s6Step230HeadFvAfter [s6Step230HeadGOut,s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut] 0 s6Step230HeadBank_outgoingOwned

private theorem s6Step230HeadG_distinct : (s6Step230HeadGRow.sign::s6Step230HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230HeadG_owned : (s6Step230HeadGRow.sign::s6Step230HeadGRow.payload).toFinset⊆s6Step230HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230HeadG_reserved : s6Step230HeadGBefore.reserve s6Step230HeadGFresh.toFinset=some s6Step230HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230HeadGFresh,arenaWires]
  · norm_num [s6Step230HeadGBefore,s6Step230HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step230HeadGAfter,s6Step230HeadGBefore,s6Step230HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step230HeadG_checked : planRowResizeLog s6Step230HeadGBefore s6Step230HeadGRow 156 s6Step230HeadGFresh=
    some (s6Step230HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 823],777⟩,growRow 777 s6Step230HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step230HeadGBefore s6Step230HeadGAfter s6Step230HeadGRow 156 s6Step230HeadGFresh
    s6Step230HeadG_distinct s6Step230HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230HeadG_reserved
  have rowEq : WindowRow.mk (s6Step230HeadGRow.payload++s6Step230HeadGFresh) s6Step230HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 823],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step230HeadGvBefore : Arena := s6Step230HeadFAfter

private theorem s6Step230HeadGv_Incoming : rowsOwned s6Step230HeadGvBefore [s6Step230HeadGvRow,s6Step230HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step230HeadGRow,s6Step230HeadFRow,s6Step230HeadGvRow,s6Step230HeadFvRow] 2 s6Step230HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step230HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step230HeadGv_Outgoing : rowsOwned s6Step230HeadFvAfter [s6Step230HeadGvOut,s6Step230HeadFvOut] :=
  hmrRows_owned_drop s6Step230HeadFvAfter [s6Step230HeadGOut,s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut] 2 s6Step230HeadBank_outgoingOwned

private theorem s6Step230HeadGv_distinct : (s6Step230HeadGvRow.sign::s6Step230HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step230HeadGv_owned : (s6Step230HeadGvRow.sign::s6Step230HeadGvRow.payload).toFinset⊆s6Step230HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step230HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step230HeadGv_reserved : s6Step230HeadGvBefore.reserve s6Step230HeadGvFresh.toFinset=some s6Step230HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step230HeadGvFresh,arenaWires]
  · norm_num [s6Step230HeadGvBefore,s6Step230HeadFAfter,s6Step230HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step230HeadGvAfter,s6Step230HeadGvBefore,s6Step230HeadFAfter,s6Step230HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step230HeadGv_checked : planRowResizeLog s6Step230HeadGvBefore s6Step230HeadGvRow 130 s6Step230HeadGvFresh=
    some (s6Step230HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩,growRow 775 s6Step230HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step230HeadGvBefore s6Step230HeadGvAfter s6Step230HeadGvRow 130 s6Step230HeadGvFresh
    s6Step230HeadGv_distinct s6Step230HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step230HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step230HeadGvRow.payload++s6Step230HeadGvFresh) s6Step230HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step230HeadBank_rows : planWindowRowsLog s6Step230HeadGBefore [(s6Step230HeadGRow,156),(s6Step230HeadFRow,156),(s6Step230HeadGvRow,130),(s6Step230HeadFvRow,130)] [s6Step230HeadGFresh,s6Step230HeadFFresh,s6Step230HeadGvFresh,s6Step230HeadFvFresh]=
    some (s6Step230HeadFvAfter,[s6Step230HeadGOut,s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut],(growRow 777 s6Step230HeadGFresh ++ (growRow 795 s6Step230HeadFFresh ++ (growRow 775 s6Step230HeadGvFresh ++ (growRow 776 s6Step230HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step230HeadFvAfter [] []=some (s6Step230HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step230HeadFvBefore s6Step230HeadFvAfter s6Step230HeadFvAfter
    s6Step230HeadFvRow s6Step230HeadFvOut 130 s6Step230HeadFvFresh [] [] []
    (growRow 776 s6Step230HeadFvFresh) ([]) s6Step230HeadFv_Incoming s6Step230HeadFv_checked h4 s6Step230HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step230HeadGvBefore s6Step230HeadGvAfter s6Step230HeadFvAfter
    s6Step230HeadGvRow s6Step230HeadGvOut 130 s6Step230HeadGvFresh [(s6Step230HeadFvRow,130)] [s6Step230HeadFvFresh] [s6Step230HeadFvOut]
    (growRow 775 s6Step230HeadGvFresh) ((growRow 776 s6Step230HeadFvFresh ++ [])) s6Step230HeadGv_Incoming s6Step230HeadGv_checked h3 s6Step230HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step230HeadFBefore s6Step230HeadFAfter s6Step230HeadFvAfter
    s6Step230HeadFRow s6Step230HeadFOut 156 s6Step230HeadFFresh [(s6Step230HeadGvRow,130),(s6Step230HeadFvRow,130)] [s6Step230HeadGvFresh,s6Step230HeadFvFresh] [s6Step230HeadGvOut,s6Step230HeadFvOut]
    (growRow 795 s6Step230HeadFFresh) ((growRow 775 s6Step230HeadGvFresh ++ (growRow 776 s6Step230HeadFvFresh ++ []))) s6Step230HeadF_Incoming s6Step230HeadF_checked h2 s6Step230HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step230HeadGBefore s6Step230HeadGAfter s6Step230HeadFvAfter
    s6Step230HeadGRow s6Step230HeadGOut 156 s6Step230HeadGFresh [(s6Step230HeadFRow,156),(s6Step230HeadGvRow,130),(s6Step230HeadFvRow,130)] [s6Step230HeadFFresh,s6Step230HeadGvFresh,s6Step230HeadFvFresh] [s6Step230HeadFOut,s6Step230HeadGvOut,s6Step230HeadFvOut]
    (growRow 777 s6Step230HeadGFresh) ((growRow 795 s6Step230HeadFFresh ++ (growRow 775 s6Step230HeadGvFresh ++ (growRow 776 s6Step230HeadFvFresh ++ [])))) s6Step230HeadG_Incoming s6Step230HeadG_checked h1 s6Step230HeadG_Outgoing
  exact h0

private theorem s6Step230HeadBank_checked : compileHmrBankResizeLog .headroom s6Step230HeadGBefore ⟨s6Step230HeadFRow,s6Step230HeadGRow,s6Step230HeadFvRow,s6Step230HeadGvRow⟩ ⟨156,156,130,130⟩ [s6Step230HeadGFresh,s6Step230HeadFFresh,s6Step230HeadGvFresh,s6Step230HeadFvFresh]=
    some (s6Step230HeadFvAfter,⟨s6Step230HeadFOut,s6Step230HeadGOut,s6Step230HeadFvOut,s6Step230HeadGvOut⟩,(growRow 777 s6Step230HeadGFresh ++ (growRow 795 s6Step230HeadFFresh ++ (growRow 775 s6Step230HeadGvFresh ++ (growRow 776 s6Step230HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step230HeadBank_rows]
  rfl

private theorem s6Step230Front_checked : compileHmrSourceFrontLog s6Step230EntryFBefore s6Step230FrontBank 155 129 ⟨155,154,130,130⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step230FrontLog=some s6Step230FrontPlan := by
  have pairEq : s6Step230FrontPair=⟨s6Step230HeadFRow,s6Step230HeadGRow,s6Step230HeadFvRow,s6Step230HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step230FrontHead=⟨s6Step230ExitFRow,s6Step230ExitGRow,s6Step230ExitFvRow,s6Step230ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step230Add0A=s6Step230FrontHead.f.wires := by decide +kernel
  have gEq : s6Step230Add0B=s6Step230FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step230Add1A=s6Step230FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step230Add1B=s6Step230FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step230EntryFBefore s6Step230FrontBank 155 129 ⟨155,154,130,130⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step230FrontLog s6Step230FrontPlan
  · exact s6Step230Front_entry
  · exact s6Step230EntryBank_checked
  · exact s6Step230Front_sigma
  · rfl
  · exact s6Step230Front_branch
  · rfl
  · simpa only [s6Step230FrontPlan,pairEq] using s6Step230HeadBank_checked
  · simpa only [s6Step230FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step230F4_checked
  · exact s6Step230Counter_checked
  · rfl
  · simpa only [s6Step230FrontPlan,headEq] using s6Step230ExitBank_checked

private theorem s6Step230Complete_explicit_checked : compileHmrEarlyStepLog s6Step230EntryFBefore s6Step230FrontBank 155 129 ⟨155,154,130,130⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step230CompleteLog=some s6Step230CompletePlan := by
  let Q := s6Step230EarlyControlPlan
  have hq := s6Step230EarlyControl_plan_checked
  have fv1 : s6Step230CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step230CompleteOut.fv.payload[2]?.getD s6Step230CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step230CompleteOut.fv.payload[3]?.getD s6Step230CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step230CompleteOut.fv.payload[4]?.getD s6Step230CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step230EntryFBefore s6Step230EarlyControlArena s6Step230FrontBank 155 129 ⟨155,154,130,130⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step230CompleteLog s6Step230FrontPlan Q
    s6Step230Front_checked s6Step230Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step230Complete_owned s6Step230Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step230EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 s6Step230CompleteOut.fv.second (s6Step230CompleteOut.fv.payload[2]?.getD s6Step230CompleteOut.fv.sign) (s6Step230CompleteOut.fv.payload[3]?.getD s6Step230CompleteOut.fv.sign) (s6Step230CompleteOut.fv.payload[4]?.getD s6Step230CompleteOut.fv.sign) 818 49 s6Step230EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep230Arena : Arena := s6Step230EntryFBefore
def s6PrivateStep230Bank : WindowBank := s6Step230FrontBank
def s6PrivateStep230Spec : HmrSourceWalkStepLog := ⟨155,129,⟨155,154,130,130⟩,49,.early s6Step230CompleteLog⟩
def s6PrivateStep230Plan : HmrSourceStepPlan := .early s6Step230CompletePlan
theorem s6PrivateStep230_source : s6PrivateStep230Spec=s6ObservedLogs224[6] := rfl
theorem s6PrivateStep230_checked : compileHmrSourceStepLog s6PrivateStep230Arena s6PrivateStep230Bank
    s6PrivateStep230Spec.fgWidth s6PrivateStep230Spec.vWidth s6PrivateStep230Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 230 s6PrivateStep230Spec.need none s6PrivateStep230Spec.log=some s6PrivateStep230Plan := by
  change compileHmrSourceStepLog s6Step230EntryFBefore s6Step230FrontBank 155 129 ⟨155,154,130,130⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 230 49 none (.early s6Step230CompleteLog)=some (.early s6Step230CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 230<498)]
  rw [s6Step230Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
