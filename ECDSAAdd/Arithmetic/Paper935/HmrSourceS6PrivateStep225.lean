import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep223
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

private def s6Step225CompleteMoves : List (Wire × Wire) := [(805,413)]

private def s6Step225EarlyControlLog : HmrEarlyControlLog := ⟨[805, 856, 789, 875, 879],[828],[822],[825, 869, 786, 810, 809, 817],[]⟩

private def s6Step225FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [879], [], []],[[828], [875], [856], [789]],[[], [], [], []]⟩,[908],[892],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step225CompleteLog : HmrEarlyStepLog := ⟨s6Step225FrontLog,s6Step225CompleteMoves,s6Step225EarlyControlLog⟩

private def s6Step225ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step225ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step225ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩

private def s6Step225ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step225FrontOut : WindowBank := ⟨s6Step225ExitFOut,s6Step225ExitGOut,s6Step225ExitFvOut,s6Step225ExitGvOut⟩

private def s6Step225CompleteOut : WindowBank := s6Step225FrontOut.repacked s6Step225CompleteMoves

private def s6Step225EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step225EarlyControlPositiveArena,[828],s6Step225EarlyControlEqualityArena,[822],⟨⟨908,false⟩,[⟨⟨828,false⟩,822⟩]⟩⟩

private def s6Step225EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨772,false⟩,856⟩,⟨⟨771,false⟩,789⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,879⟩]⟩

private def s6Step225EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step225EarlyControlZeroArena,s6Step225EarlyControlZeroPlan,s6Step225EarlyControlClassPlan,s6Step225EarlyControlFlagArena,s6Step225EarlyControlFittedArena,s6Step225EarlyControlHistoryArena,s6Step225EarlyControlSigmaArena,s6Step225EarlyControlOutputArena,s6Step225EarlyControlLog⟩

private def s6Step225CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step225Counter_bounded : s6Step225CounterWork.toFinset⊆arenaWires := by norm_num [s6Step225CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step225HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225CounterDuring : Arena := ⟨s6Step225HeadFvAfter.live∪s6Step225CounterWork.toFinset,Finset.union_subset s6Step225HeadFvAfter.bounded s6Step225Counter_bounded⟩

private def s6Step225EntryFFresh : List Wire := []

private def s6Step225EntryFvFresh : List Wire := []

private def s6Step225EntryGFresh : List Wire := [879]

private def s6Step225EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EntryGvAfter : Arena := s6Step225EntryGAfter

private def s6Step225EntryGvFresh : List Wire := []

private def s6Step225ExitFExtra : List Wire := [413, 875]

private def s6Step225ExitFvExtra : List Wire := [789]

private def s6Step225ExitGExtra : List Wire := [879, 828]

private def s6Step225ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225ExitGvExtra : List Wire := [856]

private def s6Step225Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step225Add0_bounded : s6Step225Add0Work.toFinset⊆arenaWires := by
  have h : s6Step225Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step225Add0During : Arena := ⟨s6Step225Add0Arena.live∪s6Step225Add0Work.toFinset,Finset.union_subset s6Step225Add0Arena.bounded s6Step225Add0_bounded⟩

private def s6Step225Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step225Add1_bounded : s6Step225Add1Work.toFinset⊆arenaWires := by
  have h : s6Step225Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step225Add1During : Arena := ⟨s6Step225Add1Arena.live∪s6Step225Add1Work.toFinset,Finset.union_subset s6Step225Add1Arena.bounded s6Step225Add1_bounded⟩

private def s6Step225F4FlagArena : Arena := ⟨s6Step225HeadFvAfter.live∪{822},Finset.union_subset s6Step225HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step225F4Plan : HmrHybridF4Plan := ⟨s6Step225F4FlagArena,[822],s6Step225Add0Arena,[825],s6Step225Add0During,s6Step225Add0Work,s6Step225Add1During,s6Step225Add1Work⟩

private def s6Step225HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 875],795⟩

private def s6Step225HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 789],776⟩

private def s6Step225HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879, 828],777⟩

private def s6Step225HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 856],775⟩

private def s6Step225FrontHead : WindowBank := ⟨s6Step225HeadFOut,s6Step225HeadGOut,s6Step225HeadFvOut,s6Step225HeadGvOut⟩

private def s6Step225EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step225EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step225EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879],777⟩

private def s6Step225EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step225FrontPair : WindowBank := ⟨s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut⟩

private def s6Step225FrontSigmaArena : Arena := ⟨s6Step225EntryGvAfter.live∪{908},Finset.union_subset s6Step225EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step225HeadFFresh : List Wire := [875]

private def s6Step225HeadFvFresh : List Wire := [789]

private def s6Step225HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225HeadGFresh : List Wire := [828]

private def s6Step225HeadGvFresh : List Wire := [856]

private def s6Step225FrontPlan : HmrSourceFront := ⟨s6Step225EntryGvAfter,s6Step225FrontPair,(growRow 795 s6Step225EntryFFresh ++ (growRow 777 s6Step225EntryGFresh ++ (growRow 776 s6Step225EntryFvFresh ++ (growRow 775 s6Step225EntryGvFresh ++ [])))),s6Step225FrontSigmaArena,[908],s6Step225HeadGBefore,[892],
  s6Step225HeadFvAfter,s6Step225FrontHead,(growRow 777 s6Step225HeadGFresh ++ (growRow 795 s6Step225HeadFFresh ++ (growRow 775 s6Step225HeadGvFresh ++ (growRow 776 s6Step225HeadFvFresh ++ [])))),s6Step225F4Plan,s6Step225CounterDuring,s6Step225CounterWork,s6Step225ExitGvAfter,s6Step225FrontOut,(shrinkRow 777 s6Step225ExitGExtra ++ (shrinkRow 795 s6Step225ExitFExtra ++ (shrinkRow 776 s6Step225ExitFvExtra ++ (shrinkRow 775 s6Step225ExitGvExtra ++ []))))⟩

private def s6Step225CompletePlan : HmrEarlyStepPlan := ⟨s6Step225FrontPlan,s6Step225EarlyControlArena,s6Step225EarlyControlPlan,s6Step225CompleteMoves⟩

private theorem s6Step225Complete_apart : List.Disjoint (s6Step225CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step225CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step225Complete_owned : (s6Step225CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step225CompleteMoveArena : Arena := ⟨s6Step225ExitGvAfter.live∪{413},Finset.union_subset s6Step225ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step225Complete_repack : s6Step225ExitGvAfter.checkRepack s6Step225CompleteMoves=some s6Step225EarlyControlArena := by
  have owned : 805∈s6Step225ExitGvAfter.live := by norm_num [s6Step225ExitGvAfter,arenaWires]
  have reserve : s6Step225ExitGvAfter.reserve {413}=some s6Step225CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step225ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step225CompleteMoveArena.retireSet {805}=s6Step225EarlyControlArena := by
    unfold Arena.retireSet s6Step225EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step225CompleteMoveArena,s6Step225ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step225CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step225CompleteMoveArena.retireSet {805}).checkRepack []=some s6Step225EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step225EarlyControl_branchOwned : ([892] : List Wire).toFinset⊆s6Step225EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_branch : compileHmrBranchRetirement s6Step225EarlyControlSigmaArena 892=some s6Step225EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step225EarlyControl_branchOwned
  · ext q
    simp [s6Step225EarlyControlOutputArena,s6Step225EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step225EarlyControl_classEqualityBorrow : s6Step225EarlyControlPositiveArena.checkBorrow (([908, 828] : List Wire).length-1) s6Step225EarlyControlLog.classWork=some s6Step225EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step225EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step225EarlyControlEqualityArena,s6Step225EarlyControlPositiveArena,s6Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step225EarlyControl_classEqualityOwned : ([908, 828] : List Wire).toFinset⊆s6Step225EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_classEquality : compileHmrEqualityLog s6Step225EarlyControlPositiveArena [908, 828] 0 s6Step225EarlyControlLog.classWork=some (s6Step225EarlyControlEqualityArena,s6Step225EarlyControlLog.classWork,s6Step225EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step225EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step225EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step225EarlyControl_classOwned : ([769, 879, 908] : List Wire).toFinset⊆s6Step225EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_positiveBorrow : s6Step225EarlyControlZeroArena.checkBorrow (1) s6Step225EarlyControlLog.positiveWork=some s6Step225EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step225EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step225EarlyControlPositiveArena,s6Step225EarlyControlZeroArena,s6Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step225EarlyControl_class : compileHmrSourceClassLog s6Step225EarlyControlZeroArena false 769 s6Step225EarlyControlZeroPlan.top 0 908 s6Step225EarlyControlLog.positiveWork s6Step225EarlyControlLog.classWork=some s6Step225EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step225EarlyControlClassPlan s6Step225EarlyControlZeroArena false 769 s6Step225EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step225EarlyControl_classOwned
  · exact s6Step225EarlyControl_positiveBorrow
  · exact s6Step225EarlyControl_classEquality

private theorem s6Step225EarlyControl_entryRecordOwned : ([892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_fitBorrow : s6Step225EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step225EarlyControlLog.recordFresh=some s6Step225EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step225EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step225EarlyControlFittedArena,s6Step225EarlyControlFlagArena,s6Step225EarlyControlLog,arenaWires]

private theorem s6Step225EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step225EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_fit : compileHmrRecordGrowLog s6Step225EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step225EarlyControlLog.recordFresh=some s6Step225EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step225EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step225EarlyControl_fitBorrow

private theorem s6Step225EarlyControl_flagsBorrow : s6Step225EarlyControlEqualityArena.checkBorrow (6) s6Step225EarlyControlLog.flagWork=some s6Step225EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step225EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step225EarlyControlFlagArena,s6Step225EarlyControlEqualityArena,s6Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step225EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s6Step225EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_flags : compileHmrFlagsLog s6Step225EarlyControlClassPlan.equalityArena s6Step225EarlyControlClassPlan.equality.top 253 252 251 s6Step225EarlyControlLog.flagWork=some s6Step225EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step225EarlyControl_flagsOwned⟩
  · exact s6Step225EarlyControl_flagsBorrow

private theorem s6Step225EarlyControl_historyBorrow : s6Step225EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step225EarlyControlLog.recordFresh=some s6Step225EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step225EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step225EarlyControlHistoryArena,s6Step225EarlyControlArena,s6Step225EarlyControlLog,arenaWires]

private theorem s6Step225EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_history : compileHmrRecordGrowLog s6Step225EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step225EarlyControlLog.recordFresh=some s6Step225EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step225EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step225EarlyControl_historyBorrow

private theorem s6Step225EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step225EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step225EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_sigmaRelease : s6Step225EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step225EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step225EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step225EarlyControlSigmaArena,s6Step225EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step225EarlyControl_sigma : compileHmrSigmaDropLog s6Step225EarlyControlHistoryArena false 0 0 254 908 []=some s6Step225EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step225EarlyControl_sigmaOwned⟩
  · exact s6Step225EarlyControl_sigmaRelease

private theorem s6Step225EarlyControl_zeroBorrow : s6Step225EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step225EarlyControlLog.zeroWork=some s6Step225EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step225EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step225EarlyControlZeroArena,s6Step225EarlyControlArena,s6Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step225EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step225EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EarlyControl_zero : compileHmrEqualityLog s6Step225EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step225EarlyControlLog.zeroWork=some (s6Step225EarlyControlZeroArena,s6Step225EarlyControlLog.zeroWork,s6Step225EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step225EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step225EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step225EarlyControl_logged : s6Step225EarlyControlPlan.Logged s6Step225EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 892 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step225EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step225EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step225EarlyControl_zero
  · exact s6Step225EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step225EarlyControl_flags
  · exact s6Step225EarlyControl_fit
  · exact s6Step225EarlyControl_history
  · exact s6Step225EarlyControl_sigma
  · exact s6Step225EarlyControl_branch

private theorem s6Step225EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step225EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 892 47 s6Step225EarlyControlLog=some s6Step225EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step225EarlyControlPlan s6Step225EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 892 47 s6Step225EarlyControl_logged

private def s6Step225EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step225EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step225EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩

private def s6Step225EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step225FrontBank : WindowBank := ⟨s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow⟩

private def s6Step225Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 875, 795]

private def s6Step225Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879, 828, 777]

private def s6Step225Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 789, 776]

private def s6Step225Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 856, 775]

private theorem s6Step225Counter_apart : Disjoint s6Step225HeadFvAfter.live s6Step225CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step225HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225Counter_borrowed : s6Step225HeadFvAfter.checkBorrow 4 s6Step225CounterWork=some s6Step225CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step225HeadFvAfter s6Step225CounterDuring s6Step225CounterWork.toFinset s6Step225Counter_bounded s6Step225Counter_apart rfl

private theorem s6Step225Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step225HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step225HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225Counter_checked : compileHmrCounterStepLog s6Step225HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step225CounterWork=some s6Step225CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step225HeadFvAfter.live := fun q hq => s6Step225Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step225Counter_borrowed

private def s6Step225EntryFAfter : Arena := s6Step225EntryFBefore

private theorem s6Step225EntryBank_incomingDistinct : ([s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225EntryF_Incoming : rowsOwned s6Step225EntryFBefore [s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow] 0 s6Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225EntryBank_outgoingOwned : rowsOwned s6Step225EntryGvAfter [s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step225EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225EntryF_Outgoing : rowsOwned s6Step225EntryGvAfter [s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut] :=
  hmrRows_owned_drop s6Step225EntryGvAfter [s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut] 0 s6Step225EntryBank_outgoingOwned

private theorem s6Step225EntryF_distinct : (s6Step225EntryFRow.sign::s6Step225EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225EntryF_owned : (s6Step225EntryFRow.sign::s6Step225EntryFRow.payload).toFinset⊆s6Step225EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EntryF_reserved : s6Step225EntryFBefore.reserve s6Step225EntryFFresh.toFinset=some s6Step225EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225EntryFFresh,arenaWires]
  · norm_num [s6Step225EntryFBefore,s6Step225EntryFFresh,arenaWires]
  · simp only [s6Step225EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step225EntryF_checked : planRowResizeLog s6Step225EntryFBefore s6Step225EntryFRow 158 s6Step225EntryFFresh=
    some (s6Step225EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩,growRow 795 s6Step225EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step225EntryFBefore s6Step225EntryFAfter s6Step225EntryFRow 158 s6Step225EntryFFresh
    s6Step225EntryF_distinct s6Step225EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225EntryF_reserved
  have rowEq : WindowRow.mk (s6Step225EntryFRow.payload++s6Step225EntryFFresh) s6Step225EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step225EntryFvAfter : Arena := s6Step225EntryGAfter

private def s6Step225EntryFvBefore : Arena := s6Step225EntryGAfter

private theorem s6Step225EntryFv_Incoming : rowsOwned s6Step225EntryFvBefore [s6Step225EntryFvRow,s6Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow] 2 s6Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225EntryFv_Outgoing : rowsOwned s6Step225EntryGvAfter [s6Step225EntryFvOut,s6Step225EntryGvOut] :=
  hmrRows_owned_drop s6Step225EntryGvAfter [s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut] 2 s6Step225EntryBank_outgoingOwned

private theorem s6Step225EntryFv_distinct : (s6Step225EntryFvRow.sign::s6Step225EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225EntryFv_owned : (s6Step225EntryFvRow.sign::s6Step225EntryFvRow.payload).toFinset⊆s6Step225EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EntryFv_reserved : s6Step225EntryFvBefore.reserve s6Step225EntryFvFresh.toFinset=some s6Step225EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225EntryFvFresh,arenaWires]
  · norm_num [s6Step225EntryFvBefore,s6Step225EntryGAfter,s6Step225EntryFvFresh,arenaWires]
  · simp only [s6Step225EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step225EntryFv_checked : planRowResizeLog s6Step225EntryFvBefore s6Step225EntryFvRow 127 s6Step225EntryFvFresh=
    some (s6Step225EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩,growRow 776 s6Step225EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step225EntryFvBefore s6Step225EntryFvAfter s6Step225EntryFvRow 127 s6Step225EntryFvFresh
    s6Step225EntryFv_distinct s6Step225EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step225EntryFvRow.payload++s6Step225EntryFvFresh) s6Step225EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step225EntryGBefore : Arena := s6Step225EntryFBefore

private theorem s6Step225EntryG_Incoming : rowsOwned s6Step225EntryGBefore [s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow] 1 s6Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225EntryG_Outgoing : rowsOwned s6Step225EntryGvAfter [s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut] :=
  hmrRows_owned_drop s6Step225EntryGvAfter [s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut] 1 s6Step225EntryBank_outgoingOwned

private theorem s6Step225EntryG_distinct : (s6Step225EntryGRow.sign::s6Step225EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225EntryG_owned : (s6Step225EntryGRow.sign::s6Step225EntryGRow.payload).toFinset⊆s6Step225EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EntryG_reserved : s6Step225EntryGBefore.reserve s6Step225EntryGFresh.toFinset=some s6Step225EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225EntryGFresh,arenaWires]
  · norm_num [s6Step225EntryGBefore,s6Step225EntryFBefore,s6Step225EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step225EntryGAfter,s6Step225EntryGBefore,s6Step225EntryFBefore,s6Step225EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step225EntryG_checked : planRowResizeLog s6Step225EntryGBefore s6Step225EntryGRow 158 s6Step225EntryGFresh=
    some (s6Step225EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879],777⟩,growRow 777 s6Step225EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step225EntryGBefore s6Step225EntryGAfter s6Step225EntryGRow 158 s6Step225EntryGFresh
    s6Step225EntryG_distinct s6Step225EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225EntryG_reserved
  have rowEq : WindowRow.mk (s6Step225EntryGRow.payload++s6Step225EntryGFresh) s6Step225EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step225EntryGvBefore : Arena := s6Step225EntryGAfter

private theorem s6Step225EntryGv_Incoming : rowsOwned s6Step225EntryGvBefore [s6Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow] 3 s6Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225EntryGv_Outgoing : rowsOwned s6Step225EntryGvAfter [s6Step225EntryGvOut] :=
  hmrRows_owned_drop s6Step225EntryGvAfter [s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut] 3 s6Step225EntryBank_outgoingOwned

private theorem s6Step225EntryGv_distinct : (s6Step225EntryGvRow.sign::s6Step225EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225EntryGv_owned : (s6Step225EntryGvRow.sign::s6Step225EntryGvRow.payload).toFinset⊆s6Step225EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225EntryGv_reserved : s6Step225EntryGvBefore.reserve s6Step225EntryGvFresh.toFinset=some s6Step225EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225EntryGvFresh,arenaWires]
  · norm_num [s6Step225EntryGvBefore,s6Step225EntryGAfter,s6Step225EntryGvFresh,arenaWires]
  · simp only [s6Step225EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step225EntryGv_checked : planRowResizeLog s6Step225EntryGvBefore s6Step225EntryGvRow 127 s6Step225EntryGvFresh=
    some (s6Step225EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩,growRow 775 s6Step225EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step225EntryGvBefore s6Step225EntryGvAfter s6Step225EntryGvRow 127 s6Step225EntryGvFresh
    s6Step225EntryGv_distinct s6Step225EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step225EntryGvRow.payload++s6Step225EntryGvFresh) s6Step225EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step225EntryBank_rows : planWindowRowsLog s6Step225EntryFBefore [(s6Step225EntryFRow,158),(s6Step225EntryGRow,158),(s6Step225EntryFvRow,127),(s6Step225EntryGvRow,127)] [s6Step225EntryFFresh,s6Step225EntryGFresh,s6Step225EntryFvFresh,s6Step225EntryGvFresh]=
    some (s6Step225EntryGvAfter,[s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut],(growRow 795 s6Step225EntryFFresh ++ (growRow 777 s6Step225EntryGFresh ++ (growRow 776 s6Step225EntryFvFresh ++ (growRow 775 s6Step225EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step225EntryGvAfter [] []=some (s6Step225EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step225EntryGvBefore s6Step225EntryGvAfter s6Step225EntryGvAfter
    s6Step225EntryGvRow s6Step225EntryGvOut 127 s6Step225EntryGvFresh [] [] []
    (growRow 775 s6Step225EntryGvFresh) ([]) s6Step225EntryGv_Incoming s6Step225EntryGv_checked h4 s6Step225EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step225EntryFvBefore s6Step225EntryFvAfter s6Step225EntryGvAfter
    s6Step225EntryFvRow s6Step225EntryFvOut 127 s6Step225EntryFvFresh [(s6Step225EntryGvRow,127)] [s6Step225EntryGvFresh] [s6Step225EntryGvOut]
    (growRow 776 s6Step225EntryFvFresh) ((growRow 775 s6Step225EntryGvFresh ++ [])) s6Step225EntryFv_Incoming s6Step225EntryFv_checked h3 s6Step225EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step225EntryGBefore s6Step225EntryGAfter s6Step225EntryGvAfter
    s6Step225EntryGRow s6Step225EntryGOut 158 s6Step225EntryGFresh [(s6Step225EntryFvRow,127),(s6Step225EntryGvRow,127)] [s6Step225EntryFvFresh,s6Step225EntryGvFresh] [s6Step225EntryFvOut,s6Step225EntryGvOut]
    (growRow 777 s6Step225EntryGFresh) ((growRow 776 s6Step225EntryFvFresh ++ (growRow 775 s6Step225EntryGvFresh ++ []))) s6Step225EntryG_Incoming s6Step225EntryG_checked h2 s6Step225EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step225EntryFBefore s6Step225EntryFAfter s6Step225EntryGvAfter
    s6Step225EntryFRow s6Step225EntryFOut 158 s6Step225EntryFFresh [(s6Step225EntryGRow,158),(s6Step225EntryFvRow,127),(s6Step225EntryGvRow,127)] [s6Step225EntryGFresh,s6Step225EntryFvFresh,s6Step225EntryGvFresh] [s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut]
    (growRow 795 s6Step225EntryFFresh) ((growRow 777 s6Step225EntryGFresh ++ (growRow 776 s6Step225EntryFvFresh ++ (growRow 775 s6Step225EntryGvFresh ++ [])))) s6Step225EntryF_Incoming s6Step225EntryF_checked h1 s6Step225EntryF_Outgoing
  exact h0

private theorem s6Step225EntryBank_checked : compileHmrBankResizeLog .entry s6Step225EntryFBefore ⟨s6Step225EntryFRow,s6Step225EntryGRow,s6Step225EntryFvRow,s6Step225EntryGvRow⟩ ⟨158,158,127,127⟩ [s6Step225EntryFFresh,s6Step225EntryGFresh,s6Step225EntryFvFresh,s6Step225EntryGvFresh]=
    some (s6Step225EntryGvAfter,⟨s6Step225EntryFOut,s6Step225EntryGOut,s6Step225EntryFvOut,s6Step225EntryGvOut⟩,(growRow 795 s6Step225EntryFFresh ++ (growRow 777 s6Step225EntryGFresh ++ (growRow 776 s6Step225EntryFvFresh ++ (growRow 775 s6Step225EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step225EntryBank_rows]
  rfl

private def s6Step225ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225ExitFBefore : Arena := s6Step225ExitGAfter

private def s6Step225ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 875],795⟩

private def s6Step225ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 789],776⟩

private def s6Step225ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879, 828],777⟩

private def s6Step225ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 856],775⟩

private theorem s6Step225ExitBank_incomingDistinct : ([s6Step225ExitGRow,s6Step225ExitFRow,s6Step225ExitFvRow,s6Step225ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225ExitF_Incoming : rowsOwned s6Step225ExitFBefore [s6Step225ExitFRow,s6Step225ExitFvRow,s6Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225ExitGRow,s6Step225ExitFRow,s6Step225ExitFvRow,s6Step225ExitGvRow] 1 s6Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225ExitBank_outgoingOwned : rowsOwned s6Step225ExitGvAfter [s6Step225ExitGOut,s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step225ExitGvAfter (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225ExitF_Outgoing : rowsOwned s6Step225ExitGvAfter [s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut] :=
  hmrRows_owned_drop s6Step225ExitGvAfter [s6Step225ExitGOut,s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut] 1 s6Step225ExitBank_outgoingOwned

private theorem s6Step225ExitF_distinct : (s6Step225ExitFRow.sign::s6Step225ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225ExitF_owned : (s6Step225ExitFRow.sign::s6Step225ExitFRow.payload).toFinset⊆s6Step225ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225ExitF_retired : s6Step225ExitFBefore.retireSet s6Step225ExitFExtra.toFinset=s6Step225ExitFAfter := by
  unfold Arena.retireSet s6Step225ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step225ExitFBefore,s6Step225ExitGAfter,s6Step225ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step225ExitF_checked : planRowResizeLog s6Step225ExitFBefore s6Step225ExitFRow 157 []=
    some (s6Step225ExitFAfter,s6Step225ExitFOut,shrinkRow 795 s6Step225ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step225ExitFBefore s6Step225ExitFRow 157 s6Step225ExitF_distinct s6Step225ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step225ExitFRow.payload.take 157) s6Step225ExitFRow.sign=s6Step225ExitFOut := by decide +kernel
  have hi : s6Step225ExitFRow.payload.drop 157=s6Step225ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step225ExitF_retired] at result
  exact result

private def s6Step225ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225ExitFvBefore : Arena := s6Step225ExitFAfter

private theorem s6Step225ExitFv_Incoming : rowsOwned s6Step225ExitFvBefore [s6Step225ExitFvRow,s6Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225ExitGRow,s6Step225ExitFRow,s6Step225ExitFvRow,s6Step225ExitGvRow] 2 s6Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225ExitFvBefore (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225ExitFv_Outgoing : rowsOwned s6Step225ExitGvAfter [s6Step225ExitFvOut,s6Step225ExitGvOut] :=
  hmrRows_owned_drop s6Step225ExitGvAfter [s6Step225ExitGOut,s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut] 2 s6Step225ExitBank_outgoingOwned

private theorem s6Step225ExitFv_distinct : (s6Step225ExitFvRow.sign::s6Step225ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225ExitFv_owned : (s6Step225ExitFvRow.sign::s6Step225ExitFvRow.payload).toFinset⊆s6Step225ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225ExitFvBefore (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225ExitFv_retired : s6Step225ExitFvBefore.retireSet s6Step225ExitFvExtra.toFinset=s6Step225ExitFvAfter := by
  unfold Arena.retireSet s6Step225ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step225ExitFvBefore,s6Step225ExitFAfter,s6Step225ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step225ExitFv_checked : planRowResizeLog s6Step225ExitFvBefore s6Step225ExitFvRow 127 []=
    some (s6Step225ExitFvAfter,s6Step225ExitFvOut,shrinkRow 776 s6Step225ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step225ExitFvBefore s6Step225ExitFvRow 127 s6Step225ExitFv_distinct s6Step225ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step225ExitFvRow.payload.take 127) s6Step225ExitFvRow.sign=s6Step225ExitFvOut := by decide +kernel
  have hi : s6Step225ExitFvRow.payload.drop 127=s6Step225ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step225ExitFv_retired] at result
  exact result

private def s6Step225ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step225ExitG_Incoming : rowsOwned s6Step225ExitGBefore [s6Step225ExitGRow,s6Step225ExitFRow,s6Step225ExitFvRow,s6Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225ExitGRow,s6Step225ExitFRow,s6Step225ExitFvRow,s6Step225ExitGvRow] 0 s6Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225ExitG_Outgoing : rowsOwned s6Step225ExitGvAfter [s6Step225ExitGOut,s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut] :=
  hmrRows_owned_drop s6Step225ExitGvAfter [s6Step225ExitGOut,s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut] 0 s6Step225ExitBank_outgoingOwned

private theorem s6Step225ExitG_distinct : (s6Step225ExitGRow.sign::s6Step225ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225ExitG_owned : (s6Step225ExitGRow.sign::s6Step225ExitGRow.payload).toFinset⊆s6Step225ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225ExitG_retired : s6Step225ExitGBefore.retireSet s6Step225ExitGExtra.toFinset=s6Step225ExitGAfter := by
  unfold Arena.retireSet s6Step225ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step225ExitGBefore,s6Step225ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step225ExitG_checked : planRowResizeLog s6Step225ExitGBefore s6Step225ExitGRow 157 []=
    some (s6Step225ExitGAfter,s6Step225ExitGOut,shrinkRow 777 s6Step225ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step225ExitGBefore s6Step225ExitGRow 157 s6Step225ExitG_distinct s6Step225ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step225ExitGRow.payload.take 157) s6Step225ExitGRow.sign=s6Step225ExitGOut := by decide +kernel
  have hi : s6Step225ExitGRow.payload.drop 157=s6Step225ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step225ExitG_retired] at result
  exact result

private def s6Step225ExitGvBefore : Arena := s6Step225ExitFvAfter

private theorem s6Step225ExitGv_Incoming : rowsOwned s6Step225ExitGvBefore [s6Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225ExitGRow,s6Step225ExitFRow,s6Step225ExitFvRow,s6Step225ExitGvRow] 3 s6Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225ExitGvBefore (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225ExitGv_Outgoing : rowsOwned s6Step225ExitGvAfter [s6Step225ExitGvOut] :=
  hmrRows_owned_drop s6Step225ExitGvAfter [s6Step225ExitGOut,s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut] 3 s6Step225ExitBank_outgoingOwned

private theorem s6Step225ExitGv_distinct : (s6Step225ExitGvRow.sign::s6Step225ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225ExitGv_owned : (s6Step225ExitGvRow.sign::s6Step225ExitGvRow.payload).toFinset⊆s6Step225ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225ExitGvBefore (fun q => (0≤q ∧ q<413) ∨ (414≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225ExitGv_retired : s6Step225ExitGvBefore.retireSet s6Step225ExitGvExtra.toFinset=s6Step225ExitGvAfter := by
  unfold Arena.retireSet s6Step225ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step225ExitGvBefore,s6Step225ExitFvAfter,s6Step225ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step225ExitGv_checked : planRowResizeLog s6Step225ExitGvBefore s6Step225ExitGvRow 127 []=
    some (s6Step225ExitGvAfter,s6Step225ExitGvOut,shrinkRow 775 s6Step225ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step225ExitGvBefore s6Step225ExitGvRow 127 s6Step225ExitGv_distinct s6Step225ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step225ExitGvRow.payload.take 127) s6Step225ExitGvRow.sign=s6Step225ExitGvOut := by decide +kernel
  have hi : s6Step225ExitGvRow.payload.drop 127=s6Step225ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step225ExitGv_retired] at result
  exact result

private theorem s6Step225ExitBank_rows : planWindowRowsLog s6Step225ExitGBefore [(s6Step225ExitGRow,157),(s6Step225ExitFRow,157),(s6Step225ExitFvRow,127),(s6Step225ExitGvRow,127)] [[],[],[],[]]=
    some (s6Step225ExitGvAfter,[s6Step225ExitGOut,s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut],(shrinkRow 777 s6Step225ExitGExtra ++ (shrinkRow 795 s6Step225ExitFExtra ++ (shrinkRow 776 s6Step225ExitFvExtra ++ (shrinkRow 775 s6Step225ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step225ExitGvAfter [] []=some (s6Step225ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step225ExitGvBefore s6Step225ExitGvAfter s6Step225ExitGvAfter
    s6Step225ExitGvRow s6Step225ExitGvOut 127 [] [] [] []
    (shrinkRow 775 s6Step225ExitGvExtra) ([]) s6Step225ExitGv_Incoming s6Step225ExitGv_checked h4 s6Step225ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step225ExitFvBefore s6Step225ExitFvAfter s6Step225ExitGvAfter
    s6Step225ExitFvRow s6Step225ExitFvOut 127 [] [(s6Step225ExitGvRow,127)] [[]] [s6Step225ExitGvOut]
    (shrinkRow 776 s6Step225ExitFvExtra) ((shrinkRow 775 s6Step225ExitGvExtra ++ [])) s6Step225ExitFv_Incoming s6Step225ExitFv_checked h3 s6Step225ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step225ExitFBefore s6Step225ExitFAfter s6Step225ExitGvAfter
    s6Step225ExitFRow s6Step225ExitFOut 157 [] [(s6Step225ExitFvRow,127),(s6Step225ExitGvRow,127)] [[],[]] [s6Step225ExitFvOut,s6Step225ExitGvOut]
    (shrinkRow 795 s6Step225ExitFExtra) ((shrinkRow 776 s6Step225ExitFvExtra ++ (shrinkRow 775 s6Step225ExitGvExtra ++ []))) s6Step225ExitF_Incoming s6Step225ExitF_checked h2 s6Step225ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step225ExitGBefore s6Step225ExitGAfter s6Step225ExitGvAfter
    s6Step225ExitGRow s6Step225ExitGOut 157 [] [(s6Step225ExitFRow,157),(s6Step225ExitFvRow,127),(s6Step225ExitGvRow,127)] [[],[],[]] [s6Step225ExitFOut,s6Step225ExitFvOut,s6Step225ExitGvOut]
    (shrinkRow 777 s6Step225ExitGExtra) ((shrinkRow 795 s6Step225ExitFExtra ++ (shrinkRow 776 s6Step225ExitFvExtra ++ (shrinkRow 775 s6Step225ExitGvExtra ++ [])))) s6Step225ExitG_Incoming s6Step225ExitG_checked h1 s6Step225ExitG_Outgoing
  exact h0

private theorem s6Step225ExitBank_checked : compileHmrBankResizeLog .exit s6Step225ExitGBefore ⟨s6Step225ExitFRow,s6Step225ExitGRow,s6Step225ExitFvRow,s6Step225ExitGvRow⟩ ⟨157,157,127,127⟩ [[],[],[],[]]=
    some (s6Step225ExitGvAfter,⟨s6Step225ExitFOut,s6Step225ExitGOut,s6Step225ExitFvOut,s6Step225ExitGvOut⟩,(shrinkRow 777 s6Step225ExitGExtra ++ (shrinkRow 795 s6Step225ExitFExtra ++ (shrinkRow 776 s6Step225ExitFvExtra ++ (shrinkRow 775 s6Step225ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step225ExitBank_rows]
  rfl

private theorem s6Step225Add0_apart : Disjoint s6Step225Add0Arena.live s6Step225Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step225Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225Add0_card : s6Step225Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step225Add0_borrowed : s6Step225Add0Arena.checkBorrow (hmrHybridCount s6Step225Add0Arena s6Step225Add0B.length) s6Step225Add0Work=some s6Step225Add0During := by
  have len : s6Step225Add0Work.length=hmrHybridCount s6Step225Add0Arena s6Step225Add0B.length := by
    rw [hmrHybridCount,s6Step225Add0_card]
    decide +kernel
  have nd : s6Step225Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step225Add0Arena s6Step225Add0During s6Step225Add0Work.toFinset s6Step225Add0_bounded s6Step225Add0_apart rfl

private theorem s6Step225Add0_distinct : (822::892::825::(s6Step225Add0A++s6Step225Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225Add0_owned : (822::892::825::(s6Step225Add0A++s6Step225Add0B)).toFinset⊆s6Step225Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step225Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225Add0_checked : compileHmrHybridCinLog s6Step225Add0Arena 892 822 825 s6Step225Add0A s6Step225Add0B s6Step225Add0Work=some s6Step225Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step225Add0Arena s6Step225Add0During 892 822 825 s6Step225Add0A s6Step225Add0B s6Step225Add0Work
    (by decide +kernel) (by decide +kernel) s6Step225Add0_distinct
    (fun q hq => s6Step225Add0_owned (List.mem_toFinset.mpr hq)) s6Step225Add0_borrowed

private theorem s6Step225Add1_apart : Disjoint s6Step225Add1Arena.live s6Step225Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step225Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225Add1_card : s6Step225Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step225Add1_borrowed : s6Step225Add1Arena.checkBorrow (hmrHybridCount s6Step225Add1Arena s6Step225Add1B.length) s6Step225Add1Work=some s6Step225Add1During := by
  have len : s6Step225Add1Work.length=hmrHybridCount s6Step225Add1Arena s6Step225Add1B.length := by
    rw [hmrHybridCount,s6Step225Add1_card]
    decide +kernel
  have nd : s6Step225Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step225Add1Arena s6Step225Add1During s6Step225Add1Work.toFinset s6Step225Add1_bounded s6Step225Add1_apart rfl

private theorem s6Step225Add1_distinct : (822::892::825::(s6Step225Add1A++s6Step225Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225Add1_owned : (822::892::825::(s6Step225Add1A++s6Step225Add1B)).toFinset⊆s6Step225Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step225Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225Add1_checked : compileHmrHybridCinLog s6Step225Add1Arena 892 822 825 s6Step225Add1A s6Step225Add1B s6Step225Add1Work=some s6Step225Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step225Add1Arena s6Step225Add1During 892 822 825 s6Step225Add1A s6Step225Add1B s6Step225Add1Work
    (by decide +kernel) (by decide +kernel) s6Step225Add1_distinct
    (fun q hq => s6Step225Add1_owned (List.mem_toFinset.mpr hq)) s6Step225Add1_borrowed

private theorem s6Step225F4_apart : Disjoint (s6Step225Add0A++s6Step225Add0B).toFinset (s6Step225Add1A++s6Step225Add1B).toFinset := by
  have nd : ((s6Step225Add0A++s6Step225Add0B)++(s6Step225Add1A++s6Step225Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step225F4_carry : s6Step225F4FlagArena.checkBorrow 1 [825]=some s6Step225Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step225F4FlagArena,s6Step225HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step225F4FlagArena,s6Step225HeadFvAfter,s6Step225Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step225F4_distinct : (908::892::822::825::((s6Step225Add0A++s6Step225Add1A)++(s6Step225Add0B++s6Step225Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225F4_flag : s6Step225HeadFvAfter.checkBorrow 1 [822]=some s6Step225F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step225HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step225F4_owned : (908::892::((s6Step225Add0A++s6Step225Add1A)++(s6Step225Add0B++s6Step225Add1B))).toFinset⊆s6Step225HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step225HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225F4_checked : compileHmrHybridF4Log s6Step225HeadFvAfter 908 892 s6Step225Add0A s6Step225Add0B s6Step225Add1A s6Step225Add1B [822] [825] s6Step225Add0Work s6Step225Add1Work=some s6Step225F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step225HeadFvAfter s6Step225F4FlagArena s6Step225Add0Arena s6Step225Add0During s6Step225Add1During 908 892
    s6Step225Add0A s6Step225Add0B s6Step225Add1A s6Step225Add1B [822] [825] s6Step225Add0Work s6Step225Add1Work
    (fun q hq => s6Step225F4_owned (List.mem_toFinset.mpr hq)) s6Step225F4_flag s6Step225F4_carry
    s6Step225F4_distinct s6Step225F4_apart s6Step225Add0_checked s6Step225Add1_checked

private theorem s6Step225Front_branch : s6Step225FrontSigmaArena.checkBorrow 1 [892]=some s6Step225HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step225FrontSigmaArena,s6Step225EntryGvAfter,s6Step225EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step225FrontSigmaArena,s6Step225EntryGvAfter,s6Step225EntryGAfter,s6Step225HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step225Front_entry : HmrFrontEntryValid s6Step225EntryFBefore s6Step225FrontBank 158 127 ⟨157,157,127,127⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step225FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step225EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step225EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step225FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step225Front_sigma : s6Step225EntryGvAfter.checkBorrow 1 [908]=some s6Step225FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step225EntryGvAfter,s6Step225EntryGAfter,arenaWires]
  · rfl

private def s6Step225HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225HeadFBefore : Arena := s6Step225HeadGAfter

private def s6Step225HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step225HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step225HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879],777⟩

private def s6Step225HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private theorem s6Step225HeadBank_incomingDistinct : ([s6Step225HeadGRow,s6Step225HeadFRow,s6Step225HeadGvRow,s6Step225HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225HeadF_Incoming : rowsOwned s6Step225HeadFBefore [s6Step225HeadFRow,s6Step225HeadGvRow,s6Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225HeadGRow,s6Step225HeadFRow,s6Step225HeadGvRow,s6Step225HeadFvRow] 1 s6Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225HeadBank_outgoingOwned : rowsOwned s6Step225HeadFvAfter [s6Step225HeadGOut,s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step225HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225HeadF_Outgoing : rowsOwned s6Step225HeadFvAfter [s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut] :=
  hmrRows_owned_drop s6Step225HeadFvAfter [s6Step225HeadGOut,s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut] 1 s6Step225HeadBank_outgoingOwned

private theorem s6Step225HeadF_distinct : (s6Step225HeadFRow.sign::s6Step225HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225HeadF_owned : (s6Step225HeadFRow.sign::s6Step225HeadFRow.payload).toFinset⊆s6Step225HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225HeadF_reserved : s6Step225HeadFBefore.reserve s6Step225HeadFFresh.toFinset=some s6Step225HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225HeadFFresh,arenaWires]
  · norm_num [s6Step225HeadFBefore,s6Step225HeadGAfter,s6Step225HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step225HeadFAfter,s6Step225HeadFBefore,s6Step225HeadGAfter,s6Step225HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step225HeadF_checked : planRowResizeLog s6Step225HeadFBefore s6Step225HeadFRow 159 s6Step225HeadFFresh=
    some (s6Step225HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 875],795⟩,growRow 795 s6Step225HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step225HeadFBefore s6Step225HeadFAfter s6Step225HeadFRow 159 s6Step225HeadFFresh
    s6Step225HeadF_distinct s6Step225HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225HeadF_reserved
  have rowEq : WindowRow.mk (s6Step225HeadFRow.payload++s6Step225HeadFFresh) s6Step225HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 875],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step225HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step225HeadFvBefore : Arena := s6Step225HeadGvAfter

private theorem s6Step225HeadFv_Incoming : rowsOwned s6Step225HeadFvBefore [s6Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225HeadGRow,s6Step225HeadFRow,s6Step225HeadGvRow,s6Step225HeadFvRow] 3 s6Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225HeadFv_Outgoing : rowsOwned s6Step225HeadFvAfter [s6Step225HeadFvOut] :=
  hmrRows_owned_drop s6Step225HeadFvAfter [s6Step225HeadGOut,s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut] 3 s6Step225HeadBank_outgoingOwned

private theorem s6Step225HeadFv_distinct : (s6Step225HeadFvRow.sign::s6Step225HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225HeadFv_owned : (s6Step225HeadFvRow.sign::s6Step225HeadFvRow.payload).toFinset⊆s6Step225HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225HeadFv_reserved : s6Step225HeadFvBefore.reserve s6Step225HeadFvFresh.toFinset=some s6Step225HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225HeadFvFresh,arenaWires]
  · norm_num [s6Step225HeadFvBefore,s6Step225HeadGvAfter,s6Step225HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step225HeadFvAfter,s6Step225HeadFvBefore,s6Step225HeadGvAfter,s6Step225HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step225HeadFv_checked : planRowResizeLog s6Step225HeadFvBefore s6Step225HeadFvRow 128 s6Step225HeadFvFresh=
    some (s6Step225HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 789],776⟩,growRow 776 s6Step225HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step225HeadFvBefore s6Step225HeadFvAfter s6Step225HeadFvRow 128 s6Step225HeadFvFresh
    s6Step225HeadFv_distinct s6Step225HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step225HeadFvRow.payload++s6Step225HeadFvFresh) s6Step225HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 789],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step225HeadG_Incoming : rowsOwned s6Step225HeadGBefore [s6Step225HeadGRow,s6Step225HeadFRow,s6Step225HeadGvRow,s6Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225HeadGRow,s6Step225HeadFRow,s6Step225HeadGvRow,s6Step225HeadFvRow] 0 s6Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225HeadG_Outgoing : rowsOwned s6Step225HeadFvAfter [s6Step225HeadGOut,s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut] :=
  hmrRows_owned_drop s6Step225HeadFvAfter [s6Step225HeadGOut,s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut] 0 s6Step225HeadBank_outgoingOwned

private theorem s6Step225HeadG_distinct : (s6Step225HeadGRow.sign::s6Step225HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225HeadG_owned : (s6Step225HeadGRow.sign::s6Step225HeadGRow.payload).toFinset⊆s6Step225HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225HeadG_reserved : s6Step225HeadGBefore.reserve s6Step225HeadGFresh.toFinset=some s6Step225HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225HeadGFresh,arenaWires]
  · norm_num [s6Step225HeadGBefore,s6Step225HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step225HeadGAfter,s6Step225HeadGBefore,s6Step225HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step225HeadG_checked : planRowResizeLog s6Step225HeadGBefore s6Step225HeadGRow 159 s6Step225HeadGFresh=
    some (s6Step225HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879, 828],777⟩,growRow 777 s6Step225HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step225HeadGBefore s6Step225HeadGAfter s6Step225HeadGRow 159 s6Step225HeadGFresh
    s6Step225HeadG_distinct s6Step225HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225HeadG_reserved
  have rowEq : WindowRow.mk (s6Step225HeadGRow.payload++s6Step225HeadGFresh) s6Step225HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 879, 828],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step225HeadGvBefore : Arena := s6Step225HeadFAfter

private theorem s6Step225HeadGv_Incoming : rowsOwned s6Step225HeadGvBefore [s6Step225HeadGvRow,s6Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step225HeadGRow,s6Step225HeadFRow,s6Step225HeadGvRow,s6Step225HeadFvRow] 2 s6Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step225HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step225HeadGv_Outgoing : rowsOwned s6Step225HeadFvAfter [s6Step225HeadGvOut,s6Step225HeadFvOut] :=
  hmrRows_owned_drop s6Step225HeadFvAfter [s6Step225HeadGOut,s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut] 2 s6Step225HeadBank_outgoingOwned

private theorem s6Step225HeadGv_distinct : (s6Step225HeadGvRow.sign::s6Step225HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step225HeadGv_owned : (s6Step225HeadGvRow.sign::s6Step225HeadGvRow.payload).toFinset⊆s6Step225HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step225HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step225HeadGv_reserved : s6Step225HeadGvBefore.reserve s6Step225HeadGvFresh.toFinset=some s6Step225HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step225HeadGvFresh,arenaWires]
  · norm_num [s6Step225HeadGvBefore,s6Step225HeadFAfter,s6Step225HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step225HeadGvAfter,s6Step225HeadGvBefore,s6Step225HeadFAfter,s6Step225HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step225HeadGv_checked : planRowResizeLog s6Step225HeadGvBefore s6Step225HeadGvRow 128 s6Step225HeadGvFresh=
    some (s6Step225HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 856],775⟩,growRow 775 s6Step225HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step225HeadGvBefore s6Step225HeadGvAfter s6Step225HeadGvRow 128 s6Step225HeadGvFresh
    s6Step225HeadGv_distinct s6Step225HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step225HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step225HeadGvRow.payload++s6Step225HeadGvFresh) s6Step225HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 856],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step225HeadBank_rows : planWindowRowsLog s6Step225HeadGBefore [(s6Step225HeadGRow,159),(s6Step225HeadFRow,159),(s6Step225HeadGvRow,128),(s6Step225HeadFvRow,128)] [s6Step225HeadGFresh,s6Step225HeadFFresh,s6Step225HeadGvFresh,s6Step225HeadFvFresh]=
    some (s6Step225HeadFvAfter,[s6Step225HeadGOut,s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut],(growRow 777 s6Step225HeadGFresh ++ (growRow 795 s6Step225HeadFFresh ++ (growRow 775 s6Step225HeadGvFresh ++ (growRow 776 s6Step225HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step225HeadFvAfter [] []=some (s6Step225HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step225HeadFvBefore s6Step225HeadFvAfter s6Step225HeadFvAfter
    s6Step225HeadFvRow s6Step225HeadFvOut 128 s6Step225HeadFvFresh [] [] []
    (growRow 776 s6Step225HeadFvFresh) ([]) s6Step225HeadFv_Incoming s6Step225HeadFv_checked h4 s6Step225HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step225HeadGvBefore s6Step225HeadGvAfter s6Step225HeadFvAfter
    s6Step225HeadGvRow s6Step225HeadGvOut 128 s6Step225HeadGvFresh [(s6Step225HeadFvRow,128)] [s6Step225HeadFvFresh] [s6Step225HeadFvOut]
    (growRow 775 s6Step225HeadGvFresh) ((growRow 776 s6Step225HeadFvFresh ++ [])) s6Step225HeadGv_Incoming s6Step225HeadGv_checked h3 s6Step225HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step225HeadFBefore s6Step225HeadFAfter s6Step225HeadFvAfter
    s6Step225HeadFRow s6Step225HeadFOut 159 s6Step225HeadFFresh [(s6Step225HeadGvRow,128),(s6Step225HeadFvRow,128)] [s6Step225HeadGvFresh,s6Step225HeadFvFresh] [s6Step225HeadGvOut,s6Step225HeadFvOut]
    (growRow 795 s6Step225HeadFFresh) ((growRow 775 s6Step225HeadGvFresh ++ (growRow 776 s6Step225HeadFvFresh ++ []))) s6Step225HeadF_Incoming s6Step225HeadF_checked h2 s6Step225HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step225HeadGBefore s6Step225HeadGAfter s6Step225HeadFvAfter
    s6Step225HeadGRow s6Step225HeadGOut 159 s6Step225HeadGFresh [(s6Step225HeadFRow,159),(s6Step225HeadGvRow,128),(s6Step225HeadFvRow,128)] [s6Step225HeadFFresh,s6Step225HeadGvFresh,s6Step225HeadFvFresh] [s6Step225HeadFOut,s6Step225HeadGvOut,s6Step225HeadFvOut]
    (growRow 777 s6Step225HeadGFresh) ((growRow 795 s6Step225HeadFFresh ++ (growRow 775 s6Step225HeadGvFresh ++ (growRow 776 s6Step225HeadFvFresh ++ [])))) s6Step225HeadG_Incoming s6Step225HeadG_checked h1 s6Step225HeadG_Outgoing
  exact h0

private theorem s6Step225HeadBank_checked : compileHmrBankResizeLog .headroom s6Step225HeadGBefore ⟨s6Step225HeadFRow,s6Step225HeadGRow,s6Step225HeadFvRow,s6Step225HeadGvRow⟩ ⟨159,159,128,128⟩ [s6Step225HeadGFresh,s6Step225HeadFFresh,s6Step225HeadGvFresh,s6Step225HeadFvFresh]=
    some (s6Step225HeadFvAfter,⟨s6Step225HeadFOut,s6Step225HeadGOut,s6Step225HeadFvOut,s6Step225HeadGvOut⟩,(growRow 777 s6Step225HeadGFresh ++ (growRow 795 s6Step225HeadFFresh ++ (growRow 775 s6Step225HeadGvFresh ++ (growRow 776 s6Step225HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step225HeadBank_rows]
  rfl

private theorem s6Step225Front_checked : compileHmrSourceFrontLog s6Step225EntryFBefore s6Step225FrontBank 158 127 ⟨157,157,127,127⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step225FrontLog=some s6Step225FrontPlan := by
  have pairEq : s6Step225FrontPair=⟨s6Step225HeadFRow,s6Step225HeadGRow,s6Step225HeadFvRow,s6Step225HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step225FrontHead=⟨s6Step225ExitFRow,s6Step225ExitGRow,s6Step225ExitFvRow,s6Step225ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step225Add0A=s6Step225FrontHead.f.wires := by decide +kernel
  have gEq : s6Step225Add0B=s6Step225FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step225Add1A=s6Step225FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step225Add1B=s6Step225FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step225EntryFBefore s6Step225FrontBank 158 127 ⟨157,157,127,127⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step225FrontLog s6Step225FrontPlan
  · exact s6Step225Front_entry
  · exact s6Step225EntryBank_checked
  · exact s6Step225Front_sigma
  · rfl
  · exact s6Step225Front_branch
  · rfl
  · simpa only [s6Step225FrontPlan,pairEq] using s6Step225HeadBank_checked
  · simpa only [s6Step225FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step225F4_checked
  · exact s6Step225Counter_checked
  · rfl
  · simpa only [s6Step225FrontPlan,headEq] using s6Step225ExitBank_checked

private theorem s6Step225Complete_explicit_checked : compileHmrEarlyStepLog s6Step225EntryFBefore s6Step225FrontBank 158 127 ⟨157,157,127,127⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step225CompleteLog=some s6Step225CompletePlan := by
  let Q := s6Step225EarlyControlPlan
  have hq := s6Step225EarlyControl_plan_checked
  have fv1 : s6Step225CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step225CompleteOut.fv.payload[2]?.getD s6Step225CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step225CompleteOut.fv.payload[3]?.getD s6Step225CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step225CompleteOut.fv.payload[4]?.getD s6Step225CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step225EntryFBefore s6Step225EarlyControlArena s6Step225FrontBank 158 127 ⟨157,157,127,127⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step225CompleteLog s6Step225FrontPlan Q
    s6Step225Front_checked s6Step225Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step225Complete_owned s6Step225Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step225EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 s6Step225CompleteOut.fv.second (s6Step225CompleteOut.fv.payload[2]?.getD s6Step225CompleteOut.fv.sign) (s6Step225CompleteOut.fv.payload[3]?.getD s6Step225CompleteOut.fv.sign) (s6Step225CompleteOut.fv.payload[4]?.getD s6Step225CompleteOut.fv.sign) 892 47 s6Step225EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep225Arena : Arena := s6Step225EntryFBefore
def s6PrivateStep225Bank : WindowBank := s6Step225FrontBank
def s6PrivateStep225Spec : HmrSourceWalkStepLog := ⟨158,127,⟨157,157,127,127⟩,47,.early s6Step225CompleteLog⟩
def s6PrivateStep225Plan : HmrSourceStepPlan := .early s6Step225CompletePlan
theorem s6PrivateStep225_source : s6PrivateStep225Spec=s6ObservedLogs224[1] := rfl
theorem s6PrivateStep225_checked : compileHmrSourceStepLog s6PrivateStep225Arena s6PrivateStep225Bank
    s6PrivateStep225Spec.fgWidth s6PrivateStep225Spec.vWidth s6PrivateStep225Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 225 s6PrivateStep225Spec.need none s6PrivateStep225Spec.log=some s6PrivateStep225Plan := by
  change compileHmrSourceStepLog s6Step225EntryFBefore s6Step225FrontBank 158 127 ⟨157,157,127,127⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 225 47 none (.early s6Step225CompleteLog)=some (.early s6Step225CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 225<498)]
  rw [s6Step225Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
