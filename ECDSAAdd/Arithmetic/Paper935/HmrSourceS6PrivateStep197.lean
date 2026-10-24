import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep195
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

private def s6Step197CompleteMoves : List (Wire × Wire) := [(813,427)]

private def s6Step197EarlyControlLog : HmrEarlyControlLog := ⟨[813, 786, 854, 869, 880],[907],[891],[903, 791, 825, 810, 809, 817],[]⟩

private def s6Step197FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [822, 880], [], [786]],[[907], [869], [854], [833]],[[], [], [], []]⟩,[838],[853],[891],[903],[791, 825, 810, 809, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 809, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step197CompleteLog : HmrEarlyStepLog := ⟨s6Step197FrontLog,s6Step197CompleteMoves,s6Step197EarlyControlLog⟩

private def s6Step197ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426],795⟩

private def s6Step197ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833],776⟩

private def s6Step197ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822],777⟩

private def s6Step197ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850],775⟩

private def s6Step197FrontOut : WindowBank := ⟨s6Step197ExitFOut,s6Step197ExitGOut,s6Step197ExitFvOut,s6Step197ExitGvOut⟩

private def s6Step197CompleteOut : WindowBank := s6Step197FrontOut.repacked s6Step197CompleteMoves

private def s6Step197EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step197EarlyControlPositiveArena,[907],s6Step197EarlyControlEqualityArena,[891],⟨⟨838,false⟩,[⟨⟨907,false⟩,891⟩]⟩⟩

private def s6Step197EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,813⟩,⟨⟨772,false⟩,786⟩,⟨⟨771,false⟩,854⟩,⟨⟨770,false⟩,869⟩,⟨⟨769,false⟩,880⟩]⟩

private def s6Step197EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step197EarlyControlZeroArena,s6Step197EarlyControlZeroPlan,s6Step197EarlyControlClassPlan,s6Step197EarlyControlFlagArena,s6Step197EarlyControlFittedArena,s6Step197EarlyControlHistoryArena,s6Step197EarlyControlSigmaArena,s6Step197EarlyControlOutputArena,s6Step197EarlyControlLog⟩

private def s6Step197CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step197Counter_bounded : s6Step197CounterWork.toFinset⊆arenaWires := by norm_num [s6Step197CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step197HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197CounterDuring : Arena := ⟨s6Step197HeadFvAfter.live∪s6Step197CounterWork.toFinset,Finset.union_subset s6Step197HeadFvAfter.bounded s6Step197Counter_bounded⟩

private def s6Step197EntryFFresh : List Wire := []

private def s6Step197EntryFvFresh : List Wire := []

private def s6Step197EntryGFresh : List Wire := [822, 880]

private def s6Step197EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EntryGvFresh : List Wire := [786]

private def s6Step197ExitFExtra : List Wire := [427, 869]

private def s6Step197ExitGExtra : List Wire := [880, 907]

private def s6Step197ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<427) ∨ (428≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197ExitGvExtra : List Wire := [786, 854]

private def s6Step197Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197Add0Work : List Wire := [791, 825, 810, 809, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step197Add0_bounded : s6Step197Add0Work.toFinset⊆arenaWires := by
  have h : s6Step197Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step197Add0During : Arena := ⟨s6Step197Add0Arena.live∪s6Step197Add0Work.toFinset,Finset.union_subset s6Step197Add0Arena.bounded s6Step197Add0_bounded⟩

private def s6Step197Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197Add1Work : List Wire := [791, 825, 810, 809, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step197Add1_bounded : s6Step197Add1Work.toFinset⊆arenaWires := by
  have h : s6Step197Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step197Add1During : Arena := ⟨s6Step197Add1Arena.live∪s6Step197Add1Work.toFinset,Finset.union_subset s6Step197Add1Arena.bounded s6Step197Add1_bounded⟩

private def s6Step197F4FlagArena : Arena := ⟨s6Step197HeadFvAfter.live∪{891},Finset.union_subset s6Step197HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step197F4Plan : HmrHybridF4Plan := ⟨s6Step197F4FlagArena,[891],s6Step197Add0Arena,[903],s6Step197Add0During,s6Step197Add0Work,s6Step197Add1During,s6Step197Add1Work⟩

private def s6Step197HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩

private def s6Step197HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833],776⟩

private def s6Step197HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880, 907],777⟩

private def s6Step197HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786, 854],775⟩

private def s6Step197FrontHead : WindowBank := ⟨s6Step197HeadFOut,s6Step197HeadGOut,s6Step197HeadFvOut,s6Step197HeadGvOut⟩

private def s6Step197EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step197EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩

private def s6Step197EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880],777⟩

private def s6Step197EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786],775⟩

private def s6Step197FrontPair : WindowBank := ⟨s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut⟩

private def s6Step197FrontSigmaArena : Arena := ⟨s6Step197EntryGvAfter.live∪{838},Finset.union_subset s6Step197EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step197HeadFFresh : List Wire := [869]

private def s6Step197HeadFvFresh : List Wire := [833]

private def s6Step197HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197HeadGFresh : List Wire := [907]

private def s6Step197HeadGvFresh : List Wire := [854]

private def s6Step197FrontPlan : HmrSourceFront := ⟨s6Step197EntryGvAfter,s6Step197FrontPair,(growRow 795 s6Step197EntryFFresh ++ (growRow 777 s6Step197EntryGFresh ++ (growRow 776 s6Step197EntryFvFresh ++ (growRow 775 s6Step197EntryGvFresh ++ [])))),s6Step197FrontSigmaArena,[838],s6Step197HeadGBefore,[853],
  s6Step197HeadFvAfter,s6Step197FrontHead,(growRow 777 s6Step197HeadGFresh ++ (growRow 795 s6Step197HeadFFresh ++ (growRow 775 s6Step197HeadGvFresh ++ (growRow 776 s6Step197HeadFvFresh ++ [])))),s6Step197F4Plan,s6Step197CounterDuring,s6Step197CounterWork,s6Step197ExitGvAfter,s6Step197FrontOut,(shrinkRow 777 s6Step197ExitGExtra ++ (shrinkRow 795 s6Step197ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step197ExitGvExtra ++ []))))⟩

private def s6Step197CompletePlan : HmrEarlyStepPlan := ⟨s6Step197FrontPlan,s6Step197EarlyControlArena,s6Step197EarlyControlPlan,s6Step197CompleteMoves⟩

private theorem s6Step197Complete_apart : List.Disjoint (s6Step197CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] := by
  have nd : ((s6Step197CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step197Complete_owned : (s6Step197CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step197CompleteMoveArena : Arena := ⟨s6Step197ExitGvAfter.live∪{427},Finset.union_subset s6Step197ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step197Complete_repack : s6Step197ExitGvAfter.checkRepack s6Step197CompleteMoves=some s6Step197EarlyControlArena := by
  have owned : 813∈s6Step197ExitGvAfter.live := by norm_num [s6Step197ExitGvAfter,arenaWires]
  have reserve : s6Step197ExitGvAfter.reserve {427}=some s6Step197CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step197ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step197CompleteMoveArena.retireSet {813}=s6Step197EarlyControlArena := by
    unfold Arena.retireSet s6Step197EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step197CompleteMoveArena,s6Step197ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step197CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step197CompleteMoveArena.retireSet {813}).checkRepack []=some s6Step197EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step197EarlyControl_branchOwned : ([853] : List Wire).toFinset⊆s6Step197EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_branch : compileHmrBranchRetirement s6Step197EarlyControlSigmaArena 853=some s6Step197EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step197EarlyControl_branchOwned
  · ext q
    simp [s6Step197EarlyControlOutputArena,s6Step197EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step197EarlyControl_classEqualityBorrow : s6Step197EarlyControlPositiveArena.checkBorrow (([838, 907] : List Wire).length-1) s6Step197EarlyControlLog.classWork=some s6Step197EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step197EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step197EarlyControlEqualityArena,s6Step197EarlyControlPositiveArena,s6Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step197EarlyControl_classEqualityOwned : ([838, 907] : List Wire).toFinset⊆s6Step197EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_classEquality : compileHmrEqualityLog s6Step197EarlyControlPositiveArena [838, 907] 0 s6Step197EarlyControlLog.classWork=some (s6Step197EarlyControlEqualityArena,s6Step197EarlyControlLog.classWork,s6Step197EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step197EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step197EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step197EarlyControl_classOwned : ([769, 880, 838] : List Wire).toFinset⊆s6Step197EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_positiveBorrow : s6Step197EarlyControlZeroArena.checkBorrow (1) s6Step197EarlyControlLog.positiveWork=some s6Step197EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step197EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step197EarlyControlPositiveArena,s6Step197EarlyControlZeroArena,s6Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step197EarlyControl_class : compileHmrSourceClassLog s6Step197EarlyControlZeroArena false 769 s6Step197EarlyControlZeroPlan.top 0 838 s6Step197EarlyControlLog.positiveWork s6Step197EarlyControlLog.classWork=some s6Step197EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step197EarlyControlClassPlan s6Step197EarlyControlZeroArena false 769 s6Step197EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step197EarlyControl_classOwned
  · exact s6Step197EarlyControl_positiveBorrow
  · exact s6Step197EarlyControl_classEquality

private theorem s6Step197EarlyControl_entryRecordOwned : ([853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] : List Wire).toFinset⊆s6Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_fitBorrow : s6Step197EarlyControlFlagArena.checkBorrow ((46-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] : List Wire).length)) s6Step197EarlyControlLog.recordFresh=some s6Step197EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step197EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step197EarlyControlFittedArena,s6Step197EarlyControlFlagArena,s6Step197EarlyControlLog,arenaWires]

private theorem s6Step197EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] : List Wire).toFinset⊆s6Step197EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_fit : compileHmrRecordGrowLog s6Step197EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 46 s6Step197EarlyControlLog.recordFresh=some s6Step197EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step197EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step197EarlyControl_fitBorrow

private theorem s6Step197EarlyControl_flagsBorrow : s6Step197EarlyControlEqualityArena.checkBorrow (6) s6Step197EarlyControlLog.flagWork=some s6Step197EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step197EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step197EarlyControlFlagArena,s6Step197EarlyControlEqualityArena,s6Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step197EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s6Step197EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_flags : compileHmrFlagsLog s6Step197EarlyControlClassPlan.equalityArena s6Step197EarlyControlClassPlan.equality.top 253 252 251 s6Step197EarlyControlLog.flagWork=some s6Step197EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step197EarlyControl_flagsOwned⟩
  · exact s6Step197EarlyControl_flagsBorrow

private theorem s6Step197EarlyControl_historyBorrow : s6Step197EarlyControlArena.checkBorrow ((46-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] : List Wire).length)) s6Step197EarlyControlLog.recordFresh=some s6Step197EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step197EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step197EarlyControlHistoryArena,s6Step197EarlyControlArena,s6Step197EarlyControlLog,arenaWires]

private theorem s6Step197EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] : List Wire).toFinset⊆s6Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_history : compileHmrRecordGrowLog s6Step197EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 46 s6Step197EarlyControlLog.recordFresh=some s6Step197EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step197EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step197EarlyControl_historyBorrow

private theorem s6Step197EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step197EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step197EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_sigmaRelease : s6Step197EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step197EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step197EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step197EarlyControlSigmaArena,s6Step197EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step197EarlyControl_sigma : compileHmrSigmaDropLog s6Step197EarlyControlHistoryArena false 0 0 254 838 []=some s6Step197EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step197EarlyControl_sigmaOwned⟩
  · exact s6Step197EarlyControl_sigmaRelease

private theorem s6Step197EarlyControl_zeroBorrow : s6Step197EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step197EarlyControlLog.zeroWork=some s6Step197EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step197EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step197EarlyControlZeroArena,s6Step197EarlyControlArena,s6Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step197EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step197EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EarlyControl_zero : compileHmrEqualityLog s6Step197EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step197EarlyControlLog.zeroWork=some (s6Step197EarlyControlZeroArena,s6Step197EarlyControlLog.zeroWork,s6Step197EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step197EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step197EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step197EarlyControl_logged : s6Step197EarlyControlPlan.Logged s6Step197EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 769 838 254 253 252 251 853 46 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step197EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step197EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step197EarlyControl_zero
  · exact s6Step197EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step197EarlyControl_flags
  · exact s6Step197EarlyControl_fit
  · exact s6Step197EarlyControl_history
  · exact s6Step197EarlyControl_sigma
  · exact s6Step197EarlyControl_branch

private theorem s6Step197EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step197EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 769 838 254 253 252 251 853 46 s6Step197EarlyControlLog=some s6Step197EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step197EarlyControlPlan s6Step197EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 769 838 254 253 252 251 853 46 s6Step197EarlyControl_logged

private def s6Step197EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step197EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩

private def s6Step197EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],777⟩

private def s6Step197EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850],775⟩

private def s6Step197FrontBank : WindowBank := ⟨s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow⟩

private def s6Step197Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869, 795]

private def s6Step197Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880, 907, 777]

private def s6Step197Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 776]

private def s6Step197Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786, 854, 775]

private theorem s6Step197Counter_apart : Disjoint s6Step197HeadFvAfter.live s6Step197CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step197HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197Counter_borrowed : s6Step197HeadFvAfter.checkBorrow 4 s6Step197CounterWork=some s6Step197CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step197HeadFvAfter s6Step197CounterDuring s6Step197CounterWork.toFinset s6Step197Counter_bounded s6Step197Counter_apart rfl

private theorem s6Step197Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step197HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step197HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197Counter_checked : compileHmrCounterStepLog s6Step197HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step197CounterWork=some s6Step197CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step197HeadFvAfter.live := fun q hq => s6Step197Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step197Counter_borrowed

private def s6Step197EntryFAfter : Arena := s6Step197EntryFBefore

private theorem s6Step197EntryBank_incomingDistinct : ([s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197EntryF_Incoming : rowsOwned s6Step197EntryFBefore [s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow] 0 s6Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197EntryBank_outgoingOwned : rowsOwned s6Step197EntryGvAfter [s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step197EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197EntryF_Outgoing : rowsOwned s6Step197EntryGvAfter [s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut] :=
  hmrRows_owned_drop s6Step197EntryGvAfter [s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut] 0 s6Step197EntryBank_outgoingOwned

private theorem s6Step197EntryF_distinct : (s6Step197EntryFRow.sign::s6Step197EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197EntryF_owned : (s6Step197EntryFRow.sign::s6Step197EntryFRow.payload).toFinset⊆s6Step197EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EntryF_reserved : s6Step197EntryFBefore.reserve s6Step197EntryFFresh.toFinset=some s6Step197EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197EntryFFresh,arenaWires]
  · norm_num [s6Step197EntryFBefore,s6Step197EntryFFresh,arenaWires]
  · simp only [s6Step197EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step197EntryF_checked : planRowResizeLog s6Step197EntryFBefore s6Step197EntryFRow 172 s6Step197EntryFFresh=
    some (s6Step197EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩,growRow 795 s6Step197EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step197EntryFBefore s6Step197EntryFAfter s6Step197EntryFRow 172 s6Step197EntryFFresh
    s6Step197EntryF_distinct s6Step197EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197EntryF_reserved
  have rowEq : WindowRow.mk (s6Step197EntryFRow.payload++s6Step197EntryFFresh) s6Step197EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step197EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197EntryFvAfter : Arena := s6Step197EntryGAfter

private def s6Step197EntryFvBefore : Arena := s6Step197EntryGAfter

private theorem s6Step197EntryFv_Incoming : rowsOwned s6Step197EntryFvBefore [s6Step197EntryFvRow,s6Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow] 2 s6Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197EntryFv_Outgoing : rowsOwned s6Step197EntryGvAfter [s6Step197EntryFvOut,s6Step197EntryGvOut] :=
  hmrRows_owned_drop s6Step197EntryGvAfter [s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut] 2 s6Step197EntryBank_outgoingOwned

private theorem s6Step197EntryFv_distinct : (s6Step197EntryFvRow.sign::s6Step197EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197EntryFv_owned : (s6Step197EntryFvRow.sign::s6Step197EntryFvRow.payload).toFinset⊆s6Step197EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EntryFv_reserved : s6Step197EntryFvBefore.reserve s6Step197EntryFvFresh.toFinset=some s6Step197EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197EntryFvFresh,arenaWires]
  · norm_num [s6Step197EntryFvBefore,s6Step197EntryGAfter,s6Step197EntryFvFresh,arenaWires]
  · simp only [s6Step197EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step197EntryFv_checked : planRowResizeLog s6Step197EntryFvBefore s6Step197EntryFvRow 113 s6Step197EntryFvFresh=
    some (s6Step197EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩,growRow 776 s6Step197EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step197EntryFvBefore s6Step197EntryFvAfter s6Step197EntryFvRow 113 s6Step197EntryFvFresh
    s6Step197EntryFv_distinct s6Step197EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step197EntryFvRow.payload++s6Step197EntryFvFresh) s6Step197EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step197EntryGBefore : Arena := s6Step197EntryFBefore

private theorem s6Step197EntryG_Incoming : rowsOwned s6Step197EntryGBefore [s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow] 1 s6Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197EntryG_Outgoing : rowsOwned s6Step197EntryGvAfter [s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut] :=
  hmrRows_owned_drop s6Step197EntryGvAfter [s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut] 1 s6Step197EntryBank_outgoingOwned

private theorem s6Step197EntryG_distinct : (s6Step197EntryGRow.sign::s6Step197EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197EntryG_owned : (s6Step197EntryGRow.sign::s6Step197EntryGRow.payload).toFinset⊆s6Step197EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EntryG_reserved : s6Step197EntryGBefore.reserve s6Step197EntryGFresh.toFinset=some s6Step197EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step197EntryGBefore,s6Step197EntryFBefore,s6Step197EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step197EntryGAfter,s6Step197EntryGBefore,s6Step197EntryFBefore,s6Step197EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197EntryG_checked : planRowResizeLog s6Step197EntryGBefore s6Step197EntryGRow 172 s6Step197EntryGFresh=
    some (s6Step197EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880],777⟩,growRow 777 s6Step197EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step197EntryGBefore s6Step197EntryGAfter s6Step197EntryGRow 172 s6Step197EntryGFresh
    s6Step197EntryG_distinct s6Step197EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197EntryG_reserved
  have rowEq : WindowRow.mk (s6Step197EntryGRow.payload++s6Step197EntryGFresh) s6Step197EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step197EntryGvBefore : Arena := s6Step197EntryGAfter

private theorem s6Step197EntryGv_Incoming : rowsOwned s6Step197EntryGvBefore [s6Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow] 3 s6Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197EntryGv_Outgoing : rowsOwned s6Step197EntryGvAfter [s6Step197EntryGvOut] :=
  hmrRows_owned_drop s6Step197EntryGvAfter [s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut] 3 s6Step197EntryBank_outgoingOwned

private theorem s6Step197EntryGv_distinct : (s6Step197EntryGvRow.sign::s6Step197EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197EntryGv_owned : (s6Step197EntryGvRow.sign::s6Step197EntryGvRow.payload).toFinset⊆s6Step197EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197EntryGv_reserved : s6Step197EntryGvBefore.reserve s6Step197EntryGvFresh.toFinset=some s6Step197EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197EntryGvFresh,arenaWires]
  · norm_num [s6Step197EntryGvBefore,s6Step197EntryGAfter,s6Step197EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step197EntryGvAfter,s6Step197EntryGvBefore,s6Step197EntryGAfter,s6Step197EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197EntryGv_checked : planRowResizeLog s6Step197EntryGvBefore s6Step197EntryGvRow 113 s6Step197EntryGvFresh=
    some (s6Step197EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786],775⟩,growRow 775 s6Step197EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step197EntryGvBefore s6Step197EntryGvAfter s6Step197EntryGvRow 113 s6Step197EntryGvFresh
    s6Step197EntryGv_distinct s6Step197EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step197EntryGvRow.payload++s6Step197EntryGvFresh) s6Step197EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step197EntryBank_rows : planWindowRowsLog s6Step197EntryFBefore [(s6Step197EntryFRow,172),(s6Step197EntryGRow,172),(s6Step197EntryFvRow,113),(s6Step197EntryGvRow,113)] [s6Step197EntryFFresh,s6Step197EntryGFresh,s6Step197EntryFvFresh,s6Step197EntryGvFresh]=
    some (s6Step197EntryGvAfter,[s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut],(growRow 795 s6Step197EntryFFresh ++ (growRow 777 s6Step197EntryGFresh ++ (growRow 776 s6Step197EntryFvFresh ++ (growRow 775 s6Step197EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step197EntryGvAfter [] []=some (s6Step197EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step197EntryGvBefore s6Step197EntryGvAfter s6Step197EntryGvAfter
    s6Step197EntryGvRow s6Step197EntryGvOut 113 s6Step197EntryGvFresh [] [] []
    (growRow 775 s6Step197EntryGvFresh) ([]) s6Step197EntryGv_Incoming s6Step197EntryGv_checked h4 s6Step197EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step197EntryFvBefore s6Step197EntryFvAfter s6Step197EntryGvAfter
    s6Step197EntryFvRow s6Step197EntryFvOut 113 s6Step197EntryFvFresh [(s6Step197EntryGvRow,113)] [s6Step197EntryGvFresh] [s6Step197EntryGvOut]
    (growRow 776 s6Step197EntryFvFresh) ((growRow 775 s6Step197EntryGvFresh ++ [])) s6Step197EntryFv_Incoming s6Step197EntryFv_checked h3 s6Step197EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step197EntryGBefore s6Step197EntryGAfter s6Step197EntryGvAfter
    s6Step197EntryGRow s6Step197EntryGOut 172 s6Step197EntryGFresh [(s6Step197EntryFvRow,113),(s6Step197EntryGvRow,113)] [s6Step197EntryFvFresh,s6Step197EntryGvFresh] [s6Step197EntryFvOut,s6Step197EntryGvOut]
    (growRow 777 s6Step197EntryGFresh) ((growRow 776 s6Step197EntryFvFresh ++ (growRow 775 s6Step197EntryGvFresh ++ []))) s6Step197EntryG_Incoming s6Step197EntryG_checked h2 s6Step197EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step197EntryFBefore s6Step197EntryFAfter s6Step197EntryGvAfter
    s6Step197EntryFRow s6Step197EntryFOut 172 s6Step197EntryFFresh [(s6Step197EntryGRow,172),(s6Step197EntryFvRow,113),(s6Step197EntryGvRow,113)] [s6Step197EntryGFresh,s6Step197EntryFvFresh,s6Step197EntryGvFresh] [s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut]
    (growRow 795 s6Step197EntryFFresh) ((growRow 777 s6Step197EntryGFresh ++ (growRow 776 s6Step197EntryFvFresh ++ (growRow 775 s6Step197EntryGvFresh ++ [])))) s6Step197EntryF_Incoming s6Step197EntryF_checked h1 s6Step197EntryF_Outgoing
  exact h0

private theorem s6Step197EntryBank_checked : compileHmrBankResizeLog .entry s6Step197EntryFBefore ⟨s6Step197EntryFRow,s6Step197EntryGRow,s6Step197EntryFvRow,s6Step197EntryGvRow⟩ ⟨172,172,113,113⟩ [s6Step197EntryFFresh,s6Step197EntryGFresh,s6Step197EntryFvFresh,s6Step197EntryGvFresh]=
    some (s6Step197EntryGvAfter,⟨s6Step197EntryFOut,s6Step197EntryGOut,s6Step197EntryFvOut,s6Step197EntryGvOut⟩,(growRow 795 s6Step197EntryFFresh ++ (growRow 777 s6Step197EntryGFresh ++ (growRow 776 s6Step197EntryFvFresh ++ (growRow 775 s6Step197EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step197EntryBank_rows]
  rfl

private def s6Step197ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<427) ∨ (428≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197ExitFBefore : Arena := s6Step197ExitGAfter

private def s6Step197ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩

private def s6Step197ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833],776⟩

private def s6Step197ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880, 907],777⟩

private def s6Step197ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786, 854],775⟩

private theorem s6Step197ExitBank_incomingDistinct : ([s6Step197ExitGRow,s6Step197ExitFRow,s6Step197ExitFvRow,s6Step197ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197ExitF_Incoming : rowsOwned s6Step197ExitFBefore [s6Step197ExitFRow,s6Step197ExitFvRow,s6Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197ExitGRow,s6Step197ExitFRow,s6Step197ExitFvRow,s6Step197ExitGvRow] 1 s6Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197ExitBank_outgoingOwned : rowsOwned s6Step197ExitGvAfter [s6Step197ExitGOut,s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step197ExitGvAfter (fun q => (0≤q ∧ q<427) ∨ (428≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197ExitF_Outgoing : rowsOwned s6Step197ExitGvAfter [s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut] :=
  hmrRows_owned_drop s6Step197ExitGvAfter [s6Step197ExitGOut,s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut] 1 s6Step197ExitBank_outgoingOwned

private theorem s6Step197ExitF_distinct : (s6Step197ExitFRow.sign::s6Step197ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197ExitF_owned : (s6Step197ExitFRow.sign::s6Step197ExitFRow.payload).toFinset⊆s6Step197ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197ExitF_retired : s6Step197ExitFBefore.retireSet s6Step197ExitFExtra.toFinset=s6Step197ExitFAfter := by
  unfold Arena.retireSet s6Step197ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step197ExitFBefore,s6Step197ExitGAfter,s6Step197ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step197ExitF_checked : planRowResizeLog s6Step197ExitFBefore s6Step197ExitFRow 171 []=
    some (s6Step197ExitFAfter,s6Step197ExitFOut,shrinkRow 795 s6Step197ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step197ExitFBefore s6Step197ExitFRow 171 s6Step197ExitF_distinct s6Step197ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step197ExitFRow.payload.take 171) s6Step197ExitFRow.sign=s6Step197ExitFOut := by decide +kernel
  have hi : s6Step197ExitFRow.payload.drop 171=s6Step197ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step197ExitF_retired] at result
  exact result

private def s6Step197ExitFvAfter : Arena := s6Step197ExitFAfter

private def s6Step197ExitFvBefore : Arena := s6Step197ExitFAfter

private theorem s6Step197ExitFv_Incoming : rowsOwned s6Step197ExitFvBefore [s6Step197ExitFvRow,s6Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197ExitGRow,s6Step197ExitFRow,s6Step197ExitFvRow,s6Step197ExitGvRow] 2 s6Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197ExitFvBefore (fun q => (0≤q ∧ q<427) ∨ (428≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197ExitFv_Outgoing : rowsOwned s6Step197ExitGvAfter [s6Step197ExitFvOut,s6Step197ExitGvOut] :=
  hmrRows_owned_drop s6Step197ExitGvAfter [s6Step197ExitGOut,s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut] 2 s6Step197ExitBank_outgoingOwned

private theorem s6Step197ExitFv_distinct : (s6Step197ExitFvRow.sign::s6Step197ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197ExitFv_owned : (s6Step197ExitFvRow.sign::s6Step197ExitFvRow.payload).toFinset⊆s6Step197ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197ExitFvBefore (fun q => (0≤q ∧ q<427) ∨ (428≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197ExitFv_reserved : s6Step197ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step197ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step197ExitFv_checked : planRowResizeLog s6Step197ExitFvBefore s6Step197ExitFvRow 114 []=
    some (s6Step197ExitFvAfter,s6Step197ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step197ExitFvBefore s6Step197ExitFvAfter s6Step197ExitFvRow 114 []
    s6Step197ExitFv_distinct s6Step197ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step197ExitFvRow.payload++[]) s6Step197ExitFvRow.sign=s6Step197ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step197ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step197ExitG_Incoming : rowsOwned s6Step197ExitGBefore [s6Step197ExitGRow,s6Step197ExitFRow,s6Step197ExitFvRow,s6Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197ExitGRow,s6Step197ExitFRow,s6Step197ExitFvRow,s6Step197ExitGvRow] 0 s6Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197ExitG_Outgoing : rowsOwned s6Step197ExitGvAfter [s6Step197ExitGOut,s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut] :=
  hmrRows_owned_drop s6Step197ExitGvAfter [s6Step197ExitGOut,s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut] 0 s6Step197ExitBank_outgoingOwned

private theorem s6Step197ExitG_distinct : (s6Step197ExitGRow.sign::s6Step197ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197ExitG_owned : (s6Step197ExitGRow.sign::s6Step197ExitGRow.payload).toFinset⊆s6Step197ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197ExitG_retired : s6Step197ExitGBefore.retireSet s6Step197ExitGExtra.toFinset=s6Step197ExitGAfter := by
  unfold Arena.retireSet s6Step197ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step197ExitGBefore,s6Step197ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step197ExitG_checked : planRowResizeLog s6Step197ExitGBefore s6Step197ExitGRow 171 []=
    some (s6Step197ExitGAfter,s6Step197ExitGOut,shrinkRow 777 s6Step197ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step197ExitGBefore s6Step197ExitGRow 171 s6Step197ExitG_distinct s6Step197ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step197ExitGRow.payload.take 171) s6Step197ExitGRow.sign=s6Step197ExitGOut := by decide +kernel
  have hi : s6Step197ExitGRow.payload.drop 171=s6Step197ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step197ExitG_retired] at result
  exact result

private def s6Step197ExitGvBefore : Arena := s6Step197ExitFAfter

private theorem s6Step197ExitGv_Incoming : rowsOwned s6Step197ExitGvBefore [s6Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197ExitGRow,s6Step197ExitFRow,s6Step197ExitFvRow,s6Step197ExitGvRow] 3 s6Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197ExitGvBefore (fun q => (0≤q ∧ q<427) ∨ (428≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197ExitGv_Outgoing : rowsOwned s6Step197ExitGvAfter [s6Step197ExitGvOut] :=
  hmrRows_owned_drop s6Step197ExitGvAfter [s6Step197ExitGOut,s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut] 3 s6Step197ExitBank_outgoingOwned

private theorem s6Step197ExitGv_distinct : (s6Step197ExitGvRow.sign::s6Step197ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197ExitGv_owned : (s6Step197ExitGvRow.sign::s6Step197ExitGvRow.payload).toFinset⊆s6Step197ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197ExitGvBefore (fun q => (0≤q ∧ q<427) ∨ (428≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197ExitGv_retired : s6Step197ExitGvBefore.retireSet s6Step197ExitGvExtra.toFinset=s6Step197ExitGvAfter := by
  unfold Arena.retireSet s6Step197ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step197ExitGvBefore,s6Step197ExitFAfter,s6Step197ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step197ExitGv_checked : planRowResizeLog s6Step197ExitGvBefore s6Step197ExitGvRow 112 []=
    some (s6Step197ExitGvAfter,s6Step197ExitGvOut,shrinkRow 775 s6Step197ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step197ExitGvBefore s6Step197ExitGvRow 112 s6Step197ExitGv_distinct s6Step197ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step197ExitGvRow.payload.take 112) s6Step197ExitGvRow.sign=s6Step197ExitGvOut := by decide +kernel
  have hi : s6Step197ExitGvRow.payload.drop 112=s6Step197ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step197ExitGv_retired] at result
  exact result

private theorem s6Step197ExitBank_rows : planWindowRowsLog s6Step197ExitGBefore [(s6Step197ExitGRow,171),(s6Step197ExitFRow,171),(s6Step197ExitFvRow,114),(s6Step197ExitGvRow,112)] [[],[],[],[]]=
    some (s6Step197ExitGvAfter,[s6Step197ExitGOut,s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut],(shrinkRow 777 s6Step197ExitGExtra ++ (shrinkRow 795 s6Step197ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step197ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step197ExitGvAfter [] []=some (s6Step197ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step197ExitGvBefore s6Step197ExitGvAfter s6Step197ExitGvAfter
    s6Step197ExitGvRow s6Step197ExitGvOut 112 [] [] [] []
    (shrinkRow 775 s6Step197ExitGvExtra) ([]) s6Step197ExitGv_Incoming s6Step197ExitGv_checked h4 s6Step197ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step197ExitFvBefore s6Step197ExitFvAfter s6Step197ExitGvAfter
    s6Step197ExitFvRow s6Step197ExitFvOut 114 [] [(s6Step197ExitGvRow,112)] [[]] [s6Step197ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step197ExitGvExtra ++ [])) s6Step197ExitFv_Incoming s6Step197ExitFv_checked h3 s6Step197ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step197ExitFBefore s6Step197ExitFAfter s6Step197ExitGvAfter
    s6Step197ExitFRow s6Step197ExitFOut 171 [] [(s6Step197ExitFvRow,114),(s6Step197ExitGvRow,112)] [[],[]] [s6Step197ExitFvOut,s6Step197ExitGvOut]
    (shrinkRow 795 s6Step197ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step197ExitGvExtra ++ []))) s6Step197ExitF_Incoming s6Step197ExitF_checked h2 s6Step197ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step197ExitGBefore s6Step197ExitGAfter s6Step197ExitGvAfter
    s6Step197ExitGRow s6Step197ExitGOut 171 [] [(s6Step197ExitFRow,171),(s6Step197ExitFvRow,114),(s6Step197ExitGvRow,112)] [[],[],[]] [s6Step197ExitFOut,s6Step197ExitFvOut,s6Step197ExitGvOut]
    (shrinkRow 777 s6Step197ExitGExtra) ((shrinkRow 795 s6Step197ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step197ExitGvExtra ++ [])))) s6Step197ExitG_Incoming s6Step197ExitG_checked h1 s6Step197ExitG_Outgoing
  exact h0

private theorem s6Step197ExitBank_checked : compileHmrBankResizeLog .exit s6Step197ExitGBefore ⟨s6Step197ExitFRow,s6Step197ExitGRow,s6Step197ExitFvRow,s6Step197ExitGvRow⟩ ⟨171,171,114,112⟩ [[],[],[],[]]=
    some (s6Step197ExitGvAfter,⟨s6Step197ExitFOut,s6Step197ExitGOut,s6Step197ExitFvOut,s6Step197ExitGvOut⟩,(shrinkRow 777 s6Step197ExitGExtra ++ (shrinkRow 795 s6Step197ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step197ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step197ExitBank_rows]
  rfl

private theorem s6Step197Add0_apart : Disjoint s6Step197Add0Arena.live s6Step197Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step197Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197Add0_card : s6Step197Add0Arena.live.card=890 := by
  decide +kernel

private theorem s6Step197Add0_borrowed : s6Step197Add0Arena.checkBorrow (hmrHybridCount s6Step197Add0Arena s6Step197Add0B.length) s6Step197Add0Work=some s6Step197Add0During := by
  have len : s6Step197Add0Work.length=hmrHybridCount s6Step197Add0Arena s6Step197Add0B.length := by
    rw [hmrHybridCount,s6Step197Add0_card]
    decide +kernel
  have nd : s6Step197Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step197Add0Arena s6Step197Add0During s6Step197Add0Work.toFinset s6Step197Add0_bounded s6Step197Add0_apart rfl

private theorem s6Step197Add0_distinct : (891::853::903::(s6Step197Add0A++s6Step197Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197Add0_owned : (891::853::903::(s6Step197Add0A++s6Step197Add0B)).toFinset⊆s6Step197Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step197Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197Add0_checked : compileHmrHybridCinLog s6Step197Add0Arena 853 891 903 s6Step197Add0A s6Step197Add0B s6Step197Add0Work=some s6Step197Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step197Add0Arena s6Step197Add0During 853 891 903 s6Step197Add0A s6Step197Add0B s6Step197Add0Work
    (by decide +kernel) (by decide +kernel) s6Step197Add0_distinct
    (fun q hq => s6Step197Add0_owned (List.mem_toFinset.mpr hq)) s6Step197Add0_borrowed

private theorem s6Step197Add1_apart : Disjoint s6Step197Add1Arena.live s6Step197Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step197Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197Add1_card : s6Step197Add1Arena.live.card=890 := by
  decide +kernel

private theorem s6Step197Add1_borrowed : s6Step197Add1Arena.checkBorrow (hmrHybridCount s6Step197Add1Arena s6Step197Add1B.length) s6Step197Add1Work=some s6Step197Add1During := by
  have len : s6Step197Add1Work.length=hmrHybridCount s6Step197Add1Arena s6Step197Add1B.length := by
    rw [hmrHybridCount,s6Step197Add1_card]
    decide +kernel
  have nd : s6Step197Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step197Add1Arena s6Step197Add1During s6Step197Add1Work.toFinset s6Step197Add1_bounded s6Step197Add1_apart rfl

private theorem s6Step197Add1_distinct : (891::853::903::(s6Step197Add1A++s6Step197Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197Add1_owned : (891::853::903::(s6Step197Add1A++s6Step197Add1B)).toFinset⊆s6Step197Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step197Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197Add1_checked : compileHmrHybridCinLog s6Step197Add1Arena 853 891 903 s6Step197Add1A s6Step197Add1B s6Step197Add1Work=some s6Step197Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step197Add1Arena s6Step197Add1During 853 891 903 s6Step197Add1A s6Step197Add1B s6Step197Add1Work
    (by decide +kernel) (by decide +kernel) s6Step197Add1_distinct
    (fun q hq => s6Step197Add1_owned (List.mem_toFinset.mpr hq)) s6Step197Add1_borrowed

private theorem s6Step197F4_apart : Disjoint (s6Step197Add0A++s6Step197Add0B).toFinset (s6Step197Add1A++s6Step197Add1B).toFinset := by
  have nd : ((s6Step197Add0A++s6Step197Add0B)++(s6Step197Add1A++s6Step197Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step197F4_carry : s6Step197F4FlagArena.checkBorrow 1 [903]=some s6Step197Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step197F4FlagArena,s6Step197HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step197F4FlagArena,s6Step197HeadFvAfter,s6Step197Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197F4_distinct : (838::853::891::903::((s6Step197Add0A++s6Step197Add1A)++(s6Step197Add0B++s6Step197Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197F4_flag : s6Step197HeadFvAfter.checkBorrow 1 [891]=some s6Step197F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step197HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step197F4_owned : (838::853::((s6Step197Add0A++s6Step197Add1A)++(s6Step197Add0B++s6Step197Add1B))).toFinset⊆s6Step197HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step197HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197F4_checked : compileHmrHybridF4Log s6Step197HeadFvAfter 838 853 s6Step197Add0A s6Step197Add0B s6Step197Add1A s6Step197Add1B [891] [903] s6Step197Add0Work s6Step197Add1Work=some s6Step197F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step197HeadFvAfter s6Step197F4FlagArena s6Step197Add0Arena s6Step197Add0During s6Step197Add1During 838 853
    s6Step197Add0A s6Step197Add0B s6Step197Add1A s6Step197Add1B [891] [903] s6Step197Add0Work s6Step197Add1Work
    (fun q hq => s6Step197F4_owned (List.mem_toFinset.mpr hq)) s6Step197F4_flag s6Step197F4_carry
    s6Step197F4_distinct s6Step197F4_apart s6Step197Add0_checked s6Step197Add1_checked

private theorem s6Step197Front_branch : s6Step197FrontSigmaArena.checkBorrow 1 [853]=some s6Step197HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step197FrontSigmaArena,s6Step197EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step197FrontSigmaArena,s6Step197EntryGvAfter,s6Step197HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197Front_entry : HmrFrontEntryValid s6Step197EntryFBefore s6Step197FrontBank 172 113 ⟨171,171,114,112⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step197FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step197EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step197EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step197FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step197Front_sigma : s6Step197EntryGvAfter.checkBorrow 1 [838]=some s6Step197FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step197EntryGvAfter,arenaWires]
  · rfl

private def s6Step197HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197HeadFBefore : Arena := s6Step197HeadGAfter

private def s6Step197HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step197HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843],776⟩

private def s6Step197HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880],777⟩

private def s6Step197HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786],775⟩

private theorem s6Step197HeadBank_incomingDistinct : ([s6Step197HeadGRow,s6Step197HeadFRow,s6Step197HeadGvRow,s6Step197HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197HeadF_Incoming : rowsOwned s6Step197HeadFBefore [s6Step197HeadFRow,s6Step197HeadGvRow,s6Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197HeadGRow,s6Step197HeadFRow,s6Step197HeadGvRow,s6Step197HeadFvRow] 1 s6Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197HeadBank_outgoingOwned : rowsOwned s6Step197HeadFvAfter [s6Step197HeadGOut,s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step197HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197HeadF_Outgoing : rowsOwned s6Step197HeadFvAfter [s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut] :=
  hmrRows_owned_drop s6Step197HeadFvAfter [s6Step197HeadGOut,s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut] 1 s6Step197HeadBank_outgoingOwned

private theorem s6Step197HeadF_distinct : (s6Step197HeadFRow.sign::s6Step197HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197HeadF_owned : (s6Step197HeadFRow.sign::s6Step197HeadFRow.payload).toFinset⊆s6Step197HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197HeadF_reserved : s6Step197HeadFBefore.reserve s6Step197HeadFFresh.toFinset=some s6Step197HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197HeadFFresh,arenaWires]
  · norm_num [s6Step197HeadFBefore,s6Step197HeadGAfter,s6Step197HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step197HeadFAfter,s6Step197HeadFBefore,s6Step197HeadGAfter,s6Step197HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197HeadF_checked : planRowResizeLog s6Step197HeadFBefore s6Step197HeadFRow 173 s6Step197HeadFFresh=
    some (s6Step197HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩,growRow 795 s6Step197HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step197HeadFBefore s6Step197HeadFAfter s6Step197HeadFRow 173 s6Step197HeadFFresh
    s6Step197HeadF_distinct s6Step197HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197HeadF_reserved
  have rowEq : WindowRow.mk (s6Step197HeadFRow.payload++s6Step197HeadFFresh) s6Step197HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step197HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step197HeadFvBefore : Arena := s6Step197HeadGvAfter

private theorem s6Step197HeadFv_Incoming : rowsOwned s6Step197HeadFvBefore [s6Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197HeadGRow,s6Step197HeadFRow,s6Step197HeadGvRow,s6Step197HeadFvRow] 3 s6Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197HeadFv_Outgoing : rowsOwned s6Step197HeadFvAfter [s6Step197HeadFvOut] :=
  hmrRows_owned_drop s6Step197HeadFvAfter [s6Step197HeadGOut,s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut] 3 s6Step197HeadBank_outgoingOwned

private theorem s6Step197HeadFv_distinct : (s6Step197HeadFvRow.sign::s6Step197HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197HeadFv_owned : (s6Step197HeadFvRow.sign::s6Step197HeadFvRow.payload).toFinset⊆s6Step197HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197HeadFv_reserved : s6Step197HeadFvBefore.reserve s6Step197HeadFvFresh.toFinset=some s6Step197HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197HeadFvFresh,arenaWires]
  · norm_num [s6Step197HeadFvBefore,s6Step197HeadGvAfter,s6Step197HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step197HeadFvAfter,s6Step197HeadFvBefore,s6Step197HeadGvAfter,s6Step197HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197HeadFv_checked : planRowResizeLog s6Step197HeadFvBefore s6Step197HeadFvRow 114 s6Step197HeadFvFresh=
    some (s6Step197HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833],776⟩,growRow 776 s6Step197HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step197HeadFvBefore s6Step197HeadFvAfter s6Step197HeadFvRow 114 s6Step197HeadFvFresh
    s6Step197HeadFv_distinct s6Step197HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step197HeadFvRow.payload++s6Step197HeadFvFresh) s6Step197HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step197HeadG_Incoming : rowsOwned s6Step197HeadGBefore [s6Step197HeadGRow,s6Step197HeadFRow,s6Step197HeadGvRow,s6Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197HeadGRow,s6Step197HeadFRow,s6Step197HeadGvRow,s6Step197HeadFvRow] 0 s6Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197HeadG_Outgoing : rowsOwned s6Step197HeadFvAfter [s6Step197HeadGOut,s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut] :=
  hmrRows_owned_drop s6Step197HeadFvAfter [s6Step197HeadGOut,s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut] 0 s6Step197HeadBank_outgoingOwned

private theorem s6Step197HeadG_distinct : (s6Step197HeadGRow.sign::s6Step197HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197HeadG_owned : (s6Step197HeadGRow.sign::s6Step197HeadGRow.payload).toFinset⊆s6Step197HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197HeadG_reserved : s6Step197HeadGBefore.reserve s6Step197HeadGFresh.toFinset=some s6Step197HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197HeadGFresh,arenaWires]
  · norm_num [s6Step197HeadGBefore,s6Step197HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step197HeadGAfter,s6Step197HeadGBefore,s6Step197HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197HeadG_checked : planRowResizeLog s6Step197HeadGBefore s6Step197HeadGRow 173 s6Step197HeadGFresh=
    some (s6Step197HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880, 907],777⟩,growRow 777 s6Step197HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step197HeadGBefore s6Step197HeadGAfter s6Step197HeadGRow 173 s6Step197HeadGFresh
    s6Step197HeadG_distinct s6Step197HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197HeadG_reserved
  have rowEq : WindowRow.mk (s6Step197HeadGRow.payload++s6Step197HeadGFresh) s6Step197HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 822, 880, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step197HeadGvBefore : Arena := s6Step197HeadFAfter

private theorem s6Step197HeadGv_Incoming : rowsOwned s6Step197HeadGvBefore [s6Step197HeadGvRow,s6Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step197HeadGRow,s6Step197HeadFRow,s6Step197HeadGvRow,s6Step197HeadFvRow] 2 s6Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step197HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step197HeadGv_Outgoing : rowsOwned s6Step197HeadFvAfter [s6Step197HeadGvOut,s6Step197HeadFvOut] :=
  hmrRows_owned_drop s6Step197HeadFvAfter [s6Step197HeadGOut,s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut] 2 s6Step197HeadBank_outgoingOwned

private theorem s6Step197HeadGv_distinct : (s6Step197HeadGvRow.sign::s6Step197HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step197HeadGv_owned : (s6Step197HeadGvRow.sign::s6Step197HeadGvRow.payload).toFinset⊆s6Step197HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step197HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step197HeadGv_reserved : s6Step197HeadGvBefore.reserve s6Step197HeadGvFresh.toFinset=some s6Step197HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step197HeadGvFresh,arenaWires]
  · norm_num [s6Step197HeadGvBefore,s6Step197HeadFAfter,s6Step197HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step197HeadGvAfter,s6Step197HeadGvBefore,s6Step197HeadFAfter,s6Step197HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step197HeadGv_checked : planRowResizeLog s6Step197HeadGvBefore s6Step197HeadGvRow 114 s6Step197HeadGvFresh=
    some (s6Step197HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786, 854],775⟩,growRow 775 s6Step197HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step197HeadGvBefore s6Step197HeadGvAfter s6Step197HeadGvRow 114 s6Step197HeadGvFresh
    s6Step197HeadGv_distinct s6Step197HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step197HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step197HeadGvRow.payload++s6Step197HeadGvFresh) s6Step197HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 786, 854],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step197HeadBank_rows : planWindowRowsLog s6Step197HeadGBefore [(s6Step197HeadGRow,173),(s6Step197HeadFRow,173),(s6Step197HeadGvRow,114),(s6Step197HeadFvRow,114)] [s6Step197HeadGFresh,s6Step197HeadFFresh,s6Step197HeadGvFresh,s6Step197HeadFvFresh]=
    some (s6Step197HeadFvAfter,[s6Step197HeadGOut,s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut],(growRow 777 s6Step197HeadGFresh ++ (growRow 795 s6Step197HeadFFresh ++ (growRow 775 s6Step197HeadGvFresh ++ (growRow 776 s6Step197HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step197HeadFvAfter [] []=some (s6Step197HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step197HeadFvBefore s6Step197HeadFvAfter s6Step197HeadFvAfter
    s6Step197HeadFvRow s6Step197HeadFvOut 114 s6Step197HeadFvFresh [] [] []
    (growRow 776 s6Step197HeadFvFresh) ([]) s6Step197HeadFv_Incoming s6Step197HeadFv_checked h4 s6Step197HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step197HeadGvBefore s6Step197HeadGvAfter s6Step197HeadFvAfter
    s6Step197HeadGvRow s6Step197HeadGvOut 114 s6Step197HeadGvFresh [(s6Step197HeadFvRow,114)] [s6Step197HeadFvFresh] [s6Step197HeadFvOut]
    (growRow 775 s6Step197HeadGvFresh) ((growRow 776 s6Step197HeadFvFresh ++ [])) s6Step197HeadGv_Incoming s6Step197HeadGv_checked h3 s6Step197HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step197HeadFBefore s6Step197HeadFAfter s6Step197HeadFvAfter
    s6Step197HeadFRow s6Step197HeadFOut 173 s6Step197HeadFFresh [(s6Step197HeadGvRow,114),(s6Step197HeadFvRow,114)] [s6Step197HeadGvFresh,s6Step197HeadFvFresh] [s6Step197HeadGvOut,s6Step197HeadFvOut]
    (growRow 795 s6Step197HeadFFresh) ((growRow 775 s6Step197HeadGvFresh ++ (growRow 776 s6Step197HeadFvFresh ++ []))) s6Step197HeadF_Incoming s6Step197HeadF_checked h2 s6Step197HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step197HeadGBefore s6Step197HeadGAfter s6Step197HeadFvAfter
    s6Step197HeadGRow s6Step197HeadGOut 173 s6Step197HeadGFresh [(s6Step197HeadFRow,173),(s6Step197HeadGvRow,114),(s6Step197HeadFvRow,114)] [s6Step197HeadFFresh,s6Step197HeadGvFresh,s6Step197HeadFvFresh] [s6Step197HeadFOut,s6Step197HeadGvOut,s6Step197HeadFvOut]
    (growRow 777 s6Step197HeadGFresh) ((growRow 795 s6Step197HeadFFresh ++ (growRow 775 s6Step197HeadGvFresh ++ (growRow 776 s6Step197HeadFvFresh ++ [])))) s6Step197HeadG_Incoming s6Step197HeadG_checked h1 s6Step197HeadG_Outgoing
  exact h0

private theorem s6Step197HeadBank_checked : compileHmrBankResizeLog .headroom s6Step197HeadGBefore ⟨s6Step197HeadFRow,s6Step197HeadGRow,s6Step197HeadFvRow,s6Step197HeadGvRow⟩ ⟨173,173,114,114⟩ [s6Step197HeadGFresh,s6Step197HeadFFresh,s6Step197HeadGvFresh,s6Step197HeadFvFresh]=
    some (s6Step197HeadFvAfter,⟨s6Step197HeadFOut,s6Step197HeadGOut,s6Step197HeadFvOut,s6Step197HeadGvOut⟩,(growRow 777 s6Step197HeadGFresh ++ (growRow 795 s6Step197HeadFFresh ++ (growRow 775 s6Step197HeadGvFresh ++ (growRow 776 s6Step197HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step197HeadBank_rows]
  rfl

private theorem s6Step197Front_checked : compileHmrSourceFrontLog s6Step197EntryFBefore s6Step197FrontBank 172 113 ⟨171,171,114,112⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step197FrontLog=some s6Step197FrontPlan := by
  have pairEq : s6Step197FrontPair=⟨s6Step197HeadFRow,s6Step197HeadGRow,s6Step197HeadFvRow,s6Step197HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step197FrontHead=⟨s6Step197ExitFRow,s6Step197ExitGRow,s6Step197ExitFvRow,s6Step197ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step197Add0A=s6Step197FrontHead.f.wires := by decide +kernel
  have gEq : s6Step197Add0B=s6Step197FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step197Add1A=s6Step197FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step197Add1B=s6Step197FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step197EntryFBefore s6Step197FrontBank 172 113 ⟨171,171,114,112⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step197FrontLog s6Step197FrontPlan
  · exact s6Step197Front_entry
  · exact s6Step197EntryBank_checked
  · exact s6Step197Front_sigma
  · rfl
  · exact s6Step197Front_branch
  · rfl
  · simpa only [s6Step197FrontPlan,pairEq] using s6Step197HeadBank_checked
  · simpa only [s6Step197FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step197F4_checked
  · exact s6Step197Counter_checked
  · rfl
  · simpa only [s6Step197FrontPlan,headEq] using s6Step197ExitBank_checked

private theorem s6Step197Complete_explicit_checked : compileHmrEarlyStepLog s6Step197EntryFBefore s6Step197FrontBank 172 113 ⟨171,171,114,112⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 46 s6Step197CompleteLog=some s6Step197CompletePlan := by
  let Q := s6Step197EarlyControlPlan
  have hq := s6Step197EarlyControl_plan_checked
  have fv1 : s6Step197CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step197CompleteOut.fv.payload[2]?.getD s6Step197CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step197CompleteOut.fv.payload[3]?.getD s6Step197CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step197CompleteOut.fv.payload[4]?.getD s6Step197CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step197EntryFBefore s6Step197EarlyControlArena s6Step197FrontBank 172 113 ⟨171,171,114,112⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 46 s6Step197CompleteLog s6Step197FrontPlan Q
    s6Step197Front_checked s6Step197Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step197Complete_owned s6Step197Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step197EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 769 838 s6Step197CompleteOut.fv.second (s6Step197CompleteOut.fv.payload[2]?.getD s6Step197CompleteOut.fv.sign) (s6Step197CompleteOut.fv.payload[3]?.getD s6Step197CompleteOut.fv.sign) (s6Step197CompleteOut.fv.payload[4]?.getD s6Step197CompleteOut.fv.sign) 853 46 s6Step197EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep197Arena : Arena := s6Step197EntryFBefore
def s6PrivateStep197Bank : WindowBank := s6Step197FrontBank
def s6PrivateStep197Spec : HmrSourceWalkStepLog := ⟨172,113,⟨171,171,114,112⟩,46,.early s6Step197CompleteLog⟩
def s6PrivateStep197Plan : HmrSourceStepPlan := .early s6Step197CompletePlan
theorem s6PrivateStep197_source : s6PrivateStep197Spec=s6ObservedLogs192[5] := rfl
theorem s6PrivateStep197_checked : compileHmrSourceStepLog s6PrivateStep197Arena s6PrivateStep197Bank
    s6PrivateStep197Spec.fgWidth s6PrivateStep197Spec.vWidth s6PrivateStep197Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912]
    6 498 197 s6PrivateStep197Spec.need none s6PrivateStep197Spec.log=some s6PrivateStep197Plan := by
  change compileHmrSourceStepLog s6Step197EntryFBefore s6Step197FrontBank 172 113 ⟨171,171,114,112⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912] 6 498 197 46 none (.early s6Step197CompleteLog)=some (.early s6Step197CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 197<498)]
  rw [s6Step197Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
