import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep225
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

private def s6Step227CompleteMoves : List (Wire × Wire) := [(864,412)]

private def s6Step227EarlyControlLog : HmrEarlyControlLog := ⟨[864, 879, 805, 908, 856],[822],[825],[869, 786, 810, 809, 817, 812],[900]⟩

private def s6Step227FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [908], [], [892]],[[856], [805], [879], [828]],[[], [], [], []]⟩,[818],[789],[822],[825],[869, 786, 810, 809, 817, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step227CompleteLog : HmrEarlyStepLog := ⟨s6Step227FrontLog,s6Step227CompleteMoves,s6Step227EarlyControlLog⟩

private def s6Step227ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411],795⟩

private def s6Step227ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step227ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩

private def s6Step227ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892],775⟩

private def s6Step227FrontOut : WindowBank := ⟨s6Step227ExitFOut,s6Step227ExitGOut,s6Step227ExitFvOut,s6Step227ExitGvOut⟩

private def s6Step227CompleteOut : WindowBank := s6Step227FrontOut.repacked s6Step227CompleteMoves

private def s6Step227EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step227EarlyControlPositiveArena,[822],s6Step227EarlyControlEqualityArena,[825],⟨⟨818,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step227EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,864⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,805⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,856⟩]⟩

private def s6Step227EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step227EarlyControlZeroArena,s6Step227EarlyControlZeroPlan,s6Step227EarlyControlClassPlan,s6Step227EarlyControlFlagArena,s6Step227EarlyControlFittedArena,s6Step227EarlyControlHistoryArena,s6Step227EarlyControlSigmaArena,s6Step227EarlyControlOutputArena,s6Step227EarlyControlLog⟩

private def s6Step227CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step227Counter_bounded : s6Step227CounterWork.toFinset⊆arenaWires := by norm_num [s6Step227CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step227HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227CounterDuring : Arena := ⟨s6Step227HeadFvAfter.live∪s6Step227CounterWork.toFinset,Finset.union_subset s6Step227HeadFvAfter.bounded s6Step227Counter_bounded⟩

private def s6Step227EntryFFresh : List Wire := []

private def s6Step227EntryFvFresh : List Wire := []

private def s6Step227EntryGFresh : List Wire := [908]

private def s6Step227EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EntryGvFresh : List Wire := [892]

private def s6Step227ExitFExtra : List Wire := [412, 805]

private def s6Step227ExitGExtra : List Wire := [908, 856]

private def s6Step227ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<412) ∨ (413≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227ExitGvExtra : List Wire := [879]

private def s6Step227Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227Add0Work : List Wire := [869, 786, 810, 809, 817, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step227Add0_bounded : s6Step227Add0Work.toFinset⊆arenaWires := by
  have h : s6Step227Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step227Add0During : Arena := ⟨s6Step227Add0Arena.live∪s6Step227Add0Work.toFinset,Finset.union_subset s6Step227Add0Arena.bounded s6Step227Add0_bounded⟩

private def s6Step227Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227Add1Work : List Wire := [869, 786, 810, 809, 817, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step227Add1_bounded : s6Step227Add1Work.toFinset⊆arenaWires := by
  have h : s6Step227Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step227Add1During : Arena := ⟨s6Step227Add1Arena.live∪s6Step227Add1Work.toFinset,Finset.union_subset s6Step227Add1Arena.bounded s6Step227Add1_bounded⟩

private def s6Step227F4FlagArena : Arena := ⟨s6Step227HeadFvAfter.live∪{822},Finset.union_subset s6Step227HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step227F4Plan : HmrHybridF4Plan := ⟨s6Step227F4FlagArena,[822],s6Step227Add0Arena,[825],s6Step227Add0During,s6Step227Add0Work,s6Step227Add1During,s6Step227Add1Work⟩

private def s6Step227HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 805],795⟩

private def s6Step227HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step227HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908, 856],777⟩

private def s6Step227HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 879],775⟩

private def s6Step227FrontHead : WindowBank := ⟨s6Step227HeadFOut,s6Step227HeadGOut,s6Step227HeadFvOut,s6Step227HeadGvOut⟩

private def s6Step227EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step227EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step227EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908],777⟩

private def s6Step227EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892],775⟩

private def s6Step227FrontPair : WindowBank := ⟨s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut⟩

private def s6Step227FrontSigmaArena : Arena := ⟨s6Step227EntryGvAfter.live∪{818},Finset.union_subset s6Step227EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step227HeadFFresh : List Wire := [805]

private def s6Step227HeadFvFresh : List Wire := [828]

private def s6Step227HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227HeadGFresh : List Wire := [856]

private def s6Step227HeadGvFresh : List Wire := [879]

private def s6Step227FrontPlan : HmrSourceFront := ⟨s6Step227EntryGvAfter,s6Step227FrontPair,(growRow 795 s6Step227EntryFFresh ++ (growRow 777 s6Step227EntryGFresh ++ (growRow 776 s6Step227EntryFvFresh ++ (growRow 775 s6Step227EntryGvFresh ++ [])))),s6Step227FrontSigmaArena,[818],s6Step227HeadGBefore,[789],
  s6Step227HeadFvAfter,s6Step227FrontHead,(growRow 777 s6Step227HeadGFresh ++ (growRow 795 s6Step227HeadFFresh ++ (growRow 775 s6Step227HeadGvFresh ++ (growRow 776 s6Step227HeadFvFresh ++ [])))),s6Step227F4Plan,s6Step227CounterDuring,s6Step227CounterWork,s6Step227ExitGvAfter,s6Step227FrontOut,(shrinkRow 777 s6Step227ExitGExtra ++ (shrinkRow 795 s6Step227ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step227ExitGvExtra ++ []))))⟩

private def s6Step227CompletePlan : HmrEarlyStepPlan := ⟨s6Step227FrontPlan,s6Step227EarlyControlArena,s6Step227EarlyControlPlan,s6Step227CompleteMoves⟩

private theorem s6Step227Complete_apart : List.Disjoint (s6Step227CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [818, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] := by
  have nd : ((s6Step227CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[818, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step227Complete_owned : (s6Step227CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step227CompleteMoveArena : Arena := ⟨s6Step227ExitGvAfter.live∪{412},Finset.union_subset s6Step227ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step227Complete_repack : s6Step227ExitGvAfter.checkRepack s6Step227CompleteMoves=some s6Step227EarlyControlArena := by
  have owned : 864∈s6Step227ExitGvAfter.live := by norm_num [s6Step227ExitGvAfter,arenaWires]
  have reserve : s6Step227ExitGvAfter.reserve {412}=some s6Step227CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step227ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step227CompleteMoveArena.retireSet {864}=s6Step227EarlyControlArena := by
    unfold Arena.retireSet s6Step227EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step227CompleteMoveArena,s6Step227ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step227CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step227CompleteMoveArena.retireSet {864}).checkRepack []=some s6Step227EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step227EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s6Step227EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_branch : compileHmrBranchRetirement s6Step227EarlyControlSigmaArena 789=some s6Step227EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step227EarlyControl_branchOwned
  · ext q
    simp [s6Step227EarlyControlOutputArena,s6Step227EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step227EarlyControl_classEqualityBorrow : s6Step227EarlyControlPositiveArena.checkBorrow (([818, 822] : List Wire).length-1) s6Step227EarlyControlLog.classWork=some s6Step227EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step227EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step227EarlyControlEqualityArena,s6Step227EarlyControlPositiveArena,s6Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step227EarlyControl_classEqualityOwned : ([818, 822] : List Wire).toFinset⊆s6Step227EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_classEquality : compileHmrEqualityLog s6Step227EarlyControlPositiveArena [818, 822] 0 s6Step227EarlyControlLog.classWork=some (s6Step227EarlyControlEqualityArena,s6Step227EarlyControlLog.classWork,s6Step227EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step227EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step227EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step227EarlyControl_classOwned : ([769, 856, 818] : List Wire).toFinset⊆s6Step227EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_positiveBorrow : s6Step227EarlyControlZeroArena.checkBorrow (1) s6Step227EarlyControlLog.positiveWork=some s6Step227EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step227EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step227EarlyControlPositiveArena,s6Step227EarlyControlZeroArena,s6Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step227EarlyControl_class : compileHmrSourceClassLog s6Step227EarlyControlZeroArena false 769 s6Step227EarlyControlZeroPlan.top 0 818 s6Step227EarlyControlLog.positiveWork s6Step227EarlyControlLog.classWork=some s6Step227EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step227EarlyControlClassPlan s6Step227EarlyControlZeroArena false 769 s6Step227EarlyControlZeroPlan.top 0 818
  constructor
  · decide +kernel
  · exact s6Step227EarlyControl_classOwned
  · exact s6Step227EarlyControl_positiveBorrow
  · exact s6Step227EarlyControl_classEquality

private theorem s6Step227EarlyControl_entryRecordOwned : ([789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] : List Wire).toFinset⊆s6Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_entrySigmaOwned : ([818, 254] : List Wire).toFinset⊆s6Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_fitBorrow : s6Step227EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] : List Wire).length)) s6Step227EarlyControlLog.recordFresh=some s6Step227EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step227EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step227EarlyControlFittedArena,s6Step227EarlyControlFlagArena,s6Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step227EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] : List Wire).toFinset⊆s6Step227EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_fit : compileHmrRecordGrowLog s6Step227EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 49 s6Step227EarlyControlLog.recordFresh=some s6Step227EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step227EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step227EarlyControl_fitBorrow

private theorem s6Step227EarlyControl_flagsBorrow : s6Step227EarlyControlEqualityArena.checkBorrow (6) s6Step227EarlyControlLog.flagWork=some s6Step227EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step227EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step227EarlyControlFlagArena,s6Step227EarlyControlEqualityArena,s6Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step227EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step227EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_flags : compileHmrFlagsLog s6Step227EarlyControlClassPlan.equalityArena s6Step227EarlyControlClassPlan.equality.top 253 252 251 s6Step227EarlyControlLog.flagWork=some s6Step227EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step227EarlyControl_flagsOwned⟩
  · exact s6Step227EarlyControl_flagsBorrow

private theorem s6Step227EarlyControl_historyBorrow : s6Step227EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] : List Wire).length)) s6Step227EarlyControlLog.recordFresh=some s6Step227EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step227EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step227EarlyControlHistoryArena,s6Step227EarlyControlArena,s6Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step227EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] : List Wire).toFinset⊆s6Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_history : compileHmrRecordGrowLog s6Step227EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 49 s6Step227EarlyControlLog.recordFresh=some s6Step227EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step227EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step227EarlyControl_historyBorrow

private theorem s6Step227EarlyControl_sigmaOwned : ([254, 818] : List Wire).toFinset⊆s6Step227EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_sigmaReleaseOwned : ([818] : List Wire).toFinset⊆s6Step227EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_sigmaRelease : s6Step227EarlyControlHistoryArena.release {818} (fun _ => false)=some s6Step227EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step227EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step227EarlyControlSigmaArena,s6Step227EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step227EarlyControl_sigma : compileHmrSigmaDropLog s6Step227EarlyControlHistoryArena false 0 0 254 818 []=some s6Step227EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step227EarlyControl_sigmaOwned⟩
  · exact s6Step227EarlyControl_sigmaRelease

private theorem s6Step227EarlyControl_zeroBorrow : s6Step227EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step227EarlyControlLog.zeroWork=some s6Step227EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step227EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step227EarlyControlZeroArena,s6Step227EarlyControlArena,s6Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step227EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step227EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EarlyControl_zero : compileHmrEqualityLog s6Step227EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step227EarlyControlLog.zeroWork=some (s6Step227EarlyControlZeroArena,s6Step227EarlyControlLog.zeroWork,s6Step227EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step227EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step227EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step227EarlyControl_logged : s6Step227EarlyControlPlan.Logged s6Step227EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 769 818 254 253 252 251 789 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step227EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step227EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step227EarlyControl_zero
  · exact s6Step227EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step227EarlyControl_flags
  · exact s6Step227EarlyControl_fit
  · exact s6Step227EarlyControl_history
  · exact s6Step227EarlyControl_sigma
  · exact s6Step227EarlyControl_branch

private theorem s6Step227EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step227EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 769 818 254 253 252 251 789 49 s6Step227EarlyControlLog=some s6Step227EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step227EarlyControlPlan s6Step227EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 769 818 254 253 252 251 789 49 s6Step227EarlyControl_logged

private def s6Step227EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step227EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step227EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],777⟩

private def s6Step227EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step227FrontBank : WindowBank := ⟨s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow⟩

private def s6Step227Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 805, 795]

private def s6Step227Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908, 856, 777]

private def s6Step227Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 776]

private def s6Step227Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 879, 775]

private theorem s6Step227Counter_apart : Disjoint s6Step227HeadFvAfter.live s6Step227CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step227HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227Counter_borrowed : s6Step227HeadFvAfter.checkBorrow 4 s6Step227CounterWork=some s6Step227CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step227HeadFvAfter s6Step227CounterDuring s6Step227CounterWork.toFinset s6Step227Counter_bounded s6Step227Counter_apart rfl

private theorem s6Step227Counter_owned : (818::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step227HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step227HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227Counter_checked : compileHmrCounterStepLog s6Step227HeadFvAfter true 818 [774, 773, 772, 771, 770, 769] s6Step227CounterWork=some s6Step227CounterDuring := by
  have owned : ∀q∈818::[774, 773, 772, 771, 770, 769],q∈s6Step227HeadFvAfter.live := fun q hq => s6Step227Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step227Counter_borrowed

private def s6Step227EntryFAfter : Arena := s6Step227EntryFBefore

private theorem s6Step227EntryBank_incomingDistinct : ([s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227EntryF_Incoming : rowsOwned s6Step227EntryFBefore [s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow] 0 s6Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227EntryBank_outgoingOwned : rowsOwned s6Step227EntryGvAfter [s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step227EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227EntryF_Outgoing : rowsOwned s6Step227EntryGvAfter [s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut] :=
  hmrRows_owned_drop s6Step227EntryGvAfter [s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut] 0 s6Step227EntryBank_outgoingOwned

private theorem s6Step227EntryF_distinct : (s6Step227EntryFRow.sign::s6Step227EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227EntryF_owned : (s6Step227EntryFRow.sign::s6Step227EntryFRow.payload).toFinset⊆s6Step227EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EntryF_reserved : s6Step227EntryFBefore.reserve s6Step227EntryFFresh.toFinset=some s6Step227EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227EntryFFresh,arenaWires]
  · norm_num [s6Step227EntryFBefore,s6Step227EntryFFresh,arenaWires]
  · simp only [s6Step227EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step227EntryF_checked : planRowResizeLog s6Step227EntryFBefore s6Step227EntryFRow 157 s6Step227EntryFFresh=
    some (s6Step227EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩,growRow 795 s6Step227EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step227EntryFBefore s6Step227EntryFAfter s6Step227EntryFRow 157 s6Step227EntryFFresh
    s6Step227EntryF_distinct s6Step227EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227EntryF_reserved
  have rowEq : WindowRow.mk (s6Step227EntryFRow.payload++s6Step227EntryFFresh) s6Step227EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step227EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227EntryFvAfter : Arena := s6Step227EntryGAfter

private def s6Step227EntryFvBefore : Arena := s6Step227EntryGAfter

private theorem s6Step227EntryFv_Incoming : rowsOwned s6Step227EntryFvBefore [s6Step227EntryFvRow,s6Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow] 2 s6Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227EntryFv_Outgoing : rowsOwned s6Step227EntryGvAfter [s6Step227EntryFvOut,s6Step227EntryGvOut] :=
  hmrRows_owned_drop s6Step227EntryGvAfter [s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut] 2 s6Step227EntryBank_outgoingOwned

private theorem s6Step227EntryFv_distinct : (s6Step227EntryFvRow.sign::s6Step227EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227EntryFv_owned : (s6Step227EntryFvRow.sign::s6Step227EntryFvRow.payload).toFinset⊆s6Step227EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EntryFv_reserved : s6Step227EntryFvBefore.reserve s6Step227EntryFvFresh.toFinset=some s6Step227EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227EntryFvFresh,arenaWires]
  · norm_num [s6Step227EntryFvBefore,s6Step227EntryGAfter,s6Step227EntryFvFresh,arenaWires]
  · simp only [s6Step227EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step227EntryFv_checked : planRowResizeLog s6Step227EntryFvBefore s6Step227EntryFvRow 128 s6Step227EntryFvFresh=
    some (s6Step227EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩,growRow 776 s6Step227EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step227EntryFvBefore s6Step227EntryFvAfter s6Step227EntryFvRow 128 s6Step227EntryFvFresh
    s6Step227EntryFv_distinct s6Step227EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step227EntryFvRow.payload++s6Step227EntryFvFresh) s6Step227EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step227EntryGBefore : Arena := s6Step227EntryFBefore

private theorem s6Step227EntryG_Incoming : rowsOwned s6Step227EntryGBefore [s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow] 1 s6Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227EntryG_Outgoing : rowsOwned s6Step227EntryGvAfter [s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut] :=
  hmrRows_owned_drop s6Step227EntryGvAfter [s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut] 1 s6Step227EntryBank_outgoingOwned

private theorem s6Step227EntryG_distinct : (s6Step227EntryGRow.sign::s6Step227EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227EntryG_owned : (s6Step227EntryGRow.sign::s6Step227EntryGRow.payload).toFinset⊆s6Step227EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EntryG_reserved : s6Step227EntryGBefore.reserve s6Step227EntryGFresh.toFinset=some s6Step227EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227EntryGFresh,arenaWires]
  · norm_num [s6Step227EntryGBefore,s6Step227EntryFBefore,s6Step227EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step227EntryGAfter,s6Step227EntryGBefore,s6Step227EntryFBefore,s6Step227EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227EntryG_checked : planRowResizeLog s6Step227EntryGBefore s6Step227EntryGRow 157 s6Step227EntryGFresh=
    some (s6Step227EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908],777⟩,growRow 777 s6Step227EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step227EntryGBefore s6Step227EntryGAfter s6Step227EntryGRow 157 s6Step227EntryGFresh
    s6Step227EntryG_distinct s6Step227EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227EntryG_reserved
  have rowEq : WindowRow.mk (s6Step227EntryGRow.payload++s6Step227EntryGFresh) s6Step227EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step227EntryGvBefore : Arena := s6Step227EntryGAfter

private theorem s6Step227EntryGv_Incoming : rowsOwned s6Step227EntryGvBefore [s6Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow] 3 s6Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227EntryGv_Outgoing : rowsOwned s6Step227EntryGvAfter [s6Step227EntryGvOut] :=
  hmrRows_owned_drop s6Step227EntryGvAfter [s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut] 3 s6Step227EntryBank_outgoingOwned

private theorem s6Step227EntryGv_distinct : (s6Step227EntryGvRow.sign::s6Step227EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227EntryGv_owned : (s6Step227EntryGvRow.sign::s6Step227EntryGvRow.payload).toFinset⊆s6Step227EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227EntryGv_reserved : s6Step227EntryGvBefore.reserve s6Step227EntryGvFresh.toFinset=some s6Step227EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227EntryGvFresh,arenaWires]
  · norm_num [s6Step227EntryGvBefore,s6Step227EntryGAfter,s6Step227EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step227EntryGvAfter,s6Step227EntryGvBefore,s6Step227EntryGAfter,s6Step227EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227EntryGv_checked : planRowResizeLog s6Step227EntryGvBefore s6Step227EntryGvRow 128 s6Step227EntryGvFresh=
    some (s6Step227EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892],775⟩,growRow 775 s6Step227EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step227EntryGvBefore s6Step227EntryGvAfter s6Step227EntryGvRow 128 s6Step227EntryGvFresh
    s6Step227EntryGv_distinct s6Step227EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step227EntryGvRow.payload++s6Step227EntryGvFresh) s6Step227EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step227EntryBank_rows : planWindowRowsLog s6Step227EntryFBefore [(s6Step227EntryFRow,157),(s6Step227EntryGRow,157),(s6Step227EntryFvRow,128),(s6Step227EntryGvRow,128)] [s6Step227EntryFFresh,s6Step227EntryGFresh,s6Step227EntryFvFresh,s6Step227EntryGvFresh]=
    some (s6Step227EntryGvAfter,[s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut],(growRow 795 s6Step227EntryFFresh ++ (growRow 777 s6Step227EntryGFresh ++ (growRow 776 s6Step227EntryFvFresh ++ (growRow 775 s6Step227EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step227EntryGvAfter [] []=some (s6Step227EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step227EntryGvBefore s6Step227EntryGvAfter s6Step227EntryGvAfter
    s6Step227EntryGvRow s6Step227EntryGvOut 128 s6Step227EntryGvFresh [] [] []
    (growRow 775 s6Step227EntryGvFresh) ([]) s6Step227EntryGv_Incoming s6Step227EntryGv_checked h4 s6Step227EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step227EntryFvBefore s6Step227EntryFvAfter s6Step227EntryGvAfter
    s6Step227EntryFvRow s6Step227EntryFvOut 128 s6Step227EntryFvFresh [(s6Step227EntryGvRow,128)] [s6Step227EntryGvFresh] [s6Step227EntryGvOut]
    (growRow 776 s6Step227EntryFvFresh) ((growRow 775 s6Step227EntryGvFresh ++ [])) s6Step227EntryFv_Incoming s6Step227EntryFv_checked h3 s6Step227EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step227EntryGBefore s6Step227EntryGAfter s6Step227EntryGvAfter
    s6Step227EntryGRow s6Step227EntryGOut 157 s6Step227EntryGFresh [(s6Step227EntryFvRow,128),(s6Step227EntryGvRow,128)] [s6Step227EntryFvFresh,s6Step227EntryGvFresh] [s6Step227EntryFvOut,s6Step227EntryGvOut]
    (growRow 777 s6Step227EntryGFresh) ((growRow 776 s6Step227EntryFvFresh ++ (growRow 775 s6Step227EntryGvFresh ++ []))) s6Step227EntryG_Incoming s6Step227EntryG_checked h2 s6Step227EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step227EntryFBefore s6Step227EntryFAfter s6Step227EntryGvAfter
    s6Step227EntryFRow s6Step227EntryFOut 157 s6Step227EntryFFresh [(s6Step227EntryGRow,157),(s6Step227EntryFvRow,128),(s6Step227EntryGvRow,128)] [s6Step227EntryGFresh,s6Step227EntryFvFresh,s6Step227EntryGvFresh] [s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut]
    (growRow 795 s6Step227EntryFFresh) ((growRow 777 s6Step227EntryGFresh ++ (growRow 776 s6Step227EntryFvFresh ++ (growRow 775 s6Step227EntryGvFresh ++ [])))) s6Step227EntryF_Incoming s6Step227EntryF_checked h1 s6Step227EntryF_Outgoing
  exact h0

private theorem s6Step227EntryBank_checked : compileHmrBankResizeLog .entry s6Step227EntryFBefore ⟨s6Step227EntryFRow,s6Step227EntryGRow,s6Step227EntryFvRow,s6Step227EntryGvRow⟩ ⟨157,157,128,128⟩ [s6Step227EntryFFresh,s6Step227EntryGFresh,s6Step227EntryFvFresh,s6Step227EntryGvFresh]=
    some (s6Step227EntryGvAfter,⟨s6Step227EntryFOut,s6Step227EntryGOut,s6Step227EntryFvOut,s6Step227EntryGvOut⟩,(growRow 795 s6Step227EntryFFresh ++ (growRow 777 s6Step227EntryGFresh ++ (growRow 776 s6Step227EntryFvFresh ++ (growRow 775 s6Step227EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step227EntryBank_rows]
  rfl

private def s6Step227ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<412) ∨ (413≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227ExitFBefore : Arena := s6Step227ExitGAfter

private def s6Step227ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 805],795⟩

private def s6Step227ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩

private def s6Step227ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908, 856],777⟩

private def s6Step227ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 879],775⟩

private theorem s6Step227ExitBank_incomingDistinct : ([s6Step227ExitGRow,s6Step227ExitFRow,s6Step227ExitFvRow,s6Step227ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227ExitF_Incoming : rowsOwned s6Step227ExitFBefore [s6Step227ExitFRow,s6Step227ExitFvRow,s6Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227ExitGRow,s6Step227ExitFRow,s6Step227ExitFvRow,s6Step227ExitGvRow] 1 s6Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227ExitBank_outgoingOwned : rowsOwned s6Step227ExitGvAfter [s6Step227ExitGOut,s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step227ExitGvAfter (fun q => (0≤q ∧ q<412) ∨ (413≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227ExitF_Outgoing : rowsOwned s6Step227ExitGvAfter [s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut] :=
  hmrRows_owned_drop s6Step227ExitGvAfter [s6Step227ExitGOut,s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut] 1 s6Step227ExitBank_outgoingOwned

private theorem s6Step227ExitF_distinct : (s6Step227ExitFRow.sign::s6Step227ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227ExitF_owned : (s6Step227ExitFRow.sign::s6Step227ExitFRow.payload).toFinset⊆s6Step227ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227ExitF_retired : s6Step227ExitFBefore.retireSet s6Step227ExitFExtra.toFinset=s6Step227ExitFAfter := by
  unfold Arena.retireSet s6Step227ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step227ExitFBefore,s6Step227ExitGAfter,s6Step227ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step227ExitF_checked : planRowResizeLog s6Step227ExitFBefore s6Step227ExitFRow 156 []=
    some (s6Step227ExitFAfter,s6Step227ExitFOut,shrinkRow 795 s6Step227ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step227ExitFBefore s6Step227ExitFRow 156 s6Step227ExitF_distinct s6Step227ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step227ExitFRow.payload.take 156) s6Step227ExitFRow.sign=s6Step227ExitFOut := by decide +kernel
  have hi : s6Step227ExitFRow.payload.drop 156=s6Step227ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step227ExitF_retired] at result
  exact result

private def s6Step227ExitFvAfter : Arena := s6Step227ExitFAfter

private def s6Step227ExitFvBefore : Arena := s6Step227ExitFAfter

private theorem s6Step227ExitFv_Incoming : rowsOwned s6Step227ExitFvBefore [s6Step227ExitFvRow,s6Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227ExitGRow,s6Step227ExitFRow,s6Step227ExitFvRow,s6Step227ExitGvRow] 2 s6Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227ExitFvBefore (fun q => (0≤q ∧ q<412) ∨ (413≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227ExitFv_Outgoing : rowsOwned s6Step227ExitGvAfter [s6Step227ExitFvOut,s6Step227ExitGvOut] :=
  hmrRows_owned_drop s6Step227ExitGvAfter [s6Step227ExitGOut,s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut] 2 s6Step227ExitBank_outgoingOwned

private theorem s6Step227ExitFv_distinct : (s6Step227ExitFvRow.sign::s6Step227ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227ExitFv_owned : (s6Step227ExitFvRow.sign::s6Step227ExitFvRow.payload).toFinset⊆s6Step227ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227ExitFvBefore (fun q => (0≤q ∧ q<412) ∨ (413≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227ExitFv_reserved : s6Step227ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step227ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step227ExitFv_checked : planRowResizeLog s6Step227ExitFvBefore s6Step227ExitFvRow 129 []=
    some (s6Step227ExitFvAfter,s6Step227ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step227ExitFvBefore s6Step227ExitFvAfter s6Step227ExitFvRow 129 []
    s6Step227ExitFv_distinct s6Step227ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step227ExitFvRow.payload++[]) s6Step227ExitFvRow.sign=s6Step227ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step227ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step227ExitG_Incoming : rowsOwned s6Step227ExitGBefore [s6Step227ExitGRow,s6Step227ExitFRow,s6Step227ExitFvRow,s6Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227ExitGRow,s6Step227ExitFRow,s6Step227ExitFvRow,s6Step227ExitGvRow] 0 s6Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227ExitG_Outgoing : rowsOwned s6Step227ExitGvAfter [s6Step227ExitGOut,s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut] :=
  hmrRows_owned_drop s6Step227ExitGvAfter [s6Step227ExitGOut,s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut] 0 s6Step227ExitBank_outgoingOwned

private theorem s6Step227ExitG_distinct : (s6Step227ExitGRow.sign::s6Step227ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227ExitG_owned : (s6Step227ExitGRow.sign::s6Step227ExitGRow.payload).toFinset⊆s6Step227ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227ExitG_retired : s6Step227ExitGBefore.retireSet s6Step227ExitGExtra.toFinset=s6Step227ExitGAfter := by
  unfold Arena.retireSet s6Step227ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step227ExitGBefore,s6Step227ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step227ExitG_checked : planRowResizeLog s6Step227ExitGBefore s6Step227ExitGRow 156 []=
    some (s6Step227ExitGAfter,s6Step227ExitGOut,shrinkRow 777 s6Step227ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step227ExitGBefore s6Step227ExitGRow 156 s6Step227ExitG_distinct s6Step227ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step227ExitGRow.payload.take 156) s6Step227ExitGRow.sign=s6Step227ExitGOut := by decide +kernel
  have hi : s6Step227ExitGRow.payload.drop 156=s6Step227ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step227ExitG_retired] at result
  exact result

private def s6Step227ExitGvBefore : Arena := s6Step227ExitFAfter

private theorem s6Step227ExitGv_Incoming : rowsOwned s6Step227ExitGvBefore [s6Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227ExitGRow,s6Step227ExitFRow,s6Step227ExitFvRow,s6Step227ExitGvRow] 3 s6Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227ExitGvBefore (fun q => (0≤q ∧ q<412) ∨ (413≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227ExitGv_Outgoing : rowsOwned s6Step227ExitGvAfter [s6Step227ExitGvOut] :=
  hmrRows_owned_drop s6Step227ExitGvAfter [s6Step227ExitGOut,s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut] 3 s6Step227ExitBank_outgoingOwned

private theorem s6Step227ExitGv_distinct : (s6Step227ExitGvRow.sign::s6Step227ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227ExitGv_owned : (s6Step227ExitGvRow.sign::s6Step227ExitGvRow.payload).toFinset⊆s6Step227ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227ExitGvBefore (fun q => (0≤q ∧ q<412) ∨ (413≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227ExitGv_retired : s6Step227ExitGvBefore.retireSet s6Step227ExitGvExtra.toFinset=s6Step227ExitGvAfter := by
  unfold Arena.retireSet s6Step227ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step227ExitGvBefore,s6Step227ExitFAfter,s6Step227ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step227ExitGv_checked : planRowResizeLog s6Step227ExitGvBefore s6Step227ExitGvRow 128 []=
    some (s6Step227ExitGvAfter,s6Step227ExitGvOut,shrinkRow 775 s6Step227ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step227ExitGvBefore s6Step227ExitGvRow 128 s6Step227ExitGv_distinct s6Step227ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step227ExitGvRow.payload.take 128) s6Step227ExitGvRow.sign=s6Step227ExitGvOut := by decide +kernel
  have hi : s6Step227ExitGvRow.payload.drop 128=s6Step227ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step227ExitGv_retired] at result
  exact result

private theorem s6Step227ExitBank_rows : planWindowRowsLog s6Step227ExitGBefore [(s6Step227ExitGRow,156),(s6Step227ExitFRow,156),(s6Step227ExitFvRow,129),(s6Step227ExitGvRow,128)] [[],[],[],[]]=
    some (s6Step227ExitGvAfter,[s6Step227ExitGOut,s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut],(shrinkRow 777 s6Step227ExitGExtra ++ (shrinkRow 795 s6Step227ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step227ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step227ExitGvAfter [] []=some (s6Step227ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step227ExitGvBefore s6Step227ExitGvAfter s6Step227ExitGvAfter
    s6Step227ExitGvRow s6Step227ExitGvOut 128 [] [] [] []
    (shrinkRow 775 s6Step227ExitGvExtra) ([]) s6Step227ExitGv_Incoming s6Step227ExitGv_checked h4 s6Step227ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step227ExitFvBefore s6Step227ExitFvAfter s6Step227ExitGvAfter
    s6Step227ExitFvRow s6Step227ExitFvOut 129 [] [(s6Step227ExitGvRow,128)] [[]] [s6Step227ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step227ExitGvExtra ++ [])) s6Step227ExitFv_Incoming s6Step227ExitFv_checked h3 s6Step227ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step227ExitFBefore s6Step227ExitFAfter s6Step227ExitGvAfter
    s6Step227ExitFRow s6Step227ExitFOut 156 [] [(s6Step227ExitFvRow,129),(s6Step227ExitGvRow,128)] [[],[]] [s6Step227ExitFvOut,s6Step227ExitGvOut]
    (shrinkRow 795 s6Step227ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step227ExitGvExtra ++ []))) s6Step227ExitF_Incoming s6Step227ExitF_checked h2 s6Step227ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step227ExitGBefore s6Step227ExitGAfter s6Step227ExitGvAfter
    s6Step227ExitGRow s6Step227ExitGOut 156 [] [(s6Step227ExitFRow,156),(s6Step227ExitFvRow,129),(s6Step227ExitGvRow,128)] [[],[],[]] [s6Step227ExitFOut,s6Step227ExitFvOut,s6Step227ExitGvOut]
    (shrinkRow 777 s6Step227ExitGExtra) ((shrinkRow 795 s6Step227ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step227ExitGvExtra ++ [])))) s6Step227ExitG_Incoming s6Step227ExitG_checked h1 s6Step227ExitG_Outgoing
  exact h0

private theorem s6Step227ExitBank_checked : compileHmrBankResizeLog .exit s6Step227ExitGBefore ⟨s6Step227ExitFRow,s6Step227ExitGRow,s6Step227ExitFvRow,s6Step227ExitGvRow⟩ ⟨156,156,129,128⟩ [[],[],[],[]]=
    some (s6Step227ExitGvAfter,⟨s6Step227ExitFOut,s6Step227ExitGOut,s6Step227ExitFvOut,s6Step227ExitGvOut⟩,(shrinkRow 777 s6Step227ExitGExtra ++ (shrinkRow 795 s6Step227ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step227ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step227ExitBank_rows]
  rfl

private theorem s6Step227Add0_apart : Disjoint s6Step227Add0Arena.live s6Step227Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step227Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227Add0_card : s6Step227Add0Arena.live.card=892 := by
  decide +kernel

private theorem s6Step227Add0_borrowed : s6Step227Add0Arena.checkBorrow (hmrHybridCount s6Step227Add0Arena s6Step227Add0B.length) s6Step227Add0Work=some s6Step227Add0During := by
  have len : s6Step227Add0Work.length=hmrHybridCount s6Step227Add0Arena s6Step227Add0B.length := by
    rw [hmrHybridCount,s6Step227Add0_card]
    decide +kernel
  have nd : s6Step227Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step227Add0Arena s6Step227Add0During s6Step227Add0Work.toFinset s6Step227Add0_bounded s6Step227Add0_apart rfl

private theorem s6Step227Add0_distinct : (822::789::825::(s6Step227Add0A++s6Step227Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227Add0_owned : (822::789::825::(s6Step227Add0A++s6Step227Add0B)).toFinset⊆s6Step227Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step227Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227Add0_checked : compileHmrHybridCinLog s6Step227Add0Arena 789 822 825 s6Step227Add0A s6Step227Add0B s6Step227Add0Work=some s6Step227Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step227Add0Arena s6Step227Add0During 789 822 825 s6Step227Add0A s6Step227Add0B s6Step227Add0Work
    (by decide +kernel) (by decide +kernel) s6Step227Add0_distinct
    (fun q hq => s6Step227Add0_owned (List.mem_toFinset.mpr hq)) s6Step227Add0_borrowed

private theorem s6Step227Add1_apart : Disjoint s6Step227Add1Arena.live s6Step227Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step227Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227Add1_card : s6Step227Add1Arena.live.card=892 := by
  decide +kernel

private theorem s6Step227Add1_borrowed : s6Step227Add1Arena.checkBorrow (hmrHybridCount s6Step227Add1Arena s6Step227Add1B.length) s6Step227Add1Work=some s6Step227Add1During := by
  have len : s6Step227Add1Work.length=hmrHybridCount s6Step227Add1Arena s6Step227Add1B.length := by
    rw [hmrHybridCount,s6Step227Add1_card]
    decide +kernel
  have nd : s6Step227Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step227Add1Arena s6Step227Add1During s6Step227Add1Work.toFinset s6Step227Add1_bounded s6Step227Add1_apart rfl

private theorem s6Step227Add1_distinct : (822::789::825::(s6Step227Add1A++s6Step227Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227Add1_owned : (822::789::825::(s6Step227Add1A++s6Step227Add1B)).toFinset⊆s6Step227Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step227Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227Add1_checked : compileHmrHybridCinLog s6Step227Add1Arena 789 822 825 s6Step227Add1A s6Step227Add1B s6Step227Add1Work=some s6Step227Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step227Add1Arena s6Step227Add1During 789 822 825 s6Step227Add1A s6Step227Add1B s6Step227Add1Work
    (by decide +kernel) (by decide +kernel) s6Step227Add1_distinct
    (fun q hq => s6Step227Add1_owned (List.mem_toFinset.mpr hq)) s6Step227Add1_borrowed

private theorem s6Step227F4_apart : Disjoint (s6Step227Add0A++s6Step227Add0B).toFinset (s6Step227Add1A++s6Step227Add1B).toFinset := by
  have nd : ((s6Step227Add0A++s6Step227Add0B)++(s6Step227Add1A++s6Step227Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step227F4_carry : s6Step227F4FlagArena.checkBorrow 1 [825]=some s6Step227Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step227F4FlagArena,s6Step227HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step227F4FlagArena,s6Step227HeadFvAfter,s6Step227Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227F4_distinct : (818::789::822::825::((s6Step227Add0A++s6Step227Add1A)++(s6Step227Add0B++s6Step227Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227F4_flag : s6Step227HeadFvAfter.checkBorrow 1 [822]=some s6Step227F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step227HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step227F4_owned : (818::789::((s6Step227Add0A++s6Step227Add1A)++(s6Step227Add0B++s6Step227Add1B))).toFinset⊆s6Step227HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step227HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227F4_checked : compileHmrHybridF4Log s6Step227HeadFvAfter 818 789 s6Step227Add0A s6Step227Add0B s6Step227Add1A s6Step227Add1B [822] [825] s6Step227Add0Work s6Step227Add1Work=some s6Step227F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step227HeadFvAfter s6Step227F4FlagArena s6Step227Add0Arena s6Step227Add0During s6Step227Add1During 818 789
    s6Step227Add0A s6Step227Add0B s6Step227Add1A s6Step227Add1B [822] [825] s6Step227Add0Work s6Step227Add1Work
    (fun q hq => s6Step227F4_owned (List.mem_toFinset.mpr hq)) s6Step227F4_flag s6Step227F4_carry
    s6Step227F4_distinct s6Step227F4_apart s6Step227Add0_checked s6Step227Add1_checked

private theorem s6Step227Front_branch : s6Step227FrontSigmaArena.checkBorrow 1 [789]=some s6Step227HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step227FrontSigmaArena,s6Step227EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step227FrontSigmaArena,s6Step227EntryGvAfter,s6Step227HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227Front_entry : HmrFrontEntryValid s6Step227EntryFBefore s6Step227FrontBank 157 128 ⟨156,156,129,128⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step227FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step227EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step227EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step227FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step227Front_sigma : s6Step227EntryGvAfter.checkBorrow 1 [818]=some s6Step227FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step227EntryGvAfter,arenaWires]
  · rfl

private def s6Step227HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227HeadFBefore : Arena := s6Step227HeadGAfter

private def s6Step227HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412],795⟩

private def s6Step227HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step227HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908],777⟩

private def s6Step227HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892],775⟩

private theorem s6Step227HeadBank_incomingDistinct : ([s6Step227HeadGRow,s6Step227HeadFRow,s6Step227HeadGvRow,s6Step227HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227HeadF_Incoming : rowsOwned s6Step227HeadFBefore [s6Step227HeadFRow,s6Step227HeadGvRow,s6Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227HeadGRow,s6Step227HeadFRow,s6Step227HeadGvRow,s6Step227HeadFvRow] 1 s6Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227HeadBank_outgoingOwned : rowsOwned s6Step227HeadFvAfter [s6Step227HeadGOut,s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step227HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227HeadF_Outgoing : rowsOwned s6Step227HeadFvAfter [s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut] :=
  hmrRows_owned_drop s6Step227HeadFvAfter [s6Step227HeadGOut,s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut] 1 s6Step227HeadBank_outgoingOwned

private theorem s6Step227HeadF_distinct : (s6Step227HeadFRow.sign::s6Step227HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227HeadF_owned : (s6Step227HeadFRow.sign::s6Step227HeadFRow.payload).toFinset⊆s6Step227HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227HeadF_reserved : s6Step227HeadFBefore.reserve s6Step227HeadFFresh.toFinset=some s6Step227HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227HeadFFresh,arenaWires]
  · norm_num [s6Step227HeadFBefore,s6Step227HeadGAfter,s6Step227HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step227HeadFAfter,s6Step227HeadFBefore,s6Step227HeadGAfter,s6Step227HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227HeadF_checked : planRowResizeLog s6Step227HeadFBefore s6Step227HeadFRow 158 s6Step227HeadFFresh=
    some (s6Step227HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 805],795⟩,growRow 795 s6Step227HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step227HeadFBefore s6Step227HeadFAfter s6Step227HeadFRow 158 s6Step227HeadFFresh
    s6Step227HeadF_distinct s6Step227HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227HeadF_reserved
  have rowEq : WindowRow.mk (s6Step227HeadFRow.payload++s6Step227HeadFFresh) s6Step227HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step227HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step227HeadFvBefore : Arena := s6Step227HeadGvAfter

private theorem s6Step227HeadFv_Incoming : rowsOwned s6Step227HeadFvBefore [s6Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227HeadGRow,s6Step227HeadFRow,s6Step227HeadGvRow,s6Step227HeadFvRow] 3 s6Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227HeadFv_Outgoing : rowsOwned s6Step227HeadFvAfter [s6Step227HeadFvOut] :=
  hmrRows_owned_drop s6Step227HeadFvAfter [s6Step227HeadGOut,s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut] 3 s6Step227HeadBank_outgoingOwned

private theorem s6Step227HeadFv_distinct : (s6Step227HeadFvRow.sign::s6Step227HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227HeadFv_owned : (s6Step227HeadFvRow.sign::s6Step227HeadFvRow.payload).toFinset⊆s6Step227HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227HeadFv_reserved : s6Step227HeadFvBefore.reserve s6Step227HeadFvFresh.toFinset=some s6Step227HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227HeadFvFresh,arenaWires]
  · norm_num [s6Step227HeadFvBefore,s6Step227HeadGvAfter,s6Step227HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step227HeadFvAfter,s6Step227HeadFvBefore,s6Step227HeadGvAfter,s6Step227HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227HeadFv_checked : planRowResizeLog s6Step227HeadFvBefore s6Step227HeadFvRow 129 s6Step227HeadFvFresh=
    some (s6Step227HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩,growRow 776 s6Step227HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step227HeadFvBefore s6Step227HeadFvAfter s6Step227HeadFvRow 129 s6Step227HeadFvFresh
    s6Step227HeadFv_distinct s6Step227HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step227HeadFvRow.payload++s6Step227HeadFvFresh) s6Step227HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step227HeadG_Incoming : rowsOwned s6Step227HeadGBefore [s6Step227HeadGRow,s6Step227HeadFRow,s6Step227HeadGvRow,s6Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227HeadGRow,s6Step227HeadFRow,s6Step227HeadGvRow,s6Step227HeadFvRow] 0 s6Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227HeadG_Outgoing : rowsOwned s6Step227HeadFvAfter [s6Step227HeadGOut,s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut] :=
  hmrRows_owned_drop s6Step227HeadFvAfter [s6Step227HeadGOut,s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut] 0 s6Step227HeadBank_outgoingOwned

private theorem s6Step227HeadG_distinct : (s6Step227HeadGRow.sign::s6Step227HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227HeadG_owned : (s6Step227HeadGRow.sign::s6Step227HeadGRow.payload).toFinset⊆s6Step227HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227HeadG_reserved : s6Step227HeadGBefore.reserve s6Step227HeadGFresh.toFinset=some s6Step227HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227HeadGFresh,arenaWires]
  · norm_num [s6Step227HeadGBefore,s6Step227HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step227HeadGAfter,s6Step227HeadGBefore,s6Step227HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227HeadG_checked : planRowResizeLog s6Step227HeadGBefore s6Step227HeadGRow 158 s6Step227HeadGFresh=
    some (s6Step227HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908, 856],777⟩,growRow 777 s6Step227HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step227HeadGBefore s6Step227HeadGAfter s6Step227HeadGRow 158 s6Step227HeadGFresh
    s6Step227HeadG_distinct s6Step227HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227HeadG_reserved
  have rowEq : WindowRow.mk (s6Step227HeadGRow.payload++s6Step227HeadGFresh) s6Step227HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 908, 856],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step227HeadGvBefore : Arena := s6Step227HeadFAfter

private theorem s6Step227HeadGv_Incoming : rowsOwned s6Step227HeadGvBefore [s6Step227HeadGvRow,s6Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step227HeadGRow,s6Step227HeadFRow,s6Step227HeadGvRow,s6Step227HeadFvRow] 2 s6Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step227HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step227HeadGv_Outgoing : rowsOwned s6Step227HeadFvAfter [s6Step227HeadGvOut,s6Step227HeadFvOut] :=
  hmrRows_owned_drop s6Step227HeadFvAfter [s6Step227HeadGOut,s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut] 2 s6Step227HeadBank_outgoingOwned

private theorem s6Step227HeadGv_distinct : (s6Step227HeadGvRow.sign::s6Step227HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step227HeadGv_owned : (s6Step227HeadGvRow.sign::s6Step227HeadGvRow.payload).toFinset⊆s6Step227HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step227HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step227HeadGv_reserved : s6Step227HeadGvBefore.reserve s6Step227HeadGvFresh.toFinset=some s6Step227HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step227HeadGvFresh,arenaWires]
  · norm_num [s6Step227HeadGvBefore,s6Step227HeadFAfter,s6Step227HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step227HeadGvAfter,s6Step227HeadGvBefore,s6Step227HeadFAfter,s6Step227HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step227HeadGv_checked : planRowResizeLog s6Step227HeadGvBefore s6Step227HeadGvRow 129 s6Step227HeadGvFresh=
    some (s6Step227HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 879],775⟩,growRow 775 s6Step227HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step227HeadGvBefore s6Step227HeadGvAfter s6Step227HeadGvRow 129 s6Step227HeadGvFresh
    s6Step227HeadGv_distinct s6Step227HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step227HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step227HeadGvRow.payload++s6Step227HeadGvFresh) s6Step227HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step227HeadBank_rows : planWindowRowsLog s6Step227HeadGBefore [(s6Step227HeadGRow,158),(s6Step227HeadFRow,158),(s6Step227HeadGvRow,129),(s6Step227HeadFvRow,129)] [s6Step227HeadGFresh,s6Step227HeadFFresh,s6Step227HeadGvFresh,s6Step227HeadFvFresh]=
    some (s6Step227HeadFvAfter,[s6Step227HeadGOut,s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut],(growRow 777 s6Step227HeadGFresh ++ (growRow 795 s6Step227HeadFFresh ++ (growRow 775 s6Step227HeadGvFresh ++ (growRow 776 s6Step227HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step227HeadFvAfter [] []=some (s6Step227HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step227HeadFvBefore s6Step227HeadFvAfter s6Step227HeadFvAfter
    s6Step227HeadFvRow s6Step227HeadFvOut 129 s6Step227HeadFvFresh [] [] []
    (growRow 776 s6Step227HeadFvFresh) ([]) s6Step227HeadFv_Incoming s6Step227HeadFv_checked h4 s6Step227HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step227HeadGvBefore s6Step227HeadGvAfter s6Step227HeadFvAfter
    s6Step227HeadGvRow s6Step227HeadGvOut 129 s6Step227HeadGvFresh [(s6Step227HeadFvRow,129)] [s6Step227HeadFvFresh] [s6Step227HeadFvOut]
    (growRow 775 s6Step227HeadGvFresh) ((growRow 776 s6Step227HeadFvFresh ++ [])) s6Step227HeadGv_Incoming s6Step227HeadGv_checked h3 s6Step227HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step227HeadFBefore s6Step227HeadFAfter s6Step227HeadFvAfter
    s6Step227HeadFRow s6Step227HeadFOut 158 s6Step227HeadFFresh [(s6Step227HeadGvRow,129),(s6Step227HeadFvRow,129)] [s6Step227HeadGvFresh,s6Step227HeadFvFresh] [s6Step227HeadGvOut,s6Step227HeadFvOut]
    (growRow 795 s6Step227HeadFFresh) ((growRow 775 s6Step227HeadGvFresh ++ (growRow 776 s6Step227HeadFvFresh ++ []))) s6Step227HeadF_Incoming s6Step227HeadF_checked h2 s6Step227HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step227HeadGBefore s6Step227HeadGAfter s6Step227HeadFvAfter
    s6Step227HeadGRow s6Step227HeadGOut 158 s6Step227HeadGFresh [(s6Step227HeadFRow,158),(s6Step227HeadGvRow,129),(s6Step227HeadFvRow,129)] [s6Step227HeadFFresh,s6Step227HeadGvFresh,s6Step227HeadFvFresh] [s6Step227HeadFOut,s6Step227HeadGvOut,s6Step227HeadFvOut]
    (growRow 777 s6Step227HeadGFresh) ((growRow 795 s6Step227HeadFFresh ++ (growRow 775 s6Step227HeadGvFresh ++ (growRow 776 s6Step227HeadFvFresh ++ [])))) s6Step227HeadG_Incoming s6Step227HeadG_checked h1 s6Step227HeadG_Outgoing
  exact h0

private theorem s6Step227HeadBank_checked : compileHmrBankResizeLog .headroom s6Step227HeadGBefore ⟨s6Step227HeadFRow,s6Step227HeadGRow,s6Step227HeadFvRow,s6Step227HeadGvRow⟩ ⟨158,158,129,129⟩ [s6Step227HeadGFresh,s6Step227HeadFFresh,s6Step227HeadGvFresh,s6Step227HeadFvFresh]=
    some (s6Step227HeadFvAfter,⟨s6Step227HeadFOut,s6Step227HeadGOut,s6Step227HeadFvOut,s6Step227HeadGvOut⟩,(growRow 777 s6Step227HeadGFresh ++ (growRow 795 s6Step227HeadFFresh ++ (growRow 775 s6Step227HeadGvFresh ++ (growRow 776 s6Step227HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step227HeadBank_rows]
  rfl

private theorem s6Step227Front_checked : compileHmrSourceFrontLog s6Step227EntryFBefore s6Step227FrontBank 157 128 ⟨156,156,129,128⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step227FrontLog=some s6Step227FrontPlan := by
  have pairEq : s6Step227FrontPair=⟨s6Step227HeadFRow,s6Step227HeadGRow,s6Step227HeadFvRow,s6Step227HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step227FrontHead=⟨s6Step227ExitFRow,s6Step227ExitGRow,s6Step227ExitFvRow,s6Step227ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step227Add0A=s6Step227FrontHead.f.wires := by decide +kernel
  have gEq : s6Step227Add0B=s6Step227FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step227Add1A=s6Step227FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step227Add1B=s6Step227FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step227EntryFBefore s6Step227FrontBank 157 128 ⟨156,156,129,128⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step227FrontLog s6Step227FrontPlan
  · exact s6Step227Front_entry
  · exact s6Step227EntryBank_checked
  · exact s6Step227Front_sigma
  · rfl
  · exact s6Step227Front_branch
  · rfl
  · simpa only [s6Step227FrontPlan,pairEq] using s6Step227HeadBank_checked
  · simpa only [s6Step227FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step227F4_checked
  · exact s6Step227Counter_checked
  · rfl
  · simpa only [s6Step227FrontPlan,headEq] using s6Step227ExitBank_checked

private theorem s6Step227Complete_explicit_checked : compileHmrEarlyStepLog s6Step227EntryFBefore s6Step227FrontBank 157 128 ⟨156,156,129,128⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 49 s6Step227CompleteLog=some s6Step227CompletePlan := by
  let Q := s6Step227EarlyControlPlan
  have hq := s6Step227EarlyControl_plan_checked
  have fv1 : s6Step227CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step227CompleteOut.fv.payload[2]?.getD s6Step227CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step227CompleteOut.fv.payload[3]?.getD s6Step227CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step227CompleteOut.fv.payload[4]?.getD s6Step227CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step227EntryFBefore s6Step227EarlyControlArena s6Step227FrontBank 157 128 ⟨156,156,129,128⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 49 s6Step227CompleteLog s6Step227FrontPlan Q
    s6Step227Front_checked s6Step227Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step227Complete_owned s6Step227Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step227EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 769 818 s6Step227CompleteOut.fv.second (s6Step227CompleteOut.fv.payload[2]?.getD s6Step227CompleteOut.fv.sign) (s6Step227CompleteOut.fv.payload[3]?.getD s6Step227CompleteOut.fv.sign) (s6Step227CompleteOut.fv.payload[4]?.getD s6Step227CompleteOut.fv.sign) 789 49 s6Step227EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep227Arena : Arena := s6Step227EntryFBefore
def s6PrivateStep227Bank : WindowBank := s6Step227FrontBank
def s6PrivateStep227Spec : HmrSourceWalkStepLog := ⟨157,128,⟨156,156,129,128⟩,49,.early s6Step227CompleteLog⟩
def s6PrivateStep227Plan : HmrSourceStepPlan := .early s6Step227CompletePlan
theorem s6PrivateStep227_source : s6PrivateStep227Spec=s6ObservedLogs224[3] := rfl
theorem s6PrivateStep227_checked : compileHmrSourceStepLog s6PrivateStep227Arena s6PrivateStep227Bank
    s6PrivateStep227Spec.fgWidth s6PrivateStep227Spec.vWidth s6PrivateStep227Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804]
    6 498 227 s6PrivateStep227Spec.need none s6PrivateStep227Spec.log=some s6PrivateStep227Plan := by
  change compileHmrSourceStepLog s6Step227EntryFBefore s6Step227FrontBank 157 128 ⟨156,156,129,128⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804] 6 498 227 49 none (.early s6Step227CompleteLog)=some (.early s6Step227CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 227<498)]
  rw [s6Step227Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
