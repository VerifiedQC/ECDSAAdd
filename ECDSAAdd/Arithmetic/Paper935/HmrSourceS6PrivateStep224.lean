import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep222
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

private def s6Step224CompleteMoves : List (Wire × Wire) := [(892,157)]

private def s6Step224EarlyControlLog : HmrEarlyControlLog := ⟨[892, 828, 875, 856, 789],[822],[825],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step224FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [887]],[[789], [856], [828], [875]],[[], [], [], []]⟩,[908],[879],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step224CompleteLog : HmrEarlyStepLog := ⟨s6Step224FrontLog,s6Step224CompleteMoves,s6Step224EarlyControlLog⟩

private def s6Step224ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step224ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step224ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],777⟩

private def s6Step224ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step224FrontOut : WindowBank := ⟨s6Step224ExitFOut,s6Step224ExitGOut,s6Step224ExitFvOut,s6Step224ExitGvOut⟩

private def s6Step224CompleteOut : WindowBank := s6Step224FrontOut.repacked s6Step224CompleteMoves

private def s6Step224EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step224EarlyControlPositiveArena,[822],s6Step224EarlyControlEqualityArena,[825],⟨⟨908,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step224EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,892⟩,⟨⟨772,false⟩,828⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,856⟩,⟨⟨769,false⟩,789⟩]⟩

private def s6Step224EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step224EarlyControlZeroArena,s6Step224EarlyControlZeroPlan,s6Step224EarlyControlClassPlan,s6Step224EarlyControlFlagArena,s6Step224EarlyControlFittedArena,s6Step224EarlyControlHistoryArena,s6Step224EarlyControlSigmaArena,s6Step224EarlyControlOutputArena,s6Step224EarlyControlLog⟩

private def s6Step224CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step224Counter_bounded : s6Step224CounterWork.toFinset⊆arenaWires := by norm_num [s6Step224CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step224HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224CounterDuring : Arena := ⟨s6Step224HeadFvAfter.live∪s6Step224CounterWork.toFinset,Finset.union_subset s6Step224HeadFvAfter.bounded s6Step224Counter_bounded⟩

private def s6Step224EntryFFresh : List Wire := []

private def s6Step224EntryFvFresh : List Wire := []

private def s6Step224EntryGFresh : List Wire := []

private def s6Step224EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EntryGvFresh : List Wire := [887]

private def s6Step224ExitFExtra : List Wire := [856]

private def s6Step224ExitFvExtra : List Wire := [875]

private def s6Step224ExitGExtra : List Wire := [157, 789]

private def s6Step224ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224ExitGvExtra : List Wire := [828]

private def s6Step224Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step224Add0_bounded : s6Step224Add0Work.toFinset⊆arenaWires := by
  have h : s6Step224Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step224Add0During : Arena := ⟨s6Step224Add0Arena.live∪s6Step224Add0Work.toFinset,Finset.union_subset s6Step224Add0Arena.bounded s6Step224Add0_bounded⟩

private def s6Step224Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step224Add1_bounded : s6Step224Add1Work.toFinset⊆arenaWires := by
  have h : s6Step224Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step224Add1During : Arena := ⟨s6Step224Add1Arena.live∪s6Step224Add1Work.toFinset,Finset.union_subset s6Step224Add1Arena.bounded s6Step224Add1_bounded⟩

private def s6Step224F4FlagArena : Arena := ⟨s6Step224HeadFvAfter.live∪{822},Finset.union_subset s6Step224HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step224F4Plan : HmrHybridF4Plan := ⟨s6Step224F4FlagArena,[822],s6Step224Add0Arena,[825],s6Step224Add0During,s6Step224Add0Work,s6Step224Add1During,s6Step224Add1Work⟩

private def s6Step224HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 856],795⟩

private def s6Step224HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step224HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 789],777⟩

private def s6Step224HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 828],775⟩

private def s6Step224FrontHead : WindowBank := ⟨s6Step224HeadFOut,s6Step224HeadGOut,s6Step224HeadFvOut,s6Step224HeadGvOut⟩

private def s6Step224EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step224EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step224EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],777⟩

private def s6Step224EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private def s6Step224FrontPair : WindowBank := ⟨s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut⟩

private def s6Step224FrontSigmaArena : Arena := ⟨s6Step224EntryGvAfter.live∪{908},Finset.union_subset s6Step224EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step224HeadFFresh : List Wire := [856]

private def s6Step224HeadFvFresh : List Wire := [875]

private def s6Step224HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224HeadGFresh : List Wire := [789]

private def s6Step224HeadGvFresh : List Wire := [828]

private def s6Step224FrontPlan : HmrSourceFront := ⟨s6Step224EntryGvAfter,s6Step224FrontPair,(growRow 795 s6Step224EntryFFresh ++ (growRow 777 s6Step224EntryGFresh ++ (growRow 776 s6Step224EntryFvFresh ++ (growRow 775 s6Step224EntryGvFresh ++ [])))),s6Step224FrontSigmaArena,[908],s6Step224HeadGBefore,[879],
  s6Step224HeadFvAfter,s6Step224FrontHead,(growRow 777 s6Step224HeadGFresh ++ (growRow 795 s6Step224HeadFFresh ++ (growRow 775 s6Step224HeadGvFresh ++ (growRow 776 s6Step224HeadFvFresh ++ [])))),s6Step224F4Plan,s6Step224CounterDuring,s6Step224CounterWork,s6Step224ExitGvAfter,s6Step224FrontOut,(shrinkRow 777 s6Step224ExitGExtra ++ (shrinkRow 795 s6Step224ExitFExtra ++ (shrinkRow 776 s6Step224ExitFvExtra ++ (shrinkRow 775 s6Step224ExitGvExtra ++ []))))⟩

private def s6Step224CompletePlan : HmrEarlyStepPlan := ⟨s6Step224FrontPlan,s6Step224EarlyControlArena,s6Step224EarlyControlPlan,s6Step224CompleteMoves⟩

private theorem s6Step224Complete_apart : List.Disjoint (s6Step224CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step224CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step224Complete_owned : (s6Step224CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step224CompleteMoveArena : Arena := ⟨s6Step224ExitGvAfter.live∪{157},Finset.union_subset s6Step224ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step224Complete_repack : s6Step224ExitGvAfter.checkRepack s6Step224CompleteMoves=some s6Step224EarlyControlArena := by
  have owned : 892∈s6Step224ExitGvAfter.live := by norm_num [s6Step224ExitGvAfter,arenaWires]
  have reserve : s6Step224ExitGvAfter.reserve {157}=some s6Step224CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step224ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step224CompleteMoveArena.retireSet {892}=s6Step224EarlyControlArena := by
    unfold Arena.retireSet s6Step224EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step224CompleteMoveArena,s6Step224ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step224CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step224CompleteMoveArena.retireSet {892}).checkRepack []=some s6Step224EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step224EarlyControl_branchOwned : ([879] : List Wire).toFinset⊆s6Step224EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_branch : compileHmrBranchRetirement s6Step224EarlyControlSigmaArena 879=some s6Step224EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step224EarlyControl_branchOwned
  · ext q
    simp [s6Step224EarlyControlOutputArena,s6Step224EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step224EarlyControl_classEqualityBorrow : s6Step224EarlyControlPositiveArena.checkBorrow (([908, 822] : List Wire).length-1) s6Step224EarlyControlLog.classWork=some s6Step224EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step224EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step224EarlyControlEqualityArena,s6Step224EarlyControlPositiveArena,s6Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step224EarlyControl_classEqualityOwned : ([908, 822] : List Wire).toFinset⊆s6Step224EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_classEquality : compileHmrEqualityLog s6Step224EarlyControlPositiveArena [908, 822] 0 s6Step224EarlyControlLog.classWork=some (s6Step224EarlyControlEqualityArena,s6Step224EarlyControlLog.classWork,s6Step224EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step224EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step224EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step224EarlyControl_classOwned : ([769, 789, 908] : List Wire).toFinset⊆s6Step224EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_positiveBorrow : s6Step224EarlyControlZeroArena.checkBorrow (1) s6Step224EarlyControlLog.positiveWork=some s6Step224EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step224EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step224EarlyControlPositiveArena,s6Step224EarlyControlZeroArena,s6Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step224EarlyControl_class : compileHmrSourceClassLog s6Step224EarlyControlZeroArena false 769 s6Step224EarlyControlZeroPlan.top 0 908 s6Step224EarlyControlLog.positiveWork s6Step224EarlyControlLog.classWork=some s6Step224EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step224EarlyControlClassPlan s6Step224EarlyControlZeroArena false 769 s6Step224EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step224EarlyControl_classOwned
  · exact s6Step224EarlyControl_positiveBorrow
  · exact s6Step224EarlyControl_classEquality

private theorem s6Step224EarlyControl_entryRecordOwned : ([879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_fitBorrow : s6Step224EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step224EarlyControlLog.recordFresh=some s6Step224EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step224EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step224EarlyControlFittedArena,s6Step224EarlyControlFlagArena,s6Step224EarlyControlLog,arenaWires]

private theorem s6Step224EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step224EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_fit : compileHmrRecordGrowLog s6Step224EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step224EarlyControlLog.recordFresh=some s6Step224EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step224EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step224EarlyControl_fitBorrow

private theorem s6Step224EarlyControl_flagsBorrow : s6Step224EarlyControlEqualityArena.checkBorrow (6) s6Step224EarlyControlLog.flagWork=some s6Step224EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step224EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step224EarlyControlFlagArena,s6Step224EarlyControlEqualityArena,s6Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step224EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step224EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_flags : compileHmrFlagsLog s6Step224EarlyControlClassPlan.equalityArena s6Step224EarlyControlClassPlan.equality.top 253 252 251 s6Step224EarlyControlLog.flagWork=some s6Step224EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step224EarlyControl_flagsOwned⟩
  · exact s6Step224EarlyControl_flagsBorrow

private theorem s6Step224EarlyControl_historyBorrow : s6Step224EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step224EarlyControlLog.recordFresh=some s6Step224EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step224EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step224EarlyControlHistoryArena,s6Step224EarlyControlArena,s6Step224EarlyControlLog,arenaWires]

private theorem s6Step224EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_history : compileHmrRecordGrowLog s6Step224EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step224EarlyControlLog.recordFresh=some s6Step224EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step224EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step224EarlyControl_historyBorrow

private theorem s6Step224EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step224EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step224EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_sigmaRelease : s6Step224EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step224EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step224EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step224EarlyControlSigmaArena,s6Step224EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step224EarlyControl_sigma : compileHmrSigmaDropLog s6Step224EarlyControlHistoryArena false 0 0 254 908 []=some s6Step224EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step224EarlyControl_sigmaOwned⟩
  · exact s6Step224EarlyControl_sigmaRelease

private theorem s6Step224EarlyControl_zeroBorrow : s6Step224EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step224EarlyControlLog.zeroWork=some s6Step224EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step224EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step224EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step224EarlyControlZeroArena,s6Step224EarlyControlArena,s6Step224EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step224EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step224EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step224EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EarlyControl_zero : compileHmrEqualityLog s6Step224EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step224EarlyControlLog.zeroWork=some (s6Step224EarlyControlZeroArena,s6Step224EarlyControlLog.zeroWork,s6Step224EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step224EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step224EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step224EarlyControl_logged : s6Step224EarlyControlPlan.Logged s6Step224EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 879 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step224EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step224EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step224EarlyControl_zero
  · exact s6Step224EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step224EarlyControl_flags
  · exact s6Step224EarlyControl_fit
  · exact s6Step224EarlyControl_history
  · exact s6Step224EarlyControl_sigma
  · exact s6Step224EarlyControl_branch

private theorem s6Step224EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step224EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 879 47 s6Step224EarlyControlLog=some s6Step224EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step224EarlyControlPlan s6Step224EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 254 253 252 251 879 47 s6Step224EarlyControl_logged

private def s6Step224EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step224EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step224EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],777⟩

private def s6Step224EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858],775⟩

private def s6Step224FrontBank : WindowBank := ⟨s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow⟩

private def s6Step224Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 856, 795]

private def s6Step224Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 789, 777]

private def s6Step224Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 776]

private def s6Step224Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 828, 775]

private theorem s6Step224Counter_apart : Disjoint s6Step224HeadFvAfter.live s6Step224CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step224HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224Counter_borrowed : s6Step224HeadFvAfter.checkBorrow 4 s6Step224CounterWork=some s6Step224CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step224HeadFvAfter s6Step224CounterDuring s6Step224CounterWork.toFinset s6Step224Counter_bounded s6Step224Counter_apart rfl

private theorem s6Step224Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step224HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step224HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224Counter_checked : compileHmrCounterStepLog s6Step224HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step224CounterWork=some s6Step224CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step224HeadFvAfter.live := fun q hq => s6Step224Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step224Counter_borrowed

private def s6Step224EntryFAfter : Arena := s6Step224EntryFBefore

private theorem s6Step224EntryBank_incomingDistinct : ([s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224EntryF_Incoming : rowsOwned s6Step224EntryFBefore [s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow] 0 s6Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224EntryBank_outgoingOwned : rowsOwned s6Step224EntryGvAfter [s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step224EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224EntryF_Outgoing : rowsOwned s6Step224EntryGvAfter [s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut] :=
  hmrRows_owned_drop s6Step224EntryGvAfter [s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut] 0 s6Step224EntryBank_outgoingOwned

private theorem s6Step224EntryF_distinct : (s6Step224EntryFRow.sign::s6Step224EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224EntryF_owned : (s6Step224EntryFRow.sign::s6Step224EntryFRow.payload).toFinset⊆s6Step224EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EntryF_reserved : s6Step224EntryFBefore.reserve s6Step224EntryFFresh.toFinset=some s6Step224EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224EntryFFresh,arenaWires]
  · norm_num [s6Step224EntryFBefore,s6Step224EntryFFresh,arenaWires]
  · simp only [s6Step224EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step224EntryF_checked : planRowResizeLog s6Step224EntryFBefore s6Step224EntryFRow 158 s6Step224EntryFFresh=
    some (s6Step224EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩,growRow 795 s6Step224EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step224EntryFBefore s6Step224EntryFAfter s6Step224EntryFRow 158 s6Step224EntryFFresh
    s6Step224EntryF_distinct s6Step224EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224EntryF_reserved
  have rowEq : WindowRow.mk (s6Step224EntryFRow.payload++s6Step224EntryFFresh) s6Step224EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step224EntryFvAfter : Arena := s6Step224EntryFBefore

private def s6Step224EntryFvBefore : Arena := s6Step224EntryFBefore

private theorem s6Step224EntryFv_Incoming : rowsOwned s6Step224EntryFvBefore [s6Step224EntryFvRow,s6Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow] 2 s6Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224EntryFv_Outgoing : rowsOwned s6Step224EntryGvAfter [s6Step224EntryFvOut,s6Step224EntryGvOut] :=
  hmrRows_owned_drop s6Step224EntryGvAfter [s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut] 2 s6Step224EntryBank_outgoingOwned

private theorem s6Step224EntryFv_distinct : (s6Step224EntryFvRow.sign::s6Step224EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224EntryFv_owned : (s6Step224EntryFvRow.sign::s6Step224EntryFvRow.payload).toFinset⊆s6Step224EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EntryFv_reserved : s6Step224EntryFvBefore.reserve s6Step224EntryFvFresh.toFinset=some s6Step224EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224EntryFvFresh,arenaWires]
  · norm_num [s6Step224EntryFvBefore,s6Step224EntryFBefore,s6Step224EntryFvFresh,arenaWires]
  · simp only [s6Step224EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step224EntryFv_checked : planRowResizeLog s6Step224EntryFvBefore s6Step224EntryFvRow 127 s6Step224EntryFvFresh=
    some (s6Step224EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩,growRow 776 s6Step224EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step224EntryFvBefore s6Step224EntryFvAfter s6Step224EntryFvRow 127 s6Step224EntryFvFresh
    s6Step224EntryFv_distinct s6Step224EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step224EntryFvRow.payload++s6Step224EntryFvFresh) s6Step224EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step224EntryGAfter : Arena := s6Step224EntryFBefore

private def s6Step224EntryGBefore : Arena := s6Step224EntryFBefore

private theorem s6Step224EntryG_Incoming : rowsOwned s6Step224EntryGBefore [s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow] 1 s6Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224EntryG_Outgoing : rowsOwned s6Step224EntryGvAfter [s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut] :=
  hmrRows_owned_drop s6Step224EntryGvAfter [s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut] 1 s6Step224EntryBank_outgoingOwned

private theorem s6Step224EntryG_distinct : (s6Step224EntryGRow.sign::s6Step224EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224EntryG_owned : (s6Step224EntryGRow.sign::s6Step224EntryGRow.payload).toFinset⊆s6Step224EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EntryG_reserved : s6Step224EntryGBefore.reserve s6Step224EntryGFresh.toFinset=some s6Step224EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224EntryGFresh,arenaWires]
  · norm_num [s6Step224EntryGBefore,s6Step224EntryFBefore,s6Step224EntryGFresh,arenaWires]
  · simp only [s6Step224EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step224EntryG_checked : planRowResizeLog s6Step224EntryGBefore s6Step224EntryGRow 158 s6Step224EntryGFresh=
    some (s6Step224EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],777⟩,growRow 777 s6Step224EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step224EntryGBefore s6Step224EntryGAfter s6Step224EntryGRow 158 s6Step224EntryGFresh
    s6Step224EntryG_distinct s6Step224EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224EntryG_reserved
  have rowEq : WindowRow.mk (s6Step224EntryGRow.payload++s6Step224EntryGFresh) s6Step224EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step224EntryGvBefore : Arena := s6Step224EntryFBefore

private theorem s6Step224EntryGv_Incoming : rowsOwned s6Step224EntryGvBefore [s6Step224EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow] 3 s6Step224EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224EntryGv_Outgoing : rowsOwned s6Step224EntryGvAfter [s6Step224EntryGvOut] :=
  hmrRows_owned_drop s6Step224EntryGvAfter [s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut] 3 s6Step224EntryBank_outgoingOwned

private theorem s6Step224EntryGv_distinct : (s6Step224EntryGvRow.sign::s6Step224EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224EntryGv_owned : (s6Step224EntryGvRow.sign::s6Step224EntryGvRow.payload).toFinset⊆s6Step224EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224EntryGv_reserved : s6Step224EntryGvBefore.reserve s6Step224EntryGvFresh.toFinset=some s6Step224EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224EntryGvFresh,arenaWires]
  · norm_num [s6Step224EntryGvBefore,s6Step224EntryFBefore,s6Step224EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step224EntryGvAfter,s6Step224EntryGvBefore,s6Step224EntryFBefore,s6Step224EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step224EntryGv_checked : planRowResizeLog s6Step224EntryGvBefore s6Step224EntryGvRow 127 s6Step224EntryGvFresh=
    some (s6Step224EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩,growRow 775 s6Step224EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step224EntryGvBefore s6Step224EntryGvAfter s6Step224EntryGvRow 127 s6Step224EntryGvFresh
    s6Step224EntryGv_distinct s6Step224EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step224EntryGvRow.payload++s6Step224EntryGvFresh) s6Step224EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step224EntryBank_rows : planWindowRowsLog s6Step224EntryFBefore [(s6Step224EntryFRow,158),(s6Step224EntryGRow,158),(s6Step224EntryFvRow,127),(s6Step224EntryGvRow,127)] [s6Step224EntryFFresh,s6Step224EntryGFresh,s6Step224EntryFvFresh,s6Step224EntryGvFresh]=
    some (s6Step224EntryGvAfter,[s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut],(growRow 795 s6Step224EntryFFresh ++ (growRow 777 s6Step224EntryGFresh ++ (growRow 776 s6Step224EntryFvFresh ++ (growRow 775 s6Step224EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step224EntryGvAfter [] []=some (s6Step224EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step224EntryGvBefore s6Step224EntryGvAfter s6Step224EntryGvAfter
    s6Step224EntryGvRow s6Step224EntryGvOut 127 s6Step224EntryGvFresh [] [] []
    (growRow 775 s6Step224EntryGvFresh) ([]) s6Step224EntryGv_Incoming s6Step224EntryGv_checked h4 s6Step224EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step224EntryFvBefore s6Step224EntryFvAfter s6Step224EntryGvAfter
    s6Step224EntryFvRow s6Step224EntryFvOut 127 s6Step224EntryFvFresh [(s6Step224EntryGvRow,127)] [s6Step224EntryGvFresh] [s6Step224EntryGvOut]
    (growRow 776 s6Step224EntryFvFresh) ((growRow 775 s6Step224EntryGvFresh ++ [])) s6Step224EntryFv_Incoming s6Step224EntryFv_checked h3 s6Step224EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step224EntryGBefore s6Step224EntryGAfter s6Step224EntryGvAfter
    s6Step224EntryGRow s6Step224EntryGOut 158 s6Step224EntryGFresh [(s6Step224EntryFvRow,127),(s6Step224EntryGvRow,127)] [s6Step224EntryFvFresh,s6Step224EntryGvFresh] [s6Step224EntryFvOut,s6Step224EntryGvOut]
    (growRow 777 s6Step224EntryGFresh) ((growRow 776 s6Step224EntryFvFresh ++ (growRow 775 s6Step224EntryGvFresh ++ []))) s6Step224EntryG_Incoming s6Step224EntryG_checked h2 s6Step224EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step224EntryFBefore s6Step224EntryFAfter s6Step224EntryGvAfter
    s6Step224EntryFRow s6Step224EntryFOut 158 s6Step224EntryFFresh [(s6Step224EntryGRow,158),(s6Step224EntryFvRow,127),(s6Step224EntryGvRow,127)] [s6Step224EntryGFresh,s6Step224EntryFvFresh,s6Step224EntryGvFresh] [s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut]
    (growRow 795 s6Step224EntryFFresh) ((growRow 777 s6Step224EntryGFresh ++ (growRow 776 s6Step224EntryFvFresh ++ (growRow 775 s6Step224EntryGvFresh ++ [])))) s6Step224EntryF_Incoming s6Step224EntryF_checked h1 s6Step224EntryF_Outgoing
  exact h0

private theorem s6Step224EntryBank_checked : compileHmrBankResizeLog .entry s6Step224EntryFBefore ⟨s6Step224EntryFRow,s6Step224EntryGRow,s6Step224EntryFvRow,s6Step224EntryGvRow⟩ ⟨158,158,127,127⟩ [s6Step224EntryFFresh,s6Step224EntryGFresh,s6Step224EntryFvFresh,s6Step224EntryGvFresh]=
    some (s6Step224EntryGvAfter,⟨s6Step224EntryFOut,s6Step224EntryGOut,s6Step224EntryFvOut,s6Step224EntryGvOut⟩,(growRow 795 s6Step224EntryFFresh ++ (growRow 777 s6Step224EntryGFresh ++ (growRow 776 s6Step224EntryFvFresh ++ (growRow 775 s6Step224EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step224EntryBank_rows]
  rfl

private def s6Step224ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224ExitFBefore : Arena := s6Step224ExitGAfter

private def s6Step224ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 856],795⟩

private def s6Step224ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩

private def s6Step224ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 789],777⟩

private def s6Step224ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 828],775⟩

private theorem s6Step224ExitBank_incomingDistinct : ([s6Step224ExitGRow,s6Step224ExitFRow,s6Step224ExitFvRow,s6Step224ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224ExitF_Incoming : rowsOwned s6Step224ExitFBefore [s6Step224ExitFRow,s6Step224ExitFvRow,s6Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224ExitGRow,s6Step224ExitFRow,s6Step224ExitFvRow,s6Step224ExitGvRow] 1 s6Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224ExitFBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224ExitBank_outgoingOwned : rowsOwned s6Step224ExitGvAfter [s6Step224ExitGOut,s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step224ExitGvAfter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224ExitF_Outgoing : rowsOwned s6Step224ExitGvAfter [s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut] :=
  hmrRows_owned_drop s6Step224ExitGvAfter [s6Step224ExitGOut,s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut] 1 s6Step224ExitBank_outgoingOwned

private theorem s6Step224ExitF_distinct : (s6Step224ExitFRow.sign::s6Step224ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224ExitF_owned : (s6Step224ExitFRow.sign::s6Step224ExitFRow.payload).toFinset⊆s6Step224ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224ExitFBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224ExitF_retired : s6Step224ExitFBefore.retireSet s6Step224ExitFExtra.toFinset=s6Step224ExitFAfter := by
  unfold Arena.retireSet s6Step224ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step224ExitFBefore,s6Step224ExitGAfter,s6Step224ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step224ExitF_checked : planRowResizeLog s6Step224ExitFBefore s6Step224ExitFRow 158 []=
    some (s6Step224ExitFAfter,s6Step224ExitFOut,shrinkRow 795 s6Step224ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step224ExitFBefore s6Step224ExitFRow 158 s6Step224ExitF_distinct s6Step224ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step224ExitFRow.payload.take 158) s6Step224ExitFRow.sign=s6Step224ExitFOut := by decide +kernel
  have hi : s6Step224ExitFRow.payload.drop 158=s6Step224ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step224ExitF_retired] at result
  exact result

private def s6Step224ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224ExitFvBefore : Arena := s6Step224ExitFAfter

private theorem s6Step224ExitFv_Incoming : rowsOwned s6Step224ExitFvBefore [s6Step224ExitFvRow,s6Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224ExitGRow,s6Step224ExitFRow,s6Step224ExitFvRow,s6Step224ExitGvRow] 2 s6Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224ExitFvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224ExitFv_Outgoing : rowsOwned s6Step224ExitGvAfter [s6Step224ExitFvOut,s6Step224ExitGvOut] :=
  hmrRows_owned_drop s6Step224ExitGvAfter [s6Step224ExitGOut,s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut] 2 s6Step224ExitBank_outgoingOwned

private theorem s6Step224ExitFv_distinct : (s6Step224ExitFvRow.sign::s6Step224ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224ExitFv_owned : (s6Step224ExitFvRow.sign::s6Step224ExitFvRow.payload).toFinset⊆s6Step224ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224ExitFvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224ExitFv_retired : s6Step224ExitFvBefore.retireSet s6Step224ExitFvExtra.toFinset=s6Step224ExitFvAfter := by
  unfold Arena.retireSet s6Step224ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step224ExitFvBefore,s6Step224ExitFAfter,s6Step224ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step224ExitFv_checked : planRowResizeLog s6Step224ExitFvBefore s6Step224ExitFvRow 127 []=
    some (s6Step224ExitFvAfter,s6Step224ExitFvOut,shrinkRow 776 s6Step224ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step224ExitFvBefore s6Step224ExitFvRow 127 s6Step224ExitFv_distinct s6Step224ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step224ExitFvRow.payload.take 127) s6Step224ExitFvRow.sign=s6Step224ExitFvOut := by decide +kernel
  have hi : s6Step224ExitFvRow.payload.drop 127=s6Step224ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step224ExitFv_retired] at result
  exact result

private def s6Step224ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step224ExitG_Incoming : rowsOwned s6Step224ExitGBefore [s6Step224ExitGRow,s6Step224ExitFRow,s6Step224ExitFvRow,s6Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224ExitGRow,s6Step224ExitFRow,s6Step224ExitFvRow,s6Step224ExitGvRow] 0 s6Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224ExitG_Outgoing : rowsOwned s6Step224ExitGvAfter [s6Step224ExitGOut,s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut] :=
  hmrRows_owned_drop s6Step224ExitGvAfter [s6Step224ExitGOut,s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut] 0 s6Step224ExitBank_outgoingOwned

private theorem s6Step224ExitG_distinct : (s6Step224ExitGRow.sign::s6Step224ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224ExitG_owned : (s6Step224ExitGRow.sign::s6Step224ExitGRow.payload).toFinset⊆s6Step224ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224ExitG_retired : s6Step224ExitGBefore.retireSet s6Step224ExitGExtra.toFinset=s6Step224ExitGAfter := by
  unfold Arena.retireSet s6Step224ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step224ExitGBefore,s6Step224ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step224ExitG_checked : planRowResizeLog s6Step224ExitGBefore s6Step224ExitGRow 157 []=
    some (s6Step224ExitGAfter,s6Step224ExitGOut,shrinkRow 777 s6Step224ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step224ExitGBefore s6Step224ExitGRow 157 s6Step224ExitG_distinct s6Step224ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step224ExitGRow.payload.take 157) s6Step224ExitGRow.sign=s6Step224ExitGOut := by decide +kernel
  have hi : s6Step224ExitGRow.payload.drop 157=s6Step224ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step224ExitG_retired] at result
  exact result

private def s6Step224ExitGvBefore : Arena := s6Step224ExitFvAfter

private theorem s6Step224ExitGv_Incoming : rowsOwned s6Step224ExitGvBefore [s6Step224ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224ExitGRow,s6Step224ExitFRow,s6Step224ExitFvRow,s6Step224ExitGvRow] 3 s6Step224ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224ExitGvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224ExitGv_Outgoing : rowsOwned s6Step224ExitGvAfter [s6Step224ExitGvOut] :=
  hmrRows_owned_drop s6Step224ExitGvAfter [s6Step224ExitGOut,s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut] 3 s6Step224ExitBank_outgoingOwned

private theorem s6Step224ExitGv_distinct : (s6Step224ExitGvRow.sign::s6Step224ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224ExitGv_owned : (s6Step224ExitGvRow.sign::s6Step224ExitGvRow.payload).toFinset⊆s6Step224ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224ExitGvBefore (fun q => (0≤q ∧ q<157) ∨ (158≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224ExitGv_retired : s6Step224ExitGvBefore.retireSet s6Step224ExitGvExtra.toFinset=s6Step224ExitGvAfter := by
  unfold Arena.retireSet s6Step224ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step224ExitGvBefore,s6Step224ExitFvAfter,s6Step224ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step224ExitGv_checked : planRowResizeLog s6Step224ExitGvBefore s6Step224ExitGvRow 127 []=
    some (s6Step224ExitGvAfter,s6Step224ExitGvOut,shrinkRow 775 s6Step224ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step224ExitGvBefore s6Step224ExitGvRow 127 s6Step224ExitGv_distinct s6Step224ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step224ExitGvRow.payload.take 127) s6Step224ExitGvRow.sign=s6Step224ExitGvOut := by decide +kernel
  have hi : s6Step224ExitGvRow.payload.drop 127=s6Step224ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step224ExitGv_retired] at result
  exact result

private theorem s6Step224ExitBank_rows : planWindowRowsLog s6Step224ExitGBefore [(s6Step224ExitGRow,157),(s6Step224ExitFRow,158),(s6Step224ExitFvRow,127),(s6Step224ExitGvRow,127)] [[],[],[],[]]=
    some (s6Step224ExitGvAfter,[s6Step224ExitGOut,s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut],(shrinkRow 777 s6Step224ExitGExtra ++ (shrinkRow 795 s6Step224ExitFExtra ++ (shrinkRow 776 s6Step224ExitFvExtra ++ (shrinkRow 775 s6Step224ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step224ExitGvAfter [] []=some (s6Step224ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step224ExitGvBefore s6Step224ExitGvAfter s6Step224ExitGvAfter
    s6Step224ExitGvRow s6Step224ExitGvOut 127 [] [] [] []
    (shrinkRow 775 s6Step224ExitGvExtra) ([]) s6Step224ExitGv_Incoming s6Step224ExitGv_checked h4 s6Step224ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step224ExitFvBefore s6Step224ExitFvAfter s6Step224ExitGvAfter
    s6Step224ExitFvRow s6Step224ExitFvOut 127 [] [(s6Step224ExitGvRow,127)] [[]] [s6Step224ExitGvOut]
    (shrinkRow 776 s6Step224ExitFvExtra) ((shrinkRow 775 s6Step224ExitGvExtra ++ [])) s6Step224ExitFv_Incoming s6Step224ExitFv_checked h3 s6Step224ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step224ExitFBefore s6Step224ExitFAfter s6Step224ExitGvAfter
    s6Step224ExitFRow s6Step224ExitFOut 158 [] [(s6Step224ExitFvRow,127),(s6Step224ExitGvRow,127)] [[],[]] [s6Step224ExitFvOut,s6Step224ExitGvOut]
    (shrinkRow 795 s6Step224ExitFExtra) ((shrinkRow 776 s6Step224ExitFvExtra ++ (shrinkRow 775 s6Step224ExitGvExtra ++ []))) s6Step224ExitF_Incoming s6Step224ExitF_checked h2 s6Step224ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step224ExitGBefore s6Step224ExitGAfter s6Step224ExitGvAfter
    s6Step224ExitGRow s6Step224ExitGOut 157 [] [(s6Step224ExitFRow,158),(s6Step224ExitFvRow,127),(s6Step224ExitGvRow,127)] [[],[],[]] [s6Step224ExitFOut,s6Step224ExitFvOut,s6Step224ExitGvOut]
    (shrinkRow 777 s6Step224ExitGExtra) ((shrinkRow 795 s6Step224ExitFExtra ++ (shrinkRow 776 s6Step224ExitFvExtra ++ (shrinkRow 775 s6Step224ExitGvExtra ++ [])))) s6Step224ExitG_Incoming s6Step224ExitG_checked h1 s6Step224ExitG_Outgoing
  exact h0

private theorem s6Step224ExitBank_checked : compileHmrBankResizeLog .exit s6Step224ExitGBefore ⟨s6Step224ExitFRow,s6Step224ExitGRow,s6Step224ExitFvRow,s6Step224ExitGvRow⟩ ⟨158,157,127,127⟩ [[],[],[],[]]=
    some (s6Step224ExitGvAfter,⟨s6Step224ExitFOut,s6Step224ExitGOut,s6Step224ExitFvOut,s6Step224ExitGvOut⟩,(shrinkRow 777 s6Step224ExitGExtra ++ (shrinkRow 795 s6Step224ExitFExtra ++ (shrinkRow 776 s6Step224ExitFvExtra ++ (shrinkRow 775 s6Step224ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step224ExitBank_rows]
  rfl

private theorem s6Step224Add0_apart : Disjoint s6Step224Add0Arena.live s6Step224Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step224Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224Add0_card : s6Step224Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step224Add0_borrowed : s6Step224Add0Arena.checkBorrow (hmrHybridCount s6Step224Add0Arena s6Step224Add0B.length) s6Step224Add0Work=some s6Step224Add0During := by
  have len : s6Step224Add0Work.length=hmrHybridCount s6Step224Add0Arena s6Step224Add0B.length := by
    rw [hmrHybridCount,s6Step224Add0_card]
    decide +kernel
  have nd : s6Step224Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step224Add0Arena s6Step224Add0During s6Step224Add0Work.toFinset s6Step224Add0_bounded s6Step224Add0_apart rfl

private theorem s6Step224Add0_distinct : (822::879::825::(s6Step224Add0A++s6Step224Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224Add0_owned : (822::879::825::(s6Step224Add0A++s6Step224Add0B)).toFinset⊆s6Step224Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step224Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224Add0_checked : compileHmrHybridCinLog s6Step224Add0Arena 879 822 825 s6Step224Add0A s6Step224Add0B s6Step224Add0Work=some s6Step224Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step224Add0Arena s6Step224Add0During 879 822 825 s6Step224Add0A s6Step224Add0B s6Step224Add0Work
    (by decide +kernel) (by decide +kernel) s6Step224Add0_distinct
    (fun q hq => s6Step224Add0_owned (List.mem_toFinset.mpr hq)) s6Step224Add0_borrowed

private theorem s6Step224Add1_apart : Disjoint s6Step224Add1Arena.live s6Step224Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step224Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224Add1_card : s6Step224Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step224Add1_borrowed : s6Step224Add1Arena.checkBorrow (hmrHybridCount s6Step224Add1Arena s6Step224Add1B.length) s6Step224Add1Work=some s6Step224Add1During := by
  have len : s6Step224Add1Work.length=hmrHybridCount s6Step224Add1Arena s6Step224Add1B.length := by
    rw [hmrHybridCount,s6Step224Add1_card]
    decide +kernel
  have nd : s6Step224Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step224Add1Arena s6Step224Add1During s6Step224Add1Work.toFinset s6Step224Add1_bounded s6Step224Add1_apart rfl

private theorem s6Step224Add1_distinct : (822::879::825::(s6Step224Add1A++s6Step224Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224Add1_owned : (822::879::825::(s6Step224Add1A++s6Step224Add1B)).toFinset⊆s6Step224Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step224Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224Add1_checked : compileHmrHybridCinLog s6Step224Add1Arena 879 822 825 s6Step224Add1A s6Step224Add1B s6Step224Add1Work=some s6Step224Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step224Add1Arena s6Step224Add1During 879 822 825 s6Step224Add1A s6Step224Add1B s6Step224Add1Work
    (by decide +kernel) (by decide +kernel) s6Step224Add1_distinct
    (fun q hq => s6Step224Add1_owned (List.mem_toFinset.mpr hq)) s6Step224Add1_borrowed

private theorem s6Step224F4_apart : Disjoint (s6Step224Add0A++s6Step224Add0B).toFinset (s6Step224Add1A++s6Step224Add1B).toFinset := by
  have nd : ((s6Step224Add0A++s6Step224Add0B)++(s6Step224Add1A++s6Step224Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step224F4_carry : s6Step224F4FlagArena.checkBorrow 1 [825]=some s6Step224Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step224F4FlagArena,s6Step224HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step224F4FlagArena,s6Step224HeadFvAfter,s6Step224Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step224F4_distinct : (908::879::822::825::((s6Step224Add0A++s6Step224Add1A)++(s6Step224Add0B++s6Step224Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224F4_flag : s6Step224HeadFvAfter.checkBorrow 1 [822]=some s6Step224F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step224HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step224F4_owned : (908::879::((s6Step224Add0A++s6Step224Add1A)++(s6Step224Add0B++s6Step224Add1B))).toFinset⊆s6Step224HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step224HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224F4_checked : compileHmrHybridF4Log s6Step224HeadFvAfter 908 879 s6Step224Add0A s6Step224Add0B s6Step224Add1A s6Step224Add1B [822] [825] s6Step224Add0Work s6Step224Add1Work=some s6Step224F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step224HeadFvAfter s6Step224F4FlagArena s6Step224Add0Arena s6Step224Add0During s6Step224Add1During 908 879
    s6Step224Add0A s6Step224Add0B s6Step224Add1A s6Step224Add1B [822] [825] s6Step224Add0Work s6Step224Add1Work
    (fun q hq => s6Step224F4_owned (List.mem_toFinset.mpr hq)) s6Step224F4_flag s6Step224F4_carry
    s6Step224F4_distinct s6Step224F4_apart s6Step224Add0_checked s6Step224Add1_checked

private theorem s6Step224Front_branch : s6Step224FrontSigmaArena.checkBorrow 1 [879]=some s6Step224HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step224FrontSigmaArena,s6Step224EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step224FrontSigmaArena,s6Step224EntryGvAfter,s6Step224HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step224Front_entry : HmrFrontEntryValid s6Step224EntryFBefore s6Step224FrontBank 158 127 ⟨158,157,127,127⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step224FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step224EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step224EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step224FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step224Front_sigma : s6Step224EntryGvAfter.checkBorrow 1 [908]=some s6Step224FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step224EntryGvAfter,arenaWires]
  · rfl

private def s6Step224HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224HeadFBefore : Arena := s6Step224HeadGAfter

private def s6Step224HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413],795⟩

private def s6Step224HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873],776⟩

private def s6Step224HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],777⟩

private def s6Step224HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887],775⟩

private theorem s6Step224HeadBank_incomingDistinct : ([s6Step224HeadGRow,s6Step224HeadFRow,s6Step224HeadGvRow,s6Step224HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224HeadF_Incoming : rowsOwned s6Step224HeadFBefore [s6Step224HeadFRow,s6Step224HeadGvRow,s6Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224HeadGRow,s6Step224HeadFRow,s6Step224HeadGvRow,s6Step224HeadFvRow] 1 s6Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224HeadBank_outgoingOwned : rowsOwned s6Step224HeadFvAfter [s6Step224HeadGOut,s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step224HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224HeadF_Outgoing : rowsOwned s6Step224HeadFvAfter [s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut] :=
  hmrRows_owned_drop s6Step224HeadFvAfter [s6Step224HeadGOut,s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut] 1 s6Step224HeadBank_outgoingOwned

private theorem s6Step224HeadF_distinct : (s6Step224HeadFRow.sign::s6Step224HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224HeadF_owned : (s6Step224HeadFRow.sign::s6Step224HeadFRow.payload).toFinset⊆s6Step224HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224HeadF_reserved : s6Step224HeadFBefore.reserve s6Step224HeadFFresh.toFinset=some s6Step224HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224HeadFFresh,arenaWires]
  · norm_num [s6Step224HeadFBefore,s6Step224HeadGAfter,s6Step224HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step224HeadFAfter,s6Step224HeadFBefore,s6Step224HeadGAfter,s6Step224HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step224HeadF_checked : planRowResizeLog s6Step224HeadFBefore s6Step224HeadFRow 159 s6Step224HeadFFresh=
    some (s6Step224HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 856],795⟩,growRow 795 s6Step224HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step224HeadFBefore s6Step224HeadFAfter s6Step224HeadFRow 159 s6Step224HeadFFresh
    s6Step224HeadF_distinct s6Step224HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224HeadF_reserved
  have rowEq : WindowRow.mk (s6Step224HeadFRow.payload++s6Step224HeadFFresh) s6Step224HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 856],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step224HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step224HeadFvBefore : Arena := s6Step224HeadGvAfter

private theorem s6Step224HeadFv_Incoming : rowsOwned s6Step224HeadFvBefore [s6Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224HeadGRow,s6Step224HeadFRow,s6Step224HeadGvRow,s6Step224HeadFvRow] 3 s6Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224HeadFv_Outgoing : rowsOwned s6Step224HeadFvAfter [s6Step224HeadFvOut] :=
  hmrRows_owned_drop s6Step224HeadFvAfter [s6Step224HeadGOut,s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut] 3 s6Step224HeadBank_outgoingOwned

private theorem s6Step224HeadFv_distinct : (s6Step224HeadFvRow.sign::s6Step224HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224HeadFv_owned : (s6Step224HeadFvRow.sign::s6Step224HeadFvRow.payload).toFinset⊆s6Step224HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224HeadFv_reserved : s6Step224HeadFvBefore.reserve s6Step224HeadFvFresh.toFinset=some s6Step224HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224HeadFvFresh,arenaWires]
  · norm_num [s6Step224HeadFvBefore,s6Step224HeadGvAfter,s6Step224HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step224HeadFvAfter,s6Step224HeadFvBefore,s6Step224HeadGvAfter,s6Step224HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step224HeadFv_checked : planRowResizeLog s6Step224HeadFvBefore s6Step224HeadFvRow 128 s6Step224HeadFvFresh=
    some (s6Step224HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩,growRow 776 s6Step224HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step224HeadFvBefore s6Step224HeadFvAfter s6Step224HeadFvRow 128 s6Step224HeadFvFresh
    s6Step224HeadFv_distinct s6Step224HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step224HeadFvRow.payload++s6Step224HeadFvFresh) s6Step224HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step224HeadG_Incoming : rowsOwned s6Step224HeadGBefore [s6Step224HeadGRow,s6Step224HeadFRow,s6Step224HeadGvRow,s6Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224HeadGRow,s6Step224HeadFRow,s6Step224HeadGvRow,s6Step224HeadFvRow] 0 s6Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224HeadG_Outgoing : rowsOwned s6Step224HeadFvAfter [s6Step224HeadGOut,s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut] :=
  hmrRows_owned_drop s6Step224HeadFvAfter [s6Step224HeadGOut,s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut] 0 s6Step224HeadBank_outgoingOwned

private theorem s6Step224HeadG_distinct : (s6Step224HeadGRow.sign::s6Step224HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224HeadG_owned : (s6Step224HeadGRow.sign::s6Step224HeadGRow.payload).toFinset⊆s6Step224HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224HeadG_reserved : s6Step224HeadGBefore.reserve s6Step224HeadGFresh.toFinset=some s6Step224HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224HeadGFresh,arenaWires]
  · norm_num [s6Step224HeadGBefore,s6Step224HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step224HeadGAfter,s6Step224HeadGBefore,s6Step224HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step224HeadG_checked : planRowResizeLog s6Step224HeadGBefore s6Step224HeadGRow 159 s6Step224HeadGFresh=
    some (s6Step224HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 789],777⟩,growRow 777 s6Step224HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step224HeadGBefore s6Step224HeadGAfter s6Step224HeadGRow 159 s6Step224HeadGFresh
    s6Step224HeadG_distinct s6Step224HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224HeadG_reserved
  have rowEq : WindowRow.mk (s6Step224HeadGRow.payload++s6Step224HeadGFresh) s6Step224HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 789],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step224HeadGvBefore : Arena := s6Step224HeadFAfter

private theorem s6Step224HeadGv_Incoming : rowsOwned s6Step224HeadGvBefore [s6Step224HeadGvRow,s6Step224HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step224HeadGRow,s6Step224HeadFRow,s6Step224HeadGvRow,s6Step224HeadFvRow] 2 s6Step224HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step224HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step224HeadGv_Outgoing : rowsOwned s6Step224HeadFvAfter [s6Step224HeadGvOut,s6Step224HeadFvOut] :=
  hmrRows_owned_drop s6Step224HeadFvAfter [s6Step224HeadGOut,s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut] 2 s6Step224HeadBank_outgoingOwned

private theorem s6Step224HeadGv_distinct : (s6Step224HeadGvRow.sign::s6Step224HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step224HeadGv_owned : (s6Step224HeadGvRow.sign::s6Step224HeadGvRow.payload).toFinset⊆s6Step224HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step224HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step224HeadGv_reserved : s6Step224HeadGvBefore.reserve s6Step224HeadGvFresh.toFinset=some s6Step224HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step224HeadGvFresh,arenaWires]
  · norm_num [s6Step224HeadGvBefore,s6Step224HeadFAfter,s6Step224HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step224HeadGvAfter,s6Step224HeadGvBefore,s6Step224HeadFAfter,s6Step224HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step224HeadGv_checked : planRowResizeLog s6Step224HeadGvBefore s6Step224HeadGvRow 128 s6Step224HeadGvFresh=
    some (s6Step224HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 828],775⟩,growRow 775 s6Step224HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step224HeadGvBefore s6Step224HeadGvAfter s6Step224HeadGvRow 128 s6Step224HeadGvFresh
    s6Step224HeadGv_distinct s6Step224HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step224HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step224HeadGvRow.payload++s6Step224HeadGvFresh) s6Step224HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 828],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step224HeadBank_rows : planWindowRowsLog s6Step224HeadGBefore [(s6Step224HeadGRow,159),(s6Step224HeadFRow,159),(s6Step224HeadGvRow,128),(s6Step224HeadFvRow,128)] [s6Step224HeadGFresh,s6Step224HeadFFresh,s6Step224HeadGvFresh,s6Step224HeadFvFresh]=
    some (s6Step224HeadFvAfter,[s6Step224HeadGOut,s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut],(growRow 777 s6Step224HeadGFresh ++ (growRow 795 s6Step224HeadFFresh ++ (growRow 775 s6Step224HeadGvFresh ++ (growRow 776 s6Step224HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step224HeadFvAfter [] []=some (s6Step224HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step224HeadFvBefore s6Step224HeadFvAfter s6Step224HeadFvAfter
    s6Step224HeadFvRow s6Step224HeadFvOut 128 s6Step224HeadFvFresh [] [] []
    (growRow 776 s6Step224HeadFvFresh) ([]) s6Step224HeadFv_Incoming s6Step224HeadFv_checked h4 s6Step224HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step224HeadGvBefore s6Step224HeadGvAfter s6Step224HeadFvAfter
    s6Step224HeadGvRow s6Step224HeadGvOut 128 s6Step224HeadGvFresh [(s6Step224HeadFvRow,128)] [s6Step224HeadFvFresh] [s6Step224HeadFvOut]
    (growRow 775 s6Step224HeadGvFresh) ((growRow 776 s6Step224HeadFvFresh ++ [])) s6Step224HeadGv_Incoming s6Step224HeadGv_checked h3 s6Step224HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step224HeadFBefore s6Step224HeadFAfter s6Step224HeadFvAfter
    s6Step224HeadFRow s6Step224HeadFOut 159 s6Step224HeadFFresh [(s6Step224HeadGvRow,128),(s6Step224HeadFvRow,128)] [s6Step224HeadGvFresh,s6Step224HeadFvFresh] [s6Step224HeadGvOut,s6Step224HeadFvOut]
    (growRow 795 s6Step224HeadFFresh) ((growRow 775 s6Step224HeadGvFresh ++ (growRow 776 s6Step224HeadFvFresh ++ []))) s6Step224HeadF_Incoming s6Step224HeadF_checked h2 s6Step224HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step224HeadGBefore s6Step224HeadGAfter s6Step224HeadFvAfter
    s6Step224HeadGRow s6Step224HeadGOut 159 s6Step224HeadGFresh [(s6Step224HeadFRow,159),(s6Step224HeadGvRow,128),(s6Step224HeadFvRow,128)] [s6Step224HeadFFresh,s6Step224HeadGvFresh,s6Step224HeadFvFresh] [s6Step224HeadFOut,s6Step224HeadGvOut,s6Step224HeadFvOut]
    (growRow 777 s6Step224HeadGFresh) ((growRow 795 s6Step224HeadFFresh ++ (growRow 775 s6Step224HeadGvFresh ++ (growRow 776 s6Step224HeadFvFresh ++ [])))) s6Step224HeadG_Incoming s6Step224HeadG_checked h1 s6Step224HeadG_Outgoing
  exact h0

private theorem s6Step224HeadBank_checked : compileHmrBankResizeLog .headroom s6Step224HeadGBefore ⟨s6Step224HeadFRow,s6Step224HeadGRow,s6Step224HeadFvRow,s6Step224HeadGvRow⟩ ⟨159,159,128,128⟩ [s6Step224HeadGFresh,s6Step224HeadFFresh,s6Step224HeadGvFresh,s6Step224HeadFvFresh]=
    some (s6Step224HeadFvAfter,⟨s6Step224HeadFOut,s6Step224HeadGOut,s6Step224HeadFvOut,s6Step224HeadGvOut⟩,(growRow 777 s6Step224HeadGFresh ++ (growRow 795 s6Step224HeadFFresh ++ (growRow 775 s6Step224HeadGvFresh ++ (growRow 776 s6Step224HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step224HeadBank_rows]
  rfl

private theorem s6Step224Front_checked : compileHmrSourceFrontLog s6Step224EntryFBefore s6Step224FrontBank 158 127 ⟨158,157,127,127⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step224FrontLog=some s6Step224FrontPlan := by
  have pairEq : s6Step224FrontPair=⟨s6Step224HeadFRow,s6Step224HeadGRow,s6Step224HeadFvRow,s6Step224HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step224FrontHead=⟨s6Step224ExitFRow,s6Step224ExitGRow,s6Step224ExitFvRow,s6Step224ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step224Add0A=s6Step224FrontHead.f.wires := by decide +kernel
  have gEq : s6Step224Add0B=s6Step224FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step224Add1A=s6Step224FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step224Add1B=s6Step224FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step224EntryFBefore s6Step224FrontBank 158 127 ⟨158,157,127,127⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step224FrontLog s6Step224FrontPlan
  · exact s6Step224Front_entry
  · exact s6Step224EntryBank_checked
  · exact s6Step224Front_sigma
  · rfl
  · exact s6Step224Front_branch
  · rfl
  · simpa only [s6Step224FrontPlan,pairEq] using s6Step224HeadBank_checked
  · simpa only [s6Step224FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step224F4_checked
  · exact s6Step224Counter_checked
  · rfl
  · simpa only [s6Step224FrontPlan,headEq] using s6Step224ExitBank_checked

private theorem s6Step224Complete_explicit_checked : compileHmrEarlyStepLog s6Step224EntryFBefore s6Step224FrontBank 158 127 ⟨158,157,127,127⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step224CompleteLog=some s6Step224CompletePlan := by
  let Q := s6Step224EarlyControlPlan
  have hq := s6Step224EarlyControl_plan_checked
  have fv1 : s6Step224CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step224CompleteOut.fv.payload[2]?.getD s6Step224CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step224CompleteOut.fv.payload[3]?.getD s6Step224CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step224CompleteOut.fv.payload[4]?.getD s6Step224CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step224EntryFBefore s6Step224EarlyControlArena s6Step224FrontBank 158 127 ⟨158,157,127,127⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step224CompleteLog s6Step224FrontPlan Q
    s6Step224Front_checked s6Step224Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step224Complete_owned s6Step224Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step224EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 908 s6Step224CompleteOut.fv.second (s6Step224CompleteOut.fv.payload[2]?.getD s6Step224CompleteOut.fv.sign) (s6Step224CompleteOut.fv.payload[3]?.getD s6Step224CompleteOut.fv.sign) (s6Step224CompleteOut.fv.payload[4]?.getD s6Step224CompleteOut.fv.sign) 879 47 s6Step224EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep224Arena : Arena := s6Step224EntryFBefore
def s6PrivateStep224Bank : WindowBank := s6Step224FrontBank
def s6PrivateStep224Spec : HmrSourceWalkStepLog := ⟨158,127,⟨158,157,127,127⟩,47,.early s6Step224CompleteLog⟩
def s6PrivateStep224Plan : HmrSourceStepPlan := .early s6Step224CompletePlan
theorem s6PrivateStep224_source : s6PrivateStep224Spec=s6ObservedLogs224[0] := rfl
theorem s6PrivateStep224_checked : compileHmrSourceStepLog s6PrivateStep224Arena s6PrivateStep224Bank
    s6PrivateStep224Spec.fgWidth s6PrivateStep224Spec.vWidth s6PrivateStep224Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 224 s6PrivateStep224Spec.need none s6PrivateStep224Spec.log=some s6PrivateStep224Plan := by
  change compileHmrSourceStepLog s6Step224EntryFBefore s6Step224FrontBank 158 127 ⟨158,157,127,127⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 224 47 none (.early s6Step224CompleteLog)=some (.early s6Step224CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 224<498)]
  rw [s6Step224Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
