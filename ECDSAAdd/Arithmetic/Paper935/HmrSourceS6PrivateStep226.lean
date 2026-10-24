import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep224
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

private def s6Step226CompleteMoves : List (Wire × Wire) := [(818,156)]

private def s6Step226EarlyControlLog : HmrEarlyControlLog := ⟨[818, 789, 856, 805, 879],[828],[822],[825, 869, 786, 810, 809, 817],[804]⟩

private def s6Step226FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[805], [856], [789], [875]],[[], [], [], []]⟩,[892],[908],[879],[828],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 828, 822, 825]⟩

private def s6Step226CompleteLog : HmrEarlyStepLog := ⟨s6Step226FrontLog,s6Step226CompleteMoves,s6Step226EarlyControlLog⟩

private def s6Step226ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step226ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step226ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩

private def s6Step226ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step226FrontOut : WindowBank := ⟨s6Step226ExitFOut,s6Step226ExitGOut,s6Step226ExitFvOut,s6Step226ExitGvOut⟩

private def s6Step226CompleteOut : WindowBank := s6Step226FrontOut.repacked s6Step226CompleteMoves

private def s6Step226EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step226EarlyControlPositiveArena,[828],s6Step226EarlyControlEqualityArena,[822],⟨⟨892,false⟩,[⟨⟨828,false⟩,822⟩]⟩⟩

private def s6Step226EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,818⟩,⟨⟨772,false⟩,789⟩,⟨⟨771,false⟩,856⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,879⟩]⟩

private def s6Step226EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step226EarlyControlZeroArena,s6Step226EarlyControlZeroPlan,s6Step226EarlyControlClassPlan,s6Step226EarlyControlFlagArena,s6Step226EarlyControlFittedArena,s6Step226EarlyControlHistoryArena,s6Step226EarlyControlSigmaArena,s6Step226EarlyControlOutputArena,s6Step226EarlyControlLog⟩

private def s6Step226CounterWork : List Wire := [879, 828, 822, 825]

private theorem s6Step226Counter_bounded : s6Step226CounterWork.toFinset⊆arenaWires := by norm_num [s6Step226CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step226HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226CounterDuring : Arena := ⟨s6Step226HeadFvAfter.live∪s6Step226CounterWork.toFinset,Finset.union_subset s6Step226HeadFvAfter.bounded s6Step226Counter_bounded⟩

private def s6Step226EntryFFresh : List Wire := []

private def s6Step226EntryFvFresh : List Wire := []

private def s6Step226EntryGFresh : List Wire := []

private def s6Step226EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226EntryGvAfter : Arena := s6Step226EntryFBefore

private def s6Step226EntryGvFresh : List Wire := []

private def s6Step226ExitFExtra : List Wire := [856]

private def s6Step226ExitGExtra : List Wire := [156, 805]

private def s6Step226ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226ExitGvExtra : List Wire := [789]

private def s6Step226Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226Add0Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step226Add0_bounded : s6Step226Add0Work.toFinset⊆arenaWires := by
  have h : s6Step226Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step226Add0During : Arena := ⟨s6Step226Add0Arena.live∪s6Step226Add0Work.toFinset,Finset.union_subset s6Step226Add0Arena.bounded s6Step226Add0_bounded⟩

private def s6Step226Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226Add1Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step226Add1_bounded : s6Step226Add1Work.toFinset⊆arenaWires := by
  have h : s6Step226Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step226Add1During : Arena := ⟨s6Step226Add1Arena.live∪s6Step226Add1Work.toFinset,Finset.union_subset s6Step226Add1Arena.bounded s6Step226Add1_bounded⟩

private def s6Step226F4FlagArena : Arena := ⟨s6Step226HeadFvAfter.live∪{879},Finset.union_subset s6Step226HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step226F4Plan : HmrHybridF4Plan := ⟨s6Step226F4FlagArena,[879],s6Step226Add0Arena,[828],s6Step226Add0During,s6Step226Add0Work,s6Step226Add1During,s6Step226Add1Work⟩

private def s6Step226HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 856],795⟩

private def s6Step226HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step226HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 805],777⟩

private def s6Step226HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 789],775⟩

private def s6Step226FrontHead : WindowBank := ⟨s6Step226HeadFOut,s6Step226HeadGOut,s6Step226HeadFvOut,s6Step226HeadGvOut⟩

private def s6Step226EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step226EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step226EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩

private def s6Step226EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step226FrontPair : WindowBank := ⟨s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut⟩

private def s6Step226FrontSigmaArena : Arena := ⟨s6Step226EntryGvAfter.live∪{892},Finset.union_subset s6Step226EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step226HeadFFresh : List Wire := [856]

private def s6Step226HeadFvFresh : List Wire := [875]

private def s6Step226HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226HeadGFresh : List Wire := [805]

private def s6Step226HeadGvFresh : List Wire := [789]

private def s6Step226FrontPlan : HmrSourceFront := ⟨s6Step226EntryGvAfter,s6Step226FrontPair,(growRow 795 s6Step226EntryFFresh ++ (growRow 777 s6Step226EntryGFresh ++ (growRow 776 s6Step226EntryFvFresh ++ (growRow 775 s6Step226EntryGvFresh ++ [])))),s6Step226FrontSigmaArena,[892],s6Step226HeadGBefore,[908],
  s6Step226HeadFvAfter,s6Step226FrontHead,(growRow 777 s6Step226HeadGFresh ++ (growRow 795 s6Step226HeadFFresh ++ (growRow 775 s6Step226HeadGvFresh ++ (growRow 776 s6Step226HeadFvFresh ++ [])))),s6Step226F4Plan,s6Step226CounterDuring,s6Step226CounterWork,s6Step226ExitGvAfter,s6Step226FrontOut,(shrinkRow 777 s6Step226ExitGExtra ++ (shrinkRow 795 s6Step226ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step226ExitGvExtra ++ []))))⟩

private def s6Step226CompletePlan : HmrEarlyStepPlan := ⟨s6Step226FrontPlan,s6Step226EarlyControlArena,s6Step226EarlyControlPlan,s6Step226CompleteMoves⟩

private theorem s6Step226Complete_apart : List.Disjoint (s6Step226CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [892, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step226CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[892, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step226Complete_owned : (s6Step226CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step226CompleteMoveArena : Arena := ⟨s6Step226ExitGvAfter.live∪{156},Finset.union_subset s6Step226ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step226Complete_repack : s6Step226ExitGvAfter.checkRepack s6Step226CompleteMoves=some s6Step226EarlyControlArena := by
  have owned : 818∈s6Step226ExitGvAfter.live := by norm_num [s6Step226ExitGvAfter,arenaWires]
  have reserve : s6Step226ExitGvAfter.reserve {156}=some s6Step226CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step226ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step226CompleteMoveArena.retireSet {818}=s6Step226EarlyControlArena := by
    unfold Arena.retireSet s6Step226EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step226CompleteMoveArena,s6Step226ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step226CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step226CompleteMoveArena.retireSet {818}).checkRepack []=some s6Step226EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step226EarlyControl_branchOwned : ([908] : List Wire).toFinset⊆s6Step226EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_branch : compileHmrBranchRetirement s6Step226EarlyControlSigmaArena 908=some s6Step226EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step226EarlyControl_branchOwned
  · ext q
    simp [s6Step226EarlyControlOutputArena,s6Step226EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step226EarlyControl_classEqualityBorrow : s6Step226EarlyControlPositiveArena.checkBorrow (([892, 828] : List Wire).length-1) s6Step226EarlyControlLog.classWork=some s6Step226EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step226EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step226EarlyControlEqualityArena,s6Step226EarlyControlPositiveArena,s6Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step226EarlyControl_classEqualityOwned : ([892, 828] : List Wire).toFinset⊆s6Step226EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_classEquality : compileHmrEqualityLog s6Step226EarlyControlPositiveArena [892, 828] 0 s6Step226EarlyControlLog.classWork=some (s6Step226EarlyControlEqualityArena,s6Step226EarlyControlLog.classWork,s6Step226EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step226EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step226EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step226EarlyControl_classOwned : ([769, 879, 892] : List Wire).toFinset⊆s6Step226EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_positiveBorrow : s6Step226EarlyControlZeroArena.checkBorrow (1) s6Step226EarlyControlLog.positiveWork=some s6Step226EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step226EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step226EarlyControlPositiveArena,s6Step226EarlyControlZeroArena,s6Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step226EarlyControl_class : compileHmrSourceClassLog s6Step226EarlyControlZeroArena false 769 s6Step226EarlyControlZeroPlan.top 0 892 s6Step226EarlyControlLog.positiveWork s6Step226EarlyControlLog.classWork=some s6Step226EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step226EarlyControlClassPlan s6Step226EarlyControlZeroArena false 769 s6Step226EarlyControlZeroPlan.top 0 892
  constructor
  · decide +kernel
  · exact s6Step226EarlyControl_classOwned
  · exact s6Step226EarlyControl_positiveBorrow
  · exact s6Step226EarlyControl_classEquality

private theorem s6Step226EarlyControl_entryRecordOwned : ([908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_entrySigmaOwned : ([892, 254] : List Wire).toFinset⊆s6Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_fitBorrow : s6Step226EarlyControlFlagArena.checkBorrow ((48-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step226EarlyControlLog.recordFresh=some s6Step226EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step226EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step226EarlyControlFittedArena,s6Step226EarlyControlFlagArena,s6Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step226EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step226EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_fit : compileHmrRecordGrowLog s6Step226EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 48 s6Step226EarlyControlLog.recordFresh=some s6Step226EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step226EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step226EarlyControl_fitBorrow

private theorem s6Step226EarlyControl_flagsBorrow : s6Step226EarlyControlEqualityArena.checkBorrow (6) s6Step226EarlyControlLog.flagWork=some s6Step226EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step226EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step226EarlyControlFlagArena,s6Step226EarlyControlEqualityArena,s6Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step226EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s6Step226EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_flags : compileHmrFlagsLog s6Step226EarlyControlClassPlan.equalityArena s6Step226EarlyControlClassPlan.equality.top 253 252 251 s6Step226EarlyControlLog.flagWork=some s6Step226EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step226EarlyControl_flagsOwned⟩
  · exact s6Step226EarlyControl_flagsBorrow

private theorem s6Step226EarlyControl_historyBorrow : s6Step226EarlyControlArena.checkBorrow ((48-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step226EarlyControlLog.recordFresh=some s6Step226EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step226EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step226EarlyControlHistoryArena,s6Step226EarlyControlArena,s6Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step226EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_history : compileHmrRecordGrowLog s6Step226EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 48 s6Step226EarlyControlLog.recordFresh=some s6Step226EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step226EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step226EarlyControl_historyBorrow

private theorem s6Step226EarlyControl_sigmaOwned : ([254, 892] : List Wire).toFinset⊆s6Step226EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_sigmaReleaseOwned : ([892] : List Wire).toFinset⊆s6Step226EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_sigmaRelease : s6Step226EarlyControlHistoryArena.release {892} (fun _ => false)=some s6Step226EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step226EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step226EarlyControlSigmaArena,s6Step226EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step226EarlyControl_sigma : compileHmrSigmaDropLog s6Step226EarlyControlHistoryArena false 0 0 254 892 []=some s6Step226EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step226EarlyControl_sigmaOwned⟩
  · exact s6Step226EarlyControl_sigmaRelease

private theorem s6Step226EarlyControl_zeroBorrow : s6Step226EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step226EarlyControlLog.zeroWork=some s6Step226EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step226EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step226EarlyControlZeroArena,s6Step226EarlyControlArena,s6Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step226EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step226EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EarlyControl_zero : compileHmrEqualityLog s6Step226EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step226EarlyControlLog.zeroWork=some (s6Step226EarlyControlZeroArena,s6Step226EarlyControlLog.zeroWork,s6Step226EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step226EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step226EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step226EarlyControl_logged : s6Step226EarlyControlPlan.Logged s6Step226EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 892 254 253 252 251 908 48 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step226EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step226EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step226EarlyControl_zero
  · exact s6Step226EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step226EarlyControl_flags
  · exact s6Step226EarlyControl_fit
  · exact s6Step226EarlyControl_history
  · exact s6Step226EarlyControl_sigma
  · exact s6Step226EarlyControl_branch

private theorem s6Step226EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step226EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 892 254 253 252 251 908 48 s6Step226EarlyControlLog=some s6Step226EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step226EarlyControlPlan s6Step226EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 892 254 253 252 251 908 48 s6Step226EarlyControl_logged

private def s6Step226EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step226EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step226EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩

private def s6Step226EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step226FrontBank : WindowBank := ⟨s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow⟩

private def s6Step226Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 856, 795]

private def s6Step226Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 805, 777]

private def s6Step226Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 776]

private def s6Step226Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 789, 775]

private theorem s6Step226Counter_apart : Disjoint s6Step226HeadFvAfter.live s6Step226CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step226HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226Counter_borrowed : s6Step226HeadFvAfter.checkBorrow 4 s6Step226CounterWork=some s6Step226CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step226HeadFvAfter s6Step226CounterDuring s6Step226CounterWork.toFinset s6Step226Counter_bounded s6Step226Counter_apart rfl

private theorem s6Step226Counter_owned : (892::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step226HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step226HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226Counter_checked : compileHmrCounterStepLog s6Step226HeadFvAfter true 892 [774, 773, 772, 771, 770, 769] s6Step226CounterWork=some s6Step226CounterDuring := by
  have owned : ∀q∈892::[774, 773, 772, 771, 770, 769],q∈s6Step226HeadFvAfter.live := fun q hq => s6Step226Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step226Counter_borrowed

private def s6Step226EntryFAfter : Arena := s6Step226EntryFBefore

private theorem s6Step226EntryBank_incomingDistinct : ([s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226EntryF_Incoming : rowsOwned s6Step226EntryFBefore [s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow] 0 s6Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226EntryBank_outgoingOwned : rowsOwned s6Step226EntryGvAfter [s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step226EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226EntryF_Outgoing : rowsOwned s6Step226EntryGvAfter [s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut] :=
  hmrRows_owned_drop s6Step226EntryGvAfter [s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut] 0 s6Step226EntryBank_outgoingOwned

private theorem s6Step226EntryF_distinct : (s6Step226EntryFRow.sign::s6Step226EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226EntryF_owned : (s6Step226EntryFRow.sign::s6Step226EntryFRow.payload).toFinset⊆s6Step226EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EntryF_reserved : s6Step226EntryFBefore.reserve s6Step226EntryFFresh.toFinset=some s6Step226EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226EntryFFresh,arenaWires]
  · norm_num [s6Step226EntryFBefore,s6Step226EntryFFresh,arenaWires]
  · simp only [s6Step226EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step226EntryF_checked : planRowResizeLog s6Step226EntryFBefore s6Step226EntryFRow 157 s6Step226EntryFFresh=
    some (s6Step226EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩,growRow 795 s6Step226EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step226EntryFBefore s6Step226EntryFAfter s6Step226EntryFRow 157 s6Step226EntryFFresh
    s6Step226EntryF_distinct s6Step226EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226EntryF_reserved
  have rowEq : WindowRow.mk (s6Step226EntryFRow.payload++s6Step226EntryFFresh) s6Step226EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step226EntryFvAfter : Arena := s6Step226EntryFBefore

private def s6Step226EntryFvBefore : Arena := s6Step226EntryFBefore

private theorem s6Step226EntryFv_Incoming : rowsOwned s6Step226EntryFvBefore [s6Step226EntryFvRow,s6Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow] 2 s6Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226EntryFv_Outgoing : rowsOwned s6Step226EntryGvAfter [s6Step226EntryFvOut,s6Step226EntryGvOut] :=
  hmrRows_owned_drop s6Step226EntryGvAfter [s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut] 2 s6Step226EntryBank_outgoingOwned

private theorem s6Step226EntryFv_distinct : (s6Step226EntryFvRow.sign::s6Step226EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226EntryFv_owned : (s6Step226EntryFvRow.sign::s6Step226EntryFvRow.payload).toFinset⊆s6Step226EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EntryFv_reserved : s6Step226EntryFvBefore.reserve s6Step226EntryFvFresh.toFinset=some s6Step226EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226EntryFvFresh,arenaWires]
  · norm_num [s6Step226EntryFvBefore,s6Step226EntryFBefore,s6Step226EntryFvFresh,arenaWires]
  · simp only [s6Step226EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step226EntryFv_checked : planRowResizeLog s6Step226EntryFvBefore s6Step226EntryFvRow 127 s6Step226EntryFvFresh=
    some (s6Step226EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩,growRow 776 s6Step226EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step226EntryFvBefore s6Step226EntryFvAfter s6Step226EntryFvRow 127 s6Step226EntryFvFresh
    s6Step226EntryFv_distinct s6Step226EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step226EntryFvRow.payload++s6Step226EntryFvFresh) s6Step226EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step226EntryGAfter : Arena := s6Step226EntryFBefore

private def s6Step226EntryGBefore : Arena := s6Step226EntryFBefore

private theorem s6Step226EntryG_Incoming : rowsOwned s6Step226EntryGBefore [s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow] 1 s6Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226EntryG_Outgoing : rowsOwned s6Step226EntryGvAfter [s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut] :=
  hmrRows_owned_drop s6Step226EntryGvAfter [s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut] 1 s6Step226EntryBank_outgoingOwned

private theorem s6Step226EntryG_distinct : (s6Step226EntryGRow.sign::s6Step226EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226EntryG_owned : (s6Step226EntryGRow.sign::s6Step226EntryGRow.payload).toFinset⊆s6Step226EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EntryG_reserved : s6Step226EntryGBefore.reserve s6Step226EntryGFresh.toFinset=some s6Step226EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226EntryGFresh,arenaWires]
  · norm_num [s6Step226EntryGBefore,s6Step226EntryFBefore,s6Step226EntryGFresh,arenaWires]
  · simp only [s6Step226EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step226EntryG_checked : planRowResizeLog s6Step226EntryGBefore s6Step226EntryGRow 157 s6Step226EntryGFresh=
    some (s6Step226EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩,growRow 777 s6Step226EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step226EntryGBefore s6Step226EntryGAfter s6Step226EntryGRow 157 s6Step226EntryGFresh
    s6Step226EntryG_distinct s6Step226EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226EntryG_reserved
  have rowEq : WindowRow.mk (s6Step226EntryGRow.payload++s6Step226EntryGFresh) s6Step226EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step226EntryGvBefore : Arena := s6Step226EntryFBefore

private theorem s6Step226EntryGv_Incoming : rowsOwned s6Step226EntryGvBefore [s6Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow] 3 s6Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226EntryGv_Outgoing : rowsOwned s6Step226EntryGvAfter [s6Step226EntryGvOut] :=
  hmrRows_owned_drop s6Step226EntryGvAfter [s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut] 3 s6Step226EntryBank_outgoingOwned

private theorem s6Step226EntryGv_distinct : (s6Step226EntryGvRow.sign::s6Step226EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226EntryGv_owned : (s6Step226EntryGvRow.sign::s6Step226EntryGvRow.payload).toFinset⊆s6Step226EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226EntryGv_reserved : s6Step226EntryGvBefore.reserve s6Step226EntryGvFresh.toFinset=some s6Step226EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226EntryGvFresh,arenaWires]
  · norm_num [s6Step226EntryGvBefore,s6Step226EntryFBefore,s6Step226EntryGvFresh,arenaWires]
  · simp only [s6Step226EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step226EntryGv_checked : planRowResizeLog s6Step226EntryGvBefore s6Step226EntryGvRow 127 s6Step226EntryGvFresh=
    some (s6Step226EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩,growRow 775 s6Step226EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step226EntryGvBefore s6Step226EntryGvAfter s6Step226EntryGvRow 127 s6Step226EntryGvFresh
    s6Step226EntryGv_distinct s6Step226EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step226EntryGvRow.payload++s6Step226EntryGvFresh) s6Step226EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step226EntryBank_rows : planWindowRowsLog s6Step226EntryFBefore [(s6Step226EntryFRow,157),(s6Step226EntryGRow,157),(s6Step226EntryFvRow,127),(s6Step226EntryGvRow,127)] [s6Step226EntryFFresh,s6Step226EntryGFresh,s6Step226EntryFvFresh,s6Step226EntryGvFresh]=
    some (s6Step226EntryGvAfter,[s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut],(growRow 795 s6Step226EntryFFresh ++ (growRow 777 s6Step226EntryGFresh ++ (growRow 776 s6Step226EntryFvFresh ++ (growRow 775 s6Step226EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step226EntryGvAfter [] []=some (s6Step226EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step226EntryGvBefore s6Step226EntryGvAfter s6Step226EntryGvAfter
    s6Step226EntryGvRow s6Step226EntryGvOut 127 s6Step226EntryGvFresh [] [] []
    (growRow 775 s6Step226EntryGvFresh) ([]) s6Step226EntryGv_Incoming s6Step226EntryGv_checked h4 s6Step226EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step226EntryFvBefore s6Step226EntryFvAfter s6Step226EntryGvAfter
    s6Step226EntryFvRow s6Step226EntryFvOut 127 s6Step226EntryFvFresh [(s6Step226EntryGvRow,127)] [s6Step226EntryGvFresh] [s6Step226EntryGvOut]
    (growRow 776 s6Step226EntryFvFresh) ((growRow 775 s6Step226EntryGvFresh ++ [])) s6Step226EntryFv_Incoming s6Step226EntryFv_checked h3 s6Step226EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step226EntryGBefore s6Step226EntryGAfter s6Step226EntryGvAfter
    s6Step226EntryGRow s6Step226EntryGOut 157 s6Step226EntryGFresh [(s6Step226EntryFvRow,127),(s6Step226EntryGvRow,127)] [s6Step226EntryFvFresh,s6Step226EntryGvFresh] [s6Step226EntryFvOut,s6Step226EntryGvOut]
    (growRow 777 s6Step226EntryGFresh) ((growRow 776 s6Step226EntryFvFresh ++ (growRow 775 s6Step226EntryGvFresh ++ []))) s6Step226EntryG_Incoming s6Step226EntryG_checked h2 s6Step226EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step226EntryFBefore s6Step226EntryFAfter s6Step226EntryGvAfter
    s6Step226EntryFRow s6Step226EntryFOut 157 s6Step226EntryFFresh [(s6Step226EntryGRow,157),(s6Step226EntryFvRow,127),(s6Step226EntryGvRow,127)] [s6Step226EntryGFresh,s6Step226EntryFvFresh,s6Step226EntryGvFresh] [s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut]
    (growRow 795 s6Step226EntryFFresh) ((growRow 777 s6Step226EntryGFresh ++ (growRow 776 s6Step226EntryFvFresh ++ (growRow 775 s6Step226EntryGvFresh ++ [])))) s6Step226EntryF_Incoming s6Step226EntryF_checked h1 s6Step226EntryF_Outgoing
  exact h0

private theorem s6Step226EntryBank_checked : compileHmrBankResizeLog .entry s6Step226EntryFBefore ⟨s6Step226EntryFRow,s6Step226EntryGRow,s6Step226EntryFvRow,s6Step226EntryGvRow⟩ ⟨157,157,127,127⟩ [s6Step226EntryFFresh,s6Step226EntryGFresh,s6Step226EntryFvFresh,s6Step226EntryGvFresh]=
    some (s6Step226EntryGvAfter,⟨s6Step226EntryFOut,s6Step226EntryGOut,s6Step226EntryFvOut,s6Step226EntryGvOut⟩,(growRow 795 s6Step226EntryFFresh ++ (growRow 777 s6Step226EntryGFresh ++ (growRow 776 s6Step226EntryFvFresh ++ (growRow 775 s6Step226EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step226EntryBank_rows]
  rfl

private def s6Step226ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226ExitFBefore : Arena := s6Step226ExitGAfter

private def s6Step226ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 856],795⟩

private def s6Step226ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step226ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 805],777⟩

private def s6Step226ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 789],775⟩

private theorem s6Step226ExitBank_incomingDistinct : ([s6Step226ExitGRow,s6Step226ExitFRow,s6Step226ExitFvRow,s6Step226ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226ExitF_Incoming : rowsOwned s6Step226ExitFBefore [s6Step226ExitFRow,s6Step226ExitFvRow,s6Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226ExitGRow,s6Step226ExitFRow,s6Step226ExitFvRow,s6Step226ExitGvRow] 1 s6Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226ExitFBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226ExitBank_outgoingOwned : rowsOwned s6Step226ExitGvAfter [s6Step226ExitGOut,s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step226ExitGvAfter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226ExitF_Outgoing : rowsOwned s6Step226ExitGvAfter [s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut] :=
  hmrRows_owned_drop s6Step226ExitGvAfter [s6Step226ExitGOut,s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut] 1 s6Step226ExitBank_outgoingOwned

private theorem s6Step226ExitF_distinct : (s6Step226ExitFRow.sign::s6Step226ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226ExitF_owned : (s6Step226ExitFRow.sign::s6Step226ExitFRow.payload).toFinset⊆s6Step226ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226ExitFBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226ExitF_retired : s6Step226ExitFBefore.retireSet s6Step226ExitFExtra.toFinset=s6Step226ExitFAfter := by
  unfold Arena.retireSet s6Step226ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step226ExitFBefore,s6Step226ExitGAfter,s6Step226ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step226ExitF_checked : planRowResizeLog s6Step226ExitFBefore s6Step226ExitFRow 157 []=
    some (s6Step226ExitFAfter,s6Step226ExitFOut,shrinkRow 795 s6Step226ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step226ExitFBefore s6Step226ExitFRow 157 s6Step226ExitF_distinct s6Step226ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step226ExitFRow.payload.take 157) s6Step226ExitFRow.sign=s6Step226ExitFOut := by decide +kernel
  have hi : s6Step226ExitFRow.payload.drop 157=s6Step226ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step226ExitF_retired] at result
  exact result

private def s6Step226ExitFvAfter : Arena := s6Step226ExitFAfter

private def s6Step226ExitFvBefore : Arena := s6Step226ExitFAfter

private theorem s6Step226ExitFv_Incoming : rowsOwned s6Step226ExitFvBefore [s6Step226ExitFvRow,s6Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226ExitGRow,s6Step226ExitFRow,s6Step226ExitFvRow,s6Step226ExitGvRow] 2 s6Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226ExitFvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226ExitFv_Outgoing : rowsOwned s6Step226ExitGvAfter [s6Step226ExitFvOut,s6Step226ExitGvOut] :=
  hmrRows_owned_drop s6Step226ExitGvAfter [s6Step226ExitGOut,s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut] 2 s6Step226ExitBank_outgoingOwned

private theorem s6Step226ExitFv_distinct : (s6Step226ExitFvRow.sign::s6Step226ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226ExitFv_owned : (s6Step226ExitFvRow.sign::s6Step226ExitFvRow.payload).toFinset⊆s6Step226ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226ExitFvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226ExitFv_reserved : s6Step226ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step226ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step226ExitFv_checked : planRowResizeLog s6Step226ExitFvBefore s6Step226ExitFvRow 128 []=
    some (s6Step226ExitFvAfter,s6Step226ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step226ExitFvBefore s6Step226ExitFvAfter s6Step226ExitFvRow 128 []
    s6Step226ExitFv_distinct s6Step226ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step226ExitFvRow.payload++[]) s6Step226ExitFvRow.sign=s6Step226ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step226ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step226ExitG_Incoming : rowsOwned s6Step226ExitGBefore [s6Step226ExitGRow,s6Step226ExitFRow,s6Step226ExitFvRow,s6Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226ExitGRow,s6Step226ExitFRow,s6Step226ExitFvRow,s6Step226ExitGvRow] 0 s6Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226ExitG_Outgoing : rowsOwned s6Step226ExitGvAfter [s6Step226ExitGOut,s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut] :=
  hmrRows_owned_drop s6Step226ExitGvAfter [s6Step226ExitGOut,s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut] 0 s6Step226ExitBank_outgoingOwned

private theorem s6Step226ExitG_distinct : (s6Step226ExitGRow.sign::s6Step226ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226ExitG_owned : (s6Step226ExitGRow.sign::s6Step226ExitGRow.payload).toFinset⊆s6Step226ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226ExitG_retired : s6Step226ExitGBefore.retireSet s6Step226ExitGExtra.toFinset=s6Step226ExitGAfter := by
  unfold Arena.retireSet s6Step226ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step226ExitGBefore,s6Step226ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step226ExitG_checked : planRowResizeLog s6Step226ExitGBefore s6Step226ExitGRow 156 []=
    some (s6Step226ExitGAfter,s6Step226ExitGOut,shrinkRow 777 s6Step226ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step226ExitGBefore s6Step226ExitGRow 156 s6Step226ExitG_distinct s6Step226ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step226ExitGRow.payload.take 156) s6Step226ExitGRow.sign=s6Step226ExitGOut := by decide +kernel
  have hi : s6Step226ExitGRow.payload.drop 156=s6Step226ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step226ExitG_retired] at result
  exact result

private def s6Step226ExitGvBefore : Arena := s6Step226ExitFAfter

private theorem s6Step226ExitGv_Incoming : rowsOwned s6Step226ExitGvBefore [s6Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226ExitGRow,s6Step226ExitFRow,s6Step226ExitFvRow,s6Step226ExitGvRow] 3 s6Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226ExitGvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226ExitGv_Outgoing : rowsOwned s6Step226ExitGvAfter [s6Step226ExitGvOut] :=
  hmrRows_owned_drop s6Step226ExitGvAfter [s6Step226ExitGOut,s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut] 3 s6Step226ExitBank_outgoingOwned

private theorem s6Step226ExitGv_distinct : (s6Step226ExitGvRow.sign::s6Step226ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226ExitGv_owned : (s6Step226ExitGvRow.sign::s6Step226ExitGvRow.payload).toFinset⊆s6Step226ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226ExitGvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226ExitGv_retired : s6Step226ExitGvBefore.retireSet s6Step226ExitGvExtra.toFinset=s6Step226ExitGvAfter := by
  unfold Arena.retireSet s6Step226ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step226ExitGvBefore,s6Step226ExitFAfter,s6Step226ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step226ExitGv_checked : planRowResizeLog s6Step226ExitGvBefore s6Step226ExitGvRow 127 []=
    some (s6Step226ExitGvAfter,s6Step226ExitGvOut,shrinkRow 775 s6Step226ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step226ExitGvBefore s6Step226ExitGvRow 127 s6Step226ExitGv_distinct s6Step226ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step226ExitGvRow.payload.take 127) s6Step226ExitGvRow.sign=s6Step226ExitGvOut := by decide +kernel
  have hi : s6Step226ExitGvRow.payload.drop 127=s6Step226ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step226ExitGv_retired] at result
  exact result

private theorem s6Step226ExitBank_rows : planWindowRowsLog s6Step226ExitGBefore [(s6Step226ExitGRow,156),(s6Step226ExitFRow,157),(s6Step226ExitFvRow,128),(s6Step226ExitGvRow,127)] [[],[],[],[]]=
    some (s6Step226ExitGvAfter,[s6Step226ExitGOut,s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut],(shrinkRow 777 s6Step226ExitGExtra ++ (shrinkRow 795 s6Step226ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step226ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step226ExitGvAfter [] []=some (s6Step226ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step226ExitGvBefore s6Step226ExitGvAfter s6Step226ExitGvAfter
    s6Step226ExitGvRow s6Step226ExitGvOut 127 [] [] [] []
    (shrinkRow 775 s6Step226ExitGvExtra) ([]) s6Step226ExitGv_Incoming s6Step226ExitGv_checked h4 s6Step226ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step226ExitFvBefore s6Step226ExitFvAfter s6Step226ExitGvAfter
    s6Step226ExitFvRow s6Step226ExitFvOut 128 [] [(s6Step226ExitGvRow,127)] [[]] [s6Step226ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step226ExitGvExtra ++ [])) s6Step226ExitFv_Incoming s6Step226ExitFv_checked h3 s6Step226ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step226ExitFBefore s6Step226ExitFAfter s6Step226ExitGvAfter
    s6Step226ExitFRow s6Step226ExitFOut 157 [] [(s6Step226ExitFvRow,128),(s6Step226ExitGvRow,127)] [[],[]] [s6Step226ExitFvOut,s6Step226ExitGvOut]
    (shrinkRow 795 s6Step226ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step226ExitGvExtra ++ []))) s6Step226ExitF_Incoming s6Step226ExitF_checked h2 s6Step226ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step226ExitGBefore s6Step226ExitGAfter s6Step226ExitGvAfter
    s6Step226ExitGRow s6Step226ExitGOut 156 [] [(s6Step226ExitFRow,157),(s6Step226ExitFvRow,128),(s6Step226ExitGvRow,127)] [[],[],[]] [s6Step226ExitFOut,s6Step226ExitFvOut,s6Step226ExitGvOut]
    (shrinkRow 777 s6Step226ExitGExtra) ((shrinkRow 795 s6Step226ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step226ExitGvExtra ++ [])))) s6Step226ExitG_Incoming s6Step226ExitG_checked h1 s6Step226ExitG_Outgoing
  exact h0

private theorem s6Step226ExitBank_checked : compileHmrBankResizeLog .exit s6Step226ExitGBefore ⟨s6Step226ExitFRow,s6Step226ExitGRow,s6Step226ExitFvRow,s6Step226ExitGvRow⟩ ⟨157,156,128,127⟩ [[],[],[],[]]=
    some (s6Step226ExitGvAfter,⟨s6Step226ExitFOut,s6Step226ExitGOut,s6Step226ExitFvOut,s6Step226ExitGvOut⟩,(shrinkRow 777 s6Step226ExitGExtra ++ (shrinkRow 795 s6Step226ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step226ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step226ExitBank_rows]
  rfl

private theorem s6Step226Add0_apart : Disjoint s6Step226Add0Arena.live s6Step226Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step226Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226Add0_card : s6Step226Add0Arena.live.card=889 := by
  decide +kernel

private theorem s6Step226Add0_borrowed : s6Step226Add0Arena.checkBorrow (hmrHybridCount s6Step226Add0Arena s6Step226Add0B.length) s6Step226Add0Work=some s6Step226Add0During := by
  have len : s6Step226Add0Work.length=hmrHybridCount s6Step226Add0Arena s6Step226Add0B.length := by
    rw [hmrHybridCount,s6Step226Add0_card]
    decide +kernel
  have nd : s6Step226Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step226Add0Arena s6Step226Add0During s6Step226Add0Work.toFinset s6Step226Add0_bounded s6Step226Add0_apart rfl

private theorem s6Step226Add0_distinct : (879::908::828::(s6Step226Add0A++s6Step226Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226Add0_owned : (879::908::828::(s6Step226Add0A++s6Step226Add0B)).toFinset⊆s6Step226Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step226Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226Add0_checked : compileHmrHybridCinLog s6Step226Add0Arena 908 879 828 s6Step226Add0A s6Step226Add0B s6Step226Add0Work=some s6Step226Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step226Add0Arena s6Step226Add0During 908 879 828 s6Step226Add0A s6Step226Add0B s6Step226Add0Work
    (by decide +kernel) (by decide +kernel) s6Step226Add0_distinct
    (fun q hq => s6Step226Add0_owned (List.mem_toFinset.mpr hq)) s6Step226Add0_borrowed

private theorem s6Step226Add1_apart : Disjoint s6Step226Add1Arena.live s6Step226Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step226Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226Add1_card : s6Step226Add1Arena.live.card=889 := by
  decide +kernel

private theorem s6Step226Add1_borrowed : s6Step226Add1Arena.checkBorrow (hmrHybridCount s6Step226Add1Arena s6Step226Add1B.length) s6Step226Add1Work=some s6Step226Add1During := by
  have len : s6Step226Add1Work.length=hmrHybridCount s6Step226Add1Arena s6Step226Add1B.length := by
    rw [hmrHybridCount,s6Step226Add1_card]
    decide +kernel
  have nd : s6Step226Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step226Add1Arena s6Step226Add1During s6Step226Add1Work.toFinset s6Step226Add1_bounded s6Step226Add1_apart rfl

private theorem s6Step226Add1_distinct : (879::908::828::(s6Step226Add1A++s6Step226Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226Add1_owned : (879::908::828::(s6Step226Add1A++s6Step226Add1B)).toFinset⊆s6Step226Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step226Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226Add1_checked : compileHmrHybridCinLog s6Step226Add1Arena 908 879 828 s6Step226Add1A s6Step226Add1B s6Step226Add1Work=some s6Step226Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step226Add1Arena s6Step226Add1During 908 879 828 s6Step226Add1A s6Step226Add1B s6Step226Add1Work
    (by decide +kernel) (by decide +kernel) s6Step226Add1_distinct
    (fun q hq => s6Step226Add1_owned (List.mem_toFinset.mpr hq)) s6Step226Add1_borrowed

private theorem s6Step226F4_apart : Disjoint (s6Step226Add0A++s6Step226Add0B).toFinset (s6Step226Add1A++s6Step226Add1B).toFinset := by
  have nd : ((s6Step226Add0A++s6Step226Add0B)++(s6Step226Add1A++s6Step226Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step226F4_carry : s6Step226F4FlagArena.checkBorrow 1 [828]=some s6Step226Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step226F4FlagArena,s6Step226HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step226F4FlagArena,s6Step226HeadFvAfter,s6Step226Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step226F4_distinct : (892::908::879::828::((s6Step226Add0A++s6Step226Add1A)++(s6Step226Add0B++s6Step226Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226F4_flag : s6Step226HeadFvAfter.checkBorrow 1 [879]=some s6Step226F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step226HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step226F4_owned : (892::908::((s6Step226Add0A++s6Step226Add1A)++(s6Step226Add0B++s6Step226Add1B))).toFinset⊆s6Step226HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step226HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226F4_checked : compileHmrHybridF4Log s6Step226HeadFvAfter 892 908 s6Step226Add0A s6Step226Add0B s6Step226Add1A s6Step226Add1B [879] [828] s6Step226Add0Work s6Step226Add1Work=some s6Step226F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step226HeadFvAfter s6Step226F4FlagArena s6Step226Add0Arena s6Step226Add0During s6Step226Add1During 892 908
    s6Step226Add0A s6Step226Add0B s6Step226Add1A s6Step226Add1B [879] [828] s6Step226Add0Work s6Step226Add1Work
    (fun q hq => s6Step226F4_owned (List.mem_toFinset.mpr hq)) s6Step226F4_flag s6Step226F4_carry
    s6Step226F4_distinct s6Step226F4_apart s6Step226Add0_checked s6Step226Add1_checked

private theorem s6Step226Front_branch : s6Step226FrontSigmaArena.checkBorrow 1 [908]=some s6Step226HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step226FrontSigmaArena,s6Step226EntryGvAfter,s6Step226EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step226FrontSigmaArena,s6Step226EntryGvAfter,s6Step226EntryFBefore,s6Step226HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step226Front_entry : HmrFrontEntryValid s6Step226EntryFBefore s6Step226FrontBank 157 127 ⟨157,156,128,127⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step226FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step226EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step226EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step226FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step226Front_sigma : s6Step226EntryGvAfter.checkBorrow 1 [892]=some s6Step226FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step226EntryGvAfter,s6Step226EntryFBefore,arenaWires]
  · rfl

private def s6Step226HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226HeadFBefore : Arena := s6Step226HeadGAfter

private def s6Step226HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step226HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step226HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩

private def s6Step226HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private theorem s6Step226HeadBank_incomingDistinct : ([s6Step226HeadGRow,s6Step226HeadFRow,s6Step226HeadGvRow,s6Step226HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226HeadF_Incoming : rowsOwned s6Step226HeadFBefore [s6Step226HeadFRow,s6Step226HeadGvRow,s6Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226HeadGRow,s6Step226HeadFRow,s6Step226HeadGvRow,s6Step226HeadFvRow] 1 s6Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226HeadBank_outgoingOwned : rowsOwned s6Step226HeadFvAfter [s6Step226HeadGOut,s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step226HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226HeadF_Outgoing : rowsOwned s6Step226HeadFvAfter [s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut] :=
  hmrRows_owned_drop s6Step226HeadFvAfter [s6Step226HeadGOut,s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut] 1 s6Step226HeadBank_outgoingOwned

private theorem s6Step226HeadF_distinct : (s6Step226HeadFRow.sign::s6Step226HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226HeadF_owned : (s6Step226HeadFRow.sign::s6Step226HeadFRow.payload).toFinset⊆s6Step226HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226HeadF_reserved : s6Step226HeadFBefore.reserve s6Step226HeadFFresh.toFinset=some s6Step226HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226HeadFFresh,arenaWires]
  · norm_num [s6Step226HeadFBefore,s6Step226HeadGAfter,s6Step226HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step226HeadFAfter,s6Step226HeadFBefore,s6Step226HeadGAfter,s6Step226HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step226HeadF_checked : planRowResizeLog s6Step226HeadFBefore s6Step226HeadFRow 158 s6Step226HeadFFresh=
    some (s6Step226HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 856],795⟩,growRow 795 s6Step226HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step226HeadFBefore s6Step226HeadFAfter s6Step226HeadFRow 158 s6Step226HeadFFresh
    s6Step226HeadF_distinct s6Step226HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226HeadF_reserved
  have rowEq : WindowRow.mk (s6Step226HeadFRow.payload++s6Step226HeadFFresh) s6Step226HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 856],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step226HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step226HeadFvBefore : Arena := s6Step226HeadGvAfter

private theorem s6Step226HeadFv_Incoming : rowsOwned s6Step226HeadFvBefore [s6Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226HeadGRow,s6Step226HeadFRow,s6Step226HeadGvRow,s6Step226HeadFvRow] 3 s6Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226HeadFv_Outgoing : rowsOwned s6Step226HeadFvAfter [s6Step226HeadFvOut] :=
  hmrRows_owned_drop s6Step226HeadFvAfter [s6Step226HeadGOut,s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut] 3 s6Step226HeadBank_outgoingOwned

private theorem s6Step226HeadFv_distinct : (s6Step226HeadFvRow.sign::s6Step226HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226HeadFv_owned : (s6Step226HeadFvRow.sign::s6Step226HeadFvRow.payload).toFinset⊆s6Step226HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226HeadFv_reserved : s6Step226HeadFvBefore.reserve s6Step226HeadFvFresh.toFinset=some s6Step226HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226HeadFvFresh,arenaWires]
  · norm_num [s6Step226HeadFvBefore,s6Step226HeadGvAfter,s6Step226HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step226HeadFvAfter,s6Step226HeadFvBefore,s6Step226HeadGvAfter,s6Step226HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step226HeadFv_checked : planRowResizeLog s6Step226HeadFvBefore s6Step226HeadFvRow 128 s6Step226HeadFvFresh=
    some (s6Step226HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩,growRow 776 s6Step226HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step226HeadFvBefore s6Step226HeadFvAfter s6Step226HeadFvRow 128 s6Step226HeadFvFresh
    s6Step226HeadFv_distinct s6Step226HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step226HeadFvRow.payload++s6Step226HeadFvFresh) s6Step226HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step226HeadG_Incoming : rowsOwned s6Step226HeadGBefore [s6Step226HeadGRow,s6Step226HeadFRow,s6Step226HeadGvRow,s6Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226HeadGRow,s6Step226HeadFRow,s6Step226HeadGvRow,s6Step226HeadFvRow] 0 s6Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226HeadG_Outgoing : rowsOwned s6Step226HeadFvAfter [s6Step226HeadGOut,s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut] :=
  hmrRows_owned_drop s6Step226HeadFvAfter [s6Step226HeadGOut,s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut] 0 s6Step226HeadBank_outgoingOwned

private theorem s6Step226HeadG_distinct : (s6Step226HeadGRow.sign::s6Step226HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226HeadG_owned : (s6Step226HeadGRow.sign::s6Step226HeadGRow.payload).toFinset⊆s6Step226HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226HeadG_reserved : s6Step226HeadGBefore.reserve s6Step226HeadGFresh.toFinset=some s6Step226HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226HeadGFresh,arenaWires]
  · norm_num [s6Step226HeadGBefore,s6Step226HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step226HeadGAfter,s6Step226HeadGBefore,s6Step226HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step226HeadG_checked : planRowResizeLog s6Step226HeadGBefore s6Step226HeadGRow 158 s6Step226HeadGFresh=
    some (s6Step226HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 805],777⟩,growRow 777 s6Step226HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step226HeadGBefore s6Step226HeadGAfter s6Step226HeadGRow 158 s6Step226HeadGFresh
    s6Step226HeadG_distinct s6Step226HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226HeadG_reserved
  have rowEq : WindowRow.mk (s6Step226HeadGRow.payload++s6Step226HeadGFresh) s6Step226HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step226HeadGvBefore : Arena := s6Step226HeadFAfter

private theorem s6Step226HeadGv_Incoming : rowsOwned s6Step226HeadGvBefore [s6Step226HeadGvRow,s6Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step226HeadGRow,s6Step226HeadFRow,s6Step226HeadGvRow,s6Step226HeadFvRow] 2 s6Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step226HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step226HeadGv_Outgoing : rowsOwned s6Step226HeadFvAfter [s6Step226HeadGvOut,s6Step226HeadFvOut] :=
  hmrRows_owned_drop s6Step226HeadFvAfter [s6Step226HeadGOut,s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut] 2 s6Step226HeadBank_outgoingOwned

private theorem s6Step226HeadGv_distinct : (s6Step226HeadGvRow.sign::s6Step226HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step226HeadGv_owned : (s6Step226HeadGvRow.sign::s6Step226HeadGvRow.payload).toFinset⊆s6Step226HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step226HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step226HeadGv_reserved : s6Step226HeadGvBefore.reserve s6Step226HeadGvFresh.toFinset=some s6Step226HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step226HeadGvFresh,arenaWires]
  · norm_num [s6Step226HeadGvBefore,s6Step226HeadFAfter,s6Step226HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step226HeadGvAfter,s6Step226HeadGvBefore,s6Step226HeadFAfter,s6Step226HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step226HeadGv_checked : planRowResizeLog s6Step226HeadGvBefore s6Step226HeadGvRow 128 s6Step226HeadGvFresh=
    some (s6Step226HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 789],775⟩,growRow 775 s6Step226HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step226HeadGvBefore s6Step226HeadGvAfter s6Step226HeadGvRow 128 s6Step226HeadGvFresh
    s6Step226HeadGv_distinct s6Step226HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step226HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step226HeadGvRow.payload++s6Step226HeadGvFresh) s6Step226HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step226HeadBank_rows : planWindowRowsLog s6Step226HeadGBefore [(s6Step226HeadGRow,158),(s6Step226HeadFRow,158),(s6Step226HeadGvRow,128),(s6Step226HeadFvRow,128)] [s6Step226HeadGFresh,s6Step226HeadFFresh,s6Step226HeadGvFresh,s6Step226HeadFvFresh]=
    some (s6Step226HeadFvAfter,[s6Step226HeadGOut,s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut],(growRow 777 s6Step226HeadGFresh ++ (growRow 795 s6Step226HeadFFresh ++ (growRow 775 s6Step226HeadGvFresh ++ (growRow 776 s6Step226HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step226HeadFvAfter [] []=some (s6Step226HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step226HeadFvBefore s6Step226HeadFvAfter s6Step226HeadFvAfter
    s6Step226HeadFvRow s6Step226HeadFvOut 128 s6Step226HeadFvFresh [] [] []
    (growRow 776 s6Step226HeadFvFresh) ([]) s6Step226HeadFv_Incoming s6Step226HeadFv_checked h4 s6Step226HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step226HeadGvBefore s6Step226HeadGvAfter s6Step226HeadFvAfter
    s6Step226HeadGvRow s6Step226HeadGvOut 128 s6Step226HeadGvFresh [(s6Step226HeadFvRow,128)] [s6Step226HeadFvFresh] [s6Step226HeadFvOut]
    (growRow 775 s6Step226HeadGvFresh) ((growRow 776 s6Step226HeadFvFresh ++ [])) s6Step226HeadGv_Incoming s6Step226HeadGv_checked h3 s6Step226HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step226HeadFBefore s6Step226HeadFAfter s6Step226HeadFvAfter
    s6Step226HeadFRow s6Step226HeadFOut 158 s6Step226HeadFFresh [(s6Step226HeadGvRow,128),(s6Step226HeadFvRow,128)] [s6Step226HeadGvFresh,s6Step226HeadFvFresh] [s6Step226HeadGvOut,s6Step226HeadFvOut]
    (growRow 795 s6Step226HeadFFresh) ((growRow 775 s6Step226HeadGvFresh ++ (growRow 776 s6Step226HeadFvFresh ++ []))) s6Step226HeadF_Incoming s6Step226HeadF_checked h2 s6Step226HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step226HeadGBefore s6Step226HeadGAfter s6Step226HeadFvAfter
    s6Step226HeadGRow s6Step226HeadGOut 158 s6Step226HeadGFresh [(s6Step226HeadFRow,158),(s6Step226HeadGvRow,128),(s6Step226HeadFvRow,128)] [s6Step226HeadFFresh,s6Step226HeadGvFresh,s6Step226HeadFvFresh] [s6Step226HeadFOut,s6Step226HeadGvOut,s6Step226HeadFvOut]
    (growRow 777 s6Step226HeadGFresh) ((growRow 795 s6Step226HeadFFresh ++ (growRow 775 s6Step226HeadGvFresh ++ (growRow 776 s6Step226HeadFvFresh ++ [])))) s6Step226HeadG_Incoming s6Step226HeadG_checked h1 s6Step226HeadG_Outgoing
  exact h0

private theorem s6Step226HeadBank_checked : compileHmrBankResizeLog .headroom s6Step226HeadGBefore ⟨s6Step226HeadFRow,s6Step226HeadGRow,s6Step226HeadFvRow,s6Step226HeadGvRow⟩ ⟨158,158,128,128⟩ [s6Step226HeadGFresh,s6Step226HeadFFresh,s6Step226HeadGvFresh,s6Step226HeadFvFresh]=
    some (s6Step226HeadFvAfter,⟨s6Step226HeadFOut,s6Step226HeadGOut,s6Step226HeadFvOut,s6Step226HeadGvOut⟩,(growRow 777 s6Step226HeadGFresh ++ (growRow 795 s6Step226HeadFFresh ++ (growRow 775 s6Step226HeadGvFresh ++ (growRow 776 s6Step226HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step226HeadBank_rows]
  rfl

private theorem s6Step226Front_checked : compileHmrSourceFrontLog s6Step226EntryFBefore s6Step226FrontBank 157 127 ⟨157,156,128,127⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step226FrontLog=some s6Step226FrontPlan := by
  have pairEq : s6Step226FrontPair=⟨s6Step226HeadFRow,s6Step226HeadGRow,s6Step226HeadFvRow,s6Step226HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step226FrontHead=⟨s6Step226ExitFRow,s6Step226ExitGRow,s6Step226ExitFvRow,s6Step226ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step226Add0A=s6Step226FrontHead.f.wires := by decide +kernel
  have gEq : s6Step226Add0B=s6Step226FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step226Add1A=s6Step226FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step226Add1B=s6Step226FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step226EntryFBefore s6Step226FrontBank 157 127 ⟨157,156,128,127⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step226FrontLog s6Step226FrontPlan
  · exact s6Step226Front_entry
  · exact s6Step226EntryBank_checked
  · exact s6Step226Front_sigma
  · rfl
  · exact s6Step226Front_branch
  · rfl
  · simpa only [s6Step226FrontPlan,pairEq] using s6Step226HeadBank_checked
  · simpa only [s6Step226FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step226F4_checked
  · exact s6Step226Counter_checked
  · rfl
  · simpa only [s6Step226FrontPlan,headEq] using s6Step226ExitBank_checked

private theorem s6Step226Complete_explicit_checked : compileHmrEarlyStepLog s6Step226EntryFBefore s6Step226FrontBank 157 127 ⟨157,156,128,127⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 48 s6Step226CompleteLog=some s6Step226CompletePlan := by
  let Q := s6Step226EarlyControlPlan
  have hq := s6Step226EarlyControl_plan_checked
  have fv1 : s6Step226CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step226CompleteOut.fv.payload[2]?.getD s6Step226CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step226CompleteOut.fv.payload[3]?.getD s6Step226CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step226CompleteOut.fv.payload[4]?.getD s6Step226CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step226EntryFBefore s6Step226EarlyControlArena s6Step226FrontBank 157 127 ⟨157,156,128,127⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 48 s6Step226CompleteLog s6Step226FrontPlan Q
    s6Step226Front_checked s6Step226Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step226Complete_owned s6Step226Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step226EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 892 s6Step226CompleteOut.fv.second (s6Step226CompleteOut.fv.payload[2]?.getD s6Step226CompleteOut.fv.sign) (s6Step226CompleteOut.fv.payload[3]?.getD s6Step226CompleteOut.fv.sign) (s6Step226CompleteOut.fv.payload[4]?.getD s6Step226CompleteOut.fv.sign) 908 48 s6Step226EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep226Arena : Arena := s6Step226EntryFBefore
def s6PrivateStep226Bank : WindowBank := s6Step226FrontBank
def s6PrivateStep226Spec : HmrSourceWalkStepLog := ⟨157,127,⟨157,156,128,127⟩,48,.early s6Step226CompleteLog⟩
def s6PrivateStep226Plan : HmrSourceStepPlan := .early s6Step226CompletePlan
theorem s6PrivateStep226_source : s6PrivateStep226Spec=s6ObservedLogs224[2] := rfl
theorem s6PrivateStep226_checked : compileHmrSourceStepLog s6PrivateStep226Arena s6PrivateStep226Bank
    s6PrivateStep226Spec.fgWidth s6PrivateStep226Spec.vWidth s6PrivateStep226Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 226 s6PrivateStep226Spec.need none s6PrivateStep226Spec.log=some s6PrivateStep226Plan := by
  change compileHmrSourceStepLog s6Step226EntryFBefore s6Step226FrontBank 157 127 ⟨157,156,128,127⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 226 48 none (.early s6Step226CompleteLog)=some (.early s6Step226CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 226<498)]
  rw [s6Step226Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
