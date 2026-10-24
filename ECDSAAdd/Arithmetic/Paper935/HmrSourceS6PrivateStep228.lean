import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep226
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

private def s6Step228CompleteMoves : List (Wire × Wire) := [(886,155)]

private def s6Step228EarlyControlLog : HmrEarlyControlLog := ⟨[886, 908, 856, 805, 879],[822],[825],[869, 786, 810, 809, 817, 812],[]⟩

private def s6Step228FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [789]],[[879], [805], [908], [856]],[[], [], [], []]⟩,[818],[864],[822],[825],[869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step228CompleteLog : HmrEarlyStepLog := ⟨s6Step228FrontLog,s6Step228CompleteMoves,s6Step228EarlyControlLog⟩

private def s6Step228ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411],795⟩

private def s6Step228ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step228ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],777⟩

private def s6Step228ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩

private def s6Step228FrontOut : WindowBank := ⟨s6Step228ExitFOut,s6Step228ExitGOut,s6Step228ExitFvOut,s6Step228ExitGvOut⟩

private def s6Step228CompleteOut : WindowBank := s6Step228FrontOut.repacked s6Step228CompleteMoves

private def s6Step228EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step228EarlyControlPositiveArena,[822],s6Step228EarlyControlEqualityArena,[825],⟨⟨818,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step228EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,886⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,856⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,879⟩]⟩

private def s6Step228EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step228EarlyControlZeroArena,s6Step228EarlyControlZeroPlan,s6Step228EarlyControlClassPlan,s6Step228EarlyControlFlagArena,s6Step228EarlyControlFittedArena,s6Step228EarlyControlHistoryArena,s6Step228EarlyControlSigmaArena,s6Step228EarlyControlOutputArena,s6Step228EarlyControlLog⟩

private def s6Step228CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step228Counter_bounded : s6Step228CounterWork.toFinset⊆arenaWires := by norm_num [s6Step228CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step228HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228CounterDuring : Arena := ⟨s6Step228HeadFvAfter.live∪s6Step228CounterWork.toFinset,Finset.union_subset s6Step228HeadFvAfter.bounded s6Step228Counter_bounded⟩

private def s6Step228EntryFFresh : List Wire := []

private def s6Step228EntryFvFresh : List Wire := []

private def s6Step228EntryGFresh : List Wire := []

private def s6Step228EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EntryGvFresh : List Wire := [789]

private def s6Step228ExitFExtra : List Wire := [805]

private def s6Step228ExitFvExtra : List Wire := [856]

private def s6Step228ExitGExtra : List Wire := [155, 879]

private def s6Step228ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228ExitGvExtra : List Wire := [908]

private def s6Step228Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228Add0Work : List Wire := [869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step228Add0_bounded : s6Step228Add0Work.toFinset⊆arenaWires := by
  have h : s6Step228Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step228Add0During : Arena := ⟨s6Step228Add0Arena.live∪s6Step228Add0Work.toFinset,Finset.union_subset s6Step228Add0Arena.bounded s6Step228Add0_bounded⟩

private def s6Step228Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228Add1Work : List Wire := [869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step228Add1_bounded : s6Step228Add1Work.toFinset⊆arenaWires := by
  have h : s6Step228Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step228Add1During : Arena := ⟨s6Step228Add1Arena.live∪s6Step228Add1Work.toFinset,Finset.union_subset s6Step228Add1Arena.bounded s6Step228Add1_bounded⟩

private def s6Step228F4FlagArena : Arena := ⟨s6Step228HeadFvAfter.live∪{822},Finset.union_subset s6Step228HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step228F4Plan : HmrHybridF4Plan := ⟨s6Step228F4FlagArena,[822],s6Step228Add0Arena,[825],s6Step228Add0During,s6Step228Add0Work,s6Step228Add1During,s6Step228Add1Work⟩

private def s6Step228HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 805],795⟩

private def s6Step228HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step228HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 879],777⟩

private def s6Step228HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 908],775⟩

private def s6Step228FrontHead : WindowBank := ⟨s6Step228HeadFOut,s6Step228HeadGOut,s6Step228HeadFvOut,s6Step228HeadGvOut⟩

private def s6Step228EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411],795⟩

private def s6Step228EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step228EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩

private def s6Step228EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩

private def s6Step228FrontPair : WindowBank := ⟨s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut⟩

private def s6Step228FrontSigmaArena : Arena := ⟨s6Step228EntryGvAfter.live∪{818},Finset.union_subset s6Step228EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step228HeadFFresh : List Wire := [805]

private def s6Step228HeadFvFresh : List Wire := [856]

private def s6Step228HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228HeadGFresh : List Wire := [879]

private def s6Step228HeadGvFresh : List Wire := [908]

private def s6Step228FrontPlan : HmrSourceFront := ⟨s6Step228EntryGvAfter,s6Step228FrontPair,(growRow 795 s6Step228EntryFFresh ++ (growRow 777 s6Step228EntryGFresh ++ (growRow 776 s6Step228EntryFvFresh ++ (growRow 775 s6Step228EntryGvFresh ++ [])))),s6Step228FrontSigmaArena,[818],s6Step228HeadGBefore,[864],
  s6Step228HeadFvAfter,s6Step228FrontHead,(growRow 777 s6Step228HeadGFresh ++ (growRow 795 s6Step228HeadFFresh ++ (growRow 775 s6Step228HeadGvFresh ++ (growRow 776 s6Step228HeadFvFresh ++ [])))),s6Step228F4Plan,s6Step228CounterDuring,s6Step228CounterWork,s6Step228ExitGvAfter,s6Step228FrontOut,(shrinkRow 777 s6Step228ExitGExtra ++ (shrinkRow 795 s6Step228ExitFExtra ++ (shrinkRow 776 s6Step228ExitFvExtra ++ (shrinkRow 775 s6Step228ExitGvExtra ++ []))))⟩

private def s6Step228CompletePlan : HmrEarlyStepPlan := ⟨s6Step228FrontPlan,s6Step228EarlyControlArena,s6Step228EarlyControlPlan,s6Step228CompleteMoves⟩

private theorem s6Step228Complete_apart : List.Disjoint (s6Step228CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [818, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step228CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[818, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step228Complete_owned : (s6Step228CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step228CompleteMoveArena : Arena := ⟨s6Step228ExitGvAfter.live∪{155},Finset.union_subset s6Step228ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step228Complete_repack : s6Step228ExitGvAfter.checkRepack s6Step228CompleteMoves=some s6Step228EarlyControlArena := by
  have owned : 886∈s6Step228ExitGvAfter.live := by norm_num [s6Step228ExitGvAfter,arenaWires]
  have reserve : s6Step228ExitGvAfter.reserve {155}=some s6Step228CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step228ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step228CompleteMoveArena.retireSet {886}=s6Step228EarlyControlArena := by
    unfold Arena.retireSet s6Step228EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step228CompleteMoveArena,s6Step228ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step228CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step228CompleteMoveArena.retireSet {886}).checkRepack []=some s6Step228EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step228EarlyControl_branchOwned : ([864] : List Wire).toFinset⊆s6Step228EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_branch : compileHmrBranchRetirement s6Step228EarlyControlSigmaArena 864=some s6Step228EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step228EarlyControl_branchOwned
  · ext q
    simp [s6Step228EarlyControlOutputArena,s6Step228EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step228EarlyControl_classEqualityBorrow : s6Step228EarlyControlPositiveArena.checkBorrow (([818, 822] : List Wire).length-1) s6Step228EarlyControlLog.classWork=some s6Step228EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step228EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step228EarlyControlEqualityArena,s6Step228EarlyControlPositiveArena,s6Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step228EarlyControl_classEqualityOwned : ([818, 822] : List Wire).toFinset⊆s6Step228EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_classEquality : compileHmrEqualityLog s6Step228EarlyControlPositiveArena [818, 822] 0 s6Step228EarlyControlLog.classWork=some (s6Step228EarlyControlEqualityArena,s6Step228EarlyControlLog.classWork,s6Step228EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step228EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step228EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step228EarlyControl_classOwned : ([769, 879, 818] : List Wire).toFinset⊆s6Step228EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_positiveBorrow : s6Step228EarlyControlZeroArena.checkBorrow (1) s6Step228EarlyControlLog.positiveWork=some s6Step228EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step228EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step228EarlyControlPositiveArena,s6Step228EarlyControlZeroArena,s6Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step228EarlyControl_class : compileHmrSourceClassLog s6Step228EarlyControlZeroArena false 769 s6Step228EarlyControlZeroPlan.top 0 818 s6Step228EarlyControlLog.positiveWork s6Step228EarlyControlLog.classWork=some s6Step228EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step228EarlyControlClassPlan s6Step228EarlyControlZeroArena false 769 s6Step228EarlyControlZeroPlan.top 0 818
  constructor
  · decide +kernel
  · exact s6Step228EarlyControl_classOwned
  · exact s6Step228EarlyControl_positiveBorrow
  · exact s6Step228EarlyControl_classEquality

private theorem s6Step228EarlyControl_entryRecordOwned : ([864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_entrySigmaOwned : ([818, 254] : List Wire).toFinset⊆s6Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_fitBorrow : s6Step228EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step228EarlyControlLog.recordFresh=some s6Step228EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step228EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step228EarlyControlFittedArena,s6Step228EarlyControlFlagArena,s6Step228EarlyControlLog,arenaWires]

private theorem s6Step228EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step228EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_fit : compileHmrRecordGrowLog s6Step228EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step228EarlyControlLog.recordFresh=some s6Step228EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step228EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step228EarlyControl_fitBorrow

private theorem s6Step228EarlyControl_flagsBorrow : s6Step228EarlyControlEqualityArena.checkBorrow (6) s6Step228EarlyControlLog.flagWork=some s6Step228EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step228EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step228EarlyControlFlagArena,s6Step228EarlyControlEqualityArena,s6Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step228EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step228EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_flags : compileHmrFlagsLog s6Step228EarlyControlClassPlan.equalityArena s6Step228EarlyControlClassPlan.equality.top 253 252 251 s6Step228EarlyControlLog.flagWork=some s6Step228EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step228EarlyControl_flagsOwned⟩
  · exact s6Step228EarlyControl_flagsBorrow

private theorem s6Step228EarlyControl_historyBorrow : s6Step228EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step228EarlyControlLog.recordFresh=some s6Step228EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step228EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step228EarlyControlHistoryArena,s6Step228EarlyControlArena,s6Step228EarlyControlLog,arenaWires]

private theorem s6Step228EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_history : compileHmrRecordGrowLog s6Step228EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step228EarlyControlLog.recordFresh=some s6Step228EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step228EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step228EarlyControl_historyBorrow

private theorem s6Step228EarlyControl_sigmaOwned : ([254, 818] : List Wire).toFinset⊆s6Step228EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_sigmaReleaseOwned : ([818] : List Wire).toFinset⊆s6Step228EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_sigmaRelease : s6Step228EarlyControlHistoryArena.release {818} (fun _ => false)=some s6Step228EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step228EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step228EarlyControlSigmaArena,s6Step228EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step228EarlyControl_sigma : compileHmrSigmaDropLog s6Step228EarlyControlHistoryArena false 0 0 254 818 []=some s6Step228EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step228EarlyControl_sigmaOwned⟩
  · exact s6Step228EarlyControl_sigmaRelease

private theorem s6Step228EarlyControl_zeroBorrow : s6Step228EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step228EarlyControlLog.zeroWork=some s6Step228EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step228EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step228EarlyControlZeroArena,s6Step228EarlyControlArena,s6Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step228EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step228EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EarlyControl_zero : compileHmrEqualityLog s6Step228EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step228EarlyControlLog.zeroWork=some (s6Step228EarlyControlZeroArena,s6Step228EarlyControlLog.zeroWork,s6Step228EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step228EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step228EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step228EarlyControl_logged : s6Step228EarlyControlPlan.Logged s6Step228EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 818 254 253 252 251 864 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step228EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step228EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step228EarlyControl_zero
  · exact s6Step228EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step228EarlyControl_flags
  · exact s6Step228EarlyControl_fit
  · exact s6Step228EarlyControl_history
  · exact s6Step228EarlyControl_sigma
  · exact s6Step228EarlyControl_branch

private theorem s6Step228EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step228EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 818 254 253 252 251 864 49 s6Step228EarlyControlLog=some s6Step228EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step228EarlyControlPlan s6Step228EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 818 254 253 252 251 864 49 s6Step228EarlyControl_logged

private def s6Step228EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411],795⟩

private def s6Step228EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step228EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩

private def s6Step228EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892],775⟩

private def s6Step228FrontBank : WindowBank := ⟨s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow⟩

private def s6Step228Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 805, 795]

private def s6Step228Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 879, 777]

private def s6Step228Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 776]

private def s6Step228Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 908, 775]

private theorem s6Step228Counter_apart : Disjoint s6Step228HeadFvAfter.live s6Step228CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step228HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228Counter_borrowed : s6Step228HeadFvAfter.checkBorrow 4 s6Step228CounterWork=some s6Step228CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step228HeadFvAfter s6Step228CounterDuring s6Step228CounterWork.toFinset s6Step228Counter_bounded s6Step228Counter_apart rfl

private theorem s6Step228Counter_owned : (818::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step228HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step228HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228Counter_checked : compileHmrCounterStepLog s6Step228HeadFvAfter true 818 [774, 773, 772, 771, 770, 769] s6Step228CounterWork=some s6Step228CounterDuring := by
  have owned : ∀q∈818::[774, 773, 772, 771, 770, 769],q∈s6Step228HeadFvAfter.live := fun q hq => s6Step228Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step228Counter_borrowed

private def s6Step228EntryFAfter : Arena := s6Step228EntryFBefore

private theorem s6Step228EntryBank_incomingDistinct : ([s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228EntryF_Incoming : rowsOwned s6Step228EntryFBefore [s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow] 0 s6Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228EntryBank_outgoingOwned : rowsOwned s6Step228EntryGvAfter [s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step228EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228EntryF_Outgoing : rowsOwned s6Step228EntryGvAfter [s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut] :=
  hmrRows_owned_drop s6Step228EntryGvAfter [s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut] 0 s6Step228EntryBank_outgoingOwned

private theorem s6Step228EntryF_distinct : (s6Step228EntryFRow.sign::s6Step228EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228EntryF_owned : (s6Step228EntryFRow.sign::s6Step228EntryFRow.payload).toFinset⊆s6Step228EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EntryF_reserved : s6Step228EntryFBefore.reserve s6Step228EntryFFresh.toFinset=some s6Step228EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228EntryFFresh,arenaWires]
  · norm_num [s6Step228EntryFBefore,s6Step228EntryFFresh,arenaWires]
  · simp only [s6Step228EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step228EntryF_checked : planRowResizeLog s6Step228EntryFBefore s6Step228EntryFRow 156 s6Step228EntryFFresh=
    some (s6Step228EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411],795⟩,growRow 795 s6Step228EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step228EntryFBefore s6Step228EntryFAfter s6Step228EntryFRow 156 s6Step228EntryFFresh
    s6Step228EntryF_distinct s6Step228EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228EntryF_reserved
  have rowEq : WindowRow.mk (s6Step228EntryFRow.payload++s6Step228EntryFFresh) s6Step228EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step228EntryFvAfter : Arena := s6Step228EntryFBefore

private def s6Step228EntryFvBefore : Arena := s6Step228EntryFBefore

private theorem s6Step228EntryFv_Incoming : rowsOwned s6Step228EntryFvBefore [s6Step228EntryFvRow,s6Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow] 2 s6Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228EntryFv_Outgoing : rowsOwned s6Step228EntryGvAfter [s6Step228EntryFvOut,s6Step228EntryGvOut] :=
  hmrRows_owned_drop s6Step228EntryGvAfter [s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut] 2 s6Step228EntryBank_outgoingOwned

private theorem s6Step228EntryFv_distinct : (s6Step228EntryFvRow.sign::s6Step228EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228EntryFv_owned : (s6Step228EntryFvRow.sign::s6Step228EntryFvRow.payload).toFinset⊆s6Step228EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EntryFv_reserved : s6Step228EntryFvBefore.reserve s6Step228EntryFvFresh.toFinset=some s6Step228EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228EntryFvFresh,arenaWires]
  · norm_num [s6Step228EntryFvBefore,s6Step228EntryFBefore,s6Step228EntryFvFresh,arenaWires]
  · simp only [s6Step228EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step228EntryFv_checked : planRowResizeLog s6Step228EntryFvBefore s6Step228EntryFvRow 129 s6Step228EntryFvFresh=
    some (s6Step228EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩,growRow 776 s6Step228EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step228EntryFvBefore s6Step228EntryFvAfter s6Step228EntryFvRow 129 s6Step228EntryFvFresh
    s6Step228EntryFv_distinct s6Step228EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step228EntryFvRow.payload++s6Step228EntryFvFresh) s6Step228EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step228EntryGAfter : Arena := s6Step228EntryFBefore

private def s6Step228EntryGBefore : Arena := s6Step228EntryFBefore

private theorem s6Step228EntryG_Incoming : rowsOwned s6Step228EntryGBefore [s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow] 1 s6Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228EntryG_Outgoing : rowsOwned s6Step228EntryGvAfter [s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut] :=
  hmrRows_owned_drop s6Step228EntryGvAfter [s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut] 1 s6Step228EntryBank_outgoingOwned

private theorem s6Step228EntryG_distinct : (s6Step228EntryGRow.sign::s6Step228EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228EntryG_owned : (s6Step228EntryGRow.sign::s6Step228EntryGRow.payload).toFinset⊆s6Step228EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EntryG_reserved : s6Step228EntryGBefore.reserve s6Step228EntryGFresh.toFinset=some s6Step228EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228EntryGFresh,arenaWires]
  · norm_num [s6Step228EntryGBefore,s6Step228EntryFBefore,s6Step228EntryGFresh,arenaWires]
  · simp only [s6Step228EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step228EntryG_checked : planRowResizeLog s6Step228EntryGBefore s6Step228EntryGRow 156 s6Step228EntryGFresh=
    some (s6Step228EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩,growRow 777 s6Step228EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step228EntryGBefore s6Step228EntryGAfter s6Step228EntryGRow 156 s6Step228EntryGFresh
    s6Step228EntryG_distinct s6Step228EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228EntryG_reserved
  have rowEq : WindowRow.mk (s6Step228EntryGRow.payload++s6Step228EntryGFresh) s6Step228EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step228EntryGvBefore : Arena := s6Step228EntryFBefore

private theorem s6Step228EntryGv_Incoming : rowsOwned s6Step228EntryGvBefore [s6Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow] 3 s6Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228EntryGv_Outgoing : rowsOwned s6Step228EntryGvAfter [s6Step228EntryGvOut] :=
  hmrRows_owned_drop s6Step228EntryGvAfter [s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut] 3 s6Step228EntryBank_outgoingOwned

private theorem s6Step228EntryGv_distinct : (s6Step228EntryGvRow.sign::s6Step228EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228EntryGv_owned : (s6Step228EntryGvRow.sign::s6Step228EntryGvRow.payload).toFinset⊆s6Step228EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228EntryGv_reserved : s6Step228EntryGvBefore.reserve s6Step228EntryGvFresh.toFinset=some s6Step228EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228EntryGvFresh,arenaWires]
  · norm_num [s6Step228EntryGvBefore,s6Step228EntryFBefore,s6Step228EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step228EntryGvAfter,s6Step228EntryGvBefore,s6Step228EntryFBefore,s6Step228EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step228EntryGv_checked : planRowResizeLog s6Step228EntryGvBefore s6Step228EntryGvRow 129 s6Step228EntryGvFresh=
    some (s6Step228EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩,growRow 775 s6Step228EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step228EntryGvBefore s6Step228EntryGvAfter s6Step228EntryGvRow 129 s6Step228EntryGvFresh
    s6Step228EntryGv_distinct s6Step228EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step228EntryGvRow.payload++s6Step228EntryGvFresh) s6Step228EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step228EntryBank_rows : planWindowRowsLog s6Step228EntryFBefore [(s6Step228EntryFRow,156),(s6Step228EntryGRow,156),(s6Step228EntryFvRow,129),(s6Step228EntryGvRow,129)] [s6Step228EntryFFresh,s6Step228EntryGFresh,s6Step228EntryFvFresh,s6Step228EntryGvFresh]=
    some (s6Step228EntryGvAfter,[s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut],(growRow 795 s6Step228EntryFFresh ++ (growRow 777 s6Step228EntryGFresh ++ (growRow 776 s6Step228EntryFvFresh ++ (growRow 775 s6Step228EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step228EntryGvAfter [] []=some (s6Step228EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step228EntryGvBefore s6Step228EntryGvAfter s6Step228EntryGvAfter
    s6Step228EntryGvRow s6Step228EntryGvOut 129 s6Step228EntryGvFresh [] [] []
    (growRow 775 s6Step228EntryGvFresh) ([]) s6Step228EntryGv_Incoming s6Step228EntryGv_checked h4 s6Step228EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step228EntryFvBefore s6Step228EntryFvAfter s6Step228EntryGvAfter
    s6Step228EntryFvRow s6Step228EntryFvOut 129 s6Step228EntryFvFresh [(s6Step228EntryGvRow,129)] [s6Step228EntryGvFresh] [s6Step228EntryGvOut]
    (growRow 776 s6Step228EntryFvFresh) ((growRow 775 s6Step228EntryGvFresh ++ [])) s6Step228EntryFv_Incoming s6Step228EntryFv_checked h3 s6Step228EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step228EntryGBefore s6Step228EntryGAfter s6Step228EntryGvAfter
    s6Step228EntryGRow s6Step228EntryGOut 156 s6Step228EntryGFresh [(s6Step228EntryFvRow,129),(s6Step228EntryGvRow,129)] [s6Step228EntryFvFresh,s6Step228EntryGvFresh] [s6Step228EntryFvOut,s6Step228EntryGvOut]
    (growRow 777 s6Step228EntryGFresh) ((growRow 776 s6Step228EntryFvFresh ++ (growRow 775 s6Step228EntryGvFresh ++ []))) s6Step228EntryG_Incoming s6Step228EntryG_checked h2 s6Step228EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step228EntryFBefore s6Step228EntryFAfter s6Step228EntryGvAfter
    s6Step228EntryFRow s6Step228EntryFOut 156 s6Step228EntryFFresh [(s6Step228EntryGRow,156),(s6Step228EntryFvRow,129),(s6Step228EntryGvRow,129)] [s6Step228EntryGFresh,s6Step228EntryFvFresh,s6Step228EntryGvFresh] [s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut]
    (growRow 795 s6Step228EntryFFresh) ((growRow 777 s6Step228EntryGFresh ++ (growRow 776 s6Step228EntryFvFresh ++ (growRow 775 s6Step228EntryGvFresh ++ [])))) s6Step228EntryF_Incoming s6Step228EntryF_checked h1 s6Step228EntryF_Outgoing
  exact h0

private theorem s6Step228EntryBank_checked : compileHmrBankResizeLog .entry s6Step228EntryFBefore ⟨s6Step228EntryFRow,s6Step228EntryGRow,s6Step228EntryFvRow,s6Step228EntryGvRow⟩ ⟨156,156,129,129⟩ [s6Step228EntryFFresh,s6Step228EntryGFresh,s6Step228EntryFvFresh,s6Step228EntryGvFresh]=
    some (s6Step228EntryGvAfter,⟨s6Step228EntryFOut,s6Step228EntryGOut,s6Step228EntryFvOut,s6Step228EntryGvOut⟩,(growRow 795 s6Step228EntryFFresh ++ (growRow 777 s6Step228EntryGFresh ++ (growRow 776 s6Step228EntryFvFresh ++ (growRow 775 s6Step228EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step228EntryBank_rows]
  rfl

private def s6Step228ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228ExitFBefore : Arena := s6Step228ExitGAfter

private def s6Step228ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 805],795⟩

private def s6Step228ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step228ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 879],777⟩

private def s6Step228ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 908],775⟩

private theorem s6Step228ExitBank_incomingDistinct : ([s6Step228ExitGRow,s6Step228ExitFRow,s6Step228ExitFvRow,s6Step228ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228ExitF_Incoming : rowsOwned s6Step228ExitFBefore [s6Step228ExitFRow,s6Step228ExitFvRow,s6Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228ExitGRow,s6Step228ExitFRow,s6Step228ExitFvRow,s6Step228ExitGvRow] 1 s6Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228ExitFBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228ExitBank_outgoingOwned : rowsOwned s6Step228ExitGvAfter [s6Step228ExitGOut,s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step228ExitGvAfter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228ExitF_Outgoing : rowsOwned s6Step228ExitGvAfter [s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut] :=
  hmrRows_owned_drop s6Step228ExitGvAfter [s6Step228ExitGOut,s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut] 1 s6Step228ExitBank_outgoingOwned

private theorem s6Step228ExitF_distinct : (s6Step228ExitFRow.sign::s6Step228ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228ExitF_owned : (s6Step228ExitFRow.sign::s6Step228ExitFRow.payload).toFinset⊆s6Step228ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228ExitFBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228ExitF_retired : s6Step228ExitFBefore.retireSet s6Step228ExitFExtra.toFinset=s6Step228ExitFAfter := by
  unfold Arena.retireSet s6Step228ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step228ExitFBefore,s6Step228ExitGAfter,s6Step228ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step228ExitF_checked : planRowResizeLog s6Step228ExitFBefore s6Step228ExitFRow 156 []=
    some (s6Step228ExitFAfter,s6Step228ExitFOut,shrinkRow 795 s6Step228ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step228ExitFBefore s6Step228ExitFRow 156 s6Step228ExitF_distinct s6Step228ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step228ExitFRow.payload.take 156) s6Step228ExitFRow.sign=s6Step228ExitFOut := by decide +kernel
  have hi : s6Step228ExitFRow.payload.drop 156=s6Step228ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step228ExitF_retired] at result
  exact result

private def s6Step228ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228ExitFvBefore : Arena := s6Step228ExitFAfter

private theorem s6Step228ExitFv_Incoming : rowsOwned s6Step228ExitFvBefore [s6Step228ExitFvRow,s6Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228ExitGRow,s6Step228ExitFRow,s6Step228ExitFvRow,s6Step228ExitGvRow] 2 s6Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228ExitFvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228ExitFv_Outgoing : rowsOwned s6Step228ExitGvAfter [s6Step228ExitFvOut,s6Step228ExitGvOut] :=
  hmrRows_owned_drop s6Step228ExitGvAfter [s6Step228ExitGOut,s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut] 2 s6Step228ExitBank_outgoingOwned

private theorem s6Step228ExitFv_distinct : (s6Step228ExitFvRow.sign::s6Step228ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228ExitFv_owned : (s6Step228ExitFvRow.sign::s6Step228ExitFvRow.payload).toFinset⊆s6Step228ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228ExitFvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228ExitFv_retired : s6Step228ExitFvBefore.retireSet s6Step228ExitFvExtra.toFinset=s6Step228ExitFvAfter := by
  unfold Arena.retireSet s6Step228ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step228ExitFvBefore,s6Step228ExitFAfter,s6Step228ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step228ExitFv_checked : planRowResizeLog s6Step228ExitFvBefore s6Step228ExitFvRow 129 []=
    some (s6Step228ExitFvAfter,s6Step228ExitFvOut,shrinkRow 776 s6Step228ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step228ExitFvBefore s6Step228ExitFvRow 129 s6Step228ExitFv_distinct s6Step228ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step228ExitFvRow.payload.take 129) s6Step228ExitFvRow.sign=s6Step228ExitFvOut := by decide +kernel
  have hi : s6Step228ExitFvRow.payload.drop 129=s6Step228ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step228ExitFv_retired] at result
  exact result

private def s6Step228ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step228ExitG_Incoming : rowsOwned s6Step228ExitGBefore [s6Step228ExitGRow,s6Step228ExitFRow,s6Step228ExitFvRow,s6Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228ExitGRow,s6Step228ExitFRow,s6Step228ExitFvRow,s6Step228ExitGvRow] 0 s6Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228ExitG_Outgoing : rowsOwned s6Step228ExitGvAfter [s6Step228ExitGOut,s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut] :=
  hmrRows_owned_drop s6Step228ExitGvAfter [s6Step228ExitGOut,s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut] 0 s6Step228ExitBank_outgoingOwned

private theorem s6Step228ExitG_distinct : (s6Step228ExitGRow.sign::s6Step228ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228ExitG_owned : (s6Step228ExitGRow.sign::s6Step228ExitGRow.payload).toFinset⊆s6Step228ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228ExitG_retired : s6Step228ExitGBefore.retireSet s6Step228ExitGExtra.toFinset=s6Step228ExitGAfter := by
  unfold Arena.retireSet s6Step228ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step228ExitGBefore,s6Step228ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step228ExitG_checked : planRowResizeLog s6Step228ExitGBefore s6Step228ExitGRow 155 []=
    some (s6Step228ExitGAfter,s6Step228ExitGOut,shrinkRow 777 s6Step228ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step228ExitGBefore s6Step228ExitGRow 155 s6Step228ExitG_distinct s6Step228ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step228ExitGRow.payload.take 155) s6Step228ExitGRow.sign=s6Step228ExitGOut := by decide +kernel
  have hi : s6Step228ExitGRow.payload.drop 155=s6Step228ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step228ExitG_retired] at result
  exact result

private def s6Step228ExitGvBefore : Arena := s6Step228ExitFvAfter

private theorem s6Step228ExitGv_Incoming : rowsOwned s6Step228ExitGvBefore [s6Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228ExitGRow,s6Step228ExitFRow,s6Step228ExitFvRow,s6Step228ExitGvRow] 3 s6Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228ExitGvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228ExitGv_Outgoing : rowsOwned s6Step228ExitGvAfter [s6Step228ExitGvOut] :=
  hmrRows_owned_drop s6Step228ExitGvAfter [s6Step228ExitGOut,s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut] 3 s6Step228ExitBank_outgoingOwned

private theorem s6Step228ExitGv_distinct : (s6Step228ExitGvRow.sign::s6Step228ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228ExitGv_owned : (s6Step228ExitGvRow.sign::s6Step228ExitGvRow.payload).toFinset⊆s6Step228ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228ExitGvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228ExitGv_retired : s6Step228ExitGvBefore.retireSet s6Step228ExitGvExtra.toFinset=s6Step228ExitGvAfter := by
  unfold Arena.retireSet s6Step228ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step228ExitGvBefore,s6Step228ExitFvAfter,s6Step228ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step228ExitGv_checked : planRowResizeLog s6Step228ExitGvBefore s6Step228ExitGvRow 129 []=
    some (s6Step228ExitGvAfter,s6Step228ExitGvOut,shrinkRow 775 s6Step228ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step228ExitGvBefore s6Step228ExitGvRow 129 s6Step228ExitGv_distinct s6Step228ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step228ExitGvRow.payload.take 129) s6Step228ExitGvRow.sign=s6Step228ExitGvOut := by decide +kernel
  have hi : s6Step228ExitGvRow.payload.drop 129=s6Step228ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step228ExitGv_retired] at result
  exact result

private theorem s6Step228ExitBank_rows : planWindowRowsLog s6Step228ExitGBefore [(s6Step228ExitGRow,155),(s6Step228ExitFRow,156),(s6Step228ExitFvRow,129),(s6Step228ExitGvRow,129)] [[],[],[],[]]=
    some (s6Step228ExitGvAfter,[s6Step228ExitGOut,s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut],(shrinkRow 777 s6Step228ExitGExtra ++ (shrinkRow 795 s6Step228ExitFExtra ++ (shrinkRow 776 s6Step228ExitFvExtra ++ (shrinkRow 775 s6Step228ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step228ExitGvAfter [] []=some (s6Step228ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step228ExitGvBefore s6Step228ExitGvAfter s6Step228ExitGvAfter
    s6Step228ExitGvRow s6Step228ExitGvOut 129 [] [] [] []
    (shrinkRow 775 s6Step228ExitGvExtra) ([]) s6Step228ExitGv_Incoming s6Step228ExitGv_checked h4 s6Step228ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step228ExitFvBefore s6Step228ExitFvAfter s6Step228ExitGvAfter
    s6Step228ExitFvRow s6Step228ExitFvOut 129 [] [(s6Step228ExitGvRow,129)] [[]] [s6Step228ExitGvOut]
    (shrinkRow 776 s6Step228ExitFvExtra) ((shrinkRow 775 s6Step228ExitGvExtra ++ [])) s6Step228ExitFv_Incoming s6Step228ExitFv_checked h3 s6Step228ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step228ExitFBefore s6Step228ExitFAfter s6Step228ExitGvAfter
    s6Step228ExitFRow s6Step228ExitFOut 156 [] [(s6Step228ExitFvRow,129),(s6Step228ExitGvRow,129)] [[],[]] [s6Step228ExitFvOut,s6Step228ExitGvOut]
    (shrinkRow 795 s6Step228ExitFExtra) ((shrinkRow 776 s6Step228ExitFvExtra ++ (shrinkRow 775 s6Step228ExitGvExtra ++ []))) s6Step228ExitF_Incoming s6Step228ExitF_checked h2 s6Step228ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step228ExitGBefore s6Step228ExitGAfter s6Step228ExitGvAfter
    s6Step228ExitGRow s6Step228ExitGOut 155 [] [(s6Step228ExitFRow,156),(s6Step228ExitFvRow,129),(s6Step228ExitGvRow,129)] [[],[],[]] [s6Step228ExitFOut,s6Step228ExitFvOut,s6Step228ExitGvOut]
    (shrinkRow 777 s6Step228ExitGExtra) ((shrinkRow 795 s6Step228ExitFExtra ++ (shrinkRow 776 s6Step228ExitFvExtra ++ (shrinkRow 775 s6Step228ExitGvExtra ++ [])))) s6Step228ExitG_Incoming s6Step228ExitG_checked h1 s6Step228ExitG_Outgoing
  exact h0

private theorem s6Step228ExitBank_checked : compileHmrBankResizeLog .exit s6Step228ExitGBefore ⟨s6Step228ExitFRow,s6Step228ExitGRow,s6Step228ExitFvRow,s6Step228ExitGvRow⟩ ⟨156,155,129,129⟩ [[],[],[],[]]=
    some (s6Step228ExitGvAfter,⟨s6Step228ExitFOut,s6Step228ExitGOut,s6Step228ExitFvOut,s6Step228ExitGvOut⟩,(shrinkRow 777 s6Step228ExitGExtra ++ (shrinkRow 795 s6Step228ExitFExtra ++ (shrinkRow 776 s6Step228ExitFvExtra ++ (shrinkRow 775 s6Step228ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step228ExitBank_rows]
  rfl

private theorem s6Step228Add0_apart : Disjoint s6Step228Add0Arena.live s6Step228Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step228Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228Add0_card : s6Step228Add0Arena.live.card=893 := by
  decide +kernel

private theorem s6Step228Add0_borrowed : s6Step228Add0Arena.checkBorrow (hmrHybridCount s6Step228Add0Arena s6Step228Add0B.length) s6Step228Add0Work=some s6Step228Add0During := by
  have len : s6Step228Add0Work.length=hmrHybridCount s6Step228Add0Arena s6Step228Add0B.length := by
    rw [hmrHybridCount,s6Step228Add0_card]
    decide +kernel
  have nd : s6Step228Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step228Add0Arena s6Step228Add0During s6Step228Add0Work.toFinset s6Step228Add0_bounded s6Step228Add0_apart rfl

private theorem s6Step228Add0_distinct : (822::864::825::(s6Step228Add0A++s6Step228Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228Add0_owned : (822::864::825::(s6Step228Add0A++s6Step228Add0B)).toFinset⊆s6Step228Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step228Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228Add0_checked : compileHmrHybridCinLog s6Step228Add0Arena 864 822 825 s6Step228Add0A s6Step228Add0B s6Step228Add0Work=some s6Step228Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step228Add0Arena s6Step228Add0During 864 822 825 s6Step228Add0A s6Step228Add0B s6Step228Add0Work
    (by decide +kernel) (by decide +kernel) s6Step228Add0_distinct
    (fun q hq => s6Step228Add0_owned (List.mem_toFinset.mpr hq)) s6Step228Add0_borrowed

private theorem s6Step228Add1_apart : Disjoint s6Step228Add1Arena.live s6Step228Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step228Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228Add1_card : s6Step228Add1Arena.live.card=893 := by
  decide +kernel

private theorem s6Step228Add1_borrowed : s6Step228Add1Arena.checkBorrow (hmrHybridCount s6Step228Add1Arena s6Step228Add1B.length) s6Step228Add1Work=some s6Step228Add1During := by
  have len : s6Step228Add1Work.length=hmrHybridCount s6Step228Add1Arena s6Step228Add1B.length := by
    rw [hmrHybridCount,s6Step228Add1_card]
    decide +kernel
  have nd : s6Step228Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step228Add1Arena s6Step228Add1During s6Step228Add1Work.toFinset s6Step228Add1_bounded s6Step228Add1_apart rfl

private theorem s6Step228Add1_distinct : (822::864::825::(s6Step228Add1A++s6Step228Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228Add1_owned : (822::864::825::(s6Step228Add1A++s6Step228Add1B)).toFinset⊆s6Step228Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step228Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228Add1_checked : compileHmrHybridCinLog s6Step228Add1Arena 864 822 825 s6Step228Add1A s6Step228Add1B s6Step228Add1Work=some s6Step228Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step228Add1Arena s6Step228Add1During 864 822 825 s6Step228Add1A s6Step228Add1B s6Step228Add1Work
    (by decide +kernel) (by decide +kernel) s6Step228Add1_distinct
    (fun q hq => s6Step228Add1_owned (List.mem_toFinset.mpr hq)) s6Step228Add1_borrowed

private theorem s6Step228F4_apart : Disjoint (s6Step228Add0A++s6Step228Add0B).toFinset (s6Step228Add1A++s6Step228Add1B).toFinset := by
  have nd : ((s6Step228Add0A++s6Step228Add0B)++(s6Step228Add1A++s6Step228Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step228F4_carry : s6Step228F4FlagArena.checkBorrow 1 [825]=some s6Step228Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step228F4FlagArena,s6Step228HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step228F4FlagArena,s6Step228HeadFvAfter,s6Step228Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step228F4_distinct : (818::864::822::825::((s6Step228Add0A++s6Step228Add1A)++(s6Step228Add0B++s6Step228Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228F4_flag : s6Step228HeadFvAfter.checkBorrow 1 [822]=some s6Step228F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step228HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step228F4_owned : (818::864::((s6Step228Add0A++s6Step228Add1A)++(s6Step228Add0B++s6Step228Add1B))).toFinset⊆s6Step228HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step228HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228F4_checked : compileHmrHybridF4Log s6Step228HeadFvAfter 818 864 s6Step228Add0A s6Step228Add0B s6Step228Add1A s6Step228Add1B [822] [825] s6Step228Add0Work s6Step228Add1Work=some s6Step228F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step228HeadFvAfter s6Step228F4FlagArena s6Step228Add0Arena s6Step228Add0During s6Step228Add1During 818 864
    s6Step228Add0A s6Step228Add0B s6Step228Add1A s6Step228Add1B [822] [825] s6Step228Add0Work s6Step228Add1Work
    (fun q hq => s6Step228F4_owned (List.mem_toFinset.mpr hq)) s6Step228F4_flag s6Step228F4_carry
    s6Step228F4_distinct s6Step228F4_apart s6Step228Add0_checked s6Step228Add1_checked

private theorem s6Step228Front_branch : s6Step228FrontSigmaArena.checkBorrow 1 [864]=some s6Step228HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step228FrontSigmaArena,s6Step228EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step228FrontSigmaArena,s6Step228EntryGvAfter,s6Step228HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step228Front_entry : HmrFrontEntryValid s6Step228EntryFBefore s6Step228FrontBank 156 129 ⟨156,155,129,129⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step228FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step228EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step228EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step228FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step228Front_sigma : s6Step228EntryGvAfter.checkBorrow 1 [818]=some s6Step228FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step228EntryGvAfter,arenaWires]
  · rfl

private def s6Step228HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228HeadFBefore : Arena := s6Step228HeadGAfter

private def s6Step228HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411],795⟩

private def s6Step228HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step228HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩

private def s6Step228HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789],775⟩

private theorem s6Step228HeadBank_incomingDistinct : ([s6Step228HeadGRow,s6Step228HeadFRow,s6Step228HeadGvRow,s6Step228HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228HeadF_Incoming : rowsOwned s6Step228HeadFBefore [s6Step228HeadFRow,s6Step228HeadGvRow,s6Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228HeadGRow,s6Step228HeadFRow,s6Step228HeadGvRow,s6Step228HeadFvRow] 1 s6Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228HeadBank_outgoingOwned : rowsOwned s6Step228HeadFvAfter [s6Step228HeadGOut,s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step228HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228HeadF_Outgoing : rowsOwned s6Step228HeadFvAfter [s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut] :=
  hmrRows_owned_drop s6Step228HeadFvAfter [s6Step228HeadGOut,s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut] 1 s6Step228HeadBank_outgoingOwned

private theorem s6Step228HeadF_distinct : (s6Step228HeadFRow.sign::s6Step228HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228HeadF_owned : (s6Step228HeadFRow.sign::s6Step228HeadFRow.payload).toFinset⊆s6Step228HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228HeadF_reserved : s6Step228HeadFBefore.reserve s6Step228HeadFFresh.toFinset=some s6Step228HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228HeadFFresh,arenaWires]
  · norm_num [s6Step228HeadFBefore,s6Step228HeadGAfter,s6Step228HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step228HeadFAfter,s6Step228HeadFBefore,s6Step228HeadGAfter,s6Step228HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step228HeadF_checked : planRowResizeLog s6Step228HeadFBefore s6Step228HeadFRow 157 s6Step228HeadFFresh=
    some (s6Step228HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 805],795⟩,growRow 795 s6Step228HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step228HeadFBefore s6Step228HeadFAfter s6Step228HeadFRow 157 s6Step228HeadFFresh
    s6Step228HeadF_distinct s6Step228HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228HeadF_reserved
  have rowEq : WindowRow.mk (s6Step228HeadFRow.payload++s6Step228HeadFFresh) s6Step228HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step228HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step228HeadFvBefore : Arena := s6Step228HeadGvAfter

private theorem s6Step228HeadFv_Incoming : rowsOwned s6Step228HeadFvBefore [s6Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228HeadGRow,s6Step228HeadFRow,s6Step228HeadGvRow,s6Step228HeadFvRow] 3 s6Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228HeadFv_Outgoing : rowsOwned s6Step228HeadFvAfter [s6Step228HeadFvOut] :=
  hmrRows_owned_drop s6Step228HeadFvAfter [s6Step228HeadGOut,s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut] 3 s6Step228HeadBank_outgoingOwned

private theorem s6Step228HeadFv_distinct : (s6Step228HeadFvRow.sign::s6Step228HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228HeadFv_owned : (s6Step228HeadFvRow.sign::s6Step228HeadFvRow.payload).toFinset⊆s6Step228HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228HeadFv_reserved : s6Step228HeadFvBefore.reserve s6Step228HeadFvFresh.toFinset=some s6Step228HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228HeadFvFresh,arenaWires]
  · norm_num [s6Step228HeadFvBefore,s6Step228HeadGvAfter,s6Step228HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step228HeadFvAfter,s6Step228HeadFvBefore,s6Step228HeadGvAfter,s6Step228HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step228HeadFv_checked : planRowResizeLog s6Step228HeadFvBefore s6Step228HeadFvRow 130 s6Step228HeadFvFresh=
    some (s6Step228HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩,growRow 776 s6Step228HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step228HeadFvBefore s6Step228HeadFvAfter s6Step228HeadFvRow 130 s6Step228HeadFvFresh
    s6Step228HeadFv_distinct s6Step228HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step228HeadFvRow.payload++s6Step228HeadFvFresh) s6Step228HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step228HeadG_Incoming : rowsOwned s6Step228HeadGBefore [s6Step228HeadGRow,s6Step228HeadFRow,s6Step228HeadGvRow,s6Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228HeadGRow,s6Step228HeadFRow,s6Step228HeadGvRow,s6Step228HeadFvRow] 0 s6Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228HeadG_Outgoing : rowsOwned s6Step228HeadFvAfter [s6Step228HeadGOut,s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut] :=
  hmrRows_owned_drop s6Step228HeadFvAfter [s6Step228HeadGOut,s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut] 0 s6Step228HeadBank_outgoingOwned

private theorem s6Step228HeadG_distinct : (s6Step228HeadGRow.sign::s6Step228HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228HeadG_owned : (s6Step228HeadGRow.sign::s6Step228HeadGRow.payload).toFinset⊆s6Step228HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228HeadG_reserved : s6Step228HeadGBefore.reserve s6Step228HeadGFresh.toFinset=some s6Step228HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228HeadGFresh,arenaWires]
  · norm_num [s6Step228HeadGBefore,s6Step228HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step228HeadGAfter,s6Step228HeadGBefore,s6Step228HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step228HeadG_checked : planRowResizeLog s6Step228HeadGBefore s6Step228HeadGRow 157 s6Step228HeadGFresh=
    some (s6Step228HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 879],777⟩,growRow 777 s6Step228HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step228HeadGBefore s6Step228HeadGAfter s6Step228HeadGRow 157 s6Step228HeadGFresh
    s6Step228HeadG_distinct s6Step228HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228HeadG_reserved
  have rowEq : WindowRow.mk (s6Step228HeadGRow.payload++s6Step228HeadGFresh) s6Step228HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step228HeadGvBefore : Arena := s6Step228HeadFAfter

private theorem s6Step228HeadGv_Incoming : rowsOwned s6Step228HeadGvBefore [s6Step228HeadGvRow,s6Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step228HeadGRow,s6Step228HeadFRow,s6Step228HeadGvRow,s6Step228HeadFvRow] 2 s6Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step228HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step228HeadGv_Outgoing : rowsOwned s6Step228HeadFvAfter [s6Step228HeadGvOut,s6Step228HeadFvOut] :=
  hmrRows_owned_drop s6Step228HeadFvAfter [s6Step228HeadGOut,s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut] 2 s6Step228HeadBank_outgoingOwned

private theorem s6Step228HeadGv_distinct : (s6Step228HeadGvRow.sign::s6Step228HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step228HeadGv_owned : (s6Step228HeadGvRow.sign::s6Step228HeadGvRow.payload).toFinset⊆s6Step228HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step228HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step228HeadGv_reserved : s6Step228HeadGvBefore.reserve s6Step228HeadGvFresh.toFinset=some s6Step228HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step228HeadGvFresh,arenaWires]
  · norm_num [s6Step228HeadGvBefore,s6Step228HeadFAfter,s6Step228HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step228HeadGvAfter,s6Step228HeadGvBefore,s6Step228HeadFAfter,s6Step228HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step228HeadGv_checked : planRowResizeLog s6Step228HeadGvBefore s6Step228HeadGvRow 130 s6Step228HeadGvFresh=
    some (s6Step228HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 908],775⟩,growRow 775 s6Step228HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step228HeadGvBefore s6Step228HeadGvAfter s6Step228HeadGvRow 130 s6Step228HeadGvFresh
    s6Step228HeadGv_distinct s6Step228HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step228HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step228HeadGvRow.payload++s6Step228HeadGvFresh) s6Step228HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step228HeadBank_rows : planWindowRowsLog s6Step228HeadGBefore [(s6Step228HeadGRow,157),(s6Step228HeadFRow,157),(s6Step228HeadGvRow,130),(s6Step228HeadFvRow,130)] [s6Step228HeadGFresh,s6Step228HeadFFresh,s6Step228HeadGvFresh,s6Step228HeadFvFresh]=
    some (s6Step228HeadFvAfter,[s6Step228HeadGOut,s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut],(growRow 777 s6Step228HeadGFresh ++ (growRow 795 s6Step228HeadFFresh ++ (growRow 775 s6Step228HeadGvFresh ++ (growRow 776 s6Step228HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step228HeadFvAfter [] []=some (s6Step228HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step228HeadFvBefore s6Step228HeadFvAfter s6Step228HeadFvAfter
    s6Step228HeadFvRow s6Step228HeadFvOut 130 s6Step228HeadFvFresh [] [] []
    (growRow 776 s6Step228HeadFvFresh) ([]) s6Step228HeadFv_Incoming s6Step228HeadFv_checked h4 s6Step228HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step228HeadGvBefore s6Step228HeadGvAfter s6Step228HeadFvAfter
    s6Step228HeadGvRow s6Step228HeadGvOut 130 s6Step228HeadGvFresh [(s6Step228HeadFvRow,130)] [s6Step228HeadFvFresh] [s6Step228HeadFvOut]
    (growRow 775 s6Step228HeadGvFresh) ((growRow 776 s6Step228HeadFvFresh ++ [])) s6Step228HeadGv_Incoming s6Step228HeadGv_checked h3 s6Step228HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step228HeadFBefore s6Step228HeadFAfter s6Step228HeadFvAfter
    s6Step228HeadFRow s6Step228HeadFOut 157 s6Step228HeadFFresh [(s6Step228HeadGvRow,130),(s6Step228HeadFvRow,130)] [s6Step228HeadGvFresh,s6Step228HeadFvFresh] [s6Step228HeadGvOut,s6Step228HeadFvOut]
    (growRow 795 s6Step228HeadFFresh) ((growRow 775 s6Step228HeadGvFresh ++ (growRow 776 s6Step228HeadFvFresh ++ []))) s6Step228HeadF_Incoming s6Step228HeadF_checked h2 s6Step228HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step228HeadGBefore s6Step228HeadGAfter s6Step228HeadFvAfter
    s6Step228HeadGRow s6Step228HeadGOut 157 s6Step228HeadGFresh [(s6Step228HeadFRow,157),(s6Step228HeadGvRow,130),(s6Step228HeadFvRow,130)] [s6Step228HeadFFresh,s6Step228HeadGvFresh,s6Step228HeadFvFresh] [s6Step228HeadFOut,s6Step228HeadGvOut,s6Step228HeadFvOut]
    (growRow 777 s6Step228HeadGFresh) ((growRow 795 s6Step228HeadFFresh ++ (growRow 775 s6Step228HeadGvFresh ++ (growRow 776 s6Step228HeadFvFresh ++ [])))) s6Step228HeadG_Incoming s6Step228HeadG_checked h1 s6Step228HeadG_Outgoing
  exact h0

private theorem s6Step228HeadBank_checked : compileHmrBankResizeLog .headroom s6Step228HeadGBefore ⟨s6Step228HeadFRow,s6Step228HeadGRow,s6Step228HeadFvRow,s6Step228HeadGvRow⟩ ⟨157,157,130,130⟩ [s6Step228HeadGFresh,s6Step228HeadFFresh,s6Step228HeadGvFresh,s6Step228HeadFvFresh]=
    some (s6Step228HeadFvAfter,⟨s6Step228HeadFOut,s6Step228HeadGOut,s6Step228HeadFvOut,s6Step228HeadGvOut⟩,(growRow 777 s6Step228HeadGFresh ++ (growRow 795 s6Step228HeadFFresh ++ (growRow 775 s6Step228HeadGvFresh ++ (growRow 776 s6Step228HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step228HeadBank_rows]
  rfl

private theorem s6Step228Front_checked : compileHmrSourceFrontLog s6Step228EntryFBefore s6Step228FrontBank 156 129 ⟨156,155,129,129⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step228FrontLog=some s6Step228FrontPlan := by
  have pairEq : s6Step228FrontPair=⟨s6Step228HeadFRow,s6Step228HeadGRow,s6Step228HeadFvRow,s6Step228HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step228FrontHead=⟨s6Step228ExitFRow,s6Step228ExitGRow,s6Step228ExitFvRow,s6Step228ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step228Add0A=s6Step228FrontHead.f.wires := by decide +kernel
  have gEq : s6Step228Add0B=s6Step228FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step228Add1A=s6Step228FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step228Add1B=s6Step228FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step228EntryFBefore s6Step228FrontBank 156 129 ⟨156,155,129,129⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step228FrontLog s6Step228FrontPlan
  · exact s6Step228Front_entry
  · exact s6Step228EntryBank_checked
  · exact s6Step228Front_sigma
  · rfl
  · exact s6Step228Front_branch
  · rfl
  · simpa only [s6Step228FrontPlan,pairEq] using s6Step228HeadBank_checked
  · simpa only [s6Step228FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step228F4_checked
  · exact s6Step228Counter_checked
  · rfl
  · simpa only [s6Step228FrontPlan,headEq] using s6Step228ExitBank_checked

private theorem s6Step228Complete_explicit_checked : compileHmrEarlyStepLog s6Step228EntryFBefore s6Step228FrontBank 156 129 ⟨156,155,129,129⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step228CompleteLog=some s6Step228CompletePlan := by
  let Q := s6Step228EarlyControlPlan
  have hq := s6Step228EarlyControl_plan_checked
  have fv1 : s6Step228CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step228CompleteOut.fv.payload[2]?.getD s6Step228CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step228CompleteOut.fv.payload[3]?.getD s6Step228CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step228CompleteOut.fv.payload[4]?.getD s6Step228CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step228EntryFBefore s6Step228EarlyControlArena s6Step228FrontBank 156 129 ⟨156,155,129,129⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step228CompleteLog s6Step228FrontPlan Q
    s6Step228Front_checked s6Step228Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step228Complete_owned s6Step228Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step228EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 818 s6Step228CompleteOut.fv.second (s6Step228CompleteOut.fv.payload[2]?.getD s6Step228CompleteOut.fv.sign) (s6Step228CompleteOut.fv.payload[3]?.getD s6Step228CompleteOut.fv.sign) (s6Step228CompleteOut.fv.payload[4]?.getD s6Step228CompleteOut.fv.sign) 864 49 s6Step228EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep228Arena : Arena := s6Step228EntryFBefore
def s6PrivateStep228Bank : WindowBank := s6Step228FrontBank
def s6PrivateStep228Spec : HmrSourceWalkStepLog := ⟨156,129,⟨156,155,129,129⟩,49,.early s6Step228CompleteLog⟩
def s6PrivateStep228Plan : HmrSourceStepPlan := .early s6Step228CompletePlan
theorem s6PrivateStep228_source : s6PrivateStep228Spec=s6ObservedLogs224[4] := rfl
theorem s6PrivateStep228_checked : compileHmrSourceStepLog s6PrivateStep228Arena s6PrivateStep228Bank
    s6PrivateStep228Spec.fgWidth s6PrivateStep228Spec.vWidth s6PrivateStep228Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 228 s6PrivateStep228Spec.need none s6PrivateStep228Spec.log=some s6PrivateStep228Plan := by
  change compileHmrSourceStepLog s6Step228EntryFBefore s6Step228FrontBank 156 129 ⟨156,155,129,129⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 228 49 none (.early s6Step228CompleteLog)=some (.early s6Step228CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 228<498)]
  rw [s6Step228Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
