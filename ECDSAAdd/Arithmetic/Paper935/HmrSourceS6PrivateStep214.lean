import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep212
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

private def s6Step214CompleteMoves : List (Wire × Wire) := []

private def s6Step214EarlyControlLog : HmrEarlyControlLog := ⟨[858, 881, 873, 802, 882],[807],[822],[825, 869, 786, 810, 809, 817],[]⟩

private def s6Step214FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [873], [], []],[[802], [881], [858], [779]],[[], [], [], []]⟩,[784],[855],[882],[807],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[882, 807, 822, 825]⟩

private def s6Step214CompleteLog : HmrEarlyStepLog := ⟨s6Step214FrontLog,s6Step214CompleteMoves,s6Step214EarlyControlLog⟩

private def s6Step214ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step214ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779],776⟩

private def s6Step214ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],777⟩

private def s6Step214ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩

private def s6Step214FrontOut : WindowBank := ⟨s6Step214ExitFOut,s6Step214ExitGOut,s6Step214ExitFvOut,s6Step214ExitGvOut⟩

private def s6Step214CompleteOut : WindowBank := s6Step214FrontOut.repacked s6Step214CompleteMoves

private def s6Step214EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step214EarlyControlPositiveArena,[807],s6Step214EarlyControlEqualityArena,[822],⟨⟨784,false⟩,[⟨⟨807,false⟩,822⟩]⟩⟩

private def s6Step214EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,858⟩,⟨⟨772,false⟩,881⟩,⟨⟨771,false⟩,873⟩,⟨⟨770,false⟩,802⟩,⟨⟨769,false⟩,882⟩]⟩

private def s6Step214EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step214EarlyControlZeroArena,s6Step214EarlyControlZeroPlan,s6Step214EarlyControlClassPlan,s6Step214EarlyControlFlagArena,s6Step214EarlyControlFittedArena,s6Step214EarlyControlHistoryArena,s6Step214EarlyControlSigmaArena,s6Step214EarlyControlOutputArena,s6Step214EarlyControlLog⟩

private def s6Step214CounterWork : List Wire := [882, 807, 822, 825]

private theorem s6Step214Counter_bounded : s6Step214CounterWork.toFinset⊆arenaWires := by norm_num [s6Step214CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step214HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214CounterDuring : Arena := ⟨s6Step214HeadFvAfter.live∪s6Step214CounterWork.toFinset,Finset.union_subset s6Step214HeadFvAfter.bounded s6Step214Counter_bounded⟩

private def s6Step214EntryFFresh : List Wire := []

private def s6Step214EntryFvFresh : List Wire := []

private def s6Step214EntryGFresh : List Wire := [873]

private def s6Step214EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214EntryGvAfter : Arena := s6Step214EntryGAfter

private def s6Step214EntryGvFresh : List Wire := []

private def s6Step214ExitFExtra : List Wire := [881]

private def s6Step214ExitGExtra : List Wire := [873, 802]

private def s6Step214ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214ExitGvExtra : List Wire := [858]

private def s6Step214Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214Add0Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step214Add0_bounded : s6Step214Add0Work.toFinset⊆arenaWires := by
  have h : s6Step214Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step214Add0During : Arena := ⟨s6Step214Add0Arena.live∪s6Step214Add0Work.toFinset,Finset.union_subset s6Step214Add0Arena.bounded s6Step214Add0_bounded⟩

private def s6Step214Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214Add1Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step214Add1_bounded : s6Step214Add1Work.toFinset⊆arenaWires := by
  have h : s6Step214Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step214Add1During : Arena := ⟨s6Step214Add1Arena.live∪s6Step214Add1Work.toFinset,Finset.union_subset s6Step214Add1Arena.bounded s6Step214Add1_bounded⟩

private def s6Step214F4FlagArena : Arena := ⟨s6Step214HeadFvAfter.live∪{882},Finset.union_subset s6Step214HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step214F4Plan : HmrHybridF4Plan := ⟨s6Step214F4FlagArena,[882],s6Step214Add0Arena,[807],s6Step214Add0During,s6Step214Add0Work,s6Step214Add1During,s6Step214Add1Work⟩

private def s6Step214HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩

private def s6Step214HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779],776⟩

private def s6Step214HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873, 802],777⟩

private def s6Step214HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 858],775⟩

private def s6Step214FrontHead : WindowBank := ⟨s6Step214HeadFOut,s6Step214HeadGOut,s6Step214HeadFvOut,s6Step214HeadGvOut⟩

private def s6Step214EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step214EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step214EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873],777⟩

private def s6Step214EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩

private def s6Step214FrontPair : WindowBank := ⟨s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut⟩

private def s6Step214FrontSigmaArena : Arena := ⟨s6Step214EntryGvAfter.live∪{784},Finset.union_subset s6Step214EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step214HeadFFresh : List Wire := [881]

private def s6Step214HeadFvFresh : List Wire := [779]

private def s6Step214HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214HeadGFresh : List Wire := [802]

private def s6Step214HeadGvFresh : List Wire := [858]

private def s6Step214FrontPlan : HmrSourceFront := ⟨s6Step214EntryGvAfter,s6Step214FrontPair,(growRow 795 s6Step214EntryFFresh ++ (growRow 777 s6Step214EntryGFresh ++ (growRow 776 s6Step214EntryFvFresh ++ (growRow 775 s6Step214EntryGvFresh ++ [])))),s6Step214FrontSigmaArena,[784],s6Step214HeadGBefore,[855],
  s6Step214HeadFvAfter,s6Step214FrontHead,(growRow 777 s6Step214HeadGFresh ++ (growRow 795 s6Step214HeadFFresh ++ (growRow 775 s6Step214HeadGvFresh ++ (growRow 776 s6Step214HeadFvFresh ++ [])))),s6Step214F4Plan,s6Step214CounterDuring,s6Step214CounterWork,s6Step214ExitGvAfter,s6Step214FrontOut,(shrinkRow 777 s6Step214ExitGExtra ++ (shrinkRow 795 s6Step214ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step214ExitGvExtra ++ []))))⟩

private def s6Step214CompletePlan : HmrEarlyStepPlan := ⟨s6Step214FrontPlan,s6Step214EarlyControlArena,s6Step214EarlyControlPlan,s6Step214CompleteMoves⟩

private theorem s6Step214Complete_apart : List.Disjoint (s6Step214CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [784, 855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step214CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[784, 855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step214Complete_owned : (s6Step214CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214Complete_repack : s6Step214ExitGvAfter.checkRepack s6Step214CompleteMoves=some s6Step214EarlyControlArena := by rfl

private theorem s6Step214EarlyControl_branchOwned : ([855] : List Wire).toFinset⊆s6Step214EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_branch : compileHmrBranchRetirement s6Step214EarlyControlSigmaArena 855=some s6Step214EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step214EarlyControl_branchOwned
  · ext q
    simp [s6Step214EarlyControlOutputArena,s6Step214EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step214EarlyControl_classEqualityBorrow : s6Step214EarlyControlPositiveArena.checkBorrow (([784, 807] : List Wire).length-1) s6Step214EarlyControlLog.classWork=some s6Step214EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step214EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step214EarlyControlEqualityArena,s6Step214EarlyControlPositiveArena,s6Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step214EarlyControl_classEqualityOwned : ([784, 807] : List Wire).toFinset⊆s6Step214EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_classEquality : compileHmrEqualityLog s6Step214EarlyControlPositiveArena [784, 807] 0 s6Step214EarlyControlLog.classWork=some (s6Step214EarlyControlEqualityArena,s6Step214EarlyControlLog.classWork,s6Step214EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step214EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step214EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step214EarlyControl_classOwned : ([769, 882, 784] : List Wire).toFinset⊆s6Step214EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_positiveBorrow : s6Step214EarlyControlZeroArena.checkBorrow (1) s6Step214EarlyControlLog.positiveWork=some s6Step214EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step214EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step214EarlyControlPositiveArena,s6Step214EarlyControlZeroArena,s6Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step214EarlyControl_class : compileHmrSourceClassLog s6Step214EarlyControlZeroArena false 769 s6Step214EarlyControlZeroPlan.top 0 784 s6Step214EarlyControlLog.positiveWork s6Step214EarlyControlLog.classWork=some s6Step214EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step214EarlyControlClassPlan s6Step214EarlyControlZeroArena false 769 s6Step214EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s6Step214EarlyControl_classOwned
  · exact s6Step214EarlyControl_positiveBorrow
  · exact s6Step214EarlyControl_classEquality

private theorem s6Step214EarlyControl_entryRecordOwned : ([855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s6Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_fitBorrow : s6Step214EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step214EarlyControlLog.recordFresh=some s6Step214EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step214EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step214EarlyControlFittedArena,s6Step214EarlyControlFlagArena,s6Step214EarlyControlLog,arenaWires]

private theorem s6Step214EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step214EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_fit : compileHmrRecordGrowLog s6Step214EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step214EarlyControlLog.recordFresh=some s6Step214EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step214EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step214EarlyControl_fitBorrow

private theorem s6Step214EarlyControl_flagsBorrow : s6Step214EarlyControlEqualityArena.checkBorrow (6) s6Step214EarlyControlLog.flagWork=some s6Step214EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step214EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step214EarlyControlFlagArena,s6Step214EarlyControlEqualityArena,s6Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step214EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s6Step214EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_flags : compileHmrFlagsLog s6Step214EarlyControlClassPlan.equalityArena s6Step214EarlyControlClassPlan.equality.top 253 252 251 s6Step214EarlyControlLog.flagWork=some s6Step214EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step214EarlyControl_flagsOwned⟩
  · exact s6Step214EarlyControl_flagsBorrow

private theorem s6Step214EarlyControl_historyBorrow : s6Step214EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step214EarlyControlLog.recordFresh=some s6Step214EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step214EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step214EarlyControlHistoryArena,s6Step214EarlyControlArena,s6Step214EarlyControlLog,arenaWires]

private theorem s6Step214EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_history : compileHmrRecordGrowLog s6Step214EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step214EarlyControlLog.recordFresh=some s6Step214EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step214EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step214EarlyControl_historyBorrow

private theorem s6Step214EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s6Step214EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s6Step214EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_sigmaRelease : s6Step214EarlyControlHistoryArena.release {784} (fun _ => false)=some s6Step214EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step214EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step214EarlyControlSigmaArena,s6Step214EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step214EarlyControl_sigma : compileHmrSigmaDropLog s6Step214EarlyControlHistoryArena false 0 0 254 784 []=some s6Step214EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step214EarlyControl_sigmaOwned⟩
  · exact s6Step214EarlyControl_sigmaRelease

private theorem s6Step214EarlyControl_zeroBorrow : s6Step214EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step214EarlyControlLog.zeroWork=some s6Step214EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step214EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step214EarlyControlZeroArena,s6Step214EarlyControlArena,s6Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step214EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step214EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EarlyControl_zero : compileHmrEqualityLog s6Step214EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step214EarlyControlLog.zeroWork=some (s6Step214EarlyControlZeroArena,s6Step214EarlyControlLog.zeroWork,s6Step214EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step214EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step214EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step214EarlyControl_logged : s6Step214EarlyControlPlan.Logged s6Step214EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 254 253 252 251 855 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step214EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step214EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step214EarlyControl_zero
  · exact s6Step214EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step214EarlyControl_flags
  · exact s6Step214EarlyControl_fit
  · exact s6Step214EarlyControl_history
  · exact s6Step214EarlyControl_sigma
  · exact s6Step214EarlyControl_branch

private theorem s6Step214EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step214EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 254 253 252 251 855 47 s6Step214EarlyControlLog=some s6Step214EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step214EarlyControlPlan s6Step214EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 254 253 252 251 855 47 s6Step214EarlyControl_logged

private def s6Step214EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step214EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step214EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step214EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],777⟩

private def s6Step214EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩

private def s6Step214FrontBank : WindowBank := ⟨s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow⟩

private def s6Step214Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881, 795]

private def s6Step214Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873, 802, 777]

private def s6Step214Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 776]

private def s6Step214Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 858, 775]

private theorem s6Step214Counter_apart : Disjoint s6Step214HeadFvAfter.live s6Step214CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step214HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214Counter_borrowed : s6Step214HeadFvAfter.checkBorrow 4 s6Step214CounterWork=some s6Step214CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step214HeadFvAfter s6Step214CounterDuring s6Step214CounterWork.toFinset s6Step214Counter_bounded s6Step214Counter_apart rfl

private theorem s6Step214Counter_owned : (784::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step214HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step214HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214Counter_checked : compileHmrCounterStepLog s6Step214HeadFvAfter true 784 [774, 773, 772, 771, 770, 769] s6Step214CounterWork=some s6Step214CounterDuring := by
  have owned : ∀q∈784::[774, 773, 772, 771, 770, 769],q∈s6Step214HeadFvAfter.live := fun q hq => s6Step214Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step214Counter_borrowed

private def s6Step214EntryFAfter : Arena := s6Step214EntryFBefore

private theorem s6Step214EntryBank_incomingDistinct : ([s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214EntryF_Incoming : rowsOwned s6Step214EntryFBefore [s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow] 0 s6Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step214EntryBank_outgoingOwned : rowsOwned s6Step214EntryGvAfter [s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step214EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214EntryF_Outgoing : rowsOwned s6Step214EntryGvAfter [s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut] :=
  hmrRows_owned_drop s6Step214EntryGvAfter [s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut] 0 s6Step214EntryBank_outgoingOwned

private theorem s6Step214EntryF_distinct : (s6Step214EntryFRow.sign::s6Step214EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214EntryF_owned : (s6Step214EntryFRow.sign::s6Step214EntryFRow.payload).toFinset⊆s6Step214EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step214EntryF_reserved : s6Step214EntryFBefore.reserve s6Step214EntryFFresh.toFinset=some s6Step214EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214EntryFFresh,arenaWires]
  · norm_num [s6Step214EntryFBefore,s6Step214EntryFFresh,arenaWires]
  · simp only [s6Step214EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step214EntryF_checked : planRowResizeLog s6Step214EntryFBefore s6Step214EntryFRow 163 s6Step214EntryFFresh=
    some (s6Step214EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩,growRow 795 s6Step214EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step214EntryFBefore s6Step214EntryFAfter s6Step214EntryFRow 163 s6Step214EntryFFresh
    s6Step214EntryF_distinct s6Step214EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214EntryF_reserved
  have rowEq : WindowRow.mk (s6Step214EntryFRow.payload++s6Step214EntryFFresh) s6Step214EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step214EntryFvAfter : Arena := s6Step214EntryGAfter

private def s6Step214EntryFvBefore : Arena := s6Step214EntryGAfter

private theorem s6Step214EntryFv_Incoming : rowsOwned s6Step214EntryFvBefore [s6Step214EntryFvRow,s6Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow] 2 s6Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214EntryFv_Outgoing : rowsOwned s6Step214EntryGvAfter [s6Step214EntryFvOut,s6Step214EntryGvOut] :=
  hmrRows_owned_drop s6Step214EntryGvAfter [s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut] 2 s6Step214EntryBank_outgoingOwned

private theorem s6Step214EntryFv_distinct : (s6Step214EntryFvRow.sign::s6Step214EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214EntryFv_owned : (s6Step214EntryFvRow.sign::s6Step214EntryFvRow.payload).toFinset⊆s6Step214EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EntryFv_reserved : s6Step214EntryFvBefore.reserve s6Step214EntryFvFresh.toFinset=some s6Step214EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214EntryFvFresh,arenaWires]
  · norm_num [s6Step214EntryFvBefore,s6Step214EntryGAfter,s6Step214EntryFvFresh,arenaWires]
  · simp only [s6Step214EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step214EntryFv_checked : planRowResizeLog s6Step214EntryFvBefore s6Step214EntryFvRow 121 s6Step214EntryFvFresh=
    some (s6Step214EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩,growRow 776 s6Step214EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step214EntryFvBefore s6Step214EntryFvAfter s6Step214EntryFvRow 121 s6Step214EntryFvFresh
    s6Step214EntryFv_distinct s6Step214EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step214EntryFvRow.payload++s6Step214EntryFvFresh) s6Step214EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step214EntryGBefore : Arena := s6Step214EntryFBefore

private theorem s6Step214EntryG_Incoming : rowsOwned s6Step214EntryGBefore [s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow] 1 s6Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214EntryGBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step214EntryG_Outgoing : rowsOwned s6Step214EntryGvAfter [s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut] :=
  hmrRows_owned_drop s6Step214EntryGvAfter [s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut] 1 s6Step214EntryBank_outgoingOwned

private theorem s6Step214EntryG_distinct : (s6Step214EntryGRow.sign::s6Step214EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214EntryG_owned : (s6Step214EntryGRow.sign::s6Step214EntryGRow.payload).toFinset⊆s6Step214EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214EntryGBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step214EntryG_reserved : s6Step214EntryGBefore.reserve s6Step214EntryGFresh.toFinset=some s6Step214EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214EntryGFresh,arenaWires]
  · norm_num [s6Step214EntryGBefore,s6Step214EntryFBefore,s6Step214EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step214EntryGBefore s6Step214EntryGAfter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step214EntryGFresh rfl rfl
    · norm_num [s6Step214EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step214EntryG_checked : planRowResizeLog s6Step214EntryGBefore s6Step214EntryGRow 163 s6Step214EntryGFresh=
    some (s6Step214EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873],777⟩,growRow 777 s6Step214EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step214EntryGBefore s6Step214EntryGAfter s6Step214EntryGRow 163 s6Step214EntryGFresh
    s6Step214EntryG_distinct s6Step214EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214EntryG_reserved
  have rowEq : WindowRow.mk (s6Step214EntryGRow.payload++s6Step214EntryGFresh) s6Step214EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step214EntryGvBefore : Arena := s6Step214EntryGAfter

private theorem s6Step214EntryGv_Incoming : rowsOwned s6Step214EntryGvBefore [s6Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow] 3 s6Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214EntryGv_Outgoing : rowsOwned s6Step214EntryGvAfter [s6Step214EntryGvOut] :=
  hmrRows_owned_drop s6Step214EntryGvAfter [s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut] 3 s6Step214EntryBank_outgoingOwned

private theorem s6Step214EntryGv_distinct : (s6Step214EntryGvRow.sign::s6Step214EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214EntryGv_owned : (s6Step214EntryGvRow.sign::s6Step214EntryGvRow.payload).toFinset⊆s6Step214EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214EntryGv_reserved : s6Step214EntryGvBefore.reserve s6Step214EntryGvFresh.toFinset=some s6Step214EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214EntryGvFresh,arenaWires]
  · norm_num [s6Step214EntryGvBefore,s6Step214EntryGAfter,s6Step214EntryGvFresh,arenaWires]
  · simp only [s6Step214EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step214EntryGv_checked : planRowResizeLog s6Step214EntryGvBefore s6Step214EntryGvRow 121 s6Step214EntryGvFresh=
    some (s6Step214EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩,growRow 775 s6Step214EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step214EntryGvBefore s6Step214EntryGvAfter s6Step214EntryGvRow 121 s6Step214EntryGvFresh
    s6Step214EntryGv_distinct s6Step214EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step214EntryGvRow.payload++s6Step214EntryGvFresh) s6Step214EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step214EntryBank_rows : planWindowRowsLog s6Step214EntryFBefore [(s6Step214EntryFRow,163),(s6Step214EntryGRow,163),(s6Step214EntryFvRow,121),(s6Step214EntryGvRow,121)] [s6Step214EntryFFresh,s6Step214EntryGFresh,s6Step214EntryFvFresh,s6Step214EntryGvFresh]=
    some (s6Step214EntryGvAfter,[s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut],(growRow 795 s6Step214EntryFFresh ++ (growRow 777 s6Step214EntryGFresh ++ (growRow 776 s6Step214EntryFvFresh ++ (growRow 775 s6Step214EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step214EntryGvAfter [] []=some (s6Step214EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step214EntryGvBefore s6Step214EntryGvAfter s6Step214EntryGvAfter
    s6Step214EntryGvRow s6Step214EntryGvOut 121 s6Step214EntryGvFresh [] [] []
    (growRow 775 s6Step214EntryGvFresh) ([]) s6Step214EntryGv_Incoming s6Step214EntryGv_checked h4 s6Step214EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step214EntryFvBefore s6Step214EntryFvAfter s6Step214EntryGvAfter
    s6Step214EntryFvRow s6Step214EntryFvOut 121 s6Step214EntryFvFresh [(s6Step214EntryGvRow,121)] [s6Step214EntryGvFresh] [s6Step214EntryGvOut]
    (growRow 776 s6Step214EntryFvFresh) ((growRow 775 s6Step214EntryGvFresh ++ [])) s6Step214EntryFv_Incoming s6Step214EntryFv_checked h3 s6Step214EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step214EntryGBefore s6Step214EntryGAfter s6Step214EntryGvAfter
    s6Step214EntryGRow s6Step214EntryGOut 163 s6Step214EntryGFresh [(s6Step214EntryFvRow,121),(s6Step214EntryGvRow,121)] [s6Step214EntryFvFresh,s6Step214EntryGvFresh] [s6Step214EntryFvOut,s6Step214EntryGvOut]
    (growRow 777 s6Step214EntryGFresh) ((growRow 776 s6Step214EntryFvFresh ++ (growRow 775 s6Step214EntryGvFresh ++ []))) s6Step214EntryG_Incoming s6Step214EntryG_checked h2 s6Step214EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step214EntryFBefore s6Step214EntryFAfter s6Step214EntryGvAfter
    s6Step214EntryFRow s6Step214EntryFOut 163 s6Step214EntryFFresh [(s6Step214EntryGRow,163),(s6Step214EntryFvRow,121),(s6Step214EntryGvRow,121)] [s6Step214EntryGFresh,s6Step214EntryFvFresh,s6Step214EntryGvFresh] [s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut]
    (growRow 795 s6Step214EntryFFresh) ((growRow 777 s6Step214EntryGFresh ++ (growRow 776 s6Step214EntryFvFresh ++ (growRow 775 s6Step214EntryGvFresh ++ [])))) s6Step214EntryF_Incoming s6Step214EntryF_checked h1 s6Step214EntryF_Outgoing
  exact h0

private theorem s6Step214EntryBank_checked : compileHmrBankResizeLog .entry s6Step214EntryFBefore ⟨s6Step214EntryFRow,s6Step214EntryGRow,s6Step214EntryFvRow,s6Step214EntryGvRow⟩ ⟨163,163,121,121⟩ [s6Step214EntryFFresh,s6Step214EntryGFresh,s6Step214EntryFvFresh,s6Step214EntryGvFresh]=
    some (s6Step214EntryGvAfter,⟨s6Step214EntryFOut,s6Step214EntryGOut,s6Step214EntryFvOut,s6Step214EntryGvOut⟩,(growRow 795 s6Step214EntryFFresh ++ (growRow 777 s6Step214EntryGFresh ++ (growRow 776 s6Step214EntryFvFresh ++ (growRow 775 s6Step214EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step214EntryBank_rows]
  rfl

private def s6Step214ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214ExitFBefore : Arena := s6Step214ExitGAfter

private def s6Step214ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩

private def s6Step214ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779],776⟩

private def s6Step214ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873, 802],777⟩

private def s6Step214ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 858],775⟩

private theorem s6Step214ExitBank_incomingDistinct : ([s6Step214ExitGRow,s6Step214ExitFRow,s6Step214ExitFvRow,s6Step214ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214ExitF_Incoming : rowsOwned s6Step214ExitFBefore [s6Step214ExitFRow,s6Step214ExitFvRow,s6Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214ExitGRow,s6Step214ExitFRow,s6Step214ExitFvRow,s6Step214ExitGvRow] 1 s6Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214ExitBank_outgoingOwned : rowsOwned s6Step214ExitGvAfter [s6Step214ExitGOut,s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step214ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214ExitF_Outgoing : rowsOwned s6Step214ExitGvAfter [s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut] :=
  hmrRows_owned_drop s6Step214ExitGvAfter [s6Step214ExitGOut,s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut] 1 s6Step214ExitBank_outgoingOwned

private theorem s6Step214ExitF_distinct : (s6Step214ExitFRow.sign::s6Step214ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214ExitF_owned : (s6Step214ExitFRow.sign::s6Step214ExitFRow.payload).toFinset⊆s6Step214ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214ExitF_retired : s6Step214ExitFBefore.retireSet s6Step214ExitFExtra.toFinset=s6Step214ExitFAfter := by
  unfold Arena.retireSet s6Step214ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step214ExitFBefore,s6Step214ExitGAfter,s6Step214ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step214ExitF_checked : planRowResizeLog s6Step214ExitFBefore s6Step214ExitFRow 163 []=
    some (s6Step214ExitFAfter,s6Step214ExitFOut,shrinkRow 795 s6Step214ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step214ExitFBefore s6Step214ExitFRow 163 s6Step214ExitF_distinct s6Step214ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step214ExitFRow.payload.take 163) s6Step214ExitFRow.sign=s6Step214ExitFOut := by decide +kernel
  have hi : s6Step214ExitFRow.payload.drop 163=s6Step214ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step214ExitF_retired] at result
  exact result

private def s6Step214ExitFvAfter : Arena := s6Step214ExitFAfter

private def s6Step214ExitFvBefore : Arena := s6Step214ExitFAfter

private theorem s6Step214ExitFv_Incoming : rowsOwned s6Step214ExitFvBefore [s6Step214ExitFvRow,s6Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214ExitGRow,s6Step214ExitFRow,s6Step214ExitFvRow,s6Step214ExitGvRow] 2 s6Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214ExitFv_Outgoing : rowsOwned s6Step214ExitGvAfter [s6Step214ExitFvOut,s6Step214ExitGvOut] :=
  hmrRows_owned_drop s6Step214ExitGvAfter [s6Step214ExitGOut,s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut] 2 s6Step214ExitBank_outgoingOwned

private theorem s6Step214ExitFv_distinct : (s6Step214ExitFvRow.sign::s6Step214ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214ExitFv_owned : (s6Step214ExitFvRow.sign::s6Step214ExitFvRow.payload).toFinset⊆s6Step214ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214ExitFv_reserved : s6Step214ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step214ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step214ExitFv_checked : planRowResizeLog s6Step214ExitFvBefore s6Step214ExitFvRow 122 []=
    some (s6Step214ExitFvAfter,s6Step214ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step214ExitFvBefore s6Step214ExitFvAfter s6Step214ExitFvRow 122 []
    s6Step214ExitFv_distinct s6Step214ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step214ExitFvRow.payload++[]) s6Step214ExitFvRow.sign=s6Step214ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step214ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step214ExitG_Incoming : rowsOwned s6Step214ExitGBefore [s6Step214ExitGRow,s6Step214ExitFRow,s6Step214ExitFvRow,s6Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214ExitGRow,s6Step214ExitFRow,s6Step214ExitFvRow,s6Step214ExitGvRow] 0 s6Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214ExitG_Outgoing : rowsOwned s6Step214ExitGvAfter [s6Step214ExitGOut,s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut] :=
  hmrRows_owned_drop s6Step214ExitGvAfter [s6Step214ExitGOut,s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut] 0 s6Step214ExitBank_outgoingOwned

private theorem s6Step214ExitG_distinct : (s6Step214ExitGRow.sign::s6Step214ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214ExitG_owned : (s6Step214ExitGRow.sign::s6Step214ExitGRow.payload).toFinset⊆s6Step214ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214ExitG_retired : s6Step214ExitGBefore.retireSet s6Step214ExitGExtra.toFinset=s6Step214ExitGAfter := by
  unfold Arena.retireSet s6Step214ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step214ExitGBefore,s6Step214ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step214ExitG_checked : planRowResizeLog s6Step214ExitGBefore s6Step214ExitGRow 162 []=
    some (s6Step214ExitGAfter,s6Step214ExitGOut,shrinkRow 777 s6Step214ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step214ExitGBefore s6Step214ExitGRow 162 s6Step214ExitG_distinct s6Step214ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step214ExitGRow.payload.take 162) s6Step214ExitGRow.sign=s6Step214ExitGOut := by decide +kernel
  have hi : s6Step214ExitGRow.payload.drop 162=s6Step214ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step214ExitG_retired] at result
  exact result

private def s6Step214ExitGvBefore : Arena := s6Step214ExitFAfter

private theorem s6Step214ExitGv_Incoming : rowsOwned s6Step214ExitGvBefore [s6Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214ExitGRow,s6Step214ExitFRow,s6Step214ExitFvRow,s6Step214ExitGvRow] 3 s6Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214ExitGv_Outgoing : rowsOwned s6Step214ExitGvAfter [s6Step214ExitGvOut] :=
  hmrRows_owned_drop s6Step214ExitGvAfter [s6Step214ExitGOut,s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut] 3 s6Step214ExitBank_outgoingOwned

private theorem s6Step214ExitGv_distinct : (s6Step214ExitGvRow.sign::s6Step214ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214ExitGv_owned : (s6Step214ExitGvRow.sign::s6Step214ExitGvRow.payload).toFinset⊆s6Step214ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214ExitGv_retired : s6Step214ExitGvBefore.retireSet s6Step214ExitGvExtra.toFinset=s6Step214ExitGvAfter := by
  unfold Arena.retireSet s6Step214ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step214ExitGvBefore,s6Step214ExitFAfter,s6Step214ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step214ExitGv_checked : planRowResizeLog s6Step214ExitGvBefore s6Step214ExitGvRow 121 []=
    some (s6Step214ExitGvAfter,s6Step214ExitGvOut,shrinkRow 775 s6Step214ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step214ExitGvBefore s6Step214ExitGvRow 121 s6Step214ExitGv_distinct s6Step214ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step214ExitGvRow.payload.take 121) s6Step214ExitGvRow.sign=s6Step214ExitGvOut := by decide +kernel
  have hi : s6Step214ExitGvRow.payload.drop 121=s6Step214ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step214ExitGv_retired] at result
  exact result

private theorem s6Step214ExitBank_rows : planWindowRowsLog s6Step214ExitGBefore [(s6Step214ExitGRow,162),(s6Step214ExitFRow,163),(s6Step214ExitFvRow,122),(s6Step214ExitGvRow,121)] [[],[],[],[]]=
    some (s6Step214ExitGvAfter,[s6Step214ExitGOut,s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut],(shrinkRow 777 s6Step214ExitGExtra ++ (shrinkRow 795 s6Step214ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step214ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step214ExitGvAfter [] []=some (s6Step214ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step214ExitGvBefore s6Step214ExitGvAfter s6Step214ExitGvAfter
    s6Step214ExitGvRow s6Step214ExitGvOut 121 [] [] [] []
    (shrinkRow 775 s6Step214ExitGvExtra) ([]) s6Step214ExitGv_Incoming s6Step214ExitGv_checked h4 s6Step214ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step214ExitFvBefore s6Step214ExitFvAfter s6Step214ExitGvAfter
    s6Step214ExitFvRow s6Step214ExitFvOut 122 [] [(s6Step214ExitGvRow,121)] [[]] [s6Step214ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step214ExitGvExtra ++ [])) s6Step214ExitFv_Incoming s6Step214ExitFv_checked h3 s6Step214ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step214ExitFBefore s6Step214ExitFAfter s6Step214ExitGvAfter
    s6Step214ExitFRow s6Step214ExitFOut 163 [] [(s6Step214ExitFvRow,122),(s6Step214ExitGvRow,121)] [[],[]] [s6Step214ExitFvOut,s6Step214ExitGvOut]
    (shrinkRow 795 s6Step214ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step214ExitGvExtra ++ []))) s6Step214ExitF_Incoming s6Step214ExitF_checked h2 s6Step214ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step214ExitGBefore s6Step214ExitGAfter s6Step214ExitGvAfter
    s6Step214ExitGRow s6Step214ExitGOut 162 [] [(s6Step214ExitFRow,163),(s6Step214ExitFvRow,122),(s6Step214ExitGvRow,121)] [[],[],[]] [s6Step214ExitFOut,s6Step214ExitFvOut,s6Step214ExitGvOut]
    (shrinkRow 777 s6Step214ExitGExtra) ((shrinkRow 795 s6Step214ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step214ExitGvExtra ++ [])))) s6Step214ExitG_Incoming s6Step214ExitG_checked h1 s6Step214ExitG_Outgoing
  exact h0

private theorem s6Step214ExitBank_checked : compileHmrBankResizeLog .exit s6Step214ExitGBefore ⟨s6Step214ExitFRow,s6Step214ExitGRow,s6Step214ExitFvRow,s6Step214ExitGvRow⟩ ⟨163,162,122,121⟩ [[],[],[],[]]=
    some (s6Step214ExitGvAfter,⟨s6Step214ExitFOut,s6Step214ExitGOut,s6Step214ExitFvOut,s6Step214ExitGvOut⟩,(shrinkRow 777 s6Step214ExitGExtra ++ (shrinkRow 795 s6Step214ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step214ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step214ExitBank_rows]
  rfl

private theorem s6Step214Add0_apart : Disjoint s6Step214Add0Arena.live s6Step214Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step214Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214Add0_card : s6Step214Add0Arena.live.card=889 := by
  decide +kernel

private theorem s6Step214Add0_borrowed : s6Step214Add0Arena.checkBorrow (hmrHybridCount s6Step214Add0Arena s6Step214Add0B.length) s6Step214Add0Work=some s6Step214Add0During := by
  have len : s6Step214Add0Work.length=hmrHybridCount s6Step214Add0Arena s6Step214Add0B.length := by
    rw [hmrHybridCount,s6Step214Add0_card]
    decide +kernel
  have nd : s6Step214Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step214Add0Arena s6Step214Add0During s6Step214Add0Work.toFinset s6Step214Add0_bounded s6Step214Add0_apart rfl

private theorem s6Step214Add0_distinct : (882::855::807::(s6Step214Add0A++s6Step214Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214Add0_owned : (882::855::807::(s6Step214Add0A++s6Step214Add0B)).toFinset⊆s6Step214Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step214Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214Add0_checked : compileHmrHybridCinLog s6Step214Add0Arena 855 882 807 s6Step214Add0A s6Step214Add0B s6Step214Add0Work=some s6Step214Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step214Add0Arena s6Step214Add0During 855 882 807 s6Step214Add0A s6Step214Add0B s6Step214Add0Work
    (by decide +kernel) (by decide +kernel) s6Step214Add0_distinct
    (fun q hq => s6Step214Add0_owned (List.mem_toFinset.mpr hq)) s6Step214Add0_borrowed

private theorem s6Step214Add1_apart : Disjoint s6Step214Add1Arena.live s6Step214Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step214Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214Add1_card : s6Step214Add1Arena.live.card=889 := by
  decide +kernel

private theorem s6Step214Add1_borrowed : s6Step214Add1Arena.checkBorrow (hmrHybridCount s6Step214Add1Arena s6Step214Add1B.length) s6Step214Add1Work=some s6Step214Add1During := by
  have len : s6Step214Add1Work.length=hmrHybridCount s6Step214Add1Arena s6Step214Add1B.length := by
    rw [hmrHybridCount,s6Step214Add1_card]
    decide +kernel
  have nd : s6Step214Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step214Add1Arena s6Step214Add1During s6Step214Add1Work.toFinset s6Step214Add1_bounded s6Step214Add1_apart rfl

private theorem s6Step214Add1_distinct : (882::855::807::(s6Step214Add1A++s6Step214Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214Add1_owned : (882::855::807::(s6Step214Add1A++s6Step214Add1B)).toFinset⊆s6Step214Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step214Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214Add1_checked : compileHmrHybridCinLog s6Step214Add1Arena 855 882 807 s6Step214Add1A s6Step214Add1B s6Step214Add1Work=some s6Step214Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step214Add1Arena s6Step214Add1During 855 882 807 s6Step214Add1A s6Step214Add1B s6Step214Add1Work
    (by decide +kernel) (by decide +kernel) s6Step214Add1_distinct
    (fun q hq => s6Step214Add1_owned (List.mem_toFinset.mpr hq)) s6Step214Add1_borrowed

private theorem s6Step214F4_apart : Disjoint (s6Step214Add0A++s6Step214Add0B).toFinset (s6Step214Add1A++s6Step214Add1B).toFinset := by
  have nd : ((s6Step214Add0A++s6Step214Add0B)++(s6Step214Add1A++s6Step214Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step214F4_carry : s6Step214F4FlagArena.checkBorrow 1 [807]=some s6Step214Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step214F4FlagArena,s6Step214HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step214F4FlagArena,s6Step214HeadFvAfter,s6Step214Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step214F4_distinct : (784::855::882::807::((s6Step214Add0A++s6Step214Add1A)++(s6Step214Add0B++s6Step214Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214F4_flag : s6Step214HeadFvAfter.checkBorrow 1 [882]=some s6Step214F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step214HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step214F4_owned : (784::855::((s6Step214Add0A++s6Step214Add1A)++(s6Step214Add0B++s6Step214Add1B))).toFinset⊆s6Step214HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step214HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214F4_checked : compileHmrHybridF4Log s6Step214HeadFvAfter 784 855 s6Step214Add0A s6Step214Add0B s6Step214Add1A s6Step214Add1B [882] [807] s6Step214Add0Work s6Step214Add1Work=some s6Step214F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step214HeadFvAfter s6Step214F4FlagArena s6Step214Add0Arena s6Step214Add0During s6Step214Add1During 784 855
    s6Step214Add0A s6Step214Add0B s6Step214Add1A s6Step214Add1B [882] [807] s6Step214Add0Work s6Step214Add1Work
    (fun q hq => s6Step214F4_owned (List.mem_toFinset.mpr hq)) s6Step214F4_flag s6Step214F4_carry
    s6Step214F4_distinct s6Step214F4_apart s6Step214Add0_checked s6Step214Add1_checked

private theorem s6Step214Front_branch : s6Step214FrontSigmaArena.checkBorrow 1 [855]=some s6Step214HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step214FrontSigmaArena,s6Step214EntryGvAfter,s6Step214EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step214FrontSigmaArena,s6Step214EntryGvAfter,s6Step214EntryGAfter,s6Step214HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step214Front_entry : HmrFrontEntryValid s6Step214EntryFBefore s6Step214FrontBank 163 121 ⟨163,162,122,121⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step214FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step214EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step214EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step214FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step214Front_sigma : s6Step214EntryGvAfter.checkBorrow 1 [784]=some s6Step214FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step214EntryGvAfter,s6Step214EntryGAfter,arenaWires]
  · rfl

private def s6Step214HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214HeadFBefore : Arena := s6Step214HeadGAfter

private def s6Step214HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step214HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step214HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873],777⟩

private def s6Step214HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩

private theorem s6Step214HeadBank_incomingDistinct : ([s6Step214HeadGRow,s6Step214HeadFRow,s6Step214HeadGvRow,s6Step214HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214HeadF_Incoming : rowsOwned s6Step214HeadFBefore [s6Step214HeadFRow,s6Step214HeadGvRow,s6Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214HeadGRow,s6Step214HeadFRow,s6Step214HeadGvRow,s6Step214HeadFvRow] 1 s6Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214HeadBank_outgoingOwned : rowsOwned s6Step214HeadFvAfter [s6Step214HeadGOut,s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step214HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214HeadF_Outgoing : rowsOwned s6Step214HeadFvAfter [s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut] :=
  hmrRows_owned_drop s6Step214HeadFvAfter [s6Step214HeadGOut,s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut] 1 s6Step214HeadBank_outgoingOwned

private theorem s6Step214HeadF_distinct : (s6Step214HeadFRow.sign::s6Step214HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214HeadF_owned : (s6Step214HeadFRow.sign::s6Step214HeadFRow.payload).toFinset⊆s6Step214HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214HeadF_reserved : s6Step214HeadFBefore.reserve s6Step214HeadFFresh.toFinset=some s6Step214HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214HeadFFresh,arenaWires]
  · norm_num [s6Step214HeadFBefore,s6Step214HeadGAfter,s6Step214HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step214HeadFAfter,s6Step214HeadFBefore,s6Step214HeadGAfter,s6Step214HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step214HeadF_checked : planRowResizeLog s6Step214HeadFBefore s6Step214HeadFRow 164 s6Step214HeadFFresh=
    some (s6Step214HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩,growRow 795 s6Step214HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step214HeadFBefore s6Step214HeadFAfter s6Step214HeadFRow 164 s6Step214HeadFFresh
    s6Step214HeadF_distinct s6Step214HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214HeadF_reserved
  have rowEq : WindowRow.mk (s6Step214HeadFRow.payload++s6Step214HeadFFresh) s6Step214HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step214HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step214HeadFvBefore : Arena := s6Step214HeadGvAfter

private theorem s6Step214HeadFv_Incoming : rowsOwned s6Step214HeadFvBefore [s6Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214HeadGRow,s6Step214HeadFRow,s6Step214HeadGvRow,s6Step214HeadFvRow] 3 s6Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214HeadFv_Outgoing : rowsOwned s6Step214HeadFvAfter [s6Step214HeadFvOut] :=
  hmrRows_owned_drop s6Step214HeadFvAfter [s6Step214HeadGOut,s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut] 3 s6Step214HeadBank_outgoingOwned

private theorem s6Step214HeadFv_distinct : (s6Step214HeadFvRow.sign::s6Step214HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214HeadFv_owned : (s6Step214HeadFvRow.sign::s6Step214HeadFvRow.payload).toFinset⊆s6Step214HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214HeadFv_reserved : s6Step214HeadFvBefore.reserve s6Step214HeadFvFresh.toFinset=some s6Step214HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214HeadFvFresh,arenaWires]
  · norm_num [s6Step214HeadFvBefore,s6Step214HeadGvAfter,s6Step214HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step214HeadFvAfter,s6Step214HeadFvBefore,s6Step214HeadGvAfter,s6Step214HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step214HeadFv_checked : planRowResizeLog s6Step214HeadFvBefore s6Step214HeadFvRow 122 s6Step214HeadFvFresh=
    some (s6Step214HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779],776⟩,growRow 776 s6Step214HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step214HeadFvBefore s6Step214HeadFvAfter s6Step214HeadFvRow 122 s6Step214HeadFvFresh
    s6Step214HeadFv_distinct s6Step214HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step214HeadFvRow.payload++s6Step214HeadFvFresh) s6Step214HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step214HeadG_Incoming : rowsOwned s6Step214HeadGBefore [s6Step214HeadGRow,s6Step214HeadFRow,s6Step214HeadGvRow,s6Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214HeadGRow,s6Step214HeadFRow,s6Step214HeadGvRow,s6Step214HeadFvRow] 0 s6Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214HeadG_Outgoing : rowsOwned s6Step214HeadFvAfter [s6Step214HeadGOut,s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut] :=
  hmrRows_owned_drop s6Step214HeadFvAfter [s6Step214HeadGOut,s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut] 0 s6Step214HeadBank_outgoingOwned

private theorem s6Step214HeadG_distinct : (s6Step214HeadGRow.sign::s6Step214HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214HeadG_owned : (s6Step214HeadGRow.sign::s6Step214HeadGRow.payload).toFinset⊆s6Step214HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214HeadG_reserved : s6Step214HeadGBefore.reserve s6Step214HeadGFresh.toFinset=some s6Step214HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214HeadGFresh,arenaWires]
  · norm_num [s6Step214HeadGBefore,s6Step214HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step214HeadGAfter,s6Step214HeadGBefore,s6Step214HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step214HeadG_checked : planRowResizeLog s6Step214HeadGBefore s6Step214HeadGRow 164 s6Step214HeadGFresh=
    some (s6Step214HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873, 802],777⟩,growRow 777 s6Step214HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step214HeadGBefore s6Step214HeadGAfter s6Step214HeadGRow 164 s6Step214HeadGFresh
    s6Step214HeadG_distinct s6Step214HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214HeadG_reserved
  have rowEq : WindowRow.mk (s6Step214HeadGRow.payload++s6Step214HeadGFresh) s6Step214HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 873, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step214HeadGvBefore : Arena := s6Step214HeadFAfter

private theorem s6Step214HeadGv_Incoming : rowsOwned s6Step214HeadGvBefore [s6Step214HeadGvRow,s6Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step214HeadGRow,s6Step214HeadFRow,s6Step214HeadGvRow,s6Step214HeadFvRow] 2 s6Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step214HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step214HeadGv_Outgoing : rowsOwned s6Step214HeadFvAfter [s6Step214HeadGvOut,s6Step214HeadFvOut] :=
  hmrRows_owned_drop s6Step214HeadFvAfter [s6Step214HeadGOut,s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut] 2 s6Step214HeadBank_outgoingOwned

private theorem s6Step214HeadGv_distinct : (s6Step214HeadGvRow.sign::s6Step214HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step214HeadGv_owned : (s6Step214HeadGvRow.sign::s6Step214HeadGvRow.payload).toFinset⊆s6Step214HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step214HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step214HeadGv_reserved : s6Step214HeadGvBefore.reserve s6Step214HeadGvFresh.toFinset=some s6Step214HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step214HeadGvFresh,arenaWires]
  · norm_num [s6Step214HeadGvBefore,s6Step214HeadFAfter,s6Step214HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step214HeadGvAfter,s6Step214HeadGvBefore,s6Step214HeadFAfter,s6Step214HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step214HeadGv_checked : planRowResizeLog s6Step214HeadGvBefore s6Step214HeadGvRow 122 s6Step214HeadGvFresh=
    some (s6Step214HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 858],775⟩,growRow 775 s6Step214HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step214HeadGvBefore s6Step214HeadGvAfter s6Step214HeadGvRow 122 s6Step214HeadGvFresh
    s6Step214HeadGv_distinct s6Step214HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step214HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step214HeadGvRow.payload++s6Step214HeadGvFresh) s6Step214HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step214HeadBank_rows : planWindowRowsLog s6Step214HeadGBefore [(s6Step214HeadGRow,164),(s6Step214HeadFRow,164),(s6Step214HeadGvRow,122),(s6Step214HeadFvRow,122)] [s6Step214HeadGFresh,s6Step214HeadFFresh,s6Step214HeadGvFresh,s6Step214HeadFvFresh]=
    some (s6Step214HeadFvAfter,[s6Step214HeadGOut,s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut],(growRow 777 s6Step214HeadGFresh ++ (growRow 795 s6Step214HeadFFresh ++ (growRow 775 s6Step214HeadGvFresh ++ (growRow 776 s6Step214HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step214HeadFvAfter [] []=some (s6Step214HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step214HeadFvBefore s6Step214HeadFvAfter s6Step214HeadFvAfter
    s6Step214HeadFvRow s6Step214HeadFvOut 122 s6Step214HeadFvFresh [] [] []
    (growRow 776 s6Step214HeadFvFresh) ([]) s6Step214HeadFv_Incoming s6Step214HeadFv_checked h4 s6Step214HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step214HeadGvBefore s6Step214HeadGvAfter s6Step214HeadFvAfter
    s6Step214HeadGvRow s6Step214HeadGvOut 122 s6Step214HeadGvFresh [(s6Step214HeadFvRow,122)] [s6Step214HeadFvFresh] [s6Step214HeadFvOut]
    (growRow 775 s6Step214HeadGvFresh) ((growRow 776 s6Step214HeadFvFresh ++ [])) s6Step214HeadGv_Incoming s6Step214HeadGv_checked h3 s6Step214HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step214HeadFBefore s6Step214HeadFAfter s6Step214HeadFvAfter
    s6Step214HeadFRow s6Step214HeadFOut 164 s6Step214HeadFFresh [(s6Step214HeadGvRow,122),(s6Step214HeadFvRow,122)] [s6Step214HeadGvFresh,s6Step214HeadFvFresh] [s6Step214HeadGvOut,s6Step214HeadFvOut]
    (growRow 795 s6Step214HeadFFresh) ((growRow 775 s6Step214HeadGvFresh ++ (growRow 776 s6Step214HeadFvFresh ++ []))) s6Step214HeadF_Incoming s6Step214HeadF_checked h2 s6Step214HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step214HeadGBefore s6Step214HeadGAfter s6Step214HeadFvAfter
    s6Step214HeadGRow s6Step214HeadGOut 164 s6Step214HeadGFresh [(s6Step214HeadFRow,164),(s6Step214HeadGvRow,122),(s6Step214HeadFvRow,122)] [s6Step214HeadFFresh,s6Step214HeadGvFresh,s6Step214HeadFvFresh] [s6Step214HeadFOut,s6Step214HeadGvOut,s6Step214HeadFvOut]
    (growRow 777 s6Step214HeadGFresh) ((growRow 795 s6Step214HeadFFresh ++ (growRow 775 s6Step214HeadGvFresh ++ (growRow 776 s6Step214HeadFvFresh ++ [])))) s6Step214HeadG_Incoming s6Step214HeadG_checked h1 s6Step214HeadG_Outgoing
  exact h0

private theorem s6Step214HeadBank_checked : compileHmrBankResizeLog .headroom s6Step214HeadGBefore ⟨s6Step214HeadFRow,s6Step214HeadGRow,s6Step214HeadFvRow,s6Step214HeadGvRow⟩ ⟨164,164,122,122⟩ [s6Step214HeadGFresh,s6Step214HeadFFresh,s6Step214HeadGvFresh,s6Step214HeadFvFresh]=
    some (s6Step214HeadFvAfter,⟨s6Step214HeadFOut,s6Step214HeadGOut,s6Step214HeadFvOut,s6Step214HeadGvOut⟩,(growRow 777 s6Step214HeadGFresh ++ (growRow 795 s6Step214HeadFFresh ++ (growRow 775 s6Step214HeadGvFresh ++ (growRow 776 s6Step214HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step214HeadBank_rows]
  rfl

private theorem s6Step214Front_checked : compileHmrSourceFrontLog s6Step214EntryFBefore s6Step214FrontBank 163 121 ⟨163,162,122,121⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step214FrontLog=some s6Step214FrontPlan := by
  have pairEq : s6Step214FrontPair=⟨s6Step214HeadFRow,s6Step214HeadGRow,s6Step214HeadFvRow,s6Step214HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step214FrontHead=⟨s6Step214ExitFRow,s6Step214ExitGRow,s6Step214ExitFvRow,s6Step214ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step214Add0A=s6Step214FrontHead.f.wires := by decide +kernel
  have gEq : s6Step214Add0B=s6Step214FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step214Add1A=s6Step214FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step214Add1B=s6Step214FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step214EntryFBefore s6Step214FrontBank 163 121 ⟨163,162,122,121⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step214FrontLog s6Step214FrontPlan
  · exact s6Step214Front_entry
  · exact s6Step214EntryBank_checked
  · exact s6Step214Front_sigma
  · rfl
  · exact s6Step214Front_branch
  · rfl
  · simpa only [s6Step214FrontPlan,pairEq] using s6Step214HeadBank_checked
  · simpa only [s6Step214FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step214F4_checked
  · exact s6Step214Counter_checked
  · rfl
  · simpa only [s6Step214FrontPlan,headEq] using s6Step214ExitBank_checked

private theorem s6Step214Complete_explicit_checked : compileHmrEarlyStepLog s6Step214EntryFBefore s6Step214FrontBank 163 121 ⟨163,162,122,121⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step214CompleteLog=some s6Step214CompletePlan := by
  let Q := s6Step214EarlyControlPlan
  have hq := s6Step214EarlyControl_plan_checked
  have fv1 : s6Step214CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step214CompleteOut.fv.payload[2]?.getD s6Step214CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step214CompleteOut.fv.payload[3]?.getD s6Step214CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step214CompleteOut.fv.payload[4]?.getD s6Step214CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step214EntryFBefore s6Step214EarlyControlArena s6Step214FrontBank 163 121 ⟨163,162,122,121⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step214CompleteLog s6Step214FrontPlan Q
    s6Step214Front_checked s6Step214Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step214Complete_owned s6Step214Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step214EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 s6Step214CompleteOut.fv.second (s6Step214CompleteOut.fv.payload[2]?.getD s6Step214CompleteOut.fv.sign) (s6Step214CompleteOut.fv.payload[3]?.getD s6Step214CompleteOut.fv.sign) (s6Step214CompleteOut.fv.payload[4]?.getD s6Step214CompleteOut.fv.sign) 855 47 s6Step214EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep214Arena : Arena := s6Step214EntryFBefore
def s6PrivateStep214Bank : WindowBank := s6Step214FrontBank
def s6PrivateStep214Spec : HmrSourceWalkStepLog := ⟨163,121,⟨163,162,122,121⟩,47,.early s6Step214CompleteLog⟩
def s6PrivateStep214Plan : HmrSourceStepPlan := .early s6Step214CompletePlan
theorem s6PrivateStep214_source : s6PrivateStep214Spec=s6ObservedLogs208[6] := rfl
theorem s6PrivateStep214_checked : compileHmrSourceStepLog s6PrivateStep214Arena s6PrivateStep214Bank
    s6PrivateStep214Spec.fgWidth s6PrivateStep214Spec.vWidth s6PrivateStep214Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 214 s6PrivateStep214Spec.need none s6PrivateStep214Spec.log=some s6PrivateStep214Plan := by
  change compileHmrSourceStepLog s6Step214EntryFBefore s6Step214FrontBank 163 121 ⟨163,162,122,121⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 214 47 none (.early s6Step214CompleteLog)=some (.early s6Step214CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 214<498)]
  rw [s6Step214Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
