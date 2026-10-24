import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep193
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

private def s6Step195CompleteMoves : List (Wire × Wire) := []

private def s6Step195EarlyControlLog : HmrEarlyControlLog := ⟨[838, 880, 822, 833, 869],[853],[907],[891, 903, 791, 825, 810, 809],[897]⟩

private def s6Step195FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [833], [], [838]],[[869], [822], [880], [843]],[[], [], [], []]⟩,[850],[854],[853],[907],[891, 903, 791, 825, 810, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903]⟩

private def s6Step195CompleteLog : HmrEarlyStepLog := ⟨s6Step195FrontLog,s6Step195CompleteMoves,s6Step195EarlyControlLog⟩

private def s6Step195ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step195ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩

private def s6Step195ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170],777⟩

private def s6Step195ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private def s6Step195FrontOut : WindowBank := ⟨s6Step195ExitFOut,s6Step195ExitGOut,s6Step195ExitFvOut,s6Step195ExitGvOut⟩

private def s6Step195CompleteOut : WindowBank := s6Step195FrontOut.repacked s6Step195CompleteMoves

private def s6Step195EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step195EarlyControlPositiveArena,[853],s6Step195EarlyControlEqualityArena,[907],⟨⟨850,false⟩,[⟨⟨853,false⟩,907⟩]⟩⟩

private def s6Step195EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,838⟩,⟨⟨772,false⟩,880⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,869⟩]⟩

private def s6Step195EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step195EarlyControlZeroArena,s6Step195EarlyControlZeroPlan,s6Step195EarlyControlClassPlan,s6Step195EarlyControlFlagArena,s6Step195EarlyControlFittedArena,s6Step195EarlyControlHistoryArena,s6Step195EarlyControlSigmaArena,s6Step195EarlyControlOutputArena,s6Step195EarlyControlLog⟩

private def s6Step195CounterWork : List Wire := [853, 907, 891, 903]

private theorem s6Step195Counter_bounded : s6Step195CounterWork.toFinset⊆arenaWires := by norm_num [s6Step195CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step195HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195CounterDuring : Arena := ⟨s6Step195HeadFvAfter.live∪s6Step195CounterWork.toFinset,Finset.union_subset s6Step195HeadFvAfter.bounded s6Step195Counter_bounded⟩

private def s6Step195EntryFFresh : List Wire := []

private def s6Step195EntryFvFresh : List Wire := []

private def s6Step195EntryGFresh : List Wire := [833]

private def s6Step195EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EntryGvFresh : List Wire := [838]

private def s6Step195ExitFExtra : List Wire := [822]

private def s6Step195ExitGExtra : List Wire := [833, 869]

private def s6Step195ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195ExitGvExtra : List Wire := [838, 880]

private def s6Step195Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195Add0Work : List Wire := [891, 903, 791, 825, 810, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step195Add0_bounded : s6Step195Add0Work.toFinset⊆arenaWires := by
  have h : s6Step195Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step195Add0During : Arena := ⟨s6Step195Add0Arena.live∪s6Step195Add0Work.toFinset,Finset.union_subset s6Step195Add0Arena.bounded s6Step195Add0_bounded⟩

private def s6Step195Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195Add1Work : List Wire := [891, 903, 791, 825, 810, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step195Add1_bounded : s6Step195Add1Work.toFinset⊆arenaWires := by
  have h : s6Step195Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step195Add1During : Arena := ⟨s6Step195Add1Arena.live∪s6Step195Add1Work.toFinset,Finset.union_subset s6Step195Add1Arena.bounded s6Step195Add1_bounded⟩

private def s6Step195F4FlagArena : Arena := ⟨s6Step195HeadFvAfter.live∪{853},Finset.union_subset s6Step195HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step195F4Plan : HmrHybridF4Plan := ⟨s6Step195F4FlagArena,[853],s6Step195Add0Arena,[907],s6Step195Add0During,s6Step195Add0Work,s6Step195Add1During,s6Step195Add1Work⟩

private def s6Step195HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 822],795⟩

private def s6Step195HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩

private def s6Step195HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833, 869],777⟩

private def s6Step195HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838, 880],775⟩

private def s6Step195FrontHead : WindowBank := ⟨s6Step195HeadFOut,s6Step195HeadGOut,s6Step195HeadFvOut,s6Step195HeadGvOut⟩

private def s6Step195EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step195EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step195EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833],777⟩

private def s6Step195EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838],775⟩

private def s6Step195FrontPair : WindowBank := ⟨s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut⟩

private def s6Step195FrontSigmaArena : Arena := ⟨s6Step195EntryGvAfter.live∪{850},Finset.union_subset s6Step195EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step195HeadFFresh : List Wire := [822]

private def s6Step195HeadFvFresh : List Wire := [843]

private def s6Step195HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195HeadGFresh : List Wire := [869]

private def s6Step195HeadGvFresh : List Wire := [880]

private def s6Step195FrontPlan : HmrSourceFront := ⟨s6Step195EntryGvAfter,s6Step195FrontPair,(growRow 795 s6Step195EntryFFresh ++ (growRow 777 s6Step195EntryGFresh ++ (growRow 776 s6Step195EntryFvFresh ++ (growRow 775 s6Step195EntryGvFresh ++ [])))),s6Step195FrontSigmaArena,[850],s6Step195HeadGBefore,[854],
  s6Step195HeadFvAfter,s6Step195FrontHead,(growRow 777 s6Step195HeadGFresh ++ (growRow 795 s6Step195HeadFFresh ++ (growRow 775 s6Step195HeadGvFresh ++ (growRow 776 s6Step195HeadFvFresh ++ [])))),s6Step195F4Plan,s6Step195CounterDuring,s6Step195CounterWork,s6Step195ExitGvAfter,s6Step195FrontOut,(shrinkRow 777 s6Step195ExitGExtra ++ (shrinkRow 795 s6Step195ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step195ExitGvExtra ++ []))))⟩

private def s6Step195CompletePlan : HmrEarlyStepPlan := ⟨s6Step195FrontPlan,s6Step195EarlyControlArena,s6Step195EarlyControlPlan,s6Step195CompleteMoves⟩

private theorem s6Step195Complete_apart : List.Disjoint (s6Step195CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [850, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] := by
  have nd : ((s6Step195CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[850, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step195Complete_owned : (s6Step195CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195Complete_repack : s6Step195ExitGvAfter.checkRepack s6Step195CompleteMoves=some s6Step195EarlyControlArena := by rfl

private theorem s6Step195EarlyControl_branchOwned : ([854] : List Wire).toFinset⊆s6Step195EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_branch : compileHmrBranchRetirement s6Step195EarlyControlSigmaArena 854=some s6Step195EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step195EarlyControl_branchOwned
  · ext q
    simp [s6Step195EarlyControlOutputArena,s6Step195EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step195EarlyControl_classEqualityBorrow : s6Step195EarlyControlPositiveArena.checkBorrow (([850, 853] : List Wire).length-1) s6Step195EarlyControlLog.classWork=some s6Step195EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step195EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step195EarlyControlEqualityArena,s6Step195EarlyControlPositiveArena,s6Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step195EarlyControl_classEqualityOwned : ([850, 853] : List Wire).toFinset⊆s6Step195EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_classEquality : compileHmrEqualityLog s6Step195EarlyControlPositiveArena [850, 853] 0 s6Step195EarlyControlLog.classWork=some (s6Step195EarlyControlEqualityArena,s6Step195EarlyControlLog.classWork,s6Step195EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step195EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step195EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step195EarlyControl_classOwned : ([769, 869, 850] : List Wire).toFinset⊆s6Step195EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_positiveBorrow : s6Step195EarlyControlZeroArena.checkBorrow (1) s6Step195EarlyControlLog.positiveWork=some s6Step195EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step195EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step195EarlyControlPositiveArena,s6Step195EarlyControlZeroArena,s6Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step195EarlyControl_class : compileHmrSourceClassLog s6Step195EarlyControlZeroArena false 769 s6Step195EarlyControlZeroPlan.top 0 850 s6Step195EarlyControlLog.positiveWork s6Step195EarlyControlLog.classWork=some s6Step195EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step195EarlyControlClassPlan s6Step195EarlyControlZeroArena false 769 s6Step195EarlyControlZeroPlan.top 0 850
  constructor
  · decide +kernel
  · exact s6Step195EarlyControl_classOwned
  · exact s6Step195EarlyControl_positiveBorrow
  · exact s6Step195EarlyControl_classEquality

private theorem s6Step195EarlyControl_entryRecordOwned : ([854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] : List Wire).toFinset⊆s6Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_entrySigmaOwned : ([850, 254] : List Wire).toFinset⊆s6Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_fitBorrow : s6Step195EarlyControlFlagArena.checkBorrow ((45-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] : List Wire).length)) s6Step195EarlyControlLog.recordFresh=some s6Step195EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step195EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step195EarlyControlFittedArena,s6Step195EarlyControlFlagArena,s6Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step195EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] : List Wire).toFinset⊆s6Step195EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_fit : compileHmrRecordGrowLog s6Step195EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 45 s6Step195EarlyControlLog.recordFresh=some s6Step195EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step195EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step195EarlyControl_fitBorrow

private theorem s6Step195EarlyControl_flagsBorrow : s6Step195EarlyControlEqualityArena.checkBorrow (6) s6Step195EarlyControlLog.flagWork=some s6Step195EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step195EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step195EarlyControlFlagArena,s6Step195EarlyControlEqualityArena,s6Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step195EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s6Step195EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_flags : compileHmrFlagsLog s6Step195EarlyControlClassPlan.equalityArena s6Step195EarlyControlClassPlan.equality.top 253 252 251 s6Step195EarlyControlLog.flagWork=some s6Step195EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step195EarlyControl_flagsOwned⟩
  · exact s6Step195EarlyControl_flagsBorrow

private theorem s6Step195EarlyControl_historyBorrow : s6Step195EarlyControlArena.checkBorrow ((45-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] : List Wire).length)) s6Step195EarlyControlLog.recordFresh=some s6Step195EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step195EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step195EarlyControlHistoryArena,s6Step195EarlyControlArena,s6Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step195EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] : List Wire).toFinset⊆s6Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_history : compileHmrRecordGrowLog s6Step195EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 45 s6Step195EarlyControlLog.recordFresh=some s6Step195EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step195EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step195EarlyControl_historyBorrow

private theorem s6Step195EarlyControl_sigmaOwned : ([254, 850] : List Wire).toFinset⊆s6Step195EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_sigmaReleaseOwned : ([850] : List Wire).toFinset⊆s6Step195EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_sigmaRelease : s6Step195EarlyControlHistoryArena.release {850} (fun _ => false)=some s6Step195EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step195EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step195EarlyControlSigmaArena,s6Step195EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step195EarlyControl_sigma : compileHmrSigmaDropLog s6Step195EarlyControlHistoryArena false 0 0 254 850 []=some s6Step195EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step195EarlyControl_sigmaOwned⟩
  · exact s6Step195EarlyControl_sigmaRelease

private theorem s6Step195EarlyControl_zeroBorrow : s6Step195EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step195EarlyControlLog.zeroWork=some s6Step195EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step195EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step195EarlyControlZeroArena,s6Step195EarlyControlArena,s6Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step195EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step195EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EarlyControl_zero : compileHmrEqualityLog s6Step195EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step195EarlyControlLog.zeroWork=some (s6Step195EarlyControlZeroArena,s6Step195EarlyControlLog.zeroWork,s6Step195EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step195EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step195EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step195EarlyControl_logged : s6Step195EarlyControlPlan.Logged s6Step195EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 769 850 254 253 252 251 854 45 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step195EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step195EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step195EarlyControl_zero
  · exact s6Step195EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step195EarlyControl_flags
  · exact s6Step195EarlyControl_fit
  · exact s6Step195EarlyControl_history
  · exact s6Step195EarlyControl_sigma
  · exact s6Step195EarlyControl_branch

private theorem s6Step195EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step195EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 769 850 254 253 252 251 854 45 s6Step195EarlyControlLog=some s6Step195EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step195EarlyControlPlan s6Step195EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 769 850 254 253 252 251 854 45 s6Step195EarlyControl_logged

private def s6Step195EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step195EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step195EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170],777⟩

private def s6Step195EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private def s6Step195FrontBank : WindowBank := ⟨s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow⟩

private def s6Step195Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 822, 795]

private def s6Step195Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833, 869, 777]

private def s6Step195Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 776]

private def s6Step195Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838, 880, 775]

private theorem s6Step195Counter_apart : Disjoint s6Step195HeadFvAfter.live s6Step195CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step195HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195Counter_borrowed : s6Step195HeadFvAfter.checkBorrow 4 s6Step195CounterWork=some s6Step195CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step195HeadFvAfter s6Step195CounterDuring s6Step195CounterWork.toFinset s6Step195Counter_bounded s6Step195Counter_apart rfl

private theorem s6Step195Counter_owned : (850::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step195HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step195HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195Counter_checked : compileHmrCounterStepLog s6Step195HeadFvAfter true 850 [774, 773, 772, 771, 770, 769] s6Step195CounterWork=some s6Step195CounterDuring := by
  have owned : ∀q∈850::[774, 773, 772, 771, 770, 769],q∈s6Step195HeadFvAfter.live := fun q hq => s6Step195Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step195Counter_borrowed

private def s6Step195EntryFAfter : Arena := s6Step195EntryFBefore

private theorem s6Step195EntryBank_incomingDistinct : ([s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195EntryF_Incoming : rowsOwned s6Step195EntryFBefore [s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow] 0 s6Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195EntryBank_outgoingOwned : rowsOwned s6Step195EntryGvAfter [s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step195EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195EntryF_Outgoing : rowsOwned s6Step195EntryGvAfter [s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut] :=
  hmrRows_owned_drop s6Step195EntryGvAfter [s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut] 0 s6Step195EntryBank_outgoingOwned

private theorem s6Step195EntryF_distinct : (s6Step195EntryFRow.sign::s6Step195EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195EntryF_owned : (s6Step195EntryFRow.sign::s6Step195EntryFRow.payload).toFinset⊆s6Step195EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EntryF_reserved : s6Step195EntryFBefore.reserve s6Step195EntryFFresh.toFinset=some s6Step195EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195EntryFFresh,arenaWires]
  · norm_num [s6Step195EntryFBefore,s6Step195EntryFFresh,arenaWires]
  · simp only [s6Step195EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step195EntryF_checked : planRowResizeLog s6Step195EntryFBefore s6Step195EntryFRow 172 s6Step195EntryFFresh=
    some (s6Step195EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩,growRow 795 s6Step195EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step195EntryFBefore s6Step195EntryFAfter s6Step195EntryFRow 172 s6Step195EntryFFresh
    s6Step195EntryF_distinct s6Step195EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195EntryF_reserved
  have rowEq : WindowRow.mk (s6Step195EntryFRow.payload++s6Step195EntryFFresh) s6Step195EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step195EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step195EntryFvAfter : Arena := s6Step195EntryGAfter

private def s6Step195EntryFvBefore : Arena := s6Step195EntryGAfter

private theorem s6Step195EntryFv_Incoming : rowsOwned s6Step195EntryFvBefore [s6Step195EntryFvRow,s6Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow] 2 s6Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step195EntryFv_Outgoing : rowsOwned s6Step195EntryGvAfter [s6Step195EntryFvOut,s6Step195EntryGvOut] :=
  hmrRows_owned_drop s6Step195EntryGvAfter [s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut] 2 s6Step195EntryBank_outgoingOwned

private theorem s6Step195EntryFv_distinct : (s6Step195EntryFvRow.sign::s6Step195EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195EntryFv_owned : (s6Step195EntryFvRow.sign::s6Step195EntryFvRow.payload).toFinset⊆s6Step195EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step195EntryFv_reserved : s6Step195EntryFvBefore.reserve s6Step195EntryFvFresh.toFinset=some s6Step195EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195EntryFvFresh,arenaWires]
  · norm_num [s6Step195EntryFvBefore,s6Step195EntryGAfter,s6Step195EntryFvFresh,arenaWires]
  · simp only [s6Step195EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step195EntryFv_checked : planRowResizeLog s6Step195EntryFvBefore s6Step195EntryFvRow 112 s6Step195EntryFvFresh=
    some (s6Step195EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩,growRow 776 s6Step195EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step195EntryFvBefore s6Step195EntryFvAfter s6Step195EntryFvRow 112 s6Step195EntryFvFresh
    s6Step195EntryFv_distinct s6Step195EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step195EntryFvRow.payload++s6Step195EntryFvFresh) s6Step195EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step195EntryGBefore : Arena := s6Step195EntryFBefore

private theorem s6Step195EntryG_Incoming : rowsOwned s6Step195EntryGBefore [s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow] 1 s6Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195EntryG_Outgoing : rowsOwned s6Step195EntryGvAfter [s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut] :=
  hmrRows_owned_drop s6Step195EntryGvAfter [s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut] 1 s6Step195EntryBank_outgoingOwned

private theorem s6Step195EntryG_distinct : (s6Step195EntryGRow.sign::s6Step195EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195EntryG_owned : (s6Step195EntryGRow.sign::s6Step195EntryGRow.payload).toFinset⊆s6Step195EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195EntryG_reserved : s6Step195EntryGBefore.reserve s6Step195EntryGFresh.toFinset=some s6Step195EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195EntryGFresh,arenaWires]
  · norm_num [s6Step195EntryGBefore,s6Step195EntryFBefore,s6Step195EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step195EntryGBefore s6Step195EntryGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step195EntryGFresh rfl rfl
    · norm_num [s6Step195EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step195EntryG_checked : planRowResizeLog s6Step195EntryGBefore s6Step195EntryGRow 172 s6Step195EntryGFresh=
    some (s6Step195EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833],777⟩,growRow 777 s6Step195EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step195EntryGBefore s6Step195EntryGAfter s6Step195EntryGRow 172 s6Step195EntryGFresh
    s6Step195EntryG_distinct s6Step195EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195EntryG_reserved
  have rowEq : WindowRow.mk (s6Step195EntryGRow.payload++s6Step195EntryGFresh) s6Step195EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step195EntryGvBefore : Arena := s6Step195EntryGAfter

private theorem s6Step195EntryGv_Incoming : rowsOwned s6Step195EntryGvBefore [s6Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow] 3 s6Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step195EntryGv_Outgoing : rowsOwned s6Step195EntryGvAfter [s6Step195EntryGvOut] :=
  hmrRows_owned_drop s6Step195EntryGvAfter [s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut] 3 s6Step195EntryBank_outgoingOwned

private theorem s6Step195EntryGv_distinct : (s6Step195EntryGvRow.sign::s6Step195EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195EntryGv_owned : (s6Step195EntryGvRow.sign::s6Step195EntryGvRow.payload).toFinset⊆s6Step195EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step195EntryGv_reserved : s6Step195EntryGvBefore.reserve s6Step195EntryGvFresh.toFinset=some s6Step195EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195EntryGvFresh,arenaWires]
  · norm_num [s6Step195EntryGvBefore,s6Step195EntryGAfter,s6Step195EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step195EntryGvBefore s6Step195EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step195EntryGvFresh rfl rfl
    · norm_num [s6Step195EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step195EntryGv_checked : planRowResizeLog s6Step195EntryGvBefore s6Step195EntryGvRow 112 s6Step195EntryGvFresh=
    some (s6Step195EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838],775⟩,growRow 775 s6Step195EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step195EntryGvBefore s6Step195EntryGvAfter s6Step195EntryGvRow 112 s6Step195EntryGvFresh
    s6Step195EntryGv_distinct s6Step195EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step195EntryGvRow.payload++s6Step195EntryGvFresh) s6Step195EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step195EntryBank_rows : planWindowRowsLog s6Step195EntryFBefore [(s6Step195EntryFRow,172),(s6Step195EntryGRow,172),(s6Step195EntryFvRow,112),(s6Step195EntryGvRow,112)] [s6Step195EntryFFresh,s6Step195EntryGFresh,s6Step195EntryFvFresh,s6Step195EntryGvFresh]=
    some (s6Step195EntryGvAfter,[s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut],(growRow 795 s6Step195EntryFFresh ++ (growRow 777 s6Step195EntryGFresh ++ (growRow 776 s6Step195EntryFvFresh ++ (growRow 775 s6Step195EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step195EntryGvAfter [] []=some (s6Step195EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step195EntryGvBefore s6Step195EntryGvAfter s6Step195EntryGvAfter
    s6Step195EntryGvRow s6Step195EntryGvOut 112 s6Step195EntryGvFresh [] [] []
    (growRow 775 s6Step195EntryGvFresh) ([]) s6Step195EntryGv_Incoming s6Step195EntryGv_checked h4 s6Step195EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step195EntryFvBefore s6Step195EntryFvAfter s6Step195EntryGvAfter
    s6Step195EntryFvRow s6Step195EntryFvOut 112 s6Step195EntryFvFresh [(s6Step195EntryGvRow,112)] [s6Step195EntryGvFresh] [s6Step195EntryGvOut]
    (growRow 776 s6Step195EntryFvFresh) ((growRow 775 s6Step195EntryGvFresh ++ [])) s6Step195EntryFv_Incoming s6Step195EntryFv_checked h3 s6Step195EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step195EntryGBefore s6Step195EntryGAfter s6Step195EntryGvAfter
    s6Step195EntryGRow s6Step195EntryGOut 172 s6Step195EntryGFresh [(s6Step195EntryFvRow,112),(s6Step195EntryGvRow,112)] [s6Step195EntryFvFresh,s6Step195EntryGvFresh] [s6Step195EntryFvOut,s6Step195EntryGvOut]
    (growRow 777 s6Step195EntryGFresh) ((growRow 776 s6Step195EntryFvFresh ++ (growRow 775 s6Step195EntryGvFresh ++ []))) s6Step195EntryG_Incoming s6Step195EntryG_checked h2 s6Step195EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step195EntryFBefore s6Step195EntryFAfter s6Step195EntryGvAfter
    s6Step195EntryFRow s6Step195EntryFOut 172 s6Step195EntryFFresh [(s6Step195EntryGRow,172),(s6Step195EntryFvRow,112),(s6Step195EntryGvRow,112)] [s6Step195EntryGFresh,s6Step195EntryFvFresh,s6Step195EntryGvFresh] [s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut]
    (growRow 795 s6Step195EntryFFresh) ((growRow 777 s6Step195EntryGFresh ++ (growRow 776 s6Step195EntryFvFresh ++ (growRow 775 s6Step195EntryGvFresh ++ [])))) s6Step195EntryF_Incoming s6Step195EntryF_checked h1 s6Step195EntryF_Outgoing
  exact h0

private theorem s6Step195EntryBank_checked : compileHmrBankResizeLog .entry s6Step195EntryFBefore ⟨s6Step195EntryFRow,s6Step195EntryGRow,s6Step195EntryFvRow,s6Step195EntryGvRow⟩ ⟨172,172,112,112⟩ [s6Step195EntryFFresh,s6Step195EntryGFresh,s6Step195EntryFvFresh,s6Step195EntryGvFresh]=
    some (s6Step195EntryGvAfter,⟨s6Step195EntryFOut,s6Step195EntryGOut,s6Step195EntryFvOut,s6Step195EntryGvOut⟩,(growRow 795 s6Step195EntryFFresh ++ (growRow 777 s6Step195EntryGFresh ++ (growRow 776 s6Step195EntryFvFresh ++ (growRow 775 s6Step195EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step195EntryBank_rows]
  rfl

private def s6Step195ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195ExitFBefore : Arena := s6Step195ExitGAfter

private def s6Step195ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 822],795⟩

private def s6Step195ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩

private def s6Step195ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833, 869],777⟩

private def s6Step195ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838, 880],775⟩

private theorem s6Step195ExitBank_incomingDistinct : ([s6Step195ExitGRow,s6Step195ExitFRow,s6Step195ExitFvRow,s6Step195ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195ExitF_Incoming : rowsOwned s6Step195ExitFBefore [s6Step195ExitFRow,s6Step195ExitFvRow,s6Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195ExitGRow,s6Step195ExitFRow,s6Step195ExitFvRow,s6Step195ExitGvRow] 1 s6Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195ExitBank_outgoingOwned : rowsOwned s6Step195ExitGvAfter [s6Step195ExitGOut,s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step195ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195ExitF_Outgoing : rowsOwned s6Step195ExitGvAfter [s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut] :=
  hmrRows_owned_drop s6Step195ExitGvAfter [s6Step195ExitGOut,s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut] 1 s6Step195ExitBank_outgoingOwned

private theorem s6Step195ExitF_distinct : (s6Step195ExitFRow.sign::s6Step195ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195ExitF_owned : (s6Step195ExitFRow.sign::s6Step195ExitFRow.payload).toFinset⊆s6Step195ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195ExitF_retired : s6Step195ExitFBefore.retireSet s6Step195ExitFExtra.toFinset=s6Step195ExitFAfter := by
  unfold Arena.retireSet s6Step195ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step195ExitFBefore,s6Step195ExitGAfter,s6Step195ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step195ExitF_checked : planRowResizeLog s6Step195ExitFBefore s6Step195ExitFRow 172 []=
    some (s6Step195ExitFAfter,s6Step195ExitFOut,shrinkRow 795 s6Step195ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step195ExitFBefore s6Step195ExitFRow 172 s6Step195ExitF_distinct s6Step195ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step195ExitFRow.payload.take 172) s6Step195ExitFRow.sign=s6Step195ExitFOut := by decide +kernel
  have hi : s6Step195ExitFRow.payload.drop 172=s6Step195ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step195ExitF_retired] at result
  exact result

private def s6Step195ExitFvAfter : Arena := s6Step195ExitFAfter

private def s6Step195ExitFvBefore : Arena := s6Step195ExitFAfter

private theorem s6Step195ExitFv_Incoming : rowsOwned s6Step195ExitFvBefore [s6Step195ExitFvRow,s6Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195ExitGRow,s6Step195ExitFRow,s6Step195ExitFvRow,s6Step195ExitGvRow] 2 s6Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195ExitFv_Outgoing : rowsOwned s6Step195ExitGvAfter [s6Step195ExitFvOut,s6Step195ExitGvOut] :=
  hmrRows_owned_drop s6Step195ExitGvAfter [s6Step195ExitGOut,s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut] 2 s6Step195ExitBank_outgoingOwned

private theorem s6Step195ExitFv_distinct : (s6Step195ExitFvRow.sign::s6Step195ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195ExitFv_owned : (s6Step195ExitFvRow.sign::s6Step195ExitFvRow.payload).toFinset⊆s6Step195ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195ExitFv_reserved : s6Step195ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step195ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step195ExitFv_checked : planRowResizeLog s6Step195ExitFvBefore s6Step195ExitFvRow 113 []=
    some (s6Step195ExitFvAfter,s6Step195ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step195ExitFvBefore s6Step195ExitFvAfter s6Step195ExitFvRow 113 []
    s6Step195ExitFv_distinct s6Step195ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step195ExitFvRow.payload++[]) s6Step195ExitFvRow.sign=s6Step195ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step195ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step195ExitG_Incoming : rowsOwned s6Step195ExitGBefore [s6Step195ExitGRow,s6Step195ExitFRow,s6Step195ExitFvRow,s6Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195ExitGRow,s6Step195ExitFRow,s6Step195ExitFvRow,s6Step195ExitGvRow] 0 s6Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195ExitG_Outgoing : rowsOwned s6Step195ExitGvAfter [s6Step195ExitGOut,s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut] :=
  hmrRows_owned_drop s6Step195ExitGvAfter [s6Step195ExitGOut,s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut] 0 s6Step195ExitBank_outgoingOwned

private theorem s6Step195ExitG_distinct : (s6Step195ExitGRow.sign::s6Step195ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195ExitG_owned : (s6Step195ExitGRow.sign::s6Step195ExitGRow.payload).toFinset⊆s6Step195ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195ExitG_retired : s6Step195ExitGBefore.retireSet s6Step195ExitGExtra.toFinset=s6Step195ExitGAfter := by
  unfold Arena.retireSet s6Step195ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step195ExitGBefore,s6Step195ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step195ExitG_checked : planRowResizeLog s6Step195ExitGBefore s6Step195ExitGRow 171 []=
    some (s6Step195ExitGAfter,s6Step195ExitGOut,shrinkRow 777 s6Step195ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step195ExitGBefore s6Step195ExitGRow 171 s6Step195ExitG_distinct s6Step195ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step195ExitGRow.payload.take 171) s6Step195ExitGRow.sign=s6Step195ExitGOut := by decide +kernel
  have hi : s6Step195ExitGRow.payload.drop 171=s6Step195ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step195ExitG_retired] at result
  exact result

private def s6Step195ExitGvBefore : Arena := s6Step195ExitFAfter

private theorem s6Step195ExitGv_Incoming : rowsOwned s6Step195ExitGvBefore [s6Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195ExitGRow,s6Step195ExitFRow,s6Step195ExitFvRow,s6Step195ExitGvRow] 3 s6Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195ExitGv_Outgoing : rowsOwned s6Step195ExitGvAfter [s6Step195ExitGvOut] :=
  hmrRows_owned_drop s6Step195ExitGvAfter [s6Step195ExitGOut,s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut] 3 s6Step195ExitBank_outgoingOwned

private theorem s6Step195ExitGv_distinct : (s6Step195ExitGvRow.sign::s6Step195ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195ExitGv_owned : (s6Step195ExitGvRow.sign::s6Step195ExitGvRow.payload).toFinset⊆s6Step195ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195ExitGv_retired : s6Step195ExitGvBefore.retireSet s6Step195ExitGvExtra.toFinset=s6Step195ExitGvAfter := by
  unfold Arena.retireSet s6Step195ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step195ExitGvBefore,s6Step195ExitFAfter,s6Step195ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step195ExitGv_checked : planRowResizeLog s6Step195ExitGvBefore s6Step195ExitGvRow 111 []=
    some (s6Step195ExitGvAfter,s6Step195ExitGvOut,shrinkRow 775 s6Step195ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step195ExitGvBefore s6Step195ExitGvRow 111 s6Step195ExitGv_distinct s6Step195ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step195ExitGvRow.payload.take 111) s6Step195ExitGvRow.sign=s6Step195ExitGvOut := by decide +kernel
  have hi : s6Step195ExitGvRow.payload.drop 111=s6Step195ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step195ExitGv_retired] at result
  exact result

private theorem s6Step195ExitBank_rows : planWindowRowsLog s6Step195ExitGBefore [(s6Step195ExitGRow,171),(s6Step195ExitFRow,172),(s6Step195ExitFvRow,113),(s6Step195ExitGvRow,111)] [[],[],[],[]]=
    some (s6Step195ExitGvAfter,[s6Step195ExitGOut,s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut],(shrinkRow 777 s6Step195ExitGExtra ++ (shrinkRow 795 s6Step195ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step195ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step195ExitGvAfter [] []=some (s6Step195ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step195ExitGvBefore s6Step195ExitGvAfter s6Step195ExitGvAfter
    s6Step195ExitGvRow s6Step195ExitGvOut 111 [] [] [] []
    (shrinkRow 775 s6Step195ExitGvExtra) ([]) s6Step195ExitGv_Incoming s6Step195ExitGv_checked h4 s6Step195ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step195ExitFvBefore s6Step195ExitFvAfter s6Step195ExitGvAfter
    s6Step195ExitFvRow s6Step195ExitFvOut 113 [] [(s6Step195ExitGvRow,111)] [[]] [s6Step195ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step195ExitGvExtra ++ [])) s6Step195ExitFv_Incoming s6Step195ExitFv_checked h3 s6Step195ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step195ExitFBefore s6Step195ExitFAfter s6Step195ExitGvAfter
    s6Step195ExitFRow s6Step195ExitFOut 172 [] [(s6Step195ExitFvRow,113),(s6Step195ExitGvRow,111)] [[],[]] [s6Step195ExitFvOut,s6Step195ExitGvOut]
    (shrinkRow 795 s6Step195ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step195ExitGvExtra ++ []))) s6Step195ExitF_Incoming s6Step195ExitF_checked h2 s6Step195ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step195ExitGBefore s6Step195ExitGAfter s6Step195ExitGvAfter
    s6Step195ExitGRow s6Step195ExitGOut 171 [] [(s6Step195ExitFRow,172),(s6Step195ExitFvRow,113),(s6Step195ExitGvRow,111)] [[],[],[]] [s6Step195ExitFOut,s6Step195ExitFvOut,s6Step195ExitGvOut]
    (shrinkRow 777 s6Step195ExitGExtra) ((shrinkRow 795 s6Step195ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step195ExitGvExtra ++ [])))) s6Step195ExitG_Incoming s6Step195ExitG_checked h1 s6Step195ExitG_Outgoing
  exact h0

private theorem s6Step195ExitBank_checked : compileHmrBankResizeLog .exit s6Step195ExitGBefore ⟨s6Step195ExitFRow,s6Step195ExitGRow,s6Step195ExitFvRow,s6Step195ExitGvRow⟩ ⟨172,171,113,111⟩ [[],[],[],[]]=
    some (s6Step195ExitGvAfter,⟨s6Step195ExitFOut,s6Step195ExitGOut,s6Step195ExitFvOut,s6Step195ExitGvOut⟩,(shrinkRow 777 s6Step195ExitGExtra ++ (shrinkRow 795 s6Step195ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step195ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step195ExitBank_rows]
  rfl

private theorem s6Step195Add0_apart : Disjoint s6Step195Add0Arena.live s6Step195Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step195Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195Add0_card : s6Step195Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step195Add0_borrowed : s6Step195Add0Arena.checkBorrow (hmrHybridCount s6Step195Add0Arena s6Step195Add0B.length) s6Step195Add0Work=some s6Step195Add0During := by
  have len : s6Step195Add0Work.length=hmrHybridCount s6Step195Add0Arena s6Step195Add0B.length := by
    rw [hmrHybridCount,s6Step195Add0_card]
    decide +kernel
  have nd : s6Step195Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step195Add0Arena s6Step195Add0During s6Step195Add0Work.toFinset s6Step195Add0_bounded s6Step195Add0_apart rfl

private theorem s6Step195Add0_distinct : (853::854::907::(s6Step195Add0A++s6Step195Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195Add0_owned : (853::854::907::(s6Step195Add0A++s6Step195Add0B)).toFinset⊆s6Step195Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step195Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195Add0_checked : compileHmrHybridCinLog s6Step195Add0Arena 854 853 907 s6Step195Add0A s6Step195Add0B s6Step195Add0Work=some s6Step195Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step195Add0Arena s6Step195Add0During 854 853 907 s6Step195Add0A s6Step195Add0B s6Step195Add0Work
    (by decide +kernel) (by decide +kernel) s6Step195Add0_distinct
    (fun q hq => s6Step195Add0_owned (List.mem_toFinset.mpr hq)) s6Step195Add0_borrowed

private theorem s6Step195Add1_apart : Disjoint s6Step195Add1Arena.live s6Step195Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step195Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195Add1_card : s6Step195Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step195Add1_borrowed : s6Step195Add1Arena.checkBorrow (hmrHybridCount s6Step195Add1Arena s6Step195Add1B.length) s6Step195Add1Work=some s6Step195Add1During := by
  have len : s6Step195Add1Work.length=hmrHybridCount s6Step195Add1Arena s6Step195Add1B.length := by
    rw [hmrHybridCount,s6Step195Add1_card]
    decide +kernel
  have nd : s6Step195Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step195Add1Arena s6Step195Add1During s6Step195Add1Work.toFinset s6Step195Add1_bounded s6Step195Add1_apart rfl

private theorem s6Step195Add1_distinct : (853::854::907::(s6Step195Add1A++s6Step195Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195Add1_owned : (853::854::907::(s6Step195Add1A++s6Step195Add1B)).toFinset⊆s6Step195Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step195Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195Add1_checked : compileHmrHybridCinLog s6Step195Add1Arena 854 853 907 s6Step195Add1A s6Step195Add1B s6Step195Add1Work=some s6Step195Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step195Add1Arena s6Step195Add1During 854 853 907 s6Step195Add1A s6Step195Add1B s6Step195Add1Work
    (by decide +kernel) (by decide +kernel) s6Step195Add1_distinct
    (fun q hq => s6Step195Add1_owned (List.mem_toFinset.mpr hq)) s6Step195Add1_borrowed

private theorem s6Step195F4_apart : Disjoint (s6Step195Add0A++s6Step195Add0B).toFinset (s6Step195Add1A++s6Step195Add1B).toFinset := by
  have nd : ((s6Step195Add0A++s6Step195Add0B)++(s6Step195Add1A++s6Step195Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step195F4_carry : s6Step195F4FlagArena.checkBorrow 1 [907]=some s6Step195Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step195F4FlagArena,s6Step195HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step195F4FlagArena,s6Step195HeadFvAfter,s6Step195Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step195F4_distinct : (850::854::853::907::((s6Step195Add0A++s6Step195Add1A)++(s6Step195Add0B++s6Step195Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195F4_flag : s6Step195HeadFvAfter.checkBorrow 1 [853]=some s6Step195F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step195HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step195F4_owned : (850::854::((s6Step195Add0A++s6Step195Add1A)++(s6Step195Add0B++s6Step195Add1B))).toFinset⊆s6Step195HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step195HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195F4_checked : compileHmrHybridF4Log s6Step195HeadFvAfter 850 854 s6Step195Add0A s6Step195Add0B s6Step195Add1A s6Step195Add1B [853] [907] s6Step195Add0Work s6Step195Add1Work=some s6Step195F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step195HeadFvAfter s6Step195F4FlagArena s6Step195Add0Arena s6Step195Add0During s6Step195Add1During 850 854
    s6Step195Add0A s6Step195Add0B s6Step195Add1A s6Step195Add1B [853] [907] s6Step195Add0Work s6Step195Add1Work
    (fun q hq => s6Step195F4_owned (List.mem_toFinset.mpr hq)) s6Step195F4_flag s6Step195F4_carry
    s6Step195F4_distinct s6Step195F4_apart s6Step195Add0_checked s6Step195Add1_checked

private theorem s6Step195Front_branch : s6Step195FrontSigmaArena.checkBorrow 1 [854]=some s6Step195HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step195FrontSigmaArena,s6Step195EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step195FrontSigmaArena,s6Step195EntryGvAfter,s6Step195HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step195Front_entry : HmrFrontEntryValid s6Step195EntryFBefore s6Step195FrontBank 172 112 ⟨172,171,113,111⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step195FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step195EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step195EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step195FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step195Front_sigma : s6Step195EntryGvAfter.checkBorrow 1 [850]=some s6Step195FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step195EntryGvAfter,arenaWires]
  · rfl

private def s6Step195HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195HeadFBefore : Arena := s6Step195HeadGAfter

private def s6Step195HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step195HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step195HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833],777⟩

private def s6Step195HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838],775⟩

private theorem s6Step195HeadBank_incomingDistinct : ([s6Step195HeadGRow,s6Step195HeadFRow,s6Step195HeadGvRow,s6Step195HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195HeadF_Incoming : rowsOwned s6Step195HeadFBefore [s6Step195HeadFRow,s6Step195HeadGvRow,s6Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195HeadGRow,s6Step195HeadFRow,s6Step195HeadGvRow,s6Step195HeadFvRow] 1 s6Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195HeadBank_outgoingOwned : rowsOwned s6Step195HeadFvAfter [s6Step195HeadGOut,s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step195HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195HeadF_Outgoing : rowsOwned s6Step195HeadFvAfter [s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut] :=
  hmrRows_owned_drop s6Step195HeadFvAfter [s6Step195HeadGOut,s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut] 1 s6Step195HeadBank_outgoingOwned

private theorem s6Step195HeadF_distinct : (s6Step195HeadFRow.sign::s6Step195HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195HeadF_owned : (s6Step195HeadFRow.sign::s6Step195HeadFRow.payload).toFinset⊆s6Step195HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195HeadF_reserved : s6Step195HeadFBefore.reserve s6Step195HeadFFresh.toFinset=some s6Step195HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195HeadFFresh,arenaWires]
  · norm_num [s6Step195HeadFBefore,s6Step195HeadGAfter,s6Step195HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step195HeadFAfter,s6Step195HeadFBefore,s6Step195HeadGAfter,s6Step195HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step195HeadF_checked : planRowResizeLog s6Step195HeadFBefore s6Step195HeadFRow 173 s6Step195HeadFFresh=
    some (s6Step195HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 822],795⟩,growRow 795 s6Step195HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step195HeadFBefore s6Step195HeadFAfter s6Step195HeadFRow 173 s6Step195HeadFFresh
    s6Step195HeadF_distinct s6Step195HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195HeadF_reserved
  have rowEq : WindowRow.mk (s6Step195HeadFRow.payload++s6Step195HeadFFresh) s6Step195HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step195HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step195HeadFvBefore : Arena := s6Step195HeadGvAfter

private theorem s6Step195HeadFv_Incoming : rowsOwned s6Step195HeadFvBefore [s6Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195HeadGRow,s6Step195HeadFRow,s6Step195HeadGvRow,s6Step195HeadFvRow] 3 s6Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195HeadFv_Outgoing : rowsOwned s6Step195HeadFvAfter [s6Step195HeadFvOut] :=
  hmrRows_owned_drop s6Step195HeadFvAfter [s6Step195HeadGOut,s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut] 3 s6Step195HeadBank_outgoingOwned

private theorem s6Step195HeadFv_distinct : (s6Step195HeadFvRow.sign::s6Step195HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195HeadFv_owned : (s6Step195HeadFvRow.sign::s6Step195HeadFvRow.payload).toFinset⊆s6Step195HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195HeadFv_reserved : s6Step195HeadFvBefore.reserve s6Step195HeadFvFresh.toFinset=some s6Step195HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195HeadFvFresh,arenaWires]
  · norm_num [s6Step195HeadFvBefore,s6Step195HeadGvAfter,s6Step195HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step195HeadFvAfter,s6Step195HeadFvBefore,s6Step195HeadGvAfter,s6Step195HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step195HeadFv_checked : planRowResizeLog s6Step195HeadFvBefore s6Step195HeadFvRow 113 s6Step195HeadFvFresh=
    some (s6Step195HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩,growRow 776 s6Step195HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step195HeadFvBefore s6Step195HeadFvAfter s6Step195HeadFvRow 113 s6Step195HeadFvFresh
    s6Step195HeadFv_distinct s6Step195HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step195HeadFvRow.payload++s6Step195HeadFvFresh) s6Step195HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step195HeadG_Incoming : rowsOwned s6Step195HeadGBefore [s6Step195HeadGRow,s6Step195HeadFRow,s6Step195HeadGvRow,s6Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195HeadGRow,s6Step195HeadFRow,s6Step195HeadGvRow,s6Step195HeadFvRow] 0 s6Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195HeadG_Outgoing : rowsOwned s6Step195HeadFvAfter [s6Step195HeadGOut,s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut] :=
  hmrRows_owned_drop s6Step195HeadFvAfter [s6Step195HeadGOut,s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut] 0 s6Step195HeadBank_outgoingOwned

private theorem s6Step195HeadG_distinct : (s6Step195HeadGRow.sign::s6Step195HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195HeadG_owned : (s6Step195HeadGRow.sign::s6Step195HeadGRow.payload).toFinset⊆s6Step195HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195HeadG_reserved : s6Step195HeadGBefore.reserve s6Step195HeadGFresh.toFinset=some s6Step195HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195HeadGFresh,arenaWires]
  · norm_num [s6Step195HeadGBefore,s6Step195HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step195HeadGAfter,s6Step195HeadGBefore,s6Step195HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step195HeadG_checked : planRowResizeLog s6Step195HeadGBefore s6Step195HeadGRow 173 s6Step195HeadGFresh=
    some (s6Step195HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833, 869],777⟩,growRow 777 s6Step195HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step195HeadGBefore s6Step195HeadGAfter s6Step195HeadGRow 173 s6Step195HeadGFresh
    s6Step195HeadG_distinct s6Step195HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195HeadG_reserved
  have rowEq : WindowRow.mk (s6Step195HeadGRow.payload++s6Step195HeadGFresh) s6Step195HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 833, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step195HeadGvBefore : Arena := s6Step195HeadFAfter

private theorem s6Step195HeadGv_Incoming : rowsOwned s6Step195HeadGvBefore [s6Step195HeadGvRow,s6Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step195HeadGRow,s6Step195HeadFRow,s6Step195HeadGvRow,s6Step195HeadFvRow] 2 s6Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step195HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step195HeadGv_Outgoing : rowsOwned s6Step195HeadFvAfter [s6Step195HeadGvOut,s6Step195HeadFvOut] :=
  hmrRows_owned_drop s6Step195HeadFvAfter [s6Step195HeadGOut,s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut] 2 s6Step195HeadBank_outgoingOwned

private theorem s6Step195HeadGv_distinct : (s6Step195HeadGvRow.sign::s6Step195HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step195HeadGv_owned : (s6Step195HeadGvRow.sign::s6Step195HeadGvRow.payload).toFinset⊆s6Step195HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step195HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step195HeadGv_reserved : s6Step195HeadGvBefore.reserve s6Step195HeadGvFresh.toFinset=some s6Step195HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step195HeadGvFresh,arenaWires]
  · norm_num [s6Step195HeadGvBefore,s6Step195HeadFAfter,s6Step195HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step195HeadGvAfter,s6Step195HeadGvBefore,s6Step195HeadFAfter,s6Step195HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step195HeadGv_checked : planRowResizeLog s6Step195HeadGvBefore s6Step195HeadGvRow 113 s6Step195HeadGvFresh=
    some (s6Step195HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838, 880],775⟩,growRow 775 s6Step195HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step195HeadGvBefore s6Step195HeadGvAfter s6Step195HeadGvRow 113 s6Step195HeadGvFresh
    s6Step195HeadGv_distinct s6Step195HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step195HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step195HeadGvRow.payload++s6Step195HeadGvFresh) s6Step195HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 838, 880],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step195HeadBank_rows : planWindowRowsLog s6Step195HeadGBefore [(s6Step195HeadGRow,173),(s6Step195HeadFRow,173),(s6Step195HeadGvRow,113),(s6Step195HeadFvRow,113)] [s6Step195HeadGFresh,s6Step195HeadFFresh,s6Step195HeadGvFresh,s6Step195HeadFvFresh]=
    some (s6Step195HeadFvAfter,[s6Step195HeadGOut,s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut],(growRow 777 s6Step195HeadGFresh ++ (growRow 795 s6Step195HeadFFresh ++ (growRow 775 s6Step195HeadGvFresh ++ (growRow 776 s6Step195HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step195HeadFvAfter [] []=some (s6Step195HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step195HeadFvBefore s6Step195HeadFvAfter s6Step195HeadFvAfter
    s6Step195HeadFvRow s6Step195HeadFvOut 113 s6Step195HeadFvFresh [] [] []
    (growRow 776 s6Step195HeadFvFresh) ([]) s6Step195HeadFv_Incoming s6Step195HeadFv_checked h4 s6Step195HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step195HeadGvBefore s6Step195HeadGvAfter s6Step195HeadFvAfter
    s6Step195HeadGvRow s6Step195HeadGvOut 113 s6Step195HeadGvFresh [(s6Step195HeadFvRow,113)] [s6Step195HeadFvFresh] [s6Step195HeadFvOut]
    (growRow 775 s6Step195HeadGvFresh) ((growRow 776 s6Step195HeadFvFresh ++ [])) s6Step195HeadGv_Incoming s6Step195HeadGv_checked h3 s6Step195HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step195HeadFBefore s6Step195HeadFAfter s6Step195HeadFvAfter
    s6Step195HeadFRow s6Step195HeadFOut 173 s6Step195HeadFFresh [(s6Step195HeadGvRow,113),(s6Step195HeadFvRow,113)] [s6Step195HeadGvFresh,s6Step195HeadFvFresh] [s6Step195HeadGvOut,s6Step195HeadFvOut]
    (growRow 795 s6Step195HeadFFresh) ((growRow 775 s6Step195HeadGvFresh ++ (growRow 776 s6Step195HeadFvFresh ++ []))) s6Step195HeadF_Incoming s6Step195HeadF_checked h2 s6Step195HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step195HeadGBefore s6Step195HeadGAfter s6Step195HeadFvAfter
    s6Step195HeadGRow s6Step195HeadGOut 173 s6Step195HeadGFresh [(s6Step195HeadFRow,173),(s6Step195HeadGvRow,113),(s6Step195HeadFvRow,113)] [s6Step195HeadFFresh,s6Step195HeadGvFresh,s6Step195HeadFvFresh] [s6Step195HeadFOut,s6Step195HeadGvOut,s6Step195HeadFvOut]
    (growRow 777 s6Step195HeadGFresh) ((growRow 795 s6Step195HeadFFresh ++ (growRow 775 s6Step195HeadGvFresh ++ (growRow 776 s6Step195HeadFvFresh ++ [])))) s6Step195HeadG_Incoming s6Step195HeadG_checked h1 s6Step195HeadG_Outgoing
  exact h0

private theorem s6Step195HeadBank_checked : compileHmrBankResizeLog .headroom s6Step195HeadGBefore ⟨s6Step195HeadFRow,s6Step195HeadGRow,s6Step195HeadFvRow,s6Step195HeadGvRow⟩ ⟨173,173,113,113⟩ [s6Step195HeadGFresh,s6Step195HeadFFresh,s6Step195HeadGvFresh,s6Step195HeadFvFresh]=
    some (s6Step195HeadFvAfter,⟨s6Step195HeadFOut,s6Step195HeadGOut,s6Step195HeadFvOut,s6Step195HeadGvOut⟩,(growRow 777 s6Step195HeadGFresh ++ (growRow 795 s6Step195HeadFFresh ++ (growRow 775 s6Step195HeadGvFresh ++ (growRow 776 s6Step195HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step195HeadBank_rows]
  rfl

private theorem s6Step195Front_checked : compileHmrSourceFrontLog s6Step195EntryFBefore s6Step195FrontBank 172 112 ⟨172,171,113,111⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step195FrontLog=some s6Step195FrontPlan := by
  have pairEq : s6Step195FrontPair=⟨s6Step195HeadFRow,s6Step195HeadGRow,s6Step195HeadFvRow,s6Step195HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step195FrontHead=⟨s6Step195ExitFRow,s6Step195ExitGRow,s6Step195ExitFvRow,s6Step195ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step195Add0A=s6Step195FrontHead.f.wires := by decide +kernel
  have gEq : s6Step195Add0B=s6Step195FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step195Add1A=s6Step195FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step195Add1B=s6Step195FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step195EntryFBefore s6Step195FrontBank 172 112 ⟨172,171,113,111⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step195FrontLog s6Step195FrontPlan
  · exact s6Step195Front_entry
  · exact s6Step195EntryBank_checked
  · exact s6Step195Front_sigma
  · rfl
  · exact s6Step195Front_branch
  · rfl
  · simpa only [s6Step195FrontPlan,pairEq] using s6Step195HeadBank_checked
  · simpa only [s6Step195FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step195F4_checked
  · exact s6Step195Counter_checked
  · rfl
  · simpa only [s6Step195FrontPlan,headEq] using s6Step195ExitBank_checked

private theorem s6Step195Complete_explicit_checked : compileHmrEarlyStepLog s6Step195EntryFBefore s6Step195FrontBank 172 112 ⟨172,171,113,111⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 45 s6Step195CompleteLog=some s6Step195CompletePlan := by
  let Q := s6Step195EarlyControlPlan
  have hq := s6Step195EarlyControl_plan_checked
  have fv1 : s6Step195CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step195CompleteOut.fv.payload[2]?.getD s6Step195CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step195CompleteOut.fv.payload[3]?.getD s6Step195CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step195CompleteOut.fv.payload[4]?.getD s6Step195CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step195EntryFBefore s6Step195EarlyControlArena s6Step195FrontBank 172 112 ⟨172,171,113,111⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 45 s6Step195CompleteLog s6Step195FrontPlan Q
    s6Step195Front_checked s6Step195Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step195Complete_owned s6Step195Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step195EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 769 850 s6Step195CompleteOut.fv.second (s6Step195CompleteOut.fv.payload[2]?.getD s6Step195CompleteOut.fv.sign) (s6Step195CompleteOut.fv.payload[3]?.getD s6Step195CompleteOut.fv.sign) (s6Step195CompleteOut.fv.payload[4]?.getD s6Step195CompleteOut.fv.sign) 854 45 s6Step195EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep195Arena : Arena := s6Step195EntryFBefore
def s6PrivateStep195Bank : WindowBank := s6Step195FrontBank
def s6PrivateStep195Spec : HmrSourceWalkStepLog := ⟨172,112,⟨172,171,113,111⟩,45,.early s6Step195CompleteLog⟩
def s6PrivateStep195Plan : HmrSourceStepPlan := .early s6Step195CompletePlan
theorem s6PrivateStep195_source : s6PrivateStep195Spec=s6ObservedLogs192[3] := rfl
theorem s6PrivateStep195_checked : compileHmrSourceStepLog s6PrivateStep195Arena s6PrivateStep195Bank
    s6PrivateStep195Spec.fgWidth s6PrivateStep195Spec.vWidth s6PrivateStep195Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923]
    6 498 195 s6PrivateStep195Spec.need none s6PrivateStep195Spec.log=some s6PrivateStep195Plan := by
  change compileHmrSourceStepLog s6Step195EntryFBefore s6Step195FrontBank 172 112 ⟨172,171,113,111⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923] 6 498 195 45 none (.early s6Step195CompleteLog)=some (.early s6Step195CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 195<498)]
  rw [s6Step195Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
