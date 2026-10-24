import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep206
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

private def s6Step208CompleteMoves : List (Wire × Wire) := []

private def s6Step208EarlyControlLog : HmrEarlyControlLog := ⟨[813, 807, 802, 855, 838],[822],[825],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step208FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], []],[[802], [813], [780], [859]],[[], [], [], []]⟩,[867],[858],[855],[838],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[855, 838, 822, 825]⟩

private def s6Step208CompleteLog : HmrEarlyStepLog := ⟨s6Step208FrontLog,s6Step208CompleteMoves,s6Step208EarlyControlLog⟩

private def s6Step208ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421],795⟩

private def s6Step208ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859],776⟩

private def s6Step208ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164],777⟩

private def s6Step208ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩

private def s6Step208FrontOut : WindowBank := ⟨s6Step208ExitFOut,s6Step208ExitGOut,s6Step208ExitFvOut,s6Step208ExitGvOut⟩

private def s6Step208CompleteOut : WindowBank := s6Step208FrontOut.repacked s6Step208CompleteMoves

private def s6Step208EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step208EarlyControlPositiveArena,[822],s6Step208EarlyControlEqualityArena,[825],⟨⟨867,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step208EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,813⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,802⟩,⟨⟨770,false⟩,855⟩,⟨⟨769,false⟩,838⟩]⟩

private def s6Step208EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step208EarlyControlZeroArena,s6Step208EarlyControlZeroPlan,s6Step208EarlyControlClassPlan,s6Step208EarlyControlFlagArena,s6Step208EarlyControlFittedArena,s6Step208EarlyControlHistoryArena,s6Step208EarlyControlSigmaArena,s6Step208EarlyControlOutputArena,s6Step208EarlyControlLog⟩

private def s6Step208CounterWork : List Wire := [855, 838, 822, 825]

private theorem s6Step208Counter_bounded : s6Step208CounterWork.toFinset⊆arenaWires := by norm_num [s6Step208CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step208HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208CounterDuring : Arena := ⟨s6Step208HeadFvAfter.live∪s6Step208CounterWork.toFinset,Finset.union_subset s6Step208HeadFvAfter.bounded s6Step208Counter_bounded⟩

private def s6Step208EntryFFresh : List Wire := []

private def s6Step208EntryFvFresh : List Wire := []

private def s6Step208EntryGFresh : List Wire := [807]

private def s6Step208EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EntryGvAfter : Arena := s6Step208EntryGAfter

private def s6Step208EntryGvFresh : List Wire := []

private def s6Step208ExitFExtra : List Wire := [813]

private def s6Step208ExitGExtra : List Wire := [807, 802]

private def s6Step208ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208ExitGvAfter : Arena := s6Step208ExitFAfter

private def s6Step208Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208Add0Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step208Add0_bounded : s6Step208Add0Work.toFinset⊆arenaWires := by
  have h : s6Step208Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step208Add0During : Arena := ⟨s6Step208Add0Arena.live∪s6Step208Add0Work.toFinset,Finset.union_subset s6Step208Add0Arena.bounded s6Step208Add0_bounded⟩

private def s6Step208Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208Add1Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step208Add1_bounded : s6Step208Add1Work.toFinset⊆arenaWires := by
  have h : s6Step208Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step208Add1During : Arena := ⟨s6Step208Add1Arena.live∪s6Step208Add1Work.toFinset,Finset.union_subset s6Step208Add1Arena.bounded s6Step208Add1_bounded⟩

private def s6Step208F4FlagArena : Arena := ⟨s6Step208HeadFvAfter.live∪{855},Finset.union_subset s6Step208HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step208F4Plan : HmrHybridF4Plan := ⟨s6Step208F4FlagArena,[855],s6Step208Add0Arena,[838],s6Step208Add0During,s6Step208Add0Work,s6Step208Add1During,s6Step208Add1Work⟩

private def s6Step208HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 813],795⟩

private def s6Step208HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859],776⟩

private def s6Step208HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807, 802],777⟩

private def s6Step208HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩

private def s6Step208FrontHead : WindowBank := ⟨s6Step208HeadFOut,s6Step208HeadGOut,s6Step208HeadFvOut,s6Step208HeadGvOut⟩

private def s6Step208EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421],795⟩

private def s6Step208EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩

private def s6Step208EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807],777⟩

private def s6Step208EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩

private def s6Step208FrontPair : WindowBank := ⟨s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut⟩

private def s6Step208FrontSigmaArena : Arena := ⟨s6Step208EntryGvAfter.live∪{867},Finset.union_subset s6Step208EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step208HeadFFresh : List Wire := [813]

private def s6Step208HeadFvFresh : List Wire := [859]

private def s6Step208HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208HeadGFresh : List Wire := [802]

private def s6Step208HeadGvFresh : List Wire := [780]

private def s6Step208FrontPlan : HmrSourceFront := ⟨s6Step208EntryGvAfter,s6Step208FrontPair,(growRow 795 s6Step208EntryFFresh ++ (growRow 777 s6Step208EntryGFresh ++ (growRow 776 s6Step208EntryFvFresh ++ (growRow 775 s6Step208EntryGvFresh ++ [])))),s6Step208FrontSigmaArena,[867],s6Step208HeadGBefore,[858],
  s6Step208HeadFvAfter,s6Step208FrontHead,(growRow 777 s6Step208HeadGFresh ++ (growRow 795 s6Step208HeadFFresh ++ (growRow 775 s6Step208HeadGvFresh ++ (growRow 776 s6Step208HeadFvFresh ++ [])))),s6Step208F4Plan,s6Step208CounterDuring,s6Step208CounterWork,s6Step208ExitGvAfter,s6Step208FrontOut,(shrinkRow 777 s6Step208ExitGExtra ++ (shrinkRow 795 s6Step208ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step208CompletePlan : HmrEarlyStepPlan := ⟨s6Step208FrontPlan,s6Step208EarlyControlArena,s6Step208EarlyControlPlan,s6Step208CompleteMoves⟩

private theorem s6Step208Complete_apart : List.Disjoint (s6Step208CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [867, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step208CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[867, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step208Complete_owned : (s6Step208CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208Complete_repack : s6Step208ExitGvAfter.checkRepack s6Step208CompleteMoves=some s6Step208EarlyControlArena := by rfl

private theorem s6Step208EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step208EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_branch : compileHmrBranchRetirement s6Step208EarlyControlSigmaArena 858=some s6Step208EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step208EarlyControl_branchOwned
  · ext q
    simp [s6Step208EarlyControlOutputArena,s6Step208EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step208EarlyControl_classEqualityBorrow : s6Step208EarlyControlPositiveArena.checkBorrow (([867, 822] : List Wire).length-1) s6Step208EarlyControlLog.classWork=some s6Step208EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step208EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step208EarlyControlEqualityArena,s6Step208EarlyControlPositiveArena,s6Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step208EarlyControl_classEqualityOwned : ([867, 822] : List Wire).toFinset⊆s6Step208EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_classEquality : compileHmrEqualityLog s6Step208EarlyControlPositiveArena [867, 822] 0 s6Step208EarlyControlLog.classWork=some (s6Step208EarlyControlEqualityArena,s6Step208EarlyControlLog.classWork,s6Step208EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step208EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step208EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step208EarlyControl_classOwned : ([769, 838, 867] : List Wire).toFinset⊆s6Step208EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_positiveBorrow : s6Step208EarlyControlZeroArena.checkBorrow (1) s6Step208EarlyControlLog.positiveWork=some s6Step208EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step208EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step208EarlyControlPositiveArena,s6Step208EarlyControlZeroArena,s6Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step208EarlyControl_class : compileHmrSourceClassLog s6Step208EarlyControlZeroArena false 769 s6Step208EarlyControlZeroPlan.top 0 867 s6Step208EarlyControlLog.positiveWork s6Step208EarlyControlLog.classWork=some s6Step208EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step208EarlyControlClassPlan s6Step208EarlyControlZeroArena false 769 s6Step208EarlyControlZeroPlan.top 0 867
  constructor
  · decide +kernel
  · exact s6Step208EarlyControl_classOwned
  · exact s6Step208EarlyControl_positiveBorrow
  · exact s6Step208EarlyControl_classEquality

private theorem s6Step208EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_entrySigmaOwned : ([867, 254] : List Wire).toFinset⊆s6Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_fitBorrow : s6Step208EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step208EarlyControlLog.recordFresh=some s6Step208EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step208EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step208EarlyControlFittedArena,s6Step208EarlyControlFlagArena,s6Step208EarlyControlLog,arenaWires]

private theorem s6Step208EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step208EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_fit : compileHmrRecordGrowLog s6Step208EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step208EarlyControlLog.recordFresh=some s6Step208EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step208EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step208EarlyControl_fitBorrow

private theorem s6Step208EarlyControl_flagsBorrow : s6Step208EarlyControlEqualityArena.checkBorrow (6) s6Step208EarlyControlLog.flagWork=some s6Step208EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step208EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step208EarlyControlFlagArena,s6Step208EarlyControlEqualityArena,s6Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step208EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step208EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_flags : compileHmrFlagsLog s6Step208EarlyControlClassPlan.equalityArena s6Step208EarlyControlClassPlan.equality.top 253 252 251 s6Step208EarlyControlLog.flagWork=some s6Step208EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step208EarlyControl_flagsOwned⟩
  · exact s6Step208EarlyControl_flagsBorrow

private theorem s6Step208EarlyControl_historyBorrow : s6Step208EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step208EarlyControlLog.recordFresh=some s6Step208EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step208EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step208EarlyControlHistoryArena,s6Step208EarlyControlArena,s6Step208EarlyControlLog,arenaWires]

private theorem s6Step208EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_history : compileHmrRecordGrowLog s6Step208EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step208EarlyControlLog.recordFresh=some s6Step208EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step208EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step208EarlyControl_historyBorrow

private theorem s6Step208EarlyControl_sigmaOwned : ([254, 867] : List Wire).toFinset⊆s6Step208EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_sigmaReleaseOwned : ([867] : List Wire).toFinset⊆s6Step208EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_sigmaRelease : s6Step208EarlyControlHistoryArena.release {867} (fun _ => false)=some s6Step208EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step208EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step208EarlyControlSigmaArena,s6Step208EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step208EarlyControl_sigma : compileHmrSigmaDropLog s6Step208EarlyControlHistoryArena false 0 0 254 867 []=some s6Step208EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step208EarlyControl_sigmaOwned⟩
  · exact s6Step208EarlyControl_sigmaRelease

private theorem s6Step208EarlyControl_zeroBorrow : s6Step208EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step208EarlyControlLog.zeroWork=some s6Step208EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step208EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step208EarlyControlZeroArena,s6Step208EarlyControlArena,s6Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step208EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step208EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EarlyControl_zero : compileHmrEqualityLog s6Step208EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step208EarlyControlLog.zeroWork=some (s6Step208EarlyControlZeroArena,s6Step208EarlyControlLog.zeroWork,s6Step208EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step208EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step208EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step208EarlyControl_logged : s6Step208EarlyControlPlan.Logged s6Step208EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 867 254 253 252 251 858 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step208EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step208EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step208EarlyControl_zero
  · exact s6Step208EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step208EarlyControl_flags
  · exact s6Step208EarlyControl_fit
  · exact s6Step208EarlyControl_history
  · exact s6Step208EarlyControl_sigma
  · exact s6Step208EarlyControl_branch

private theorem s6Step208EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step208EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 867 254 253 252 251 858 47 s6Step208EarlyControlLog=some s6Step208EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step208EarlyControlPlan s6Step208EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 867 254 253 252 251 858 47 s6Step208EarlyControl_logged

private def s6Step208EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421],795⟩

private def s6Step208EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩

private def s6Step208EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164],777⟩

private def s6Step208EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩

private def s6Step208FrontBank : WindowBank := ⟨s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow⟩

private def s6Step208Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 813, 795]

private def s6Step208Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807, 802, 777]

private def s6Step208Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 776]

private def s6Step208Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 775]

private theorem s6Step208Counter_apart : Disjoint s6Step208HeadFvAfter.live s6Step208CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step208HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208Counter_borrowed : s6Step208HeadFvAfter.checkBorrow 4 s6Step208CounterWork=some s6Step208CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step208HeadFvAfter s6Step208CounterDuring s6Step208CounterWork.toFinset s6Step208Counter_bounded s6Step208Counter_apart rfl

private theorem s6Step208Counter_owned : (867::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step208HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step208HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208Counter_checked : compileHmrCounterStepLog s6Step208HeadFvAfter true 867 [774, 773, 772, 771, 770, 769] s6Step208CounterWork=some s6Step208CounterDuring := by
  have owned : ∀q∈867::[774, 773, 772, 771, 770, 769],q∈s6Step208HeadFvAfter.live := fun q hq => s6Step208Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step208Counter_borrowed

private def s6Step208EntryFAfter : Arena := s6Step208EntryFBefore

private theorem s6Step208EntryBank_incomingDistinct : ([s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208EntryF_Incoming : rowsOwned s6Step208EntryFBefore [s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow] 0 s6Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208EntryBank_outgoingOwned : rowsOwned s6Step208EntryGvAfter [s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step208EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208EntryF_Outgoing : rowsOwned s6Step208EntryGvAfter [s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut] :=
  hmrRows_owned_drop s6Step208EntryGvAfter [s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut] 0 s6Step208EntryBank_outgoingOwned

private theorem s6Step208EntryF_distinct : (s6Step208EntryFRow.sign::s6Step208EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208EntryF_owned : (s6Step208EntryFRow.sign::s6Step208EntryFRow.payload).toFinset⊆s6Step208EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EntryF_reserved : s6Step208EntryFBefore.reserve s6Step208EntryFFresh.toFinset=some s6Step208EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208EntryFFresh,arenaWires]
  · norm_num [s6Step208EntryFBefore,s6Step208EntryFFresh,arenaWires]
  · simp only [s6Step208EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step208EntryF_checked : planRowResizeLog s6Step208EntryFBefore s6Step208EntryFRow 166 s6Step208EntryFFresh=
    some (s6Step208EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421],795⟩,growRow 795 s6Step208EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step208EntryFBefore s6Step208EntryFAfter s6Step208EntryFRow 166 s6Step208EntryFFresh
    s6Step208EntryF_distinct s6Step208EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208EntryF_reserved
  have rowEq : WindowRow.mk (s6Step208EntryFRow.payload++s6Step208EntryFFresh) s6Step208EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step208EntryFvAfter : Arena := s6Step208EntryGAfter

private def s6Step208EntryFvBefore : Arena := s6Step208EntryGAfter

private theorem s6Step208EntryFv_Incoming : rowsOwned s6Step208EntryFvBefore [s6Step208EntryFvRow,s6Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow] 2 s6Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208EntryFv_Outgoing : rowsOwned s6Step208EntryGvAfter [s6Step208EntryFvOut,s6Step208EntryGvOut] :=
  hmrRows_owned_drop s6Step208EntryGvAfter [s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut] 2 s6Step208EntryBank_outgoingOwned

private theorem s6Step208EntryFv_distinct : (s6Step208EntryFvRow.sign::s6Step208EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208EntryFv_owned : (s6Step208EntryFvRow.sign::s6Step208EntryFvRow.payload).toFinset⊆s6Step208EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EntryFv_reserved : s6Step208EntryFvBefore.reserve s6Step208EntryFvFresh.toFinset=some s6Step208EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208EntryFvFresh,arenaWires]
  · norm_num [s6Step208EntryFvBefore,s6Step208EntryGAfter,s6Step208EntryFvFresh,arenaWires]
  · simp only [s6Step208EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step208EntryFv_checked : planRowResizeLog s6Step208EntryFvBefore s6Step208EntryFvRow 118 s6Step208EntryFvFresh=
    some (s6Step208EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩,growRow 776 s6Step208EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step208EntryFvBefore s6Step208EntryFvAfter s6Step208EntryFvRow 118 s6Step208EntryFvFresh
    s6Step208EntryFv_distinct s6Step208EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step208EntryFvRow.payload++s6Step208EntryFvFresh) s6Step208EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step208EntryGBefore : Arena := s6Step208EntryFBefore

private theorem s6Step208EntryG_Incoming : rowsOwned s6Step208EntryGBefore [s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow] 1 s6Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208EntryG_Outgoing : rowsOwned s6Step208EntryGvAfter [s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut] :=
  hmrRows_owned_drop s6Step208EntryGvAfter [s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut] 1 s6Step208EntryBank_outgoingOwned

private theorem s6Step208EntryG_distinct : (s6Step208EntryGRow.sign::s6Step208EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208EntryG_owned : (s6Step208EntryGRow.sign::s6Step208EntryGRow.payload).toFinset⊆s6Step208EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EntryG_reserved : s6Step208EntryGBefore.reserve s6Step208EntryGFresh.toFinset=some s6Step208EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208EntryGFresh,arenaWires]
  · norm_num [s6Step208EntryGBefore,s6Step208EntryFBefore,s6Step208EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step208EntryGAfter,s6Step208EntryGBefore,s6Step208EntryFBefore,s6Step208EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step208EntryG_checked : planRowResizeLog s6Step208EntryGBefore s6Step208EntryGRow 166 s6Step208EntryGFresh=
    some (s6Step208EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807],777⟩,growRow 777 s6Step208EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step208EntryGBefore s6Step208EntryGAfter s6Step208EntryGRow 166 s6Step208EntryGFresh
    s6Step208EntryG_distinct s6Step208EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208EntryG_reserved
  have rowEq : WindowRow.mk (s6Step208EntryGRow.payload++s6Step208EntryGFresh) s6Step208EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step208EntryGvBefore : Arena := s6Step208EntryGAfter

private theorem s6Step208EntryGv_Incoming : rowsOwned s6Step208EntryGvBefore [s6Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow] 3 s6Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208EntryGv_Outgoing : rowsOwned s6Step208EntryGvAfter [s6Step208EntryGvOut] :=
  hmrRows_owned_drop s6Step208EntryGvAfter [s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut] 3 s6Step208EntryBank_outgoingOwned

private theorem s6Step208EntryGv_distinct : (s6Step208EntryGvRow.sign::s6Step208EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208EntryGv_owned : (s6Step208EntryGvRow.sign::s6Step208EntryGvRow.payload).toFinset⊆s6Step208EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208EntryGv_reserved : s6Step208EntryGvBefore.reserve s6Step208EntryGvFresh.toFinset=some s6Step208EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208EntryGvFresh,arenaWires]
  · norm_num [s6Step208EntryGvBefore,s6Step208EntryGAfter,s6Step208EntryGvFresh,arenaWires]
  · simp only [s6Step208EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step208EntryGv_checked : planRowResizeLog s6Step208EntryGvBefore s6Step208EntryGvRow 118 s6Step208EntryGvFresh=
    some (s6Step208EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩,growRow 775 s6Step208EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step208EntryGvBefore s6Step208EntryGvAfter s6Step208EntryGvRow 118 s6Step208EntryGvFresh
    s6Step208EntryGv_distinct s6Step208EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step208EntryGvRow.payload++s6Step208EntryGvFresh) s6Step208EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step208EntryBank_rows : planWindowRowsLog s6Step208EntryFBefore [(s6Step208EntryFRow,166),(s6Step208EntryGRow,166),(s6Step208EntryFvRow,118),(s6Step208EntryGvRow,118)] [s6Step208EntryFFresh,s6Step208EntryGFresh,s6Step208EntryFvFresh,s6Step208EntryGvFresh]=
    some (s6Step208EntryGvAfter,[s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut],(growRow 795 s6Step208EntryFFresh ++ (growRow 777 s6Step208EntryGFresh ++ (growRow 776 s6Step208EntryFvFresh ++ (growRow 775 s6Step208EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step208EntryGvAfter [] []=some (s6Step208EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step208EntryGvBefore s6Step208EntryGvAfter s6Step208EntryGvAfter
    s6Step208EntryGvRow s6Step208EntryGvOut 118 s6Step208EntryGvFresh [] [] []
    (growRow 775 s6Step208EntryGvFresh) ([]) s6Step208EntryGv_Incoming s6Step208EntryGv_checked h4 s6Step208EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step208EntryFvBefore s6Step208EntryFvAfter s6Step208EntryGvAfter
    s6Step208EntryFvRow s6Step208EntryFvOut 118 s6Step208EntryFvFresh [(s6Step208EntryGvRow,118)] [s6Step208EntryGvFresh] [s6Step208EntryGvOut]
    (growRow 776 s6Step208EntryFvFresh) ((growRow 775 s6Step208EntryGvFresh ++ [])) s6Step208EntryFv_Incoming s6Step208EntryFv_checked h3 s6Step208EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step208EntryGBefore s6Step208EntryGAfter s6Step208EntryGvAfter
    s6Step208EntryGRow s6Step208EntryGOut 166 s6Step208EntryGFresh [(s6Step208EntryFvRow,118),(s6Step208EntryGvRow,118)] [s6Step208EntryFvFresh,s6Step208EntryGvFresh] [s6Step208EntryFvOut,s6Step208EntryGvOut]
    (growRow 777 s6Step208EntryGFresh) ((growRow 776 s6Step208EntryFvFresh ++ (growRow 775 s6Step208EntryGvFresh ++ []))) s6Step208EntryG_Incoming s6Step208EntryG_checked h2 s6Step208EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step208EntryFBefore s6Step208EntryFAfter s6Step208EntryGvAfter
    s6Step208EntryFRow s6Step208EntryFOut 166 s6Step208EntryFFresh [(s6Step208EntryGRow,166),(s6Step208EntryFvRow,118),(s6Step208EntryGvRow,118)] [s6Step208EntryGFresh,s6Step208EntryFvFresh,s6Step208EntryGvFresh] [s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut]
    (growRow 795 s6Step208EntryFFresh) ((growRow 777 s6Step208EntryGFresh ++ (growRow 776 s6Step208EntryFvFresh ++ (growRow 775 s6Step208EntryGvFresh ++ [])))) s6Step208EntryF_Incoming s6Step208EntryF_checked h1 s6Step208EntryF_Outgoing
  exact h0

private theorem s6Step208EntryBank_checked : compileHmrBankResizeLog .entry s6Step208EntryFBefore ⟨s6Step208EntryFRow,s6Step208EntryGRow,s6Step208EntryFvRow,s6Step208EntryGvRow⟩ ⟨166,166,118,118⟩ [s6Step208EntryFFresh,s6Step208EntryGFresh,s6Step208EntryFvFresh,s6Step208EntryGvFresh]=
    some (s6Step208EntryGvAfter,⟨s6Step208EntryFOut,s6Step208EntryGOut,s6Step208EntryFvOut,s6Step208EntryGvOut⟩,(growRow 795 s6Step208EntryFFresh ++ (growRow 777 s6Step208EntryGFresh ++ (growRow 776 s6Step208EntryFvFresh ++ (growRow 775 s6Step208EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step208EntryBank_rows]
  rfl

private def s6Step208ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208ExitFBefore : Arena := s6Step208ExitGAfter

private def s6Step208ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 813],795⟩

private def s6Step208ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859],776⟩

private def s6Step208ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807, 802],777⟩

private def s6Step208ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩

private theorem s6Step208ExitBank_incomingDistinct : ([s6Step208ExitGRow,s6Step208ExitFRow,s6Step208ExitFvRow,s6Step208ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208ExitF_Incoming : rowsOwned s6Step208ExitFBefore [s6Step208ExitFRow,s6Step208ExitFvRow,s6Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208ExitGRow,s6Step208ExitFRow,s6Step208ExitFvRow,s6Step208ExitGvRow] 1 s6Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208ExitBank_outgoingOwned : rowsOwned s6Step208ExitGvAfter [s6Step208ExitGOut,s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step208ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208ExitF_Outgoing : rowsOwned s6Step208ExitGvAfter [s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut] :=
  hmrRows_owned_drop s6Step208ExitGvAfter [s6Step208ExitGOut,s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut] 1 s6Step208ExitBank_outgoingOwned

private theorem s6Step208ExitF_distinct : (s6Step208ExitFRow.sign::s6Step208ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208ExitF_owned : (s6Step208ExitFRow.sign::s6Step208ExitFRow.payload).toFinset⊆s6Step208ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208ExitF_retired : s6Step208ExitFBefore.retireSet s6Step208ExitFExtra.toFinset=s6Step208ExitFAfter := by
  unfold Arena.retireSet s6Step208ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step208ExitFBefore,s6Step208ExitGAfter,s6Step208ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step208ExitF_checked : planRowResizeLog s6Step208ExitFBefore s6Step208ExitFRow 166 []=
    some (s6Step208ExitFAfter,s6Step208ExitFOut,shrinkRow 795 s6Step208ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step208ExitFBefore s6Step208ExitFRow 166 s6Step208ExitF_distinct s6Step208ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step208ExitFRow.payload.take 166) s6Step208ExitFRow.sign=s6Step208ExitFOut := by decide +kernel
  have hi : s6Step208ExitFRow.payload.drop 166=s6Step208ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step208ExitF_retired] at result
  exact result

private def s6Step208ExitFvAfter : Arena := s6Step208ExitFAfter

private def s6Step208ExitFvBefore : Arena := s6Step208ExitFAfter

private theorem s6Step208ExitFv_Incoming : rowsOwned s6Step208ExitFvBefore [s6Step208ExitFvRow,s6Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208ExitGRow,s6Step208ExitFRow,s6Step208ExitFvRow,s6Step208ExitGvRow] 2 s6Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208ExitFv_Outgoing : rowsOwned s6Step208ExitGvAfter [s6Step208ExitFvOut,s6Step208ExitGvOut] :=
  hmrRows_owned_drop s6Step208ExitGvAfter [s6Step208ExitGOut,s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut] 2 s6Step208ExitBank_outgoingOwned

private theorem s6Step208ExitFv_distinct : (s6Step208ExitFvRow.sign::s6Step208ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208ExitFv_owned : (s6Step208ExitFvRow.sign::s6Step208ExitFvRow.payload).toFinset⊆s6Step208ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208ExitFv_reserved : s6Step208ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step208ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step208ExitFv_checked : planRowResizeLog s6Step208ExitFvBefore s6Step208ExitFvRow 119 []=
    some (s6Step208ExitFvAfter,s6Step208ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step208ExitFvBefore s6Step208ExitFvAfter s6Step208ExitFvRow 119 []
    s6Step208ExitFv_distinct s6Step208ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step208ExitFvRow.payload++[]) s6Step208ExitFvRow.sign=s6Step208ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step208ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step208ExitG_Incoming : rowsOwned s6Step208ExitGBefore [s6Step208ExitGRow,s6Step208ExitFRow,s6Step208ExitFvRow,s6Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208ExitGRow,s6Step208ExitFRow,s6Step208ExitFvRow,s6Step208ExitGvRow] 0 s6Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208ExitG_Outgoing : rowsOwned s6Step208ExitGvAfter [s6Step208ExitGOut,s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut] :=
  hmrRows_owned_drop s6Step208ExitGvAfter [s6Step208ExitGOut,s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut] 0 s6Step208ExitBank_outgoingOwned

private theorem s6Step208ExitG_distinct : (s6Step208ExitGRow.sign::s6Step208ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208ExitG_owned : (s6Step208ExitGRow.sign::s6Step208ExitGRow.payload).toFinset⊆s6Step208ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208ExitG_retired : s6Step208ExitGBefore.retireSet s6Step208ExitGExtra.toFinset=s6Step208ExitGAfter := by
  unfold Arena.retireSet s6Step208ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step208ExitGBefore,s6Step208ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step208ExitG_checked : planRowResizeLog s6Step208ExitGBefore s6Step208ExitGRow 165 []=
    some (s6Step208ExitGAfter,s6Step208ExitGOut,shrinkRow 777 s6Step208ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step208ExitGBefore s6Step208ExitGRow 165 s6Step208ExitG_distinct s6Step208ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step208ExitGRow.payload.take 165) s6Step208ExitGRow.sign=s6Step208ExitGOut := by decide +kernel
  have hi : s6Step208ExitGRow.payload.drop 165=s6Step208ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step208ExitG_retired] at result
  exact result

private def s6Step208ExitGvBefore : Arena := s6Step208ExitFAfter

private theorem s6Step208ExitGv_Incoming : rowsOwned s6Step208ExitGvBefore [s6Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208ExitGRow,s6Step208ExitFRow,s6Step208ExitFvRow,s6Step208ExitGvRow] 3 s6Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208ExitGv_Outgoing : rowsOwned s6Step208ExitGvAfter [s6Step208ExitGvOut] :=
  hmrRows_owned_drop s6Step208ExitGvAfter [s6Step208ExitGOut,s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut] 3 s6Step208ExitBank_outgoingOwned

private theorem s6Step208ExitGv_distinct : (s6Step208ExitGvRow.sign::s6Step208ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208ExitGv_owned : (s6Step208ExitGvRow.sign::s6Step208ExitGvRow.payload).toFinset⊆s6Step208ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208ExitGv_reserved : s6Step208ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step208ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step208ExitGv_checked : planRowResizeLog s6Step208ExitGvBefore s6Step208ExitGvRow 119 []=
    some (s6Step208ExitGvAfter,s6Step208ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step208ExitGvBefore s6Step208ExitGvAfter s6Step208ExitGvRow 119 []
    s6Step208ExitGv_distinct s6Step208ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step208ExitGvRow.payload++[]) s6Step208ExitGvRow.sign=s6Step208ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step208ExitBank_rows : planWindowRowsLog s6Step208ExitGBefore [(s6Step208ExitGRow,165),(s6Step208ExitFRow,166),(s6Step208ExitFvRow,119),(s6Step208ExitGvRow,119)] [[],[],[],[]]=
    some (s6Step208ExitGvAfter,[s6Step208ExitGOut,s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut],(shrinkRow 777 s6Step208ExitGExtra ++ (shrinkRow 795 s6Step208ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step208ExitGvAfter [] []=some (s6Step208ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step208ExitGvBefore s6Step208ExitGvAfter s6Step208ExitGvAfter
    s6Step208ExitGvRow s6Step208ExitGvOut 119 [] [] [] []
    (growRow 775 []) ([]) s6Step208ExitGv_Incoming s6Step208ExitGv_checked h4 s6Step208ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step208ExitFvBefore s6Step208ExitFvAfter s6Step208ExitGvAfter
    s6Step208ExitFvRow s6Step208ExitFvOut 119 [] [(s6Step208ExitGvRow,119)] [[]] [s6Step208ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step208ExitFv_Incoming s6Step208ExitFv_checked h3 s6Step208ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step208ExitFBefore s6Step208ExitFAfter s6Step208ExitGvAfter
    s6Step208ExitFRow s6Step208ExitFOut 166 [] [(s6Step208ExitFvRow,119),(s6Step208ExitGvRow,119)] [[],[]] [s6Step208ExitFvOut,s6Step208ExitGvOut]
    (shrinkRow 795 s6Step208ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step208ExitF_Incoming s6Step208ExitF_checked h2 s6Step208ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step208ExitGBefore s6Step208ExitGAfter s6Step208ExitGvAfter
    s6Step208ExitGRow s6Step208ExitGOut 165 [] [(s6Step208ExitFRow,166),(s6Step208ExitFvRow,119),(s6Step208ExitGvRow,119)] [[],[],[]] [s6Step208ExitFOut,s6Step208ExitFvOut,s6Step208ExitGvOut]
    (shrinkRow 777 s6Step208ExitGExtra) ((shrinkRow 795 s6Step208ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step208ExitG_Incoming s6Step208ExitG_checked h1 s6Step208ExitG_Outgoing
  exact h0

private theorem s6Step208ExitBank_checked : compileHmrBankResizeLog .exit s6Step208ExitGBefore ⟨s6Step208ExitFRow,s6Step208ExitGRow,s6Step208ExitFvRow,s6Step208ExitGvRow⟩ ⟨166,165,119,119⟩ [[],[],[],[]]=
    some (s6Step208ExitGvAfter,⟨s6Step208ExitFOut,s6Step208ExitGOut,s6Step208ExitFvOut,s6Step208ExitGvOut⟩,(shrinkRow 777 s6Step208ExitGExtra ++ (shrinkRow 795 s6Step208ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step208ExitBank_rows]
  rfl

private theorem s6Step208Add0_apart : Disjoint s6Step208Add0Arena.live s6Step208Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step208Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208Add0_card : s6Step208Add0Arena.live.card=889 := by
  decide +kernel

private theorem s6Step208Add0_borrowed : s6Step208Add0Arena.checkBorrow (hmrHybridCount s6Step208Add0Arena s6Step208Add0B.length) s6Step208Add0Work=some s6Step208Add0During := by
  have len : s6Step208Add0Work.length=hmrHybridCount s6Step208Add0Arena s6Step208Add0B.length := by
    rw [hmrHybridCount,s6Step208Add0_card]
    decide +kernel
  have nd : s6Step208Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step208Add0Arena s6Step208Add0During s6Step208Add0Work.toFinset s6Step208Add0_bounded s6Step208Add0_apart rfl

private theorem s6Step208Add0_distinct : (855::858::838::(s6Step208Add0A++s6Step208Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208Add0_owned : (855::858::838::(s6Step208Add0A++s6Step208Add0B)).toFinset⊆s6Step208Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step208Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208Add0_checked : compileHmrHybridCinLog s6Step208Add0Arena 858 855 838 s6Step208Add0A s6Step208Add0B s6Step208Add0Work=some s6Step208Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step208Add0Arena s6Step208Add0During 858 855 838 s6Step208Add0A s6Step208Add0B s6Step208Add0Work
    (by decide +kernel) (by decide +kernel) s6Step208Add0_distinct
    (fun q hq => s6Step208Add0_owned (List.mem_toFinset.mpr hq)) s6Step208Add0_borrowed

private theorem s6Step208Add1_apart : Disjoint s6Step208Add1Arena.live s6Step208Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step208Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208Add1_card : s6Step208Add1Arena.live.card=889 := by
  decide +kernel

private theorem s6Step208Add1_borrowed : s6Step208Add1Arena.checkBorrow (hmrHybridCount s6Step208Add1Arena s6Step208Add1B.length) s6Step208Add1Work=some s6Step208Add1During := by
  have len : s6Step208Add1Work.length=hmrHybridCount s6Step208Add1Arena s6Step208Add1B.length := by
    rw [hmrHybridCount,s6Step208Add1_card]
    decide +kernel
  have nd : s6Step208Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step208Add1Arena s6Step208Add1During s6Step208Add1Work.toFinset s6Step208Add1_bounded s6Step208Add1_apart rfl

private theorem s6Step208Add1_distinct : (855::858::838::(s6Step208Add1A++s6Step208Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208Add1_owned : (855::858::838::(s6Step208Add1A++s6Step208Add1B)).toFinset⊆s6Step208Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step208Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208Add1_checked : compileHmrHybridCinLog s6Step208Add1Arena 858 855 838 s6Step208Add1A s6Step208Add1B s6Step208Add1Work=some s6Step208Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step208Add1Arena s6Step208Add1During 858 855 838 s6Step208Add1A s6Step208Add1B s6Step208Add1Work
    (by decide +kernel) (by decide +kernel) s6Step208Add1_distinct
    (fun q hq => s6Step208Add1_owned (List.mem_toFinset.mpr hq)) s6Step208Add1_borrowed

private theorem s6Step208F4_apart : Disjoint (s6Step208Add0A++s6Step208Add0B).toFinset (s6Step208Add1A++s6Step208Add1B).toFinset := by
  have nd : ((s6Step208Add0A++s6Step208Add0B)++(s6Step208Add1A++s6Step208Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step208F4_carry : s6Step208F4FlagArena.checkBorrow 1 [838]=some s6Step208Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step208F4FlagArena,s6Step208HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step208F4FlagArena,s6Step208HeadFvAfter,s6Step208Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step208F4_distinct : (867::858::855::838::((s6Step208Add0A++s6Step208Add1A)++(s6Step208Add0B++s6Step208Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208F4_flag : s6Step208HeadFvAfter.checkBorrow 1 [855]=some s6Step208F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step208HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step208F4_owned : (867::858::((s6Step208Add0A++s6Step208Add1A)++(s6Step208Add0B++s6Step208Add1B))).toFinset⊆s6Step208HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step208HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208F4_checked : compileHmrHybridF4Log s6Step208HeadFvAfter 867 858 s6Step208Add0A s6Step208Add0B s6Step208Add1A s6Step208Add1B [855] [838] s6Step208Add0Work s6Step208Add1Work=some s6Step208F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step208HeadFvAfter s6Step208F4FlagArena s6Step208Add0Arena s6Step208Add0During s6Step208Add1During 867 858
    s6Step208Add0A s6Step208Add0B s6Step208Add1A s6Step208Add1B [855] [838] s6Step208Add0Work s6Step208Add1Work
    (fun q hq => s6Step208F4_owned (List.mem_toFinset.mpr hq)) s6Step208F4_flag s6Step208F4_carry
    s6Step208F4_distinct s6Step208F4_apart s6Step208Add0_checked s6Step208Add1_checked

private theorem s6Step208Front_branch : s6Step208FrontSigmaArena.checkBorrow 1 [858]=some s6Step208HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step208FrontSigmaArena,s6Step208EntryGvAfter,s6Step208EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step208FrontSigmaArena,s6Step208EntryGvAfter,s6Step208EntryGAfter,s6Step208HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step208Front_entry : HmrFrontEntryValid s6Step208EntryFBefore s6Step208FrontBank 166 118 ⟨166,165,119,119⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step208FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step208EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step208EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step208FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step208Front_sigma : s6Step208EntryGvAfter.checkBorrow 1 [867]=some s6Step208FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step208EntryGvAfter,s6Step208EntryGAfter,arenaWires]
  · rfl

private def s6Step208HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208HeadFBefore : Arena := s6Step208HeadGAfter

private def s6Step208HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421],795⟩

private def s6Step208HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩

private def s6Step208HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807],777⟩

private def s6Step208HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩

private theorem s6Step208HeadBank_incomingDistinct : ([s6Step208HeadGRow,s6Step208HeadFRow,s6Step208HeadGvRow,s6Step208HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208HeadF_Incoming : rowsOwned s6Step208HeadFBefore [s6Step208HeadFRow,s6Step208HeadGvRow,s6Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208HeadGRow,s6Step208HeadFRow,s6Step208HeadGvRow,s6Step208HeadFvRow] 1 s6Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208HeadBank_outgoingOwned : rowsOwned s6Step208HeadFvAfter [s6Step208HeadGOut,s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step208HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208HeadF_Outgoing : rowsOwned s6Step208HeadFvAfter [s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut] :=
  hmrRows_owned_drop s6Step208HeadFvAfter [s6Step208HeadGOut,s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut] 1 s6Step208HeadBank_outgoingOwned

private theorem s6Step208HeadF_distinct : (s6Step208HeadFRow.sign::s6Step208HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208HeadF_owned : (s6Step208HeadFRow.sign::s6Step208HeadFRow.payload).toFinset⊆s6Step208HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208HeadF_reserved : s6Step208HeadFBefore.reserve s6Step208HeadFFresh.toFinset=some s6Step208HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208HeadFFresh,arenaWires]
  · norm_num [s6Step208HeadFBefore,s6Step208HeadGAfter,s6Step208HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step208HeadFAfter,s6Step208HeadFBefore,s6Step208HeadGAfter,s6Step208HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step208HeadF_checked : planRowResizeLog s6Step208HeadFBefore s6Step208HeadFRow 167 s6Step208HeadFFresh=
    some (s6Step208HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 813],795⟩,growRow 795 s6Step208HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step208HeadFBefore s6Step208HeadFAfter s6Step208HeadFRow 167 s6Step208HeadFFresh
    s6Step208HeadF_distinct s6Step208HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208HeadF_reserved
  have rowEq : WindowRow.mk (s6Step208HeadFRow.payload++s6Step208HeadFFresh) s6Step208HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step208HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step208HeadFvBefore : Arena := s6Step208HeadGvAfter

private theorem s6Step208HeadFv_Incoming : rowsOwned s6Step208HeadFvBefore [s6Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208HeadGRow,s6Step208HeadFRow,s6Step208HeadGvRow,s6Step208HeadFvRow] 3 s6Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208HeadFv_Outgoing : rowsOwned s6Step208HeadFvAfter [s6Step208HeadFvOut] :=
  hmrRows_owned_drop s6Step208HeadFvAfter [s6Step208HeadGOut,s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut] 3 s6Step208HeadBank_outgoingOwned

private theorem s6Step208HeadFv_distinct : (s6Step208HeadFvRow.sign::s6Step208HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208HeadFv_owned : (s6Step208HeadFvRow.sign::s6Step208HeadFvRow.payload).toFinset⊆s6Step208HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208HeadFv_reserved : s6Step208HeadFvBefore.reserve s6Step208HeadFvFresh.toFinset=some s6Step208HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208HeadFvFresh,arenaWires]
  · norm_num [s6Step208HeadFvBefore,s6Step208HeadGvAfter,s6Step208HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step208HeadFvAfter,s6Step208HeadFvBefore,s6Step208HeadGvAfter,s6Step208HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step208HeadFv_checked : planRowResizeLog s6Step208HeadFvBefore s6Step208HeadFvRow 119 s6Step208HeadFvFresh=
    some (s6Step208HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859],776⟩,growRow 776 s6Step208HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step208HeadFvBefore s6Step208HeadFvAfter s6Step208HeadFvRow 119 s6Step208HeadFvFresh
    s6Step208HeadFv_distinct s6Step208HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step208HeadFvRow.payload++s6Step208HeadFvFresh) s6Step208HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step208HeadG_Incoming : rowsOwned s6Step208HeadGBefore [s6Step208HeadGRow,s6Step208HeadFRow,s6Step208HeadGvRow,s6Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208HeadGRow,s6Step208HeadFRow,s6Step208HeadGvRow,s6Step208HeadFvRow] 0 s6Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208HeadG_Outgoing : rowsOwned s6Step208HeadFvAfter [s6Step208HeadGOut,s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut] :=
  hmrRows_owned_drop s6Step208HeadFvAfter [s6Step208HeadGOut,s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut] 0 s6Step208HeadBank_outgoingOwned

private theorem s6Step208HeadG_distinct : (s6Step208HeadGRow.sign::s6Step208HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208HeadG_owned : (s6Step208HeadGRow.sign::s6Step208HeadGRow.payload).toFinset⊆s6Step208HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208HeadG_reserved : s6Step208HeadGBefore.reserve s6Step208HeadGFresh.toFinset=some s6Step208HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208HeadGFresh,arenaWires]
  · norm_num [s6Step208HeadGBefore,s6Step208HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step208HeadGAfter,s6Step208HeadGBefore,s6Step208HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step208HeadG_checked : planRowResizeLog s6Step208HeadGBefore s6Step208HeadGRow 167 s6Step208HeadGFresh=
    some (s6Step208HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807, 802],777⟩,growRow 777 s6Step208HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step208HeadGBefore s6Step208HeadGAfter s6Step208HeadGRow 167 s6Step208HeadGFresh
    s6Step208HeadG_distinct s6Step208HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208HeadG_reserved
  have rowEq : WindowRow.mk (s6Step208HeadGRow.payload++s6Step208HeadGFresh) s6Step208HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 807, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step208HeadGvBefore : Arena := s6Step208HeadFAfter

private theorem s6Step208HeadGv_Incoming : rowsOwned s6Step208HeadGvBefore [s6Step208HeadGvRow,s6Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step208HeadGRow,s6Step208HeadFRow,s6Step208HeadGvRow,s6Step208HeadFvRow] 2 s6Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step208HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step208HeadGv_Outgoing : rowsOwned s6Step208HeadFvAfter [s6Step208HeadGvOut,s6Step208HeadFvOut] :=
  hmrRows_owned_drop s6Step208HeadFvAfter [s6Step208HeadGOut,s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut] 2 s6Step208HeadBank_outgoingOwned

private theorem s6Step208HeadGv_distinct : (s6Step208HeadGvRow.sign::s6Step208HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step208HeadGv_owned : (s6Step208HeadGvRow.sign::s6Step208HeadGvRow.payload).toFinset⊆s6Step208HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step208HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step208HeadGv_reserved : s6Step208HeadGvBefore.reserve s6Step208HeadGvFresh.toFinset=some s6Step208HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step208HeadGvFresh,arenaWires]
  · norm_num [s6Step208HeadGvBefore,s6Step208HeadFAfter,s6Step208HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step208HeadGvAfter,s6Step208HeadGvBefore,s6Step208HeadFAfter,s6Step208HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step208HeadGv_checked : planRowResizeLog s6Step208HeadGvBefore s6Step208HeadGvRow 119 s6Step208HeadGvFresh=
    some (s6Step208HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩,growRow 775 s6Step208HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step208HeadGvBefore s6Step208HeadGvAfter s6Step208HeadGvRow 119 s6Step208HeadGvFresh
    s6Step208HeadGv_distinct s6Step208HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step208HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step208HeadGvRow.payload++s6Step208HeadGvFresh) s6Step208HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step208HeadBank_rows : planWindowRowsLog s6Step208HeadGBefore [(s6Step208HeadGRow,167),(s6Step208HeadFRow,167),(s6Step208HeadGvRow,119),(s6Step208HeadFvRow,119)] [s6Step208HeadGFresh,s6Step208HeadFFresh,s6Step208HeadGvFresh,s6Step208HeadFvFresh]=
    some (s6Step208HeadFvAfter,[s6Step208HeadGOut,s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut],(growRow 777 s6Step208HeadGFresh ++ (growRow 795 s6Step208HeadFFresh ++ (growRow 775 s6Step208HeadGvFresh ++ (growRow 776 s6Step208HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step208HeadFvAfter [] []=some (s6Step208HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step208HeadFvBefore s6Step208HeadFvAfter s6Step208HeadFvAfter
    s6Step208HeadFvRow s6Step208HeadFvOut 119 s6Step208HeadFvFresh [] [] []
    (growRow 776 s6Step208HeadFvFresh) ([]) s6Step208HeadFv_Incoming s6Step208HeadFv_checked h4 s6Step208HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step208HeadGvBefore s6Step208HeadGvAfter s6Step208HeadFvAfter
    s6Step208HeadGvRow s6Step208HeadGvOut 119 s6Step208HeadGvFresh [(s6Step208HeadFvRow,119)] [s6Step208HeadFvFresh] [s6Step208HeadFvOut]
    (growRow 775 s6Step208HeadGvFresh) ((growRow 776 s6Step208HeadFvFresh ++ [])) s6Step208HeadGv_Incoming s6Step208HeadGv_checked h3 s6Step208HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step208HeadFBefore s6Step208HeadFAfter s6Step208HeadFvAfter
    s6Step208HeadFRow s6Step208HeadFOut 167 s6Step208HeadFFresh [(s6Step208HeadGvRow,119),(s6Step208HeadFvRow,119)] [s6Step208HeadGvFresh,s6Step208HeadFvFresh] [s6Step208HeadGvOut,s6Step208HeadFvOut]
    (growRow 795 s6Step208HeadFFresh) ((growRow 775 s6Step208HeadGvFresh ++ (growRow 776 s6Step208HeadFvFresh ++ []))) s6Step208HeadF_Incoming s6Step208HeadF_checked h2 s6Step208HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step208HeadGBefore s6Step208HeadGAfter s6Step208HeadFvAfter
    s6Step208HeadGRow s6Step208HeadGOut 167 s6Step208HeadGFresh [(s6Step208HeadFRow,167),(s6Step208HeadGvRow,119),(s6Step208HeadFvRow,119)] [s6Step208HeadFFresh,s6Step208HeadGvFresh,s6Step208HeadFvFresh] [s6Step208HeadFOut,s6Step208HeadGvOut,s6Step208HeadFvOut]
    (growRow 777 s6Step208HeadGFresh) ((growRow 795 s6Step208HeadFFresh ++ (growRow 775 s6Step208HeadGvFresh ++ (growRow 776 s6Step208HeadFvFresh ++ [])))) s6Step208HeadG_Incoming s6Step208HeadG_checked h1 s6Step208HeadG_Outgoing
  exact h0

private theorem s6Step208HeadBank_checked : compileHmrBankResizeLog .headroom s6Step208HeadGBefore ⟨s6Step208HeadFRow,s6Step208HeadGRow,s6Step208HeadFvRow,s6Step208HeadGvRow⟩ ⟨167,167,119,119⟩ [s6Step208HeadGFresh,s6Step208HeadFFresh,s6Step208HeadGvFresh,s6Step208HeadFvFresh]=
    some (s6Step208HeadFvAfter,⟨s6Step208HeadFOut,s6Step208HeadGOut,s6Step208HeadFvOut,s6Step208HeadGvOut⟩,(growRow 777 s6Step208HeadGFresh ++ (growRow 795 s6Step208HeadFFresh ++ (growRow 775 s6Step208HeadGvFresh ++ (growRow 776 s6Step208HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step208HeadBank_rows]
  rfl

private theorem s6Step208Front_checked : compileHmrSourceFrontLog s6Step208EntryFBefore s6Step208FrontBank 166 118 ⟨166,165,119,119⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step208FrontLog=some s6Step208FrontPlan := by
  have pairEq : s6Step208FrontPair=⟨s6Step208HeadFRow,s6Step208HeadGRow,s6Step208HeadFvRow,s6Step208HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step208FrontHead=⟨s6Step208ExitFRow,s6Step208ExitGRow,s6Step208ExitFvRow,s6Step208ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step208Add0A=s6Step208FrontHead.f.wires := by decide +kernel
  have gEq : s6Step208Add0B=s6Step208FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step208Add1A=s6Step208FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step208Add1B=s6Step208FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step208EntryFBefore s6Step208FrontBank 166 118 ⟨166,165,119,119⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step208FrontLog s6Step208FrontPlan
  · exact s6Step208Front_entry
  · exact s6Step208EntryBank_checked
  · exact s6Step208Front_sigma
  · rfl
  · exact s6Step208Front_branch
  · rfl
  · simpa only [s6Step208FrontPlan,pairEq] using s6Step208HeadBank_checked
  · simpa only [s6Step208FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step208F4_checked
  · exact s6Step208Counter_checked
  · rfl
  · simpa only [s6Step208FrontPlan,headEq] using s6Step208ExitBank_checked

private theorem s6Step208Complete_explicit_checked : compileHmrEarlyStepLog s6Step208EntryFBefore s6Step208FrontBank 166 118 ⟨166,165,119,119⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step208CompleteLog=some s6Step208CompletePlan := by
  let Q := s6Step208EarlyControlPlan
  have hq := s6Step208EarlyControl_plan_checked
  have fv1 : s6Step208CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step208CompleteOut.fv.payload[2]?.getD s6Step208CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step208CompleteOut.fv.payload[3]?.getD s6Step208CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step208CompleteOut.fv.payload[4]?.getD s6Step208CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step208EntryFBefore s6Step208EarlyControlArena s6Step208FrontBank 166 118 ⟨166,165,119,119⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step208CompleteLog s6Step208FrontPlan Q
    s6Step208Front_checked s6Step208Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step208Complete_owned s6Step208Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step208EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 867 s6Step208CompleteOut.fv.second (s6Step208CompleteOut.fv.payload[2]?.getD s6Step208CompleteOut.fv.sign) (s6Step208CompleteOut.fv.payload[3]?.getD s6Step208CompleteOut.fv.sign) (s6Step208CompleteOut.fv.payload[4]?.getD s6Step208CompleteOut.fv.sign) 858 47 s6Step208EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep208Arena : Arena := s6Step208EntryFBefore
def s6PrivateStep208Bank : WindowBank := s6Step208FrontBank
def s6PrivateStep208Spec : HmrSourceWalkStepLog := ⟨166,118,⟨166,165,119,119⟩,47,.early s6Step208CompleteLog⟩
def s6PrivateStep208Plan : HmrSourceStepPlan := .early s6Step208CompletePlan
theorem s6PrivateStep208_source : s6PrivateStep208Spec=s6ObservedLogs208[0] := rfl
theorem s6PrivateStep208_checked : compileHmrSourceStepLog s6PrivateStep208Arena s6PrivateStep208Bank
    s6PrivateStep208Spec.fgWidth s6PrivateStep208Spec.vWidth s6PrivateStep208Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 208 s6PrivateStep208Spec.need none s6PrivateStep208Spec.log=some s6PrivateStep208Plan := by
  change compileHmrSourceStepLog s6Step208EntryFBefore s6Step208FrontBank 166 118 ⟨166,165,119,119⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 208 47 none (.early s6Step208CompleteLog)=some (.early s6Step208CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 208<498)]
  rw [s6Step208Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
