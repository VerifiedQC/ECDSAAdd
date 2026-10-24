import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep217
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

private def s6Step219CompleteMoves : List (Wire × Wire) := [(856,160),(789,416)]

private def s6Step219EarlyControlLog : HmrEarlyControlLog := ⟨[789, 856, 858, 855, 873],[807],[822],[825, 869, 786, 810, 809, 817],[]⟩

private def s6Step219FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [768]],[[807], [873], [858], [855]],[[], [], [], []]⟩,[875],[845],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step219CompleteLog : HmrEarlyStepLog := ⟨s6Step219FrontLog,s6Step219CompleteMoves,s6Step219EarlyControlLog⟩

private def s6Step219ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415],795⟩

private def s6Step219ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩

private def s6Step219ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159],777⟩

private def s6Step219ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768],775⟩

private def s6Step219FrontOut : WindowBank := ⟨s6Step219ExitFOut,s6Step219ExitGOut,s6Step219ExitFvOut,s6Step219ExitGvOut⟩

private def s6Step219CompleteOut : WindowBank := s6Step219FrontOut.repacked s6Step219CompleteMoves

private def s6Step219EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step219EarlyControlPositiveArena,[807],s6Step219EarlyControlEqualityArena,[822],⟨⟨875,false⟩,[⟨⟨807,false⟩,822⟩]⟩⟩

private def s6Step219EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,789⟩,⟨⟨772,false⟩,856⟩,⟨⟨771,false⟩,858⟩,⟨⟨770,false⟩,855⟩,⟨⟨769,false⟩,873⟩]⟩

private def s6Step219EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step219EarlyControlZeroArena,s6Step219EarlyControlZeroPlan,s6Step219EarlyControlClassPlan,s6Step219EarlyControlFlagArena,s6Step219EarlyControlFittedArena,s6Step219EarlyControlHistoryArena,s6Step219EarlyControlSigmaArena,s6Step219EarlyControlOutputArena,s6Step219EarlyControlLog⟩

private def s6Step219CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step219Counter_bounded : s6Step219CounterWork.toFinset⊆arenaWires := by norm_num [s6Step219CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step219HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219CounterDuring : Arena := ⟨s6Step219HeadFvAfter.live∪s6Step219CounterWork.toFinset,Finset.union_subset s6Step219HeadFvAfter.bounded s6Step219Counter_bounded⟩

private def s6Step219EntryFFresh : List Wire := []

private def s6Step219EntryFvFresh : List Wire := []

private def s6Step219EntryGFresh : List Wire := []

private def s6Step219EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219EntryGvFresh : List Wire := [768]

private def s6Step219ExitFExtra : List Wire := [416, 873]

private def s6Step219ExitFvExtra : List Wire := [855]

private def s6Step219ExitGExtra : List Wire := [160, 807]

private def s6Step219ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219ExitGvExtra : List Wire := [858]

private def s6Step219Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step219Add0_bounded : s6Step219Add0Work.toFinset⊆arenaWires := by
  have h : s6Step219Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step219Add0During : Arena := ⟨s6Step219Add0Arena.live∪s6Step219Add0Work.toFinset,Finset.union_subset s6Step219Add0Arena.bounded s6Step219Add0_bounded⟩

private def s6Step219Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step219Add1_bounded : s6Step219Add1Work.toFinset⊆arenaWires := by
  have h : s6Step219Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step219Add1During : Arena := ⟨s6Step219Add1Arena.live∪s6Step219Add1Work.toFinset,Finset.union_subset s6Step219Add1Arena.bounded s6Step219Add1_bounded⟩

private def s6Step219F4FlagArena : Arena := ⟨s6Step219HeadFvAfter.live∪{822},Finset.union_subset s6Step219HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step219F4Plan : HmrHybridF4Plan := ⟨s6Step219F4FlagArena,[822],s6Step219Add0Arena,[825],s6Step219Add0During,s6Step219Add0Work,s6Step219Add1During,s6Step219Add1Work⟩

private def s6Step219HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 873],795⟩

private def s6Step219HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855],776⟩

private def s6Step219HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 807],777⟩

private def s6Step219HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 858],775⟩

private def s6Step219FrontHead : WindowBank := ⟨s6Step219HeadFOut,s6Step219HeadGOut,s6Step219HeadFvOut,s6Step219HeadGvOut⟩

private def s6Step219EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩

private def s6Step219EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩

private def s6Step219EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],777⟩

private def s6Step219EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768],775⟩

private def s6Step219FrontPair : WindowBank := ⟨s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut⟩

private def s6Step219FrontSigmaArena : Arena := ⟨s6Step219EntryGvAfter.live∪{875},Finset.union_subset s6Step219EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step219HeadFFresh : List Wire := [873]

private def s6Step219HeadFvFresh : List Wire := [855]

private def s6Step219HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219HeadGFresh : List Wire := [807]

private def s6Step219HeadGvFresh : List Wire := [858]

private def s6Step219FrontPlan : HmrSourceFront := ⟨s6Step219EntryGvAfter,s6Step219FrontPair,(growRow 795 s6Step219EntryFFresh ++ (growRow 777 s6Step219EntryGFresh ++ (growRow 776 s6Step219EntryFvFresh ++ (growRow 775 s6Step219EntryGvFresh ++ [])))),s6Step219FrontSigmaArena,[875],s6Step219HeadGBefore,[845],
  s6Step219HeadFvAfter,s6Step219FrontHead,(growRow 777 s6Step219HeadGFresh ++ (growRow 795 s6Step219HeadFFresh ++ (growRow 775 s6Step219HeadGvFresh ++ (growRow 776 s6Step219HeadFvFresh ++ [])))),s6Step219F4Plan,s6Step219CounterDuring,s6Step219CounterWork,s6Step219ExitGvAfter,s6Step219FrontOut,(shrinkRow 777 s6Step219ExitGExtra ++ (shrinkRow 795 s6Step219ExitFExtra ++ (shrinkRow 776 s6Step219ExitFvExtra ++ (shrinkRow 775 s6Step219ExitGvExtra ++ []))))⟩

private def s6Step219CompletePlan : HmrEarlyStepPlan := ⟨s6Step219FrontPlan,s6Step219EarlyControlArena,s6Step219EarlyControlPlan,s6Step219CompleteMoves⟩

private theorem s6Step219Complete_apart : List.Disjoint (s6Step219CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [875, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step219CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[875, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step219Complete_owned : (s6Step219CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step219CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,416),(417,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(857,858),(859,869),(870,873),(874,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step219CompleteRelocationMove0Borrowed : Arena := ⟨s6Step219ExitGvAfter.live∪{160},Finset.union_subset s6Step219ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step219CompleteRelocationMove1Borrowed : Arena := ⟨s6Step219CompleteRelocationMove0After.live∪{416},Finset.union_subset s6Step219CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step219CompleteRelocation_move0_owned : 856∈s6Step219ExitGvAfter.live := by norm_num [s6Step219ExitGvAfter,arenaWires]

private theorem s6Step219CompleteRelocation_move0_reserve : s6Step219ExitGvAfter.reserve {160}=some s6Step219CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step219ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step219CompleteRelocation_move0_retire : s6Step219CompleteRelocationMove0Borrowed.retireSet {856}=s6Step219CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step219CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step219CompleteRelocationMove0Borrowed,s6Step219ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step219CompleteRelocation_move1_owned : 789∈s6Step219CompleteRelocationMove0After.live := by norm_num [s6Step219CompleteRelocationMove0After,arenaWires]

private theorem s6Step219CompleteRelocation_move1_reserve : s6Step219CompleteRelocationMove0After.reserve {416}=some s6Step219CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step219CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step219CompleteRelocation_move1_retire : s6Step219CompleteRelocationMove1Borrowed.retireSet {789}=s6Step219EarlyControlArena := by
  unfold Arena.retireSet s6Step219EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step219CompleteRelocationMove1Borrowed,s6Step219CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step219CompleteRelocation_checked : s6Step219ExitGvAfter.checkRepack [(856,160),(789,416)]=some s6Step219EarlyControlArena := by
  have tail2 : s6Step219EarlyControlArena.checkRepack []=some s6Step219EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step219CompleteRelocationMove0After s6Step219CompleteRelocationMove1Borrowed s6Step219EarlyControlArena s6Step219EarlyControlArena 789 416 []
    s6Step219CompleteRelocation_move1_owned s6Step219CompleteRelocation_move1_reserve s6Step219CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step219ExitGvAfter s6Step219CompleteRelocationMove0Borrowed s6Step219CompleteRelocationMove0After s6Step219EarlyControlArena 856 160 [(789,416)]
    s6Step219CompleteRelocation_move0_owned s6Step219CompleteRelocation_move0_reserve s6Step219CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step219Complete_repack : s6Step219ExitGvAfter.checkRepack s6Step219CompleteMoves=some s6Step219EarlyControlArena := by
  simpa only [s6Step219CompleteMoves] using s6Step219CompleteRelocation_checked

private theorem s6Step219EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s6Step219EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_branch : compileHmrBranchRetirement s6Step219EarlyControlSigmaArena 845=some s6Step219EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step219EarlyControl_branchOwned
  · ext q
    simp [s6Step219EarlyControlOutputArena,s6Step219EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step219EarlyControl_classEqualityBorrow : s6Step219EarlyControlPositiveArena.checkBorrow (([875, 807] : List Wire).length-1) s6Step219EarlyControlLog.classWork=some s6Step219EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step219EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step219EarlyControlEqualityArena,s6Step219EarlyControlPositiveArena,s6Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step219EarlyControl_classEqualityOwned : ([875, 807] : List Wire).toFinset⊆s6Step219EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_classEquality : compileHmrEqualityLog s6Step219EarlyControlPositiveArena [875, 807] 0 s6Step219EarlyControlLog.classWork=some (s6Step219EarlyControlEqualityArena,s6Step219EarlyControlLog.classWork,s6Step219EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step219EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step219EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step219EarlyControl_classOwned : ([769, 873, 875] : List Wire).toFinset⊆s6Step219EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_positiveBorrow : s6Step219EarlyControlZeroArena.checkBorrow (1) s6Step219EarlyControlLog.positiveWork=some s6Step219EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step219EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step219EarlyControlPositiveArena,s6Step219EarlyControlZeroArena,s6Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step219EarlyControl_class : compileHmrSourceClassLog s6Step219EarlyControlZeroArena false 769 s6Step219EarlyControlZeroPlan.top 0 875 s6Step219EarlyControlLog.positiveWork s6Step219EarlyControlLog.classWork=some s6Step219EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step219EarlyControlClassPlan s6Step219EarlyControlZeroArena false 769 s6Step219EarlyControlZeroPlan.top 0 875
  constructor
  · decide +kernel
  · exact s6Step219EarlyControl_classOwned
  · exact s6Step219EarlyControl_positiveBorrow
  · exact s6Step219EarlyControl_classEquality

private theorem s6Step219EarlyControl_entryRecordOwned : ([845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_entrySigmaOwned : ([875, 254] : List Wire).toFinset⊆s6Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_fitBorrow : s6Step219EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step219EarlyControlLog.recordFresh=some s6Step219EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step219EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step219EarlyControlFittedArena,s6Step219EarlyControlFlagArena,s6Step219EarlyControlLog,arenaWires]

private theorem s6Step219EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step219EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_fit : compileHmrRecordGrowLog s6Step219EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step219EarlyControlLog.recordFresh=some s6Step219EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step219EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step219EarlyControl_fitBorrow

private theorem s6Step219EarlyControl_flagsBorrow : s6Step219EarlyControlEqualityArena.checkBorrow (6) s6Step219EarlyControlLog.flagWork=some s6Step219EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step219EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step219EarlyControlFlagArena,s6Step219EarlyControlEqualityArena,s6Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step219EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s6Step219EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_flags : compileHmrFlagsLog s6Step219EarlyControlClassPlan.equalityArena s6Step219EarlyControlClassPlan.equality.top 253 252 251 s6Step219EarlyControlLog.flagWork=some s6Step219EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step219EarlyControl_flagsOwned⟩
  · exact s6Step219EarlyControl_flagsBorrow

private theorem s6Step219EarlyControl_historyBorrow : s6Step219EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step219EarlyControlLog.recordFresh=some s6Step219EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step219EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step219EarlyControlHistoryArena,s6Step219EarlyControlArena,s6Step219EarlyControlLog,arenaWires]

private theorem s6Step219EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_history : compileHmrRecordGrowLog s6Step219EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step219EarlyControlLog.recordFresh=some s6Step219EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step219EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step219EarlyControl_historyBorrow

private theorem s6Step219EarlyControl_sigmaOwned : ([254, 875] : List Wire).toFinset⊆s6Step219EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_sigmaReleaseOwned : ([875] : List Wire).toFinset⊆s6Step219EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_sigmaRelease : s6Step219EarlyControlHistoryArena.release {875} (fun _ => false)=some s6Step219EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step219EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step219EarlyControlSigmaArena,s6Step219EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step219EarlyControl_sigma : compileHmrSigmaDropLog s6Step219EarlyControlHistoryArena false 0 0 254 875 []=some s6Step219EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step219EarlyControl_sigmaOwned⟩
  · exact s6Step219EarlyControl_sigmaRelease

private theorem s6Step219EarlyControl_zeroBorrow : s6Step219EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step219EarlyControlLog.zeroWork=some s6Step219EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step219EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step219EarlyControlZeroArena,s6Step219EarlyControlArena,s6Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step219EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step219EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219EarlyControl_zero : compileHmrEqualityLog s6Step219EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step219EarlyControlLog.zeroWork=some (s6Step219EarlyControlZeroArena,s6Step219EarlyControlLog.zeroWork,s6Step219EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step219EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step219EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step219EarlyControl_logged : s6Step219EarlyControlPlan.Logged s6Step219EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 845 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step219EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step219EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step219EarlyControl_zero
  · exact s6Step219EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step219EarlyControl_flags
  · exact s6Step219EarlyControl_fit
  · exact s6Step219EarlyControl_history
  · exact s6Step219EarlyControl_sigma
  · exact s6Step219EarlyControl_branch

private theorem s6Step219EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step219EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 845 47 s6Step219EarlyControlLog=some s6Step219EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step219EarlyControlPlan s6Step219EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 845 47 s6Step219EarlyControl_logged

private def s6Step219EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step219EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩

private def s6Step219EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩

private def s6Step219EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],777⟩

private def s6Step219EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private def s6Step219FrontBank : WindowBank := ⟨s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow⟩

private def s6Step219Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 873, 795]

private def s6Step219Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 807, 777]

private def s6Step219Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 776]

private def s6Step219Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 858, 775]

private theorem s6Step219Counter_apart : Disjoint s6Step219HeadFvAfter.live s6Step219CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step219HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219Counter_borrowed : s6Step219HeadFvAfter.checkBorrow 4 s6Step219CounterWork=some s6Step219CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step219HeadFvAfter s6Step219CounterDuring s6Step219CounterWork.toFinset s6Step219Counter_bounded s6Step219Counter_apart rfl

private theorem s6Step219Counter_owned : (875::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step219HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step219HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219Counter_checked : compileHmrCounterStepLog s6Step219HeadFvAfter true 875 [774, 773, 772, 771, 770, 769] s6Step219CounterWork=some s6Step219CounterDuring := by
  have owned : ∀q∈875::[774, 773, 772, 771, 770, 769],q∈s6Step219HeadFvAfter.live := fun q hq => s6Step219Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step219Counter_borrowed

private def s6Step219EntryFAfter : Arena := s6Step219EntryFBefore

private theorem s6Step219EntryBank_incomingDistinct : ([s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219EntryF_Incoming : rowsOwned s6Step219EntryFBefore [s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow] 0 s6Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step219EntryBank_outgoingOwned : rowsOwned s6Step219EntryGvAfter [s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step219EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219EntryF_Outgoing : rowsOwned s6Step219EntryGvAfter [s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut] :=
  hmrRows_owned_drop s6Step219EntryGvAfter [s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut] 0 s6Step219EntryBank_outgoingOwned

private theorem s6Step219EntryF_distinct : (s6Step219EntryFRow.sign::s6Step219EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219EntryF_owned : (s6Step219EntryFRow.sign::s6Step219EntryFRow.payload).toFinset⊆s6Step219EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step219EntryF_reserved : s6Step219EntryFBefore.reserve s6Step219EntryFFresh.toFinset=some s6Step219EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219EntryFFresh,arenaWires]
  · norm_num [s6Step219EntryFBefore,s6Step219EntryFFresh,arenaWires]
  · simp only [s6Step219EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step219EntryF_checked : planRowResizeLog s6Step219EntryFBefore s6Step219EntryFRow 161 s6Step219EntryFFresh=
    some (s6Step219EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩,growRow 795 s6Step219EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step219EntryFBefore s6Step219EntryFAfter s6Step219EntryFRow 161 s6Step219EntryFFresh
    s6Step219EntryF_distinct s6Step219EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219EntryF_reserved
  have rowEq : WindowRow.mk (s6Step219EntryFRow.payload++s6Step219EntryFFresh) s6Step219EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step219EntryFvAfter : Arena := s6Step219EntryFBefore

private def s6Step219EntryFvBefore : Arena := s6Step219EntryFBefore

private theorem s6Step219EntryFv_Incoming : rowsOwned s6Step219EntryFvBefore [s6Step219EntryFvRow,s6Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow] 2 s6Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step219EntryFv_Outgoing : rowsOwned s6Step219EntryGvAfter [s6Step219EntryFvOut,s6Step219EntryGvOut] :=
  hmrRows_owned_drop s6Step219EntryGvAfter [s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut] 2 s6Step219EntryBank_outgoingOwned

private theorem s6Step219EntryFv_distinct : (s6Step219EntryFvRow.sign::s6Step219EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219EntryFv_owned : (s6Step219EntryFvRow.sign::s6Step219EntryFvRow.payload).toFinset⊆s6Step219EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step219EntryFv_reserved : s6Step219EntryFvBefore.reserve s6Step219EntryFvFresh.toFinset=some s6Step219EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219EntryFvFresh,arenaWires]
  · norm_num [s6Step219EntryFvBefore,s6Step219EntryFBefore,s6Step219EntryFvFresh,arenaWires]
  · simp only [s6Step219EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step219EntryFv_checked : planRowResizeLog s6Step219EntryFvBefore s6Step219EntryFvRow 124 s6Step219EntryFvFresh=
    some (s6Step219EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩,growRow 776 s6Step219EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step219EntryFvBefore s6Step219EntryFvAfter s6Step219EntryFvRow 124 s6Step219EntryFvFresh
    s6Step219EntryFv_distinct s6Step219EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step219EntryFvRow.payload++s6Step219EntryFvFresh) s6Step219EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step219EntryGAfter : Arena := s6Step219EntryFBefore

private def s6Step219EntryGBefore : Arena := s6Step219EntryFBefore

private theorem s6Step219EntryG_Incoming : rowsOwned s6Step219EntryGBefore [s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow] 1 s6Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step219EntryG_Outgoing : rowsOwned s6Step219EntryGvAfter [s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut] :=
  hmrRows_owned_drop s6Step219EntryGvAfter [s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut] 1 s6Step219EntryBank_outgoingOwned

private theorem s6Step219EntryG_distinct : (s6Step219EntryGRow.sign::s6Step219EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219EntryG_owned : (s6Step219EntryGRow.sign::s6Step219EntryGRow.payload).toFinset⊆s6Step219EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step219EntryG_reserved : s6Step219EntryGBefore.reserve s6Step219EntryGFresh.toFinset=some s6Step219EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219EntryGFresh,arenaWires]
  · norm_num [s6Step219EntryGBefore,s6Step219EntryFBefore,s6Step219EntryGFresh,arenaWires]
  · simp only [s6Step219EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step219EntryG_checked : planRowResizeLog s6Step219EntryGBefore s6Step219EntryGRow 161 s6Step219EntryGFresh=
    some (s6Step219EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],777⟩,growRow 777 s6Step219EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step219EntryGBefore s6Step219EntryGAfter s6Step219EntryGRow 161 s6Step219EntryGFresh
    s6Step219EntryG_distinct s6Step219EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219EntryG_reserved
  have rowEq : WindowRow.mk (s6Step219EntryGRow.payload++s6Step219EntryGFresh) s6Step219EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step219EntryGvBefore : Arena := s6Step219EntryFBefore

private theorem s6Step219EntryGv_Incoming : rowsOwned s6Step219EntryGvBefore [s6Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow] 3 s6Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step219EntryGv_Outgoing : rowsOwned s6Step219EntryGvAfter [s6Step219EntryGvOut] :=
  hmrRows_owned_drop s6Step219EntryGvAfter [s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut] 3 s6Step219EntryBank_outgoingOwned

private theorem s6Step219EntryGv_distinct : (s6Step219EntryGvRow.sign::s6Step219EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219EntryGv_owned : (s6Step219EntryGvRow.sign::s6Step219EntryGvRow.payload).toFinset⊆s6Step219EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step219EntryGv_reserved : s6Step219EntryGvBefore.reserve s6Step219EntryGvFresh.toFinset=some s6Step219EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219EntryGvFresh,arenaWires]
  · norm_num [s6Step219EntryGvBefore,s6Step219EntryFBefore,s6Step219EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step219EntryGvBefore s6Step219EntryGvAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step219EntryGvFresh rfl rfl
    · norm_num [s6Step219EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step219EntryGv_checked : planRowResizeLog s6Step219EntryGvBefore s6Step219EntryGvRow 124 s6Step219EntryGvFresh=
    some (s6Step219EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768],775⟩,growRow 775 s6Step219EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step219EntryGvBefore s6Step219EntryGvAfter s6Step219EntryGvRow 124 s6Step219EntryGvFresh
    s6Step219EntryGv_distinct s6Step219EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step219EntryGvRow.payload++s6Step219EntryGvFresh) s6Step219EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step219EntryBank_rows : planWindowRowsLog s6Step219EntryFBefore [(s6Step219EntryFRow,161),(s6Step219EntryGRow,161),(s6Step219EntryFvRow,124),(s6Step219EntryGvRow,124)] [s6Step219EntryFFresh,s6Step219EntryGFresh,s6Step219EntryFvFresh,s6Step219EntryGvFresh]=
    some (s6Step219EntryGvAfter,[s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut],(growRow 795 s6Step219EntryFFresh ++ (growRow 777 s6Step219EntryGFresh ++ (growRow 776 s6Step219EntryFvFresh ++ (growRow 775 s6Step219EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step219EntryGvAfter [] []=some (s6Step219EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step219EntryGvBefore s6Step219EntryGvAfter s6Step219EntryGvAfter
    s6Step219EntryGvRow s6Step219EntryGvOut 124 s6Step219EntryGvFresh [] [] []
    (growRow 775 s6Step219EntryGvFresh) ([]) s6Step219EntryGv_Incoming s6Step219EntryGv_checked h4 s6Step219EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step219EntryFvBefore s6Step219EntryFvAfter s6Step219EntryGvAfter
    s6Step219EntryFvRow s6Step219EntryFvOut 124 s6Step219EntryFvFresh [(s6Step219EntryGvRow,124)] [s6Step219EntryGvFresh] [s6Step219EntryGvOut]
    (growRow 776 s6Step219EntryFvFresh) ((growRow 775 s6Step219EntryGvFresh ++ [])) s6Step219EntryFv_Incoming s6Step219EntryFv_checked h3 s6Step219EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step219EntryGBefore s6Step219EntryGAfter s6Step219EntryGvAfter
    s6Step219EntryGRow s6Step219EntryGOut 161 s6Step219EntryGFresh [(s6Step219EntryFvRow,124),(s6Step219EntryGvRow,124)] [s6Step219EntryFvFresh,s6Step219EntryGvFresh] [s6Step219EntryFvOut,s6Step219EntryGvOut]
    (growRow 777 s6Step219EntryGFresh) ((growRow 776 s6Step219EntryFvFresh ++ (growRow 775 s6Step219EntryGvFresh ++ []))) s6Step219EntryG_Incoming s6Step219EntryG_checked h2 s6Step219EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step219EntryFBefore s6Step219EntryFAfter s6Step219EntryGvAfter
    s6Step219EntryFRow s6Step219EntryFOut 161 s6Step219EntryFFresh [(s6Step219EntryGRow,161),(s6Step219EntryFvRow,124),(s6Step219EntryGvRow,124)] [s6Step219EntryGFresh,s6Step219EntryFvFresh,s6Step219EntryGvFresh] [s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut]
    (growRow 795 s6Step219EntryFFresh) ((growRow 777 s6Step219EntryGFresh ++ (growRow 776 s6Step219EntryFvFresh ++ (growRow 775 s6Step219EntryGvFresh ++ [])))) s6Step219EntryF_Incoming s6Step219EntryF_checked h1 s6Step219EntryF_Outgoing
  exact h0

private theorem s6Step219EntryBank_checked : compileHmrBankResizeLog .entry s6Step219EntryFBefore ⟨s6Step219EntryFRow,s6Step219EntryGRow,s6Step219EntryFvRow,s6Step219EntryGvRow⟩ ⟨161,161,124,124⟩ [s6Step219EntryFFresh,s6Step219EntryGFresh,s6Step219EntryFvFresh,s6Step219EntryGvFresh]=
    some (s6Step219EntryGvAfter,⟨s6Step219EntryFOut,s6Step219EntryGOut,s6Step219EntryFvOut,s6Step219EntryGvOut⟩,(growRow 795 s6Step219EntryFFresh ++ (growRow 777 s6Step219EntryGFresh ++ (growRow 776 s6Step219EntryFvFresh ++ (growRow 775 s6Step219EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step219EntryBank_rows]
  rfl

private def s6Step219ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219ExitFBefore : Arena := s6Step219ExitGAfter

private def s6Step219ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 873],795⟩

private def s6Step219ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855],776⟩

private def s6Step219ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 807],777⟩

private def s6Step219ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 858],775⟩

private theorem s6Step219ExitBank_incomingDistinct : ([s6Step219ExitGRow,s6Step219ExitFRow,s6Step219ExitFvRow,s6Step219ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219ExitF_Incoming : rowsOwned s6Step219ExitFBefore [s6Step219ExitFRow,s6Step219ExitFvRow,s6Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219ExitGRow,s6Step219ExitFRow,s6Step219ExitFvRow,s6Step219ExitGvRow] 1 s6Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219ExitFBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219ExitBank_outgoingOwned : rowsOwned s6Step219ExitGvAfter [s6Step219ExitGOut,s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step219ExitGvAfter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219ExitF_Outgoing : rowsOwned s6Step219ExitGvAfter [s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut] :=
  hmrRows_owned_drop s6Step219ExitGvAfter [s6Step219ExitGOut,s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut] 1 s6Step219ExitBank_outgoingOwned

private theorem s6Step219ExitF_distinct : (s6Step219ExitFRow.sign::s6Step219ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219ExitF_owned : (s6Step219ExitFRow.sign::s6Step219ExitFRow.payload).toFinset⊆s6Step219ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219ExitFBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219ExitF_retired : s6Step219ExitFBefore.retireSet s6Step219ExitFExtra.toFinset=s6Step219ExitFAfter := by
  unfold Arena.retireSet s6Step219ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step219ExitFBefore,s6Step219ExitGAfter,s6Step219ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step219ExitF_checked : planRowResizeLog s6Step219ExitFBefore s6Step219ExitFRow 160 []=
    some (s6Step219ExitFAfter,s6Step219ExitFOut,shrinkRow 795 s6Step219ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step219ExitFBefore s6Step219ExitFRow 160 s6Step219ExitF_distinct s6Step219ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step219ExitFRow.payload.take 160) s6Step219ExitFRow.sign=s6Step219ExitFOut := by decide +kernel
  have hi : s6Step219ExitFRow.payload.drop 160=s6Step219ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step219ExitF_retired] at result
  exact result

private def s6Step219ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219ExitFvBefore : Arena := s6Step219ExitFAfter

private theorem s6Step219ExitFv_Incoming : rowsOwned s6Step219ExitFvBefore [s6Step219ExitFvRow,s6Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219ExitGRow,s6Step219ExitFRow,s6Step219ExitFvRow,s6Step219ExitGvRow] 2 s6Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219ExitFvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219ExitFv_Outgoing : rowsOwned s6Step219ExitGvAfter [s6Step219ExitFvOut,s6Step219ExitGvOut] :=
  hmrRows_owned_drop s6Step219ExitGvAfter [s6Step219ExitGOut,s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut] 2 s6Step219ExitBank_outgoingOwned

private theorem s6Step219ExitFv_distinct : (s6Step219ExitFvRow.sign::s6Step219ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219ExitFv_owned : (s6Step219ExitFvRow.sign::s6Step219ExitFvRow.payload).toFinset⊆s6Step219ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219ExitFvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219ExitFv_retired : s6Step219ExitFvBefore.retireSet s6Step219ExitFvExtra.toFinset=s6Step219ExitFvAfter := by
  unfold Arena.retireSet s6Step219ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step219ExitFvBefore,s6Step219ExitFAfter,s6Step219ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step219ExitFv_checked : planRowResizeLog s6Step219ExitFvBefore s6Step219ExitFvRow 124 []=
    some (s6Step219ExitFvAfter,s6Step219ExitFvOut,shrinkRow 776 s6Step219ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step219ExitFvBefore s6Step219ExitFvRow 124 s6Step219ExitFv_distinct s6Step219ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step219ExitFvRow.payload.take 124) s6Step219ExitFvRow.sign=s6Step219ExitFvOut := by decide +kernel
  have hi : s6Step219ExitFvRow.payload.drop 124=s6Step219ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step219ExitFv_retired] at result
  exact result

private def s6Step219ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step219ExitG_Incoming : rowsOwned s6Step219ExitGBefore [s6Step219ExitGRow,s6Step219ExitFRow,s6Step219ExitFvRow,s6Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219ExitGRow,s6Step219ExitFRow,s6Step219ExitFvRow,s6Step219ExitGvRow] 0 s6Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219ExitG_Outgoing : rowsOwned s6Step219ExitGvAfter [s6Step219ExitGOut,s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut] :=
  hmrRows_owned_drop s6Step219ExitGvAfter [s6Step219ExitGOut,s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut] 0 s6Step219ExitBank_outgoingOwned

private theorem s6Step219ExitG_distinct : (s6Step219ExitGRow.sign::s6Step219ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219ExitG_owned : (s6Step219ExitGRow.sign::s6Step219ExitGRow.payload).toFinset⊆s6Step219ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219ExitG_retired : s6Step219ExitGBefore.retireSet s6Step219ExitGExtra.toFinset=s6Step219ExitGAfter := by
  unfold Arena.retireSet s6Step219ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step219ExitGBefore,s6Step219ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step219ExitG_checked : planRowResizeLog s6Step219ExitGBefore s6Step219ExitGRow 160 []=
    some (s6Step219ExitGAfter,s6Step219ExitGOut,shrinkRow 777 s6Step219ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step219ExitGBefore s6Step219ExitGRow 160 s6Step219ExitG_distinct s6Step219ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step219ExitGRow.payload.take 160) s6Step219ExitGRow.sign=s6Step219ExitGOut := by decide +kernel
  have hi : s6Step219ExitGRow.payload.drop 160=s6Step219ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step219ExitG_retired] at result
  exact result

private def s6Step219ExitGvBefore : Arena := s6Step219ExitFvAfter

private theorem s6Step219ExitGv_Incoming : rowsOwned s6Step219ExitGvBefore [s6Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219ExitGRow,s6Step219ExitFRow,s6Step219ExitFvRow,s6Step219ExitGvRow] 3 s6Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219ExitGvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219ExitGv_Outgoing : rowsOwned s6Step219ExitGvAfter [s6Step219ExitGvOut] :=
  hmrRows_owned_drop s6Step219ExitGvAfter [s6Step219ExitGOut,s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut] 3 s6Step219ExitBank_outgoingOwned

private theorem s6Step219ExitGv_distinct : (s6Step219ExitGvRow.sign::s6Step219ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219ExitGv_owned : (s6Step219ExitGvRow.sign::s6Step219ExitGvRow.payload).toFinset⊆s6Step219ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219ExitGvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<416) ∨ (417≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219ExitGv_retired : s6Step219ExitGvBefore.retireSet s6Step219ExitGvExtra.toFinset=s6Step219ExitGvAfter := by
  unfold Arena.retireSet s6Step219ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step219ExitGvBefore,s6Step219ExitFvAfter,s6Step219ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step219ExitGv_checked : planRowResizeLog s6Step219ExitGvBefore s6Step219ExitGvRow 124 []=
    some (s6Step219ExitGvAfter,s6Step219ExitGvOut,shrinkRow 775 s6Step219ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step219ExitGvBefore s6Step219ExitGvRow 124 s6Step219ExitGv_distinct s6Step219ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step219ExitGvRow.payload.take 124) s6Step219ExitGvRow.sign=s6Step219ExitGvOut := by decide +kernel
  have hi : s6Step219ExitGvRow.payload.drop 124=s6Step219ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step219ExitGv_retired] at result
  exact result

private theorem s6Step219ExitBank_rows : planWindowRowsLog s6Step219ExitGBefore [(s6Step219ExitGRow,160),(s6Step219ExitFRow,160),(s6Step219ExitFvRow,124),(s6Step219ExitGvRow,124)] [[],[],[],[]]=
    some (s6Step219ExitGvAfter,[s6Step219ExitGOut,s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut],(shrinkRow 777 s6Step219ExitGExtra ++ (shrinkRow 795 s6Step219ExitFExtra ++ (shrinkRow 776 s6Step219ExitFvExtra ++ (shrinkRow 775 s6Step219ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step219ExitGvAfter [] []=some (s6Step219ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step219ExitGvBefore s6Step219ExitGvAfter s6Step219ExitGvAfter
    s6Step219ExitGvRow s6Step219ExitGvOut 124 [] [] [] []
    (shrinkRow 775 s6Step219ExitGvExtra) ([]) s6Step219ExitGv_Incoming s6Step219ExitGv_checked h4 s6Step219ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step219ExitFvBefore s6Step219ExitFvAfter s6Step219ExitGvAfter
    s6Step219ExitFvRow s6Step219ExitFvOut 124 [] [(s6Step219ExitGvRow,124)] [[]] [s6Step219ExitGvOut]
    (shrinkRow 776 s6Step219ExitFvExtra) ((shrinkRow 775 s6Step219ExitGvExtra ++ [])) s6Step219ExitFv_Incoming s6Step219ExitFv_checked h3 s6Step219ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step219ExitFBefore s6Step219ExitFAfter s6Step219ExitGvAfter
    s6Step219ExitFRow s6Step219ExitFOut 160 [] [(s6Step219ExitFvRow,124),(s6Step219ExitGvRow,124)] [[],[]] [s6Step219ExitFvOut,s6Step219ExitGvOut]
    (shrinkRow 795 s6Step219ExitFExtra) ((shrinkRow 776 s6Step219ExitFvExtra ++ (shrinkRow 775 s6Step219ExitGvExtra ++ []))) s6Step219ExitF_Incoming s6Step219ExitF_checked h2 s6Step219ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step219ExitGBefore s6Step219ExitGAfter s6Step219ExitGvAfter
    s6Step219ExitGRow s6Step219ExitGOut 160 [] [(s6Step219ExitFRow,160),(s6Step219ExitFvRow,124),(s6Step219ExitGvRow,124)] [[],[],[]] [s6Step219ExitFOut,s6Step219ExitFvOut,s6Step219ExitGvOut]
    (shrinkRow 777 s6Step219ExitGExtra) ((shrinkRow 795 s6Step219ExitFExtra ++ (shrinkRow 776 s6Step219ExitFvExtra ++ (shrinkRow 775 s6Step219ExitGvExtra ++ [])))) s6Step219ExitG_Incoming s6Step219ExitG_checked h1 s6Step219ExitG_Outgoing
  exact h0

private theorem s6Step219ExitBank_checked : compileHmrBankResizeLog .exit s6Step219ExitGBefore ⟨s6Step219ExitFRow,s6Step219ExitGRow,s6Step219ExitFvRow,s6Step219ExitGvRow⟩ ⟨160,160,124,124⟩ [[],[],[],[]]=
    some (s6Step219ExitGvAfter,⟨s6Step219ExitFOut,s6Step219ExitGOut,s6Step219ExitFvOut,s6Step219ExitGvOut⟩,(shrinkRow 777 s6Step219ExitGExtra ++ (shrinkRow 795 s6Step219ExitFExtra ++ (shrinkRow 776 s6Step219ExitFvExtra ++ (shrinkRow 775 s6Step219ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step219ExitBank_rows]
  rfl

private theorem s6Step219Add0_apart : Disjoint s6Step219Add0Arena.live s6Step219Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step219Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219Add0_card : s6Step219Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step219Add0_borrowed : s6Step219Add0Arena.checkBorrow (hmrHybridCount s6Step219Add0Arena s6Step219Add0B.length) s6Step219Add0Work=some s6Step219Add0During := by
  have len : s6Step219Add0Work.length=hmrHybridCount s6Step219Add0Arena s6Step219Add0B.length := by
    rw [hmrHybridCount,s6Step219Add0_card]
    decide +kernel
  have nd : s6Step219Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step219Add0Arena s6Step219Add0During s6Step219Add0Work.toFinset s6Step219Add0_bounded s6Step219Add0_apart rfl

private theorem s6Step219Add0_distinct : (822::845::825::(s6Step219Add0A++s6Step219Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219Add0_owned : (822::845::825::(s6Step219Add0A++s6Step219Add0B)).toFinset⊆s6Step219Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step219Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219Add0_checked : compileHmrHybridCinLog s6Step219Add0Arena 845 822 825 s6Step219Add0A s6Step219Add0B s6Step219Add0Work=some s6Step219Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step219Add0Arena s6Step219Add0During 845 822 825 s6Step219Add0A s6Step219Add0B s6Step219Add0Work
    (by decide +kernel) (by decide +kernel) s6Step219Add0_distinct
    (fun q hq => s6Step219Add0_owned (List.mem_toFinset.mpr hq)) s6Step219Add0_borrowed

private theorem s6Step219Add1_apart : Disjoint s6Step219Add1Arena.live s6Step219Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step219Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219Add1_card : s6Step219Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step219Add1_borrowed : s6Step219Add1Arena.checkBorrow (hmrHybridCount s6Step219Add1Arena s6Step219Add1B.length) s6Step219Add1Work=some s6Step219Add1During := by
  have len : s6Step219Add1Work.length=hmrHybridCount s6Step219Add1Arena s6Step219Add1B.length := by
    rw [hmrHybridCount,s6Step219Add1_card]
    decide +kernel
  have nd : s6Step219Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step219Add1Arena s6Step219Add1During s6Step219Add1Work.toFinset s6Step219Add1_bounded s6Step219Add1_apart rfl

private theorem s6Step219Add1_distinct : (822::845::825::(s6Step219Add1A++s6Step219Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219Add1_owned : (822::845::825::(s6Step219Add1A++s6Step219Add1B)).toFinset⊆s6Step219Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step219Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219Add1_checked : compileHmrHybridCinLog s6Step219Add1Arena 845 822 825 s6Step219Add1A s6Step219Add1B s6Step219Add1Work=some s6Step219Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step219Add1Arena s6Step219Add1During 845 822 825 s6Step219Add1A s6Step219Add1B s6Step219Add1Work
    (by decide +kernel) (by decide +kernel) s6Step219Add1_distinct
    (fun q hq => s6Step219Add1_owned (List.mem_toFinset.mpr hq)) s6Step219Add1_borrowed

private theorem s6Step219F4_apart : Disjoint (s6Step219Add0A++s6Step219Add0B).toFinset (s6Step219Add1A++s6Step219Add1B).toFinset := by
  have nd : ((s6Step219Add0A++s6Step219Add0B)++(s6Step219Add1A++s6Step219Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step219F4_carry : s6Step219F4FlagArena.checkBorrow 1 [825]=some s6Step219Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step219F4FlagArena,s6Step219HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step219F4FlagArena,s6Step219HeadFvAfter,s6Step219Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step219F4_distinct : (875::845::822::825::((s6Step219Add0A++s6Step219Add1A)++(s6Step219Add0B++s6Step219Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219F4_flag : s6Step219HeadFvAfter.checkBorrow 1 [822]=some s6Step219F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step219HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step219F4_owned : (875::845::((s6Step219Add0A++s6Step219Add1A)++(s6Step219Add0B++s6Step219Add1B))).toFinset⊆s6Step219HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step219HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219F4_checked : compileHmrHybridF4Log s6Step219HeadFvAfter 875 845 s6Step219Add0A s6Step219Add0B s6Step219Add1A s6Step219Add1B [822] [825] s6Step219Add0Work s6Step219Add1Work=some s6Step219F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step219HeadFvAfter s6Step219F4FlagArena s6Step219Add0Arena s6Step219Add0During s6Step219Add1During 875 845
    s6Step219Add0A s6Step219Add0B s6Step219Add1A s6Step219Add1B [822] [825] s6Step219Add0Work s6Step219Add1Work
    (fun q hq => s6Step219F4_owned (List.mem_toFinset.mpr hq)) s6Step219F4_flag s6Step219F4_carry
    s6Step219F4_distinct s6Step219F4_apart s6Step219Add0_checked s6Step219Add1_checked

private theorem s6Step219Front_branch : s6Step219FrontSigmaArena.checkBorrow 1 [845]=some s6Step219HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step219FrontSigmaArena,s6Step219EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step219FrontSigmaArena,s6Step219EntryGvAfter,s6Step219HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step219Front_entry : HmrFrontEntryValid s6Step219EntryFBefore s6Step219FrontBank 161 124 ⟨160,160,124,124⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step219FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step219EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step219EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step219FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step219Front_sigma : s6Step219EntryGvAfter.checkBorrow 1 [875]=some s6Step219FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step219EntryGvAfter,arenaWires]
  · rfl

private def s6Step219HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219HeadFBefore : Arena := s6Step219HeadGAfter

private def s6Step219HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩

private def s6Step219HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩

private def s6Step219HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],777⟩

private def s6Step219HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768],775⟩

private theorem s6Step219HeadBank_incomingDistinct : ([s6Step219HeadGRow,s6Step219HeadFRow,s6Step219HeadGvRow,s6Step219HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219HeadF_Incoming : rowsOwned s6Step219HeadFBefore [s6Step219HeadFRow,s6Step219HeadGvRow,s6Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219HeadGRow,s6Step219HeadFRow,s6Step219HeadGvRow,s6Step219HeadFvRow] 1 s6Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219HeadBank_outgoingOwned : rowsOwned s6Step219HeadFvAfter [s6Step219HeadGOut,s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step219HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219HeadF_Outgoing : rowsOwned s6Step219HeadFvAfter [s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut] :=
  hmrRows_owned_drop s6Step219HeadFvAfter [s6Step219HeadGOut,s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut] 1 s6Step219HeadBank_outgoingOwned

private theorem s6Step219HeadF_distinct : (s6Step219HeadFRow.sign::s6Step219HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219HeadF_owned : (s6Step219HeadFRow.sign::s6Step219HeadFRow.payload).toFinset⊆s6Step219HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219HeadF_reserved : s6Step219HeadFBefore.reserve s6Step219HeadFFresh.toFinset=some s6Step219HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219HeadFFresh,arenaWires]
  · norm_num [s6Step219HeadFBefore,s6Step219HeadGAfter,s6Step219HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step219HeadFAfter,s6Step219HeadFBefore,s6Step219HeadGAfter,s6Step219HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step219HeadF_checked : planRowResizeLog s6Step219HeadFBefore s6Step219HeadFRow 162 s6Step219HeadFFresh=
    some (s6Step219HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 873],795⟩,growRow 795 s6Step219HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step219HeadFBefore s6Step219HeadFAfter s6Step219HeadFRow 162 s6Step219HeadFFresh
    s6Step219HeadF_distinct s6Step219HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219HeadF_reserved
  have rowEq : WindowRow.mk (s6Step219HeadFRow.payload++s6Step219HeadFFresh) s6Step219HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 873],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step219HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step219HeadFvBefore : Arena := s6Step219HeadGvAfter

private theorem s6Step219HeadFv_Incoming : rowsOwned s6Step219HeadFvBefore [s6Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219HeadGRow,s6Step219HeadFRow,s6Step219HeadGvRow,s6Step219HeadFvRow] 3 s6Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219HeadFv_Outgoing : rowsOwned s6Step219HeadFvAfter [s6Step219HeadFvOut] :=
  hmrRows_owned_drop s6Step219HeadFvAfter [s6Step219HeadGOut,s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut] 3 s6Step219HeadBank_outgoingOwned

private theorem s6Step219HeadFv_distinct : (s6Step219HeadFvRow.sign::s6Step219HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219HeadFv_owned : (s6Step219HeadFvRow.sign::s6Step219HeadFvRow.payload).toFinset⊆s6Step219HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219HeadFv_reserved : s6Step219HeadFvBefore.reserve s6Step219HeadFvFresh.toFinset=some s6Step219HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219HeadFvFresh,arenaWires]
  · norm_num [s6Step219HeadFvBefore,s6Step219HeadGvAfter,s6Step219HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step219HeadFvAfter,s6Step219HeadFvBefore,s6Step219HeadGvAfter,s6Step219HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step219HeadFv_checked : planRowResizeLog s6Step219HeadFvBefore s6Step219HeadFvRow 125 s6Step219HeadFvFresh=
    some (s6Step219HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855],776⟩,growRow 776 s6Step219HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step219HeadFvBefore s6Step219HeadFvAfter s6Step219HeadFvRow 125 s6Step219HeadFvFresh
    s6Step219HeadFv_distinct s6Step219HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step219HeadFvRow.payload++s6Step219HeadFvFresh) s6Step219HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step219HeadG_Incoming : rowsOwned s6Step219HeadGBefore [s6Step219HeadGRow,s6Step219HeadFRow,s6Step219HeadGvRow,s6Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219HeadGRow,s6Step219HeadFRow,s6Step219HeadGvRow,s6Step219HeadFvRow] 0 s6Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219HeadG_Outgoing : rowsOwned s6Step219HeadFvAfter [s6Step219HeadGOut,s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut] :=
  hmrRows_owned_drop s6Step219HeadFvAfter [s6Step219HeadGOut,s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut] 0 s6Step219HeadBank_outgoingOwned

private theorem s6Step219HeadG_distinct : (s6Step219HeadGRow.sign::s6Step219HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219HeadG_owned : (s6Step219HeadGRow.sign::s6Step219HeadGRow.payload).toFinset⊆s6Step219HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219HeadG_reserved : s6Step219HeadGBefore.reserve s6Step219HeadGFresh.toFinset=some s6Step219HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219HeadGFresh,arenaWires]
  · norm_num [s6Step219HeadGBefore,s6Step219HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step219HeadGAfter,s6Step219HeadGBefore,s6Step219HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step219HeadG_checked : planRowResizeLog s6Step219HeadGBefore s6Step219HeadGRow 162 s6Step219HeadGFresh=
    some (s6Step219HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 807],777⟩,growRow 777 s6Step219HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step219HeadGBefore s6Step219HeadGAfter s6Step219HeadGRow 162 s6Step219HeadGFresh
    s6Step219HeadG_distinct s6Step219HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219HeadG_reserved
  have rowEq : WindowRow.mk (s6Step219HeadGRow.payload++s6Step219HeadGFresh) s6Step219HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step219HeadGvBefore : Arena := s6Step219HeadFAfter

private theorem s6Step219HeadGv_Incoming : rowsOwned s6Step219HeadGvBefore [s6Step219HeadGvRow,s6Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step219HeadGRow,s6Step219HeadFRow,s6Step219HeadGvRow,s6Step219HeadFvRow] 2 s6Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step219HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step219HeadGv_Outgoing : rowsOwned s6Step219HeadFvAfter [s6Step219HeadGvOut,s6Step219HeadFvOut] :=
  hmrRows_owned_drop s6Step219HeadFvAfter [s6Step219HeadGOut,s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut] 2 s6Step219HeadBank_outgoingOwned

private theorem s6Step219HeadGv_distinct : (s6Step219HeadGvRow.sign::s6Step219HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step219HeadGv_owned : (s6Step219HeadGvRow.sign::s6Step219HeadGvRow.payload).toFinset⊆s6Step219HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step219HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step219HeadGv_reserved : s6Step219HeadGvBefore.reserve s6Step219HeadGvFresh.toFinset=some s6Step219HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step219HeadGvFresh,arenaWires]
  · norm_num [s6Step219HeadGvBefore,s6Step219HeadFAfter,s6Step219HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step219HeadGvAfter,s6Step219HeadGvBefore,s6Step219HeadFAfter,s6Step219HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step219HeadGv_checked : planRowResizeLog s6Step219HeadGvBefore s6Step219HeadGvRow 125 s6Step219HeadGvFresh=
    some (s6Step219HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 858],775⟩,growRow 775 s6Step219HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step219HeadGvBefore s6Step219HeadGvAfter s6Step219HeadGvRow 125 s6Step219HeadGvFresh
    s6Step219HeadGv_distinct s6Step219HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step219HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step219HeadGvRow.payload++s6Step219HeadGvFresh) s6Step219HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step219HeadBank_rows : planWindowRowsLog s6Step219HeadGBefore [(s6Step219HeadGRow,162),(s6Step219HeadFRow,162),(s6Step219HeadGvRow,125),(s6Step219HeadFvRow,125)] [s6Step219HeadGFresh,s6Step219HeadFFresh,s6Step219HeadGvFresh,s6Step219HeadFvFresh]=
    some (s6Step219HeadFvAfter,[s6Step219HeadGOut,s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut],(growRow 777 s6Step219HeadGFresh ++ (growRow 795 s6Step219HeadFFresh ++ (growRow 775 s6Step219HeadGvFresh ++ (growRow 776 s6Step219HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step219HeadFvAfter [] []=some (s6Step219HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step219HeadFvBefore s6Step219HeadFvAfter s6Step219HeadFvAfter
    s6Step219HeadFvRow s6Step219HeadFvOut 125 s6Step219HeadFvFresh [] [] []
    (growRow 776 s6Step219HeadFvFresh) ([]) s6Step219HeadFv_Incoming s6Step219HeadFv_checked h4 s6Step219HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step219HeadGvBefore s6Step219HeadGvAfter s6Step219HeadFvAfter
    s6Step219HeadGvRow s6Step219HeadGvOut 125 s6Step219HeadGvFresh [(s6Step219HeadFvRow,125)] [s6Step219HeadFvFresh] [s6Step219HeadFvOut]
    (growRow 775 s6Step219HeadGvFresh) ((growRow 776 s6Step219HeadFvFresh ++ [])) s6Step219HeadGv_Incoming s6Step219HeadGv_checked h3 s6Step219HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step219HeadFBefore s6Step219HeadFAfter s6Step219HeadFvAfter
    s6Step219HeadFRow s6Step219HeadFOut 162 s6Step219HeadFFresh [(s6Step219HeadGvRow,125),(s6Step219HeadFvRow,125)] [s6Step219HeadGvFresh,s6Step219HeadFvFresh] [s6Step219HeadGvOut,s6Step219HeadFvOut]
    (growRow 795 s6Step219HeadFFresh) ((growRow 775 s6Step219HeadGvFresh ++ (growRow 776 s6Step219HeadFvFresh ++ []))) s6Step219HeadF_Incoming s6Step219HeadF_checked h2 s6Step219HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step219HeadGBefore s6Step219HeadGAfter s6Step219HeadFvAfter
    s6Step219HeadGRow s6Step219HeadGOut 162 s6Step219HeadGFresh [(s6Step219HeadFRow,162),(s6Step219HeadGvRow,125),(s6Step219HeadFvRow,125)] [s6Step219HeadFFresh,s6Step219HeadGvFresh,s6Step219HeadFvFresh] [s6Step219HeadFOut,s6Step219HeadGvOut,s6Step219HeadFvOut]
    (growRow 777 s6Step219HeadGFresh) ((growRow 795 s6Step219HeadFFresh ++ (growRow 775 s6Step219HeadGvFresh ++ (growRow 776 s6Step219HeadFvFresh ++ [])))) s6Step219HeadG_Incoming s6Step219HeadG_checked h1 s6Step219HeadG_Outgoing
  exact h0

private theorem s6Step219HeadBank_checked : compileHmrBankResizeLog .headroom s6Step219HeadGBefore ⟨s6Step219HeadFRow,s6Step219HeadGRow,s6Step219HeadFvRow,s6Step219HeadGvRow⟩ ⟨162,162,125,125⟩ [s6Step219HeadGFresh,s6Step219HeadFFresh,s6Step219HeadGvFresh,s6Step219HeadFvFresh]=
    some (s6Step219HeadFvAfter,⟨s6Step219HeadFOut,s6Step219HeadGOut,s6Step219HeadFvOut,s6Step219HeadGvOut⟩,(growRow 777 s6Step219HeadGFresh ++ (growRow 795 s6Step219HeadFFresh ++ (growRow 775 s6Step219HeadGvFresh ++ (growRow 776 s6Step219HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step219HeadBank_rows]
  rfl

private theorem s6Step219Front_checked : compileHmrSourceFrontLog s6Step219EntryFBefore s6Step219FrontBank 161 124 ⟨160,160,124,124⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step219FrontLog=some s6Step219FrontPlan := by
  have pairEq : s6Step219FrontPair=⟨s6Step219HeadFRow,s6Step219HeadGRow,s6Step219HeadFvRow,s6Step219HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step219FrontHead=⟨s6Step219ExitFRow,s6Step219ExitGRow,s6Step219ExitFvRow,s6Step219ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step219Add0A=s6Step219FrontHead.f.wires := by decide +kernel
  have gEq : s6Step219Add0B=s6Step219FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step219Add1A=s6Step219FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step219Add1B=s6Step219FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step219EntryFBefore s6Step219FrontBank 161 124 ⟨160,160,124,124⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step219FrontLog s6Step219FrontPlan
  · exact s6Step219Front_entry
  · exact s6Step219EntryBank_checked
  · exact s6Step219Front_sigma
  · rfl
  · exact s6Step219Front_branch
  · rfl
  · simpa only [s6Step219FrontPlan,pairEq] using s6Step219HeadBank_checked
  · simpa only [s6Step219FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step219F4_checked
  · exact s6Step219Counter_checked
  · rfl
  · simpa only [s6Step219FrontPlan,headEq] using s6Step219ExitBank_checked

private theorem s6Step219Complete_explicit_checked : compileHmrEarlyStepLog s6Step219EntryFBefore s6Step219FrontBank 161 124 ⟨160,160,124,124⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step219CompleteLog=some s6Step219CompletePlan := by
  let Q := s6Step219EarlyControlPlan
  have hq := s6Step219EarlyControl_plan_checked
  have fv1 : s6Step219CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step219CompleteOut.fv.payload[2]?.getD s6Step219CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step219CompleteOut.fv.payload[3]?.getD s6Step219CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step219CompleteOut.fv.payload[4]?.getD s6Step219CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step219EntryFBefore s6Step219EarlyControlArena s6Step219FrontBank 161 124 ⟨160,160,124,124⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step219CompleteLog s6Step219FrontPlan Q
    s6Step219Front_checked s6Step219Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step219Complete_owned s6Step219Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step219EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 s6Step219CompleteOut.fv.second (s6Step219CompleteOut.fv.payload[2]?.getD s6Step219CompleteOut.fv.sign) (s6Step219CompleteOut.fv.payload[3]?.getD s6Step219CompleteOut.fv.sign) (s6Step219CompleteOut.fv.payload[4]?.getD s6Step219CompleteOut.fv.sign) 845 47 s6Step219EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep219Arena : Arena := s6Step219EntryFBefore
def s6PrivateStep219Bank : WindowBank := s6Step219FrontBank
def s6PrivateStep219Spec : HmrSourceWalkStepLog := ⟨161,124,⟨160,160,124,124⟩,47,.early s6Step219CompleteLog⟩
def s6PrivateStep219Plan : HmrSourceStepPlan := .early s6Step219CompletePlan
theorem s6PrivateStep219_source : s6PrivateStep219Spec=s6ObservedLogs208[11] := rfl
theorem s6PrivateStep219_checked : compileHmrSourceStepLog s6PrivateStep219Arena s6PrivateStep219Bank
    s6PrivateStep219Spec.fgWidth s6PrivateStep219Spec.vWidth s6PrivateStep219Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 219 s6PrivateStep219Spec.need none s6PrivateStep219Spec.log=some s6PrivateStep219Plan := by
  change compileHmrSourceStepLog s6Step219EntryFBefore s6Step219FrontBank 161 124 ⟨160,160,124,124⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 219 47 none (.early s6Step219CompleteLog)=some (.early s6Step219CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 219<498)]
  rw [s6Step219Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
