import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep221
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

private def s6Step223CompleteMoves : List (Wire × Wire) := [(879,414)]

private def s6Step223EarlyControlLog : HmrEarlyControlLog := ⟨[879, 789, 856, 828, 875],[822],[825],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step223FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [828], [], []],[[875], [856], [789], [873]],[[], [], [], []]⟩,[908],[887],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step223CompleteLog : HmrEarlyStepLog := ⟨s6Step223FrontLog,s6Step223CompleteMoves,s6Step223EarlyControlLog⟩

private def s6Step223ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step223ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step223ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],777⟩

private def s6Step223ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858],775⟩

private def s6Step223FrontOut : WindowBank := ⟨s6Step223ExitFOut,s6Step223ExitGOut,s6Step223ExitFvOut,s6Step223ExitGvOut⟩

private def s6Step223CompleteOut : WindowBank := s6Step223FrontOut.repacked s6Step223CompleteMoves

private def s6Step223EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step223EarlyControlPositiveArena,[822],s6Step223EarlyControlEqualityArena,[825],⟨⟨908,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step223EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,879⟩,⟨⟨772,false⟩,789⟩,⟨⟨771,false⟩,856⟩,⟨⟨770,false⟩,828⟩,⟨⟨769,false⟩,875⟩]⟩

private def s6Step223EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step223EarlyControlZeroArena,s6Step223EarlyControlZeroPlan,s6Step223EarlyControlClassPlan,s6Step223EarlyControlFlagArena,s6Step223EarlyControlFittedArena,s6Step223EarlyControlHistoryArena,s6Step223EarlyControlSigmaArena,s6Step223EarlyControlOutputArena,s6Step223EarlyControlLog⟩

private def s6Step223CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step223Counter_bounded : s6Step223CounterWork.toFinset⊆arenaWires := by norm_num [s6Step223CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step223HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223CounterDuring : Arena := ⟨s6Step223HeadFvAfter.live∪s6Step223CounterWork.toFinset,Finset.union_subset s6Step223HeadFvAfter.bounded s6Step223Counter_bounded⟩

private def s6Step223EntryFFresh : List Wire := []

private def s6Step223EntryFvFresh : List Wire := []

private def s6Step223EntryGFresh : List Wire := [828]

private def s6Step223EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EntryGvAfter : Arena := s6Step223EntryGAfter

private def s6Step223EntryGvFresh : List Wire := []

private def s6Step223ExitFExtra : List Wire := [414, 856]

private def s6Step223ExitGExtra : List Wire := [828, 875]

private def s6Step223ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<414) ∨ (415≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223ExitGvExtra : List Wire := [789]

private def s6Step223Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step223Add0_bounded : s6Step223Add0Work.toFinset⊆arenaWires := by
  have h : s6Step223Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step223Add0During : Arena := ⟨s6Step223Add0Arena.live∪s6Step223Add0Work.toFinset,Finset.union_subset s6Step223Add0Arena.bounded s6Step223Add0_bounded⟩

private def s6Step223Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step223Add1_bounded : s6Step223Add1Work.toFinset⊆arenaWires := by
  have h : s6Step223Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step223Add1During : Arena := ⟨s6Step223Add1Arena.live∪s6Step223Add1Work.toFinset,Finset.union_subset s6Step223Add1Arena.bounded s6Step223Add1_bounded⟩

private def s6Step223F4FlagArena : Arena := ⟨s6Step223HeadFvAfter.live∪{822},Finset.union_subset s6Step223HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step223F4Plan : HmrHybridF4Plan := ⟨s6Step223F4FlagArena,[822],s6Step223Add0Arena,[825],s6Step223Add0During,s6Step223Add0Work,s6Step223Add1During,s6Step223Add1Work⟩

private def s6Step223HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 856],795⟩

private def s6Step223HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step223HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828, 875],777⟩

private def s6Step223HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 789],775⟩

private def s6Step223FrontHead : WindowBank := ⟨s6Step223HeadFOut,s6Step223HeadGOut,s6Step223HeadFvOut,s6Step223HeadGvOut⟩

private def s6Step223EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414],795⟩

private def s6Step223EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807],776⟩

private def s6Step223EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828],777⟩

private def s6Step223EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858],775⟩

private def s6Step223FrontPair : WindowBank := ⟨s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut⟩

private def s6Step223FrontSigmaArena : Arena := ⟨s6Step223EntryGvAfter.live∪{908},Finset.union_subset s6Step223EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step223HeadFFresh : List Wire := [856]

private def s6Step223HeadFvFresh : List Wire := [873]

private def s6Step223HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223HeadGFresh : List Wire := [875]

private def s6Step223HeadGvFresh : List Wire := [789]

private def s6Step223FrontPlan : HmrSourceFront := ⟨s6Step223EntryGvAfter,s6Step223FrontPair,(growRow 795 s6Step223EntryFFresh ++ (growRow 777 s6Step223EntryGFresh ++ (growRow 776 s6Step223EntryFvFresh ++ (growRow 775 s6Step223EntryGvFresh ++ [])))),s6Step223FrontSigmaArena,[908],s6Step223HeadGBefore,[887],
  s6Step223HeadFvAfter,s6Step223FrontHead,(growRow 777 s6Step223HeadGFresh ++ (growRow 795 s6Step223HeadFFresh ++ (growRow 775 s6Step223HeadGvFresh ++ (growRow 776 s6Step223HeadFvFresh ++ [])))),s6Step223F4Plan,s6Step223CounterDuring,s6Step223CounterWork,s6Step223ExitGvAfter,s6Step223FrontOut,(shrinkRow 777 s6Step223ExitGExtra ++ (shrinkRow 795 s6Step223ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step223ExitGvExtra ++ []))))⟩

private def s6Step223CompletePlan : HmrEarlyStepPlan := ⟨s6Step223FrontPlan,s6Step223EarlyControlArena,s6Step223EarlyControlPlan,s6Step223CompleteMoves⟩

private theorem s6Step223Complete_apart : List.Disjoint (s6Step223CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step223CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step223Complete_owned : (s6Step223CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step223CompleteMoveArena : Arena := ⟨s6Step223ExitGvAfter.live∪{414},Finset.union_subset s6Step223ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step223Complete_repack : s6Step223ExitGvAfter.checkRepack s6Step223CompleteMoves=some s6Step223EarlyControlArena := by
  have owned : 879∈s6Step223ExitGvAfter.live := by norm_num [s6Step223ExitGvAfter,arenaWires]
  have reserve : s6Step223ExitGvAfter.reserve {414}=some s6Step223CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step223ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step223CompleteMoveArena.retireSet {879}=s6Step223EarlyControlArena := by
    unfold Arena.retireSet s6Step223EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step223CompleteMoveArena,s6Step223ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step223CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step223CompleteMoveArena.retireSet {879}).checkRepack []=some s6Step223EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step223EarlyControl_branchOwned : ([887] : List Wire).toFinset⊆s6Step223EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_branch : compileHmrBranchRetirement s6Step223EarlyControlSigmaArena 887=some s6Step223EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step223EarlyControl_branchOwned
  · ext q
    simp [s6Step223EarlyControlOutputArena,s6Step223EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step223EarlyControl_classEqualityBorrow : s6Step223EarlyControlPositiveArena.checkBorrow (([908, 822] : List Wire).length-1) s6Step223EarlyControlLog.classWork=some s6Step223EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step223EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step223EarlyControlEqualityArena,s6Step223EarlyControlPositiveArena,s6Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step223EarlyControl_classEqualityOwned : ([908, 822] : List Wire).toFinset⊆s6Step223EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_classEquality : compileHmrEqualityLog s6Step223EarlyControlPositiveArena [908, 822] 0 s6Step223EarlyControlLog.classWork=some (s6Step223EarlyControlEqualityArena,s6Step223EarlyControlLog.classWork,s6Step223EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step223EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step223EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step223EarlyControl_classOwned : ([769, 875, 908] : List Wire).toFinset⊆s6Step223EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_positiveBorrow : s6Step223EarlyControlZeroArena.checkBorrow (1) s6Step223EarlyControlLog.positiveWork=some s6Step223EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step223EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step223EarlyControlPositiveArena,s6Step223EarlyControlZeroArena,s6Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step223EarlyControl_class : compileHmrSourceClassLog s6Step223EarlyControlZeroArena false 769 s6Step223EarlyControlZeroPlan.top 0 908 s6Step223EarlyControlLog.positiveWork s6Step223EarlyControlLog.classWork=some s6Step223EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step223EarlyControlClassPlan s6Step223EarlyControlZeroArena false 769 s6Step223EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step223EarlyControl_classOwned
  · exact s6Step223EarlyControl_positiveBorrow
  · exact s6Step223EarlyControl_classEquality

private theorem s6Step223EarlyControl_entryRecordOwned : ([887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_fitBorrow : s6Step223EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step223EarlyControlLog.recordFresh=some s6Step223EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step223EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step223EarlyControlFittedArena,s6Step223EarlyControlFlagArena,s6Step223EarlyControlLog,arenaWires]

private theorem s6Step223EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step223EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_fit : compileHmrRecordGrowLog s6Step223EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step223EarlyControlLog.recordFresh=some s6Step223EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step223EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step223EarlyControl_fitBorrow

private theorem s6Step223EarlyControl_flagsBorrow : s6Step223EarlyControlEqualityArena.checkBorrow (6) s6Step223EarlyControlLog.flagWork=some s6Step223EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step223EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step223EarlyControlFlagArena,s6Step223EarlyControlEqualityArena,s6Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step223EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step223EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_flags : compileHmrFlagsLog s6Step223EarlyControlClassPlan.equalityArena s6Step223EarlyControlClassPlan.equality.top 253 252 251 s6Step223EarlyControlLog.flagWork=some s6Step223EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step223EarlyControl_flagsOwned⟩
  · exact s6Step223EarlyControl_flagsBorrow

private theorem s6Step223EarlyControl_historyBorrow : s6Step223EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step223EarlyControlLog.recordFresh=some s6Step223EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step223EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step223EarlyControlHistoryArena,s6Step223EarlyControlArena,s6Step223EarlyControlLog,arenaWires]

private theorem s6Step223EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_history : compileHmrRecordGrowLog s6Step223EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step223EarlyControlLog.recordFresh=some s6Step223EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step223EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step223EarlyControl_historyBorrow

private theorem s6Step223EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step223EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step223EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_sigmaRelease : s6Step223EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step223EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step223EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step223EarlyControlSigmaArena,s6Step223EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step223EarlyControl_sigma : compileHmrSigmaDropLog s6Step223EarlyControlHistoryArena false 0 0 254 908 []=some s6Step223EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step223EarlyControl_sigmaOwned⟩
  · exact s6Step223EarlyControl_sigmaRelease

private theorem s6Step223EarlyControl_zeroBorrow : s6Step223EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step223EarlyControlLog.zeroWork=some s6Step223EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step223EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step223EarlyControlZeroArena,s6Step223EarlyControlArena,s6Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step223EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step223EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EarlyControl_zero : compileHmrEqualityLog s6Step223EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step223EarlyControlLog.zeroWork=some (s6Step223EarlyControlZeroArena,s6Step223EarlyControlLog.zeroWork,s6Step223EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step223EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step223EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step223EarlyControl_logged : s6Step223EarlyControlPlan.Logged s6Step223EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 887 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step223EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step223EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step223EarlyControl_zero
  · exact s6Step223EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step223EarlyControl_flags
  · exact s6Step223EarlyControl_fit
  · exact s6Step223EarlyControl_history
  · exact s6Step223EarlyControl_sigma
  · exact s6Step223EarlyControl_branch

private theorem s6Step223EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step223EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 887 47 s6Step223EarlyControlLog=some s6Step223EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step223EarlyControlPlan s6Step223EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 887 47 s6Step223EarlyControl_logged

private def s6Step223EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414],795⟩

private def s6Step223EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807],776⟩

private def s6Step223EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],777⟩

private def s6Step223EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858],775⟩

private def s6Step223FrontBank : WindowBank := ⟨s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow⟩

private def s6Step223Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 856, 795]

private def s6Step223Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828, 875, 777]

private def s6Step223Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 776]

private def s6Step223Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 789, 775]

private theorem s6Step223Counter_apart : Disjoint s6Step223HeadFvAfter.live s6Step223CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step223HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223Counter_borrowed : s6Step223HeadFvAfter.checkBorrow 4 s6Step223CounterWork=some s6Step223CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step223HeadFvAfter s6Step223CounterDuring s6Step223CounterWork.toFinset s6Step223Counter_bounded s6Step223Counter_apart rfl

private theorem s6Step223Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step223HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step223HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223Counter_checked : compileHmrCounterStepLog s6Step223HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step223CounterWork=some s6Step223CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step223HeadFvAfter.live := fun q hq => s6Step223Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step223Counter_borrowed

private def s6Step223EntryFAfter : Arena := s6Step223EntryFBefore

private theorem s6Step223EntryBank_incomingDistinct : ([s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223EntryF_Incoming : rowsOwned s6Step223EntryFBefore [s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow] 0 s6Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223EntryBank_outgoingOwned : rowsOwned s6Step223EntryGvAfter [s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step223EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223EntryF_Outgoing : rowsOwned s6Step223EntryGvAfter [s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut] :=
  hmrRows_owned_drop s6Step223EntryGvAfter [s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut] 0 s6Step223EntryBank_outgoingOwned

private theorem s6Step223EntryF_distinct : (s6Step223EntryFRow.sign::s6Step223EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223EntryF_owned : (s6Step223EntryFRow.sign::s6Step223EntryFRow.payload).toFinset⊆s6Step223EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EntryF_reserved : s6Step223EntryFBefore.reserve s6Step223EntryFFresh.toFinset=some s6Step223EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223EntryFFresh,arenaWires]
  · norm_num [s6Step223EntryFBefore,s6Step223EntryFFresh,arenaWires]
  · simp only [s6Step223EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step223EntryF_checked : planRowResizeLog s6Step223EntryFBefore s6Step223EntryFRow 159 s6Step223EntryFFresh=
    some (s6Step223EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414],795⟩,growRow 795 s6Step223EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step223EntryFBefore s6Step223EntryFAfter s6Step223EntryFRow 159 s6Step223EntryFFresh
    s6Step223EntryF_distinct s6Step223EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223EntryF_reserved
  have rowEq : WindowRow.mk (s6Step223EntryFRow.payload++s6Step223EntryFFresh) s6Step223EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step223EntryFvAfter : Arena := s6Step223EntryGAfter

private def s6Step223EntryFvBefore : Arena := s6Step223EntryGAfter

private theorem s6Step223EntryFv_Incoming : rowsOwned s6Step223EntryFvBefore [s6Step223EntryFvRow,s6Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow] 2 s6Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223EntryFv_Outgoing : rowsOwned s6Step223EntryGvAfter [s6Step223EntryFvOut,s6Step223EntryGvOut] :=
  hmrRows_owned_drop s6Step223EntryGvAfter [s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut] 2 s6Step223EntryBank_outgoingOwned

private theorem s6Step223EntryFv_distinct : (s6Step223EntryFvRow.sign::s6Step223EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223EntryFv_owned : (s6Step223EntryFvRow.sign::s6Step223EntryFvRow.payload).toFinset⊆s6Step223EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EntryFv_reserved : s6Step223EntryFvBefore.reserve s6Step223EntryFvFresh.toFinset=some s6Step223EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223EntryFvFresh,arenaWires]
  · norm_num [s6Step223EntryFvBefore,s6Step223EntryGAfter,s6Step223EntryFvFresh,arenaWires]
  · simp only [s6Step223EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step223EntryFv_checked : planRowResizeLog s6Step223EntryFvBefore s6Step223EntryFvRow 126 s6Step223EntryFvFresh=
    some (s6Step223EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807],776⟩,growRow 776 s6Step223EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step223EntryFvBefore s6Step223EntryFvAfter s6Step223EntryFvRow 126 s6Step223EntryFvFresh
    s6Step223EntryFv_distinct s6Step223EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step223EntryFvRow.payload++s6Step223EntryFvFresh) s6Step223EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step223EntryGBefore : Arena := s6Step223EntryFBefore

private theorem s6Step223EntryG_Incoming : rowsOwned s6Step223EntryGBefore [s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow] 1 s6Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223EntryG_Outgoing : rowsOwned s6Step223EntryGvAfter [s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut] :=
  hmrRows_owned_drop s6Step223EntryGvAfter [s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut] 1 s6Step223EntryBank_outgoingOwned

private theorem s6Step223EntryG_distinct : (s6Step223EntryGRow.sign::s6Step223EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223EntryG_owned : (s6Step223EntryGRow.sign::s6Step223EntryGRow.payload).toFinset⊆s6Step223EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EntryG_reserved : s6Step223EntryGBefore.reserve s6Step223EntryGFresh.toFinset=some s6Step223EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223EntryGFresh,arenaWires]
  · norm_num [s6Step223EntryGBefore,s6Step223EntryFBefore,s6Step223EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step223EntryGAfter,s6Step223EntryGBefore,s6Step223EntryFBefore,s6Step223EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step223EntryG_checked : planRowResizeLog s6Step223EntryGBefore s6Step223EntryGRow 159 s6Step223EntryGFresh=
    some (s6Step223EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828],777⟩,growRow 777 s6Step223EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step223EntryGBefore s6Step223EntryGAfter s6Step223EntryGRow 159 s6Step223EntryGFresh
    s6Step223EntryG_distinct s6Step223EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223EntryG_reserved
  have rowEq : WindowRow.mk (s6Step223EntryGRow.payload++s6Step223EntryGFresh) s6Step223EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step223EntryGvBefore : Arena := s6Step223EntryGAfter

private theorem s6Step223EntryGv_Incoming : rowsOwned s6Step223EntryGvBefore [s6Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow] 3 s6Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223EntryGv_Outgoing : rowsOwned s6Step223EntryGvAfter [s6Step223EntryGvOut] :=
  hmrRows_owned_drop s6Step223EntryGvAfter [s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut] 3 s6Step223EntryBank_outgoingOwned

private theorem s6Step223EntryGv_distinct : (s6Step223EntryGvRow.sign::s6Step223EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223EntryGv_owned : (s6Step223EntryGvRow.sign::s6Step223EntryGvRow.payload).toFinset⊆s6Step223EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223EntryGv_reserved : s6Step223EntryGvBefore.reserve s6Step223EntryGvFresh.toFinset=some s6Step223EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223EntryGvFresh,arenaWires]
  · norm_num [s6Step223EntryGvBefore,s6Step223EntryGAfter,s6Step223EntryGvFresh,arenaWires]
  · simp only [s6Step223EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step223EntryGv_checked : planRowResizeLog s6Step223EntryGvBefore s6Step223EntryGvRow 126 s6Step223EntryGvFresh=
    some (s6Step223EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858],775⟩,growRow 775 s6Step223EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step223EntryGvBefore s6Step223EntryGvAfter s6Step223EntryGvRow 126 s6Step223EntryGvFresh
    s6Step223EntryGv_distinct s6Step223EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step223EntryGvRow.payload++s6Step223EntryGvFresh) s6Step223EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step223EntryBank_rows : planWindowRowsLog s6Step223EntryFBefore [(s6Step223EntryFRow,159),(s6Step223EntryGRow,159),(s6Step223EntryFvRow,126),(s6Step223EntryGvRow,126)] [s6Step223EntryFFresh,s6Step223EntryGFresh,s6Step223EntryFvFresh,s6Step223EntryGvFresh]=
    some (s6Step223EntryGvAfter,[s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut],(growRow 795 s6Step223EntryFFresh ++ (growRow 777 s6Step223EntryGFresh ++ (growRow 776 s6Step223EntryFvFresh ++ (growRow 775 s6Step223EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step223EntryGvAfter [] []=some (s6Step223EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step223EntryGvBefore s6Step223EntryGvAfter s6Step223EntryGvAfter
    s6Step223EntryGvRow s6Step223EntryGvOut 126 s6Step223EntryGvFresh [] [] []
    (growRow 775 s6Step223EntryGvFresh) ([]) s6Step223EntryGv_Incoming s6Step223EntryGv_checked h4 s6Step223EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step223EntryFvBefore s6Step223EntryFvAfter s6Step223EntryGvAfter
    s6Step223EntryFvRow s6Step223EntryFvOut 126 s6Step223EntryFvFresh [(s6Step223EntryGvRow,126)] [s6Step223EntryGvFresh] [s6Step223EntryGvOut]
    (growRow 776 s6Step223EntryFvFresh) ((growRow 775 s6Step223EntryGvFresh ++ [])) s6Step223EntryFv_Incoming s6Step223EntryFv_checked h3 s6Step223EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step223EntryGBefore s6Step223EntryGAfter s6Step223EntryGvAfter
    s6Step223EntryGRow s6Step223EntryGOut 159 s6Step223EntryGFresh [(s6Step223EntryFvRow,126),(s6Step223EntryGvRow,126)] [s6Step223EntryFvFresh,s6Step223EntryGvFresh] [s6Step223EntryFvOut,s6Step223EntryGvOut]
    (growRow 777 s6Step223EntryGFresh) ((growRow 776 s6Step223EntryFvFresh ++ (growRow 775 s6Step223EntryGvFresh ++ []))) s6Step223EntryG_Incoming s6Step223EntryG_checked h2 s6Step223EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step223EntryFBefore s6Step223EntryFAfter s6Step223EntryGvAfter
    s6Step223EntryFRow s6Step223EntryFOut 159 s6Step223EntryFFresh [(s6Step223EntryGRow,159),(s6Step223EntryFvRow,126),(s6Step223EntryGvRow,126)] [s6Step223EntryGFresh,s6Step223EntryFvFresh,s6Step223EntryGvFresh] [s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut]
    (growRow 795 s6Step223EntryFFresh) ((growRow 777 s6Step223EntryGFresh ++ (growRow 776 s6Step223EntryFvFresh ++ (growRow 775 s6Step223EntryGvFresh ++ [])))) s6Step223EntryF_Incoming s6Step223EntryF_checked h1 s6Step223EntryF_Outgoing
  exact h0

private theorem s6Step223EntryBank_checked : compileHmrBankResizeLog .entry s6Step223EntryFBefore ⟨s6Step223EntryFRow,s6Step223EntryGRow,s6Step223EntryFvRow,s6Step223EntryGvRow⟩ ⟨159,159,126,126⟩ [s6Step223EntryFFresh,s6Step223EntryGFresh,s6Step223EntryFvFresh,s6Step223EntryGvFresh]=
    some (s6Step223EntryGvAfter,⟨s6Step223EntryFOut,s6Step223EntryGOut,s6Step223EntryFvOut,s6Step223EntryGvOut⟩,(growRow 795 s6Step223EntryFFresh ++ (growRow 777 s6Step223EntryGFresh ++ (growRow 776 s6Step223EntryFvFresh ++ (growRow 775 s6Step223EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step223EntryBank_rows]
  rfl

private def s6Step223ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<414) ∨ (415≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223ExitFBefore : Arena := s6Step223ExitGAfter

private def s6Step223ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 856],795⟩

private def s6Step223ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step223ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828, 875],777⟩

private def s6Step223ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 789],775⟩

private theorem s6Step223ExitBank_incomingDistinct : ([s6Step223ExitGRow,s6Step223ExitFRow,s6Step223ExitFvRow,s6Step223ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223ExitF_Incoming : rowsOwned s6Step223ExitFBefore [s6Step223ExitFRow,s6Step223ExitFvRow,s6Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223ExitGRow,s6Step223ExitFRow,s6Step223ExitFvRow,s6Step223ExitGvRow] 1 s6Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223ExitBank_outgoingOwned : rowsOwned s6Step223ExitGvAfter [s6Step223ExitGOut,s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step223ExitGvAfter (fun q => (0≤q ∧ q<414) ∨ (415≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223ExitF_Outgoing : rowsOwned s6Step223ExitGvAfter [s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut] :=
  hmrRows_owned_drop s6Step223ExitGvAfter [s6Step223ExitGOut,s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut] 1 s6Step223ExitBank_outgoingOwned

private theorem s6Step223ExitF_distinct : (s6Step223ExitFRow.sign::s6Step223ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223ExitF_owned : (s6Step223ExitFRow.sign::s6Step223ExitFRow.payload).toFinset⊆s6Step223ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223ExitF_retired : s6Step223ExitFBefore.retireSet s6Step223ExitFExtra.toFinset=s6Step223ExitFAfter := by
  unfold Arena.retireSet s6Step223ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step223ExitFBefore,s6Step223ExitGAfter,s6Step223ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step223ExitF_checked : planRowResizeLog s6Step223ExitFBefore s6Step223ExitFRow 158 []=
    some (s6Step223ExitFAfter,s6Step223ExitFOut,shrinkRow 795 s6Step223ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step223ExitFBefore s6Step223ExitFRow 158 s6Step223ExitF_distinct s6Step223ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step223ExitFRow.payload.take 158) s6Step223ExitFRow.sign=s6Step223ExitFOut := by decide +kernel
  have hi : s6Step223ExitFRow.payload.drop 158=s6Step223ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step223ExitF_retired] at result
  exact result

private def s6Step223ExitFvAfter : Arena := s6Step223ExitFAfter

private def s6Step223ExitFvBefore : Arena := s6Step223ExitFAfter

private theorem s6Step223ExitFv_Incoming : rowsOwned s6Step223ExitFvBefore [s6Step223ExitFvRow,s6Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223ExitGRow,s6Step223ExitFRow,s6Step223ExitFvRow,s6Step223ExitGvRow] 2 s6Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223ExitFvBefore (fun q => (0≤q ∧ q<414) ∨ (415≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223ExitFv_Outgoing : rowsOwned s6Step223ExitGvAfter [s6Step223ExitFvOut,s6Step223ExitGvOut] :=
  hmrRows_owned_drop s6Step223ExitGvAfter [s6Step223ExitGOut,s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut] 2 s6Step223ExitBank_outgoingOwned

private theorem s6Step223ExitFv_distinct : (s6Step223ExitFvRow.sign::s6Step223ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223ExitFv_owned : (s6Step223ExitFvRow.sign::s6Step223ExitFvRow.payload).toFinset⊆s6Step223ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223ExitFvBefore (fun q => (0≤q ∧ q<414) ∨ (415≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223ExitFv_reserved : s6Step223ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step223ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step223ExitFv_checked : planRowResizeLog s6Step223ExitFvBefore s6Step223ExitFvRow 127 []=
    some (s6Step223ExitFvAfter,s6Step223ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step223ExitFvBefore s6Step223ExitFvAfter s6Step223ExitFvRow 127 []
    s6Step223ExitFv_distinct s6Step223ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step223ExitFvRow.payload++[]) s6Step223ExitFvRow.sign=s6Step223ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step223ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step223ExitG_Incoming : rowsOwned s6Step223ExitGBefore [s6Step223ExitGRow,s6Step223ExitFRow,s6Step223ExitFvRow,s6Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223ExitGRow,s6Step223ExitFRow,s6Step223ExitFvRow,s6Step223ExitGvRow] 0 s6Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223ExitG_Outgoing : rowsOwned s6Step223ExitGvAfter [s6Step223ExitGOut,s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut] :=
  hmrRows_owned_drop s6Step223ExitGvAfter [s6Step223ExitGOut,s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut] 0 s6Step223ExitBank_outgoingOwned

private theorem s6Step223ExitG_distinct : (s6Step223ExitGRow.sign::s6Step223ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223ExitG_owned : (s6Step223ExitGRow.sign::s6Step223ExitGRow.payload).toFinset⊆s6Step223ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223ExitG_retired : s6Step223ExitGBefore.retireSet s6Step223ExitGExtra.toFinset=s6Step223ExitGAfter := by
  unfold Arena.retireSet s6Step223ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step223ExitGBefore,s6Step223ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step223ExitG_checked : planRowResizeLog s6Step223ExitGBefore s6Step223ExitGRow 158 []=
    some (s6Step223ExitGAfter,s6Step223ExitGOut,shrinkRow 777 s6Step223ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step223ExitGBefore s6Step223ExitGRow 158 s6Step223ExitG_distinct s6Step223ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step223ExitGRow.payload.take 158) s6Step223ExitGRow.sign=s6Step223ExitGOut := by decide +kernel
  have hi : s6Step223ExitGRow.payload.drop 158=s6Step223ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step223ExitG_retired] at result
  exact result

private def s6Step223ExitGvBefore : Arena := s6Step223ExitFAfter

private theorem s6Step223ExitGv_Incoming : rowsOwned s6Step223ExitGvBefore [s6Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223ExitGRow,s6Step223ExitFRow,s6Step223ExitFvRow,s6Step223ExitGvRow] 3 s6Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223ExitGvBefore (fun q => (0≤q ∧ q<414) ∨ (415≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223ExitGv_Outgoing : rowsOwned s6Step223ExitGvAfter [s6Step223ExitGvOut] :=
  hmrRows_owned_drop s6Step223ExitGvAfter [s6Step223ExitGOut,s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut] 3 s6Step223ExitBank_outgoingOwned

private theorem s6Step223ExitGv_distinct : (s6Step223ExitGvRow.sign::s6Step223ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223ExitGv_owned : (s6Step223ExitGvRow.sign::s6Step223ExitGvRow.payload).toFinset⊆s6Step223ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223ExitGvBefore (fun q => (0≤q ∧ q<414) ∨ (415≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223ExitGv_retired : s6Step223ExitGvBefore.retireSet s6Step223ExitGvExtra.toFinset=s6Step223ExitGvAfter := by
  unfold Arena.retireSet s6Step223ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step223ExitGvBefore,s6Step223ExitFAfter,s6Step223ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step223ExitGv_checked : planRowResizeLog s6Step223ExitGvBefore s6Step223ExitGvRow 126 []=
    some (s6Step223ExitGvAfter,s6Step223ExitGvOut,shrinkRow 775 s6Step223ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step223ExitGvBefore s6Step223ExitGvRow 126 s6Step223ExitGv_distinct s6Step223ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step223ExitGvRow.payload.take 126) s6Step223ExitGvRow.sign=s6Step223ExitGvOut := by decide +kernel
  have hi : s6Step223ExitGvRow.payload.drop 126=s6Step223ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step223ExitGv_retired] at result
  exact result

private theorem s6Step223ExitBank_rows : planWindowRowsLog s6Step223ExitGBefore [(s6Step223ExitGRow,158),(s6Step223ExitFRow,158),(s6Step223ExitFvRow,127),(s6Step223ExitGvRow,126)] [[],[],[],[]]=
    some (s6Step223ExitGvAfter,[s6Step223ExitGOut,s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut],(shrinkRow 777 s6Step223ExitGExtra ++ (shrinkRow 795 s6Step223ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step223ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step223ExitGvAfter [] []=some (s6Step223ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step223ExitGvBefore s6Step223ExitGvAfter s6Step223ExitGvAfter
    s6Step223ExitGvRow s6Step223ExitGvOut 126 [] [] [] []
    (shrinkRow 775 s6Step223ExitGvExtra) ([]) s6Step223ExitGv_Incoming s6Step223ExitGv_checked h4 s6Step223ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step223ExitFvBefore s6Step223ExitFvAfter s6Step223ExitGvAfter
    s6Step223ExitFvRow s6Step223ExitFvOut 127 [] [(s6Step223ExitGvRow,126)] [[]] [s6Step223ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step223ExitGvExtra ++ [])) s6Step223ExitFv_Incoming s6Step223ExitFv_checked h3 s6Step223ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step223ExitFBefore s6Step223ExitFAfter s6Step223ExitGvAfter
    s6Step223ExitFRow s6Step223ExitFOut 158 [] [(s6Step223ExitFvRow,127),(s6Step223ExitGvRow,126)] [[],[]] [s6Step223ExitFvOut,s6Step223ExitGvOut]
    (shrinkRow 795 s6Step223ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step223ExitGvExtra ++ []))) s6Step223ExitF_Incoming s6Step223ExitF_checked h2 s6Step223ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step223ExitGBefore s6Step223ExitGAfter s6Step223ExitGvAfter
    s6Step223ExitGRow s6Step223ExitGOut 158 [] [(s6Step223ExitFRow,158),(s6Step223ExitFvRow,127),(s6Step223ExitGvRow,126)] [[],[],[]] [s6Step223ExitFOut,s6Step223ExitFvOut,s6Step223ExitGvOut]
    (shrinkRow 777 s6Step223ExitGExtra) ((shrinkRow 795 s6Step223ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step223ExitGvExtra ++ [])))) s6Step223ExitG_Incoming s6Step223ExitG_checked h1 s6Step223ExitG_Outgoing
  exact h0

private theorem s6Step223ExitBank_checked : compileHmrBankResizeLog .exit s6Step223ExitGBefore ⟨s6Step223ExitFRow,s6Step223ExitGRow,s6Step223ExitFvRow,s6Step223ExitGvRow⟩ ⟨158,158,127,126⟩ [[],[],[],[]]=
    some (s6Step223ExitGvAfter,⟨s6Step223ExitFOut,s6Step223ExitGOut,s6Step223ExitFvOut,s6Step223ExitGvOut⟩,(shrinkRow 777 s6Step223ExitGExtra ++ (shrinkRow 795 s6Step223ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step223ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step223ExitBank_rows]
  rfl

private theorem s6Step223Add0_apart : Disjoint s6Step223Add0Arena.live s6Step223Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step223Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223Add0_card : s6Step223Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step223Add0_borrowed : s6Step223Add0Arena.checkBorrow (hmrHybridCount s6Step223Add0Arena s6Step223Add0B.length) s6Step223Add0Work=some s6Step223Add0During := by
  have len : s6Step223Add0Work.length=hmrHybridCount s6Step223Add0Arena s6Step223Add0B.length := by
    rw [hmrHybridCount,s6Step223Add0_card]
    decide +kernel
  have nd : s6Step223Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step223Add0Arena s6Step223Add0During s6Step223Add0Work.toFinset s6Step223Add0_bounded s6Step223Add0_apart rfl

private theorem s6Step223Add0_distinct : (822::887::825::(s6Step223Add0A++s6Step223Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223Add0_owned : (822::887::825::(s6Step223Add0A++s6Step223Add0B)).toFinset⊆s6Step223Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step223Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223Add0_checked : compileHmrHybridCinLog s6Step223Add0Arena 887 822 825 s6Step223Add0A s6Step223Add0B s6Step223Add0Work=some s6Step223Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step223Add0Arena s6Step223Add0During 887 822 825 s6Step223Add0A s6Step223Add0B s6Step223Add0Work
    (by decide +kernel) (by decide +kernel) s6Step223Add0_distinct
    (fun q hq => s6Step223Add0_owned (List.mem_toFinset.mpr hq)) s6Step223Add0_borrowed

private theorem s6Step223Add1_apart : Disjoint s6Step223Add1Arena.live s6Step223Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step223Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223Add1_card : s6Step223Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step223Add1_borrowed : s6Step223Add1Arena.checkBorrow (hmrHybridCount s6Step223Add1Arena s6Step223Add1B.length) s6Step223Add1Work=some s6Step223Add1During := by
  have len : s6Step223Add1Work.length=hmrHybridCount s6Step223Add1Arena s6Step223Add1B.length := by
    rw [hmrHybridCount,s6Step223Add1_card]
    decide +kernel
  have nd : s6Step223Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step223Add1Arena s6Step223Add1During s6Step223Add1Work.toFinset s6Step223Add1_bounded s6Step223Add1_apart rfl

private theorem s6Step223Add1_distinct : (822::887::825::(s6Step223Add1A++s6Step223Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223Add1_owned : (822::887::825::(s6Step223Add1A++s6Step223Add1B)).toFinset⊆s6Step223Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step223Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223Add1_checked : compileHmrHybridCinLog s6Step223Add1Arena 887 822 825 s6Step223Add1A s6Step223Add1B s6Step223Add1Work=some s6Step223Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step223Add1Arena s6Step223Add1During 887 822 825 s6Step223Add1A s6Step223Add1B s6Step223Add1Work
    (by decide +kernel) (by decide +kernel) s6Step223Add1_distinct
    (fun q hq => s6Step223Add1_owned (List.mem_toFinset.mpr hq)) s6Step223Add1_borrowed

private theorem s6Step223F4_apart : Disjoint (s6Step223Add0A++s6Step223Add0B).toFinset (s6Step223Add1A++s6Step223Add1B).toFinset := by
  have nd : ((s6Step223Add0A++s6Step223Add0B)++(s6Step223Add1A++s6Step223Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step223F4_carry : s6Step223F4FlagArena.checkBorrow 1 [825]=some s6Step223Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step223F4FlagArena,s6Step223HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step223F4FlagArena,s6Step223HeadFvAfter,s6Step223Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step223F4_distinct : (908::887::822::825::((s6Step223Add0A++s6Step223Add1A)++(s6Step223Add0B++s6Step223Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223F4_flag : s6Step223HeadFvAfter.checkBorrow 1 [822]=some s6Step223F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step223HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step223F4_owned : (908::887::((s6Step223Add0A++s6Step223Add1A)++(s6Step223Add0B++s6Step223Add1B))).toFinset⊆s6Step223HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step223HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223F4_checked : compileHmrHybridF4Log s6Step223HeadFvAfter 908 887 s6Step223Add0A s6Step223Add0B s6Step223Add1A s6Step223Add1B [822] [825] s6Step223Add0Work s6Step223Add1Work=some s6Step223F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step223HeadFvAfter s6Step223F4FlagArena s6Step223Add0Arena s6Step223Add0During s6Step223Add1During 908 887
    s6Step223Add0A s6Step223Add0B s6Step223Add1A s6Step223Add1B [822] [825] s6Step223Add0Work s6Step223Add1Work
    (fun q hq => s6Step223F4_owned (List.mem_toFinset.mpr hq)) s6Step223F4_flag s6Step223F4_carry
    s6Step223F4_distinct s6Step223F4_apart s6Step223Add0_checked s6Step223Add1_checked

private theorem s6Step223Front_branch : s6Step223FrontSigmaArena.checkBorrow 1 [887]=some s6Step223HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step223FrontSigmaArena,s6Step223EntryGvAfter,s6Step223EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step223FrontSigmaArena,s6Step223EntryGvAfter,s6Step223EntryGAfter,s6Step223HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step223Front_entry : HmrFrontEntryValid s6Step223EntryFBefore s6Step223FrontBank 159 126 ⟨158,158,127,126⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step223FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step223EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step223EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step223FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step223Front_sigma : s6Step223EntryGvAfter.checkBorrow 1 [908]=some s6Step223FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step223EntryGvAfter,s6Step223EntryGAfter,arenaWires]
  · rfl

private def s6Step223HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223HeadFBefore : Arena := s6Step223HeadGAfter

private def s6Step223HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414],795⟩

private def s6Step223HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807],776⟩

private def s6Step223HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828],777⟩

private def s6Step223HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858],775⟩

private theorem s6Step223HeadBank_incomingDistinct : ([s6Step223HeadGRow,s6Step223HeadFRow,s6Step223HeadGvRow,s6Step223HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223HeadF_Incoming : rowsOwned s6Step223HeadFBefore [s6Step223HeadFRow,s6Step223HeadGvRow,s6Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223HeadGRow,s6Step223HeadFRow,s6Step223HeadGvRow,s6Step223HeadFvRow] 1 s6Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223HeadBank_outgoingOwned : rowsOwned s6Step223HeadFvAfter [s6Step223HeadGOut,s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step223HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223HeadF_Outgoing : rowsOwned s6Step223HeadFvAfter [s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut] :=
  hmrRows_owned_drop s6Step223HeadFvAfter [s6Step223HeadGOut,s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut] 1 s6Step223HeadBank_outgoingOwned

private theorem s6Step223HeadF_distinct : (s6Step223HeadFRow.sign::s6Step223HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223HeadF_owned : (s6Step223HeadFRow.sign::s6Step223HeadFRow.payload).toFinset⊆s6Step223HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223HeadF_reserved : s6Step223HeadFBefore.reserve s6Step223HeadFFresh.toFinset=some s6Step223HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223HeadFFresh,arenaWires]
  · norm_num [s6Step223HeadFBefore,s6Step223HeadGAfter,s6Step223HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step223HeadFAfter,s6Step223HeadFBefore,s6Step223HeadGAfter,s6Step223HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step223HeadF_checked : planRowResizeLog s6Step223HeadFBefore s6Step223HeadFRow 160 s6Step223HeadFFresh=
    some (s6Step223HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 856],795⟩,growRow 795 s6Step223HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step223HeadFBefore s6Step223HeadFAfter s6Step223HeadFRow 160 s6Step223HeadFFresh
    s6Step223HeadF_distinct s6Step223HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223HeadF_reserved
  have rowEq : WindowRow.mk (s6Step223HeadFRow.payload++s6Step223HeadFFresh) s6Step223HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 856],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step223HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step223HeadFvBefore : Arena := s6Step223HeadGvAfter

private theorem s6Step223HeadFv_Incoming : rowsOwned s6Step223HeadFvBefore [s6Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223HeadGRow,s6Step223HeadFRow,s6Step223HeadGvRow,s6Step223HeadFvRow] 3 s6Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223HeadFv_Outgoing : rowsOwned s6Step223HeadFvAfter [s6Step223HeadFvOut] :=
  hmrRows_owned_drop s6Step223HeadFvAfter [s6Step223HeadGOut,s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut] 3 s6Step223HeadBank_outgoingOwned

private theorem s6Step223HeadFv_distinct : (s6Step223HeadFvRow.sign::s6Step223HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223HeadFv_owned : (s6Step223HeadFvRow.sign::s6Step223HeadFvRow.payload).toFinset⊆s6Step223HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223HeadFv_reserved : s6Step223HeadFvBefore.reserve s6Step223HeadFvFresh.toFinset=some s6Step223HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223HeadFvFresh,arenaWires]
  · norm_num [s6Step223HeadFvBefore,s6Step223HeadGvAfter,s6Step223HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step223HeadFvAfter,s6Step223HeadFvBefore,s6Step223HeadGvAfter,s6Step223HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step223HeadFv_checked : planRowResizeLog s6Step223HeadFvBefore s6Step223HeadFvRow 127 s6Step223HeadFvFresh=
    some (s6Step223HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩,growRow 776 s6Step223HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step223HeadFvBefore s6Step223HeadFvAfter s6Step223HeadFvRow 127 s6Step223HeadFvFresh
    s6Step223HeadFv_distinct s6Step223HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step223HeadFvRow.payload++s6Step223HeadFvFresh) s6Step223HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step223HeadG_Incoming : rowsOwned s6Step223HeadGBefore [s6Step223HeadGRow,s6Step223HeadFRow,s6Step223HeadGvRow,s6Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223HeadGRow,s6Step223HeadFRow,s6Step223HeadGvRow,s6Step223HeadFvRow] 0 s6Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223HeadG_Outgoing : rowsOwned s6Step223HeadFvAfter [s6Step223HeadGOut,s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut] :=
  hmrRows_owned_drop s6Step223HeadFvAfter [s6Step223HeadGOut,s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut] 0 s6Step223HeadBank_outgoingOwned

private theorem s6Step223HeadG_distinct : (s6Step223HeadGRow.sign::s6Step223HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223HeadG_owned : (s6Step223HeadGRow.sign::s6Step223HeadGRow.payload).toFinset⊆s6Step223HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223HeadG_reserved : s6Step223HeadGBefore.reserve s6Step223HeadGFresh.toFinset=some s6Step223HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223HeadGFresh,arenaWires]
  · norm_num [s6Step223HeadGBefore,s6Step223HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step223HeadGAfter,s6Step223HeadGBefore,s6Step223HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step223HeadG_checked : planRowResizeLog s6Step223HeadGBefore s6Step223HeadGRow 160 s6Step223HeadGFresh=
    some (s6Step223HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828, 875],777⟩,growRow 777 s6Step223HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step223HeadGBefore s6Step223HeadGAfter s6Step223HeadGRow 160 s6Step223HeadGFresh
    s6Step223HeadG_distinct s6Step223HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223HeadG_reserved
  have rowEq : WindowRow.mk (s6Step223HeadGRow.payload++s6Step223HeadGFresh) s6Step223HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 828, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step223HeadGvBefore : Arena := s6Step223HeadFAfter

private theorem s6Step223HeadGv_Incoming : rowsOwned s6Step223HeadGvBefore [s6Step223HeadGvRow,s6Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step223HeadGRow,s6Step223HeadFRow,s6Step223HeadGvRow,s6Step223HeadFvRow] 2 s6Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step223HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step223HeadGv_Outgoing : rowsOwned s6Step223HeadFvAfter [s6Step223HeadGvOut,s6Step223HeadFvOut] :=
  hmrRows_owned_drop s6Step223HeadFvAfter [s6Step223HeadGOut,s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut] 2 s6Step223HeadBank_outgoingOwned

private theorem s6Step223HeadGv_distinct : (s6Step223HeadGvRow.sign::s6Step223HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step223HeadGv_owned : (s6Step223HeadGvRow.sign::s6Step223HeadGvRow.payload).toFinset⊆s6Step223HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step223HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step223HeadGv_reserved : s6Step223HeadGvBefore.reserve s6Step223HeadGvFresh.toFinset=some s6Step223HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step223HeadGvFresh,arenaWires]
  · norm_num [s6Step223HeadGvBefore,s6Step223HeadFAfter,s6Step223HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step223HeadGvAfter,s6Step223HeadGvBefore,s6Step223HeadFAfter,s6Step223HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step223HeadGv_checked : planRowResizeLog s6Step223HeadGvBefore s6Step223HeadGvRow 127 s6Step223HeadGvFresh=
    some (s6Step223HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 789],775⟩,growRow 775 s6Step223HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step223HeadGvBefore s6Step223HeadGvAfter s6Step223HeadGvRow 127 s6Step223HeadGvFresh
    s6Step223HeadGv_distinct s6Step223HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step223HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step223HeadGvRow.payload++s6Step223HeadGvFresh) s6Step223HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step223HeadBank_rows : planWindowRowsLog s6Step223HeadGBefore [(s6Step223HeadGRow,160),(s6Step223HeadFRow,160),(s6Step223HeadGvRow,127),(s6Step223HeadFvRow,127)] [s6Step223HeadGFresh,s6Step223HeadFFresh,s6Step223HeadGvFresh,s6Step223HeadFvFresh]=
    some (s6Step223HeadFvAfter,[s6Step223HeadGOut,s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut],(growRow 777 s6Step223HeadGFresh ++ (growRow 795 s6Step223HeadFFresh ++ (growRow 775 s6Step223HeadGvFresh ++ (growRow 776 s6Step223HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step223HeadFvAfter [] []=some (s6Step223HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step223HeadFvBefore s6Step223HeadFvAfter s6Step223HeadFvAfter
    s6Step223HeadFvRow s6Step223HeadFvOut 127 s6Step223HeadFvFresh [] [] []
    (growRow 776 s6Step223HeadFvFresh) ([]) s6Step223HeadFv_Incoming s6Step223HeadFv_checked h4 s6Step223HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step223HeadGvBefore s6Step223HeadGvAfter s6Step223HeadFvAfter
    s6Step223HeadGvRow s6Step223HeadGvOut 127 s6Step223HeadGvFresh [(s6Step223HeadFvRow,127)] [s6Step223HeadFvFresh] [s6Step223HeadFvOut]
    (growRow 775 s6Step223HeadGvFresh) ((growRow 776 s6Step223HeadFvFresh ++ [])) s6Step223HeadGv_Incoming s6Step223HeadGv_checked h3 s6Step223HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step223HeadFBefore s6Step223HeadFAfter s6Step223HeadFvAfter
    s6Step223HeadFRow s6Step223HeadFOut 160 s6Step223HeadFFresh [(s6Step223HeadGvRow,127),(s6Step223HeadFvRow,127)] [s6Step223HeadGvFresh,s6Step223HeadFvFresh] [s6Step223HeadGvOut,s6Step223HeadFvOut]
    (growRow 795 s6Step223HeadFFresh) ((growRow 775 s6Step223HeadGvFresh ++ (growRow 776 s6Step223HeadFvFresh ++ []))) s6Step223HeadF_Incoming s6Step223HeadF_checked h2 s6Step223HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step223HeadGBefore s6Step223HeadGAfter s6Step223HeadFvAfter
    s6Step223HeadGRow s6Step223HeadGOut 160 s6Step223HeadGFresh [(s6Step223HeadFRow,160),(s6Step223HeadGvRow,127),(s6Step223HeadFvRow,127)] [s6Step223HeadFFresh,s6Step223HeadGvFresh,s6Step223HeadFvFresh] [s6Step223HeadFOut,s6Step223HeadGvOut,s6Step223HeadFvOut]
    (growRow 777 s6Step223HeadGFresh) ((growRow 795 s6Step223HeadFFresh ++ (growRow 775 s6Step223HeadGvFresh ++ (growRow 776 s6Step223HeadFvFresh ++ [])))) s6Step223HeadG_Incoming s6Step223HeadG_checked h1 s6Step223HeadG_Outgoing
  exact h0

private theorem s6Step223HeadBank_checked : compileHmrBankResizeLog .headroom s6Step223HeadGBefore ⟨s6Step223HeadFRow,s6Step223HeadGRow,s6Step223HeadFvRow,s6Step223HeadGvRow⟩ ⟨160,160,127,127⟩ [s6Step223HeadGFresh,s6Step223HeadFFresh,s6Step223HeadGvFresh,s6Step223HeadFvFresh]=
    some (s6Step223HeadFvAfter,⟨s6Step223HeadFOut,s6Step223HeadGOut,s6Step223HeadFvOut,s6Step223HeadGvOut⟩,(growRow 777 s6Step223HeadGFresh ++ (growRow 795 s6Step223HeadFFresh ++ (growRow 775 s6Step223HeadGvFresh ++ (growRow 776 s6Step223HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step223HeadBank_rows]
  rfl

private theorem s6Step223Front_checked : compileHmrSourceFrontLog s6Step223EntryFBefore s6Step223FrontBank 159 126 ⟨158,158,127,126⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step223FrontLog=some s6Step223FrontPlan := by
  have pairEq : s6Step223FrontPair=⟨s6Step223HeadFRow,s6Step223HeadGRow,s6Step223HeadFvRow,s6Step223HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step223FrontHead=⟨s6Step223ExitFRow,s6Step223ExitGRow,s6Step223ExitFvRow,s6Step223ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step223Add0A=s6Step223FrontHead.f.wires := by decide +kernel
  have gEq : s6Step223Add0B=s6Step223FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step223Add1A=s6Step223FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step223Add1B=s6Step223FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step223EntryFBefore s6Step223FrontBank 159 126 ⟨158,158,127,126⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step223FrontLog s6Step223FrontPlan
  · exact s6Step223Front_entry
  · exact s6Step223EntryBank_checked
  · exact s6Step223Front_sigma
  · rfl
  · exact s6Step223Front_branch
  · rfl
  · simpa only [s6Step223FrontPlan,pairEq] using s6Step223HeadBank_checked
  · simpa only [s6Step223FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step223F4_checked
  · exact s6Step223Counter_checked
  · rfl
  · simpa only [s6Step223FrontPlan,headEq] using s6Step223ExitBank_checked

private theorem s6Step223Complete_explicit_checked : compileHmrEarlyStepLog s6Step223EntryFBefore s6Step223FrontBank 159 126 ⟨158,158,127,126⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step223CompleteLog=some s6Step223CompletePlan := by
  let Q := s6Step223EarlyControlPlan
  have hq := s6Step223EarlyControl_plan_checked
  have fv1 : s6Step223CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step223CompleteOut.fv.payload[2]?.getD s6Step223CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step223CompleteOut.fv.payload[3]?.getD s6Step223CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step223CompleteOut.fv.payload[4]?.getD s6Step223CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step223EntryFBefore s6Step223EarlyControlArena s6Step223FrontBank 159 126 ⟨158,158,127,126⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step223CompleteLog s6Step223FrontPlan Q
    s6Step223Front_checked s6Step223Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step223Complete_owned s6Step223Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step223EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 s6Step223CompleteOut.fv.second (s6Step223CompleteOut.fv.payload[2]?.getD s6Step223CompleteOut.fv.sign) (s6Step223CompleteOut.fv.payload[3]?.getD s6Step223CompleteOut.fv.sign) (s6Step223CompleteOut.fv.payload[4]?.getD s6Step223CompleteOut.fv.sign) 887 47 s6Step223EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep223Arena : Arena := s6Step223EntryFBefore
def s6PrivateStep223Bank : WindowBank := s6Step223FrontBank
def s6PrivateStep223Spec : HmrSourceWalkStepLog := ⟨159,126,⟨158,158,127,126⟩,47,.early s6Step223CompleteLog⟩
def s6PrivateStep223Plan : HmrSourceStepPlan := .early s6Step223CompletePlan
theorem s6PrivateStep223_source : s6PrivateStep223Spec=s6ObservedLogs208[15] := rfl
theorem s6PrivateStep223_checked : compileHmrSourceStepLog s6PrivateStep223Arena s6PrivateStep223Bank
    s6PrivateStep223Spec.fgWidth s6PrivateStep223Spec.vWidth s6PrivateStep223Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 223 s6PrivateStep223Spec.need none s6PrivateStep223Spec.log=some s6PrivateStep223Plan := by
  change compileHmrSourceStepLog s6Step223EntryFBefore s6Step223FrontBank 159 126 ⟨158,158,127,126⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 223 47 none (.early s6Step223CompleteLog)=some (.early s6Step223CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 223<498)]
  rw [s6Step223Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
