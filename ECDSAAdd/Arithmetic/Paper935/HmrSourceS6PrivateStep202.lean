import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep200
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

private def s6Step202CompleteMoves : List (Wire × Wire) := [(867,168)]

private def s6Step202EarlyControlLog : HmrEarlyControlLog := ⟨[867, 838, 802, 813, 780],[822],[825],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step202FrontLog : HmrFrontAllocationLog := ⟨⟨[[780], [], [927, 802], []],[[825], [822], [838], [813]],[[], [], [], []]⟩,[791],[903],[869],[786],[810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809]⟩

private def s6Step202CompleteLog : HmrEarlyStepLog := ⟨s6Step202FrontLog,s6Step202CompleteMoves,s6Step202EarlyControlLog⟩

private def s6Step202ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩

private def s6Step202ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927],776⟩

private def s6Step202ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167],777⟩

private def s6Step202ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step202FrontOut : WindowBank := ⟨s6Step202ExitFOut,s6Step202ExitGOut,s6Step202ExitFvOut,s6Step202ExitGvOut⟩

private def s6Step202CompleteOut : WindowBank := s6Step202FrontOut.repacked s6Step202CompleteMoves

private def s6Step202EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step202EarlyControlPositiveArena,[822],s6Step202EarlyControlEqualityArena,[825],⟨⟨791,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step202EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,867⟩,⟨⟨772,false⟩,838⟩,⟨⟨771,false⟩,802⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,780⟩]⟩

private def s6Step202EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step202EarlyControlZeroArena,s6Step202EarlyControlZeroPlan,s6Step202EarlyControlClassPlan,s6Step202EarlyControlFlagArena,s6Step202EarlyControlFittedArena,s6Step202EarlyControlHistoryArena,s6Step202EarlyControlSigmaArena,s6Step202EarlyControlOutputArena,s6Step202EarlyControlLog⟩

private def s6Step202CounterWork : List Wire := [869, 786, 810, 809]

private theorem s6Step202Counter_bounded : s6Step202CounterWork.toFinset⊆arenaWires := by norm_num [s6Step202CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step202HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202CounterDuring : Arena := ⟨s6Step202HeadFvAfter.live∪s6Step202CounterWork.toFinset,Finset.union_subset s6Step202HeadFvAfter.bounded s6Step202Counter_bounded⟩

private def s6Step202EntryFFresh : List Wire := [780]

private def s6Step202EntryFvFresh : List Wire := [927, 802]

private def s6Step202EntryGFresh : List Wire := []

private def s6Step202EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202EntryGvAfter : Arena := s6Step202EntryFvAfter

private def s6Step202EntryGvFresh : List Wire := []

private def s6Step202ExitFExtra : List Wire := [780, 822]

private def s6Step202ExitFvExtra : List Wire := [802, 813]

private def s6Step202ExitGExtra : List Wire := [168, 825]

private def s6Step202ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202ExitGvExtra : List Wire := [838]

private def s6Step202Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202Add0Work : List Wire := [810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step202Add0_bounded : s6Step202Add0Work.toFinset⊆arenaWires := by
  have h : s6Step202Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step202Add0During : Arena := ⟨s6Step202Add0Arena.live∪s6Step202Add0Work.toFinset,Finset.union_subset s6Step202Add0Arena.bounded s6Step202Add0_bounded⟩

private def s6Step202Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202Add1Work : List Wire := [810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step202Add1_bounded : s6Step202Add1Work.toFinset⊆arenaWires := by
  have h : s6Step202Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step202Add1During : Arena := ⟨s6Step202Add1Arena.live∪s6Step202Add1Work.toFinset,Finset.union_subset s6Step202Add1Arena.bounded s6Step202Add1_bounded⟩

private def s6Step202F4FlagArena : Arena := ⟨s6Step202HeadFvAfter.live∪{869},Finset.union_subset s6Step202HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step202F4Plan : HmrHybridF4Plan := ⟨s6Step202F4FlagArena,[869],s6Step202Add0Arena,[786],s6Step202Add0During,s6Step202Add0Work,s6Step202Add1During,s6Step202Add1Work⟩

private def s6Step202HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780, 822],795⟩

private def s6Step202HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802, 813],776⟩

private def s6Step202HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 825],777⟩

private def s6Step202HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 838],775⟩

private def s6Step202FrontHead : WindowBank := ⟨s6Step202HeadFOut,s6Step202HeadGOut,s6Step202HeadFvOut,s6Step202HeadGvOut⟩

private def s6Step202EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩

private def s6Step202EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802],776⟩

private def s6Step202EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step202EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step202FrontPair : WindowBank := ⟨s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut⟩

private def s6Step202FrontSigmaArena : Arena := ⟨s6Step202EntryGvAfter.live∪{791},Finset.union_subset s6Step202EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step202HeadFFresh : List Wire := [822]

private def s6Step202HeadFvFresh : List Wire := [813]

private def s6Step202HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202HeadGFresh : List Wire := [825]

private def s6Step202HeadGvFresh : List Wire := [838]

private def s6Step202FrontPlan : HmrSourceFront := ⟨s6Step202EntryGvAfter,s6Step202FrontPair,(growRow 795 s6Step202EntryFFresh ++ (growRow 777 s6Step202EntryGFresh ++ (growRow 776 s6Step202EntryFvFresh ++ (growRow 775 s6Step202EntryGvFresh ++ [])))),s6Step202FrontSigmaArena,[791],s6Step202HeadGBefore,[903],
  s6Step202HeadFvAfter,s6Step202FrontHead,(growRow 777 s6Step202HeadGFresh ++ (growRow 795 s6Step202HeadFFresh ++ (growRow 775 s6Step202HeadGvFresh ++ (growRow 776 s6Step202HeadFvFresh ++ [])))),s6Step202F4Plan,s6Step202CounterDuring,s6Step202CounterWork,s6Step202ExitGvAfter,s6Step202FrontOut,(shrinkRow 777 s6Step202ExitGExtra ++ (shrinkRow 795 s6Step202ExitFExtra ++ (shrinkRow 776 s6Step202ExitFvExtra ++ (shrinkRow 775 s6Step202ExitGvExtra ++ []))))⟩

private def s6Step202CompletePlan : HmrEarlyStepPlan := ⟨s6Step202FrontPlan,s6Step202EarlyControlArena,s6Step202EarlyControlPlan,s6Step202CompleteMoves⟩

private theorem s6Step202Complete_apart : List.Disjoint (s6Step202CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [791, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step202CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[791, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step202Complete_owned : (s6Step202CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step202CompleteMoveArena : Arena := ⟨s6Step202ExitGvAfter.live∪{168},Finset.union_subset s6Step202ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step202Complete_repack : s6Step202ExitGvAfter.checkRepack s6Step202CompleteMoves=some s6Step202EarlyControlArena := by
  have owned : 867∈s6Step202ExitGvAfter.live := by norm_num [s6Step202ExitGvAfter,arenaWires]
  have reserve : s6Step202ExitGvAfter.reserve {168}=some s6Step202CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step202ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step202CompleteMoveArena.retireSet {867}=s6Step202EarlyControlArena := by
    unfold Arena.retireSet s6Step202EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step202CompleteMoveArena,s6Step202ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step202CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step202CompleteMoveArena.retireSet {867}).checkRepack []=some s6Step202EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step202EarlyControl_branchOwned : ([903] : List Wire).toFinset⊆s6Step202EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_branch : compileHmrBranchRetirement s6Step202EarlyControlSigmaArena 903=some s6Step202EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step202EarlyControl_branchOwned
  · ext q
    simp [s6Step202EarlyControlOutputArena,s6Step202EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step202EarlyControl_classEqualityBorrow : s6Step202EarlyControlPositiveArena.checkBorrow (([791, 822] : List Wire).length-1) s6Step202EarlyControlLog.classWork=some s6Step202EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step202EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step202EarlyControlEqualityArena,s6Step202EarlyControlPositiveArena,s6Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step202EarlyControl_classEqualityOwned : ([791, 822] : List Wire).toFinset⊆s6Step202EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_classEquality : compileHmrEqualityLog s6Step202EarlyControlPositiveArena [791, 822] 0 s6Step202EarlyControlLog.classWork=some (s6Step202EarlyControlEqualityArena,s6Step202EarlyControlLog.classWork,s6Step202EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step202EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step202EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step202EarlyControl_classOwned : ([769, 780, 791] : List Wire).toFinset⊆s6Step202EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_positiveBorrow : s6Step202EarlyControlZeroArena.checkBorrow (1) s6Step202EarlyControlLog.positiveWork=some s6Step202EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step202EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step202EarlyControlPositiveArena,s6Step202EarlyControlZeroArena,s6Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step202EarlyControl_class : compileHmrSourceClassLog s6Step202EarlyControlZeroArena false 769 s6Step202EarlyControlZeroPlan.top 0 791 s6Step202EarlyControlLog.positiveWork s6Step202EarlyControlLog.classWork=some s6Step202EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step202EarlyControlClassPlan s6Step202EarlyControlZeroArena false 769 s6Step202EarlyControlZeroPlan.top 0 791
  constructor
  · decide +kernel
  · exact s6Step202EarlyControl_classOwned
  · exact s6Step202EarlyControl_positiveBorrow
  · exact s6Step202EarlyControl_classEquality

private theorem s6Step202EarlyControl_entryRecordOwned : ([903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_entrySigmaOwned : ([791, 254] : List Wire).toFinset⊆s6Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_fitBorrow : s6Step202EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step202EarlyControlLog.recordFresh=some s6Step202EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step202EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step202EarlyControlFittedArena,s6Step202EarlyControlFlagArena,s6Step202EarlyControlLog,arenaWires]

private theorem s6Step202EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step202EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_fit : compileHmrRecordGrowLog s6Step202EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step202EarlyControlLog.recordFresh=some s6Step202EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step202EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step202EarlyControl_fitBorrow

private theorem s6Step202EarlyControl_flagsBorrow : s6Step202EarlyControlEqualityArena.checkBorrow (6) s6Step202EarlyControlLog.flagWork=some s6Step202EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step202EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step202EarlyControlFlagArena,s6Step202EarlyControlEqualityArena,s6Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step202EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step202EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_flags : compileHmrFlagsLog s6Step202EarlyControlClassPlan.equalityArena s6Step202EarlyControlClassPlan.equality.top 253 252 251 s6Step202EarlyControlLog.flagWork=some s6Step202EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step202EarlyControl_flagsOwned⟩
  · exact s6Step202EarlyControl_flagsBorrow

private theorem s6Step202EarlyControl_historyBorrow : s6Step202EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step202EarlyControlLog.recordFresh=some s6Step202EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step202EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step202EarlyControlHistoryArena,s6Step202EarlyControlArena,s6Step202EarlyControlLog,arenaWires]

private theorem s6Step202EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_history : compileHmrRecordGrowLog s6Step202EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step202EarlyControlLog.recordFresh=some s6Step202EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step202EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step202EarlyControl_historyBorrow

private theorem s6Step202EarlyControl_sigmaOwned : ([254, 791] : List Wire).toFinset⊆s6Step202EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_sigmaReleaseOwned : ([791] : List Wire).toFinset⊆s6Step202EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_sigmaRelease : s6Step202EarlyControlHistoryArena.release {791} (fun _ => false)=some s6Step202EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step202EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step202EarlyControlSigmaArena,s6Step202EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step202EarlyControl_sigma : compileHmrSigmaDropLog s6Step202EarlyControlHistoryArena false 0 0 254 791 []=some s6Step202EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step202EarlyControl_sigmaOwned⟩
  · exact s6Step202EarlyControl_sigmaRelease

private theorem s6Step202EarlyControl_zeroBorrow : s6Step202EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step202EarlyControlLog.zeroWork=some s6Step202EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step202EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step202EarlyControlZeroArena,s6Step202EarlyControlArena,s6Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step202EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step202EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EarlyControl_zero : compileHmrEqualityLog s6Step202EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step202EarlyControlLog.zeroWork=some (s6Step202EarlyControlZeroArena,s6Step202EarlyControlLog.zeroWork,s6Step202EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step202EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step202EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step202EarlyControl_logged : s6Step202EarlyControlPlan.Logged s6Step202EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 254 253 252 251 903 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step202EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step202EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step202EarlyControl_zero
  · exact s6Step202EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step202EarlyControl_flags
  · exact s6Step202EarlyControl_fit
  · exact s6Step202EarlyControl_history
  · exact s6Step202EarlyControl_sigma
  · exact s6Step202EarlyControl_branch

private theorem s6Step202EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step202EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 254 253 252 251 903 47 s6Step202EarlyControlLog=some s6Step202EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step202EarlyControlPlan s6Step202EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 254 253 252 251 903 47 s6Step202EarlyControl_logged

private def s6Step202EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step202EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩

private def s6Step202EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907],776⟩

private def s6Step202EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step202EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step202FrontBank : WindowBank := ⟨s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow⟩

private def s6Step202Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780, 822, 795]

private def s6Step202Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 825, 777]

private def s6Step202Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802, 813, 776]

private def s6Step202Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 838, 775]

private theorem s6Step202Counter_apart : Disjoint s6Step202HeadFvAfter.live s6Step202CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step202HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202Counter_borrowed : s6Step202HeadFvAfter.checkBorrow 4 s6Step202CounterWork=some s6Step202CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step202HeadFvAfter s6Step202CounterDuring s6Step202CounterWork.toFinset s6Step202Counter_bounded s6Step202Counter_apart rfl

private theorem s6Step202Counter_owned : (791::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step202HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step202HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202Counter_checked : compileHmrCounterStepLog s6Step202HeadFvAfter true 791 [774, 773, 772, 771, 770, 769] s6Step202CounterWork=some s6Step202CounterDuring := by
  have owned : ∀q∈791::[774, 773, 772, 771, 770, 769],q∈s6Step202HeadFvAfter.live := fun q hq => s6Step202Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step202Counter_borrowed

private def s6Step202EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private theorem s6Step202EntryBank_incomingDistinct : ([s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202EntryF_Incoming : rowsOwned s6Step202EntryFBefore [s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow] 0 s6Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step202EntryBank_outgoingOwned : rowsOwned s6Step202EntryGvAfter [s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step202EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202EntryF_Outgoing : rowsOwned s6Step202EntryGvAfter [s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut] :=
  hmrRows_owned_drop s6Step202EntryGvAfter [s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut] 0 s6Step202EntryBank_outgoingOwned

private theorem s6Step202EntryF_distinct : (s6Step202EntryFRow.sign::s6Step202EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202EntryF_owned : (s6Step202EntryFRow.sign::s6Step202EntryFRow.payload).toFinset⊆s6Step202EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step202EntryF_reserved : s6Step202EntryFBefore.reserve s6Step202EntryFFresh.toFinset=some s6Step202EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202EntryFFresh,arenaWires]
  · norm_num [s6Step202EntryFBefore,s6Step202EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step202EntryFAfter,s6Step202EntryFBefore,s6Step202EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202EntryF_checked : planRowResizeLog s6Step202EntryFBefore s6Step202EntryFRow 169 s6Step202EntryFFresh=
    some (s6Step202EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩,growRow 795 s6Step202EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step202EntryFBefore s6Step202EntryFAfter s6Step202EntryFRow 169 s6Step202EntryFFresh
    s6Step202EntryF_distinct s6Step202EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202EntryF_reserved
  have rowEq : WindowRow.mk (s6Step202EntryFRow.payload++s6Step202EntryFFresh) s6Step202EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step202EntryFvBefore : Arena := s6Step202EntryFAfter

private theorem s6Step202EntryFv_Incoming : rowsOwned s6Step202EntryFvBefore [s6Step202EntryFvRow,s6Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow] 2 s6Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step202EntryFv_Outgoing : rowsOwned s6Step202EntryGvAfter [s6Step202EntryFvOut,s6Step202EntryGvOut] :=
  hmrRows_owned_drop s6Step202EntryGvAfter [s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut] 2 s6Step202EntryBank_outgoingOwned

private theorem s6Step202EntryFv_distinct : (s6Step202EntryFvRow.sign::s6Step202EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202EntryFv_owned : (s6Step202EntryFvRow.sign::s6Step202EntryFvRow.payload).toFinset⊆s6Step202EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step202EntryFv_reserved : s6Step202EntryFvBefore.reserve s6Step202EntryFvFresh.toFinset=some s6Step202EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202EntryFvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step202EntryFvBefore,s6Step202EntryFAfter,s6Step202EntryFvFresh,arenaWires]
  · ext q
    simp only [s6Step202EntryFvAfter,s6Step202EntryFvBefore,s6Step202EntryFAfter,s6Step202EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202EntryFv_checked : planRowResizeLog s6Step202EntryFvBefore s6Step202EntryFvRow 117 s6Step202EntryFvFresh=
    some (s6Step202EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802],776⟩,growRow 776 s6Step202EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step202EntryFvBefore s6Step202EntryFvAfter s6Step202EntryFvRow 117 s6Step202EntryFvFresh
    s6Step202EntryFv_distinct s6Step202EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step202EntryFvRow.payload++s6Step202EntryFvFresh) s6Step202EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step202EntryGAfter : Arena := s6Step202EntryFAfter

private def s6Step202EntryGBefore : Arena := s6Step202EntryFAfter

private theorem s6Step202EntryG_Incoming : rowsOwned s6Step202EntryGBefore [s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow] 1 s6Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step202EntryG_Outgoing : rowsOwned s6Step202EntryGvAfter [s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut] :=
  hmrRows_owned_drop s6Step202EntryGvAfter [s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut] 1 s6Step202EntryBank_outgoingOwned

private theorem s6Step202EntryG_distinct : (s6Step202EntryGRow.sign::s6Step202EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202EntryG_owned : (s6Step202EntryGRow.sign::s6Step202EntryGRow.payload).toFinset⊆s6Step202EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step202EntryG_reserved : s6Step202EntryGBefore.reserve s6Step202EntryGFresh.toFinset=some s6Step202EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202EntryGFresh,arenaWires]
  · norm_num [s6Step202EntryGBefore,s6Step202EntryFAfter,s6Step202EntryGFresh,arenaWires]
  · simp only [s6Step202EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step202EntryG_checked : planRowResizeLog s6Step202EntryGBefore s6Step202EntryGRow 169 s6Step202EntryGFresh=
    some (s6Step202EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩,growRow 777 s6Step202EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step202EntryGBefore s6Step202EntryGAfter s6Step202EntryGRow 169 s6Step202EntryGFresh
    s6Step202EntryG_distinct s6Step202EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202EntryG_reserved
  have rowEq : WindowRow.mk (s6Step202EntryGRow.payload++s6Step202EntryGFresh) s6Step202EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step202EntryGvBefore : Arena := s6Step202EntryFvAfter

private theorem s6Step202EntryGv_Incoming : rowsOwned s6Step202EntryGvBefore [s6Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow] 3 s6Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202EntryGv_Outgoing : rowsOwned s6Step202EntryGvAfter [s6Step202EntryGvOut] :=
  hmrRows_owned_drop s6Step202EntryGvAfter [s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut] 3 s6Step202EntryBank_outgoingOwned

private theorem s6Step202EntryGv_distinct : (s6Step202EntryGvRow.sign::s6Step202EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202EntryGv_owned : (s6Step202EntryGvRow.sign::s6Step202EntryGvRow.payload).toFinset⊆s6Step202EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202EntryGv_reserved : s6Step202EntryGvBefore.reserve s6Step202EntryGvFresh.toFinset=some s6Step202EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202EntryGvFresh,arenaWires]
  · norm_num [s6Step202EntryGvBefore,s6Step202EntryFvAfter,s6Step202EntryGvFresh,arenaWires]
  · simp only [s6Step202EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step202EntryGv_checked : planRowResizeLog s6Step202EntryGvBefore s6Step202EntryGvRow 117 s6Step202EntryGvFresh=
    some (s6Step202EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩,growRow 775 s6Step202EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step202EntryGvBefore s6Step202EntryGvAfter s6Step202EntryGvRow 117 s6Step202EntryGvFresh
    s6Step202EntryGv_distinct s6Step202EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step202EntryGvRow.payload++s6Step202EntryGvFresh) s6Step202EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step202EntryBank_rows : planWindowRowsLog s6Step202EntryFBefore [(s6Step202EntryFRow,169),(s6Step202EntryGRow,169),(s6Step202EntryFvRow,117),(s6Step202EntryGvRow,117)] [s6Step202EntryFFresh,s6Step202EntryGFresh,s6Step202EntryFvFresh,s6Step202EntryGvFresh]=
    some (s6Step202EntryGvAfter,[s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut],(growRow 795 s6Step202EntryFFresh ++ (growRow 777 s6Step202EntryGFresh ++ (growRow 776 s6Step202EntryFvFresh ++ (growRow 775 s6Step202EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step202EntryGvAfter [] []=some (s6Step202EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step202EntryGvBefore s6Step202EntryGvAfter s6Step202EntryGvAfter
    s6Step202EntryGvRow s6Step202EntryGvOut 117 s6Step202EntryGvFresh [] [] []
    (growRow 775 s6Step202EntryGvFresh) ([]) s6Step202EntryGv_Incoming s6Step202EntryGv_checked h4 s6Step202EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step202EntryFvBefore s6Step202EntryFvAfter s6Step202EntryGvAfter
    s6Step202EntryFvRow s6Step202EntryFvOut 117 s6Step202EntryFvFresh [(s6Step202EntryGvRow,117)] [s6Step202EntryGvFresh] [s6Step202EntryGvOut]
    (growRow 776 s6Step202EntryFvFresh) ((growRow 775 s6Step202EntryGvFresh ++ [])) s6Step202EntryFv_Incoming s6Step202EntryFv_checked h3 s6Step202EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step202EntryGBefore s6Step202EntryGAfter s6Step202EntryGvAfter
    s6Step202EntryGRow s6Step202EntryGOut 169 s6Step202EntryGFresh [(s6Step202EntryFvRow,117),(s6Step202EntryGvRow,117)] [s6Step202EntryFvFresh,s6Step202EntryGvFresh] [s6Step202EntryFvOut,s6Step202EntryGvOut]
    (growRow 777 s6Step202EntryGFresh) ((growRow 776 s6Step202EntryFvFresh ++ (growRow 775 s6Step202EntryGvFresh ++ []))) s6Step202EntryG_Incoming s6Step202EntryG_checked h2 s6Step202EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step202EntryFBefore s6Step202EntryFAfter s6Step202EntryGvAfter
    s6Step202EntryFRow s6Step202EntryFOut 169 s6Step202EntryFFresh [(s6Step202EntryGRow,169),(s6Step202EntryFvRow,117),(s6Step202EntryGvRow,117)] [s6Step202EntryGFresh,s6Step202EntryFvFresh,s6Step202EntryGvFresh] [s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut]
    (growRow 795 s6Step202EntryFFresh) ((growRow 777 s6Step202EntryGFresh ++ (growRow 776 s6Step202EntryFvFresh ++ (growRow 775 s6Step202EntryGvFresh ++ [])))) s6Step202EntryF_Incoming s6Step202EntryF_checked h1 s6Step202EntryF_Outgoing
  exact h0

private theorem s6Step202EntryBank_checked : compileHmrBankResizeLog .entry s6Step202EntryFBefore ⟨s6Step202EntryFRow,s6Step202EntryGRow,s6Step202EntryFvRow,s6Step202EntryGvRow⟩ ⟨169,169,117,117⟩ [s6Step202EntryFFresh,s6Step202EntryGFresh,s6Step202EntryFvFresh,s6Step202EntryGvFresh]=
    some (s6Step202EntryGvAfter,⟨s6Step202EntryFOut,s6Step202EntryGOut,s6Step202EntryFvOut,s6Step202EntryGvOut⟩,(growRow 795 s6Step202EntryFFresh ++ (growRow 777 s6Step202EntryGFresh ++ (growRow 776 s6Step202EntryFvFresh ++ (growRow 775 s6Step202EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step202EntryBank_rows]
  rfl

private def s6Step202ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202ExitFBefore : Arena := s6Step202ExitGAfter

private def s6Step202ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780, 822],795⟩

private def s6Step202ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802, 813],776⟩

private def s6Step202ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 825],777⟩

private def s6Step202ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 838],775⟩

private theorem s6Step202ExitBank_incomingDistinct : ([s6Step202ExitGRow,s6Step202ExitFRow,s6Step202ExitFvRow,s6Step202ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202ExitF_Incoming : rowsOwned s6Step202ExitFBefore [s6Step202ExitFRow,s6Step202ExitFvRow,s6Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202ExitGRow,s6Step202ExitFRow,s6Step202ExitFvRow,s6Step202ExitGvRow] 1 s6Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202ExitFBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202ExitBank_outgoingOwned : rowsOwned s6Step202ExitGvAfter [s6Step202ExitGOut,s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step202ExitGvAfter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202ExitF_Outgoing : rowsOwned s6Step202ExitGvAfter [s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut] :=
  hmrRows_owned_drop s6Step202ExitGvAfter [s6Step202ExitGOut,s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut] 1 s6Step202ExitBank_outgoingOwned

private theorem s6Step202ExitF_distinct : (s6Step202ExitFRow.sign::s6Step202ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202ExitF_owned : (s6Step202ExitFRow.sign::s6Step202ExitFRow.payload).toFinset⊆s6Step202ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202ExitFBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202ExitF_retired : s6Step202ExitFBefore.retireSet s6Step202ExitFExtra.toFinset=s6Step202ExitFAfter := by
  unfold Arena.retireSet s6Step202ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step202ExitFBefore,s6Step202ExitGAfter,s6Step202ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step202ExitF_checked : planRowResizeLog s6Step202ExitFBefore s6Step202ExitFRow 168 []=
    some (s6Step202ExitFAfter,s6Step202ExitFOut,shrinkRow 795 s6Step202ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step202ExitFBefore s6Step202ExitFRow 168 s6Step202ExitF_distinct s6Step202ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step202ExitFRow.payload.take 168) s6Step202ExitFRow.sign=s6Step202ExitFOut := by decide +kernel
  have hi : s6Step202ExitFRow.payload.drop 168=s6Step202ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step202ExitF_retired] at result
  exact result

private def s6Step202ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202ExitFvBefore : Arena := s6Step202ExitFAfter

private theorem s6Step202ExitFv_Incoming : rowsOwned s6Step202ExitFvBefore [s6Step202ExitFvRow,s6Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202ExitGRow,s6Step202ExitFRow,s6Step202ExitFvRow,s6Step202ExitGvRow] 2 s6Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202ExitFvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202ExitFv_Outgoing : rowsOwned s6Step202ExitGvAfter [s6Step202ExitFvOut,s6Step202ExitGvOut] :=
  hmrRows_owned_drop s6Step202ExitGvAfter [s6Step202ExitGOut,s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut] 2 s6Step202ExitBank_outgoingOwned

private theorem s6Step202ExitFv_distinct : (s6Step202ExitFvRow.sign::s6Step202ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202ExitFv_owned : (s6Step202ExitFvRow.sign::s6Step202ExitFvRow.payload).toFinset⊆s6Step202ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202ExitFvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202ExitFv_retired : s6Step202ExitFvBefore.retireSet s6Step202ExitFvExtra.toFinset=s6Step202ExitFvAfter := by
  unfold Arena.retireSet s6Step202ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step202ExitFvBefore,s6Step202ExitFAfter,s6Step202ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step202ExitFv_checked : planRowResizeLog s6Step202ExitFvBefore s6Step202ExitFvRow 116 []=
    some (s6Step202ExitFvAfter,s6Step202ExitFvOut,shrinkRow 776 s6Step202ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step202ExitFvBefore s6Step202ExitFvRow 116 s6Step202ExitFv_distinct s6Step202ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step202ExitFvRow.payload.take 116) s6Step202ExitFvRow.sign=s6Step202ExitFvOut := by decide +kernel
  have hi : s6Step202ExitFvRow.payload.drop 116=s6Step202ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step202ExitFv_retired] at result
  exact result

private def s6Step202ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step202ExitG_Incoming : rowsOwned s6Step202ExitGBefore [s6Step202ExitGRow,s6Step202ExitFRow,s6Step202ExitFvRow,s6Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202ExitGRow,s6Step202ExitFRow,s6Step202ExitFvRow,s6Step202ExitGvRow] 0 s6Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202ExitG_Outgoing : rowsOwned s6Step202ExitGvAfter [s6Step202ExitGOut,s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut] :=
  hmrRows_owned_drop s6Step202ExitGvAfter [s6Step202ExitGOut,s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut] 0 s6Step202ExitBank_outgoingOwned

private theorem s6Step202ExitG_distinct : (s6Step202ExitGRow.sign::s6Step202ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202ExitG_owned : (s6Step202ExitGRow.sign::s6Step202ExitGRow.payload).toFinset⊆s6Step202ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202ExitG_retired : s6Step202ExitGBefore.retireSet s6Step202ExitGExtra.toFinset=s6Step202ExitGAfter := by
  unfold Arena.retireSet s6Step202ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step202ExitGBefore,s6Step202ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step202ExitG_checked : planRowResizeLog s6Step202ExitGBefore s6Step202ExitGRow 168 []=
    some (s6Step202ExitGAfter,s6Step202ExitGOut,shrinkRow 777 s6Step202ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step202ExitGBefore s6Step202ExitGRow 168 s6Step202ExitG_distinct s6Step202ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step202ExitGRow.payload.take 168) s6Step202ExitGRow.sign=s6Step202ExitGOut := by decide +kernel
  have hi : s6Step202ExitGRow.payload.drop 168=s6Step202ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step202ExitG_retired] at result
  exact result

private def s6Step202ExitGvBefore : Arena := s6Step202ExitFvAfter

private theorem s6Step202ExitGv_Incoming : rowsOwned s6Step202ExitGvBefore [s6Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202ExitGRow,s6Step202ExitFRow,s6Step202ExitFvRow,s6Step202ExitGvRow] 3 s6Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202ExitGvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202ExitGv_Outgoing : rowsOwned s6Step202ExitGvAfter [s6Step202ExitGvOut] :=
  hmrRows_owned_drop s6Step202ExitGvAfter [s6Step202ExitGOut,s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut] 3 s6Step202ExitBank_outgoingOwned

private theorem s6Step202ExitGv_distinct : (s6Step202ExitGvRow.sign::s6Step202ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202ExitGv_owned : (s6Step202ExitGvRow.sign::s6Step202ExitGvRow.payload).toFinset⊆s6Step202ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202ExitGvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202ExitGv_retired : s6Step202ExitGvBefore.retireSet s6Step202ExitGvExtra.toFinset=s6Step202ExitGvAfter := by
  unfold Arena.retireSet s6Step202ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step202ExitGvBefore,s6Step202ExitFvAfter,s6Step202ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step202ExitGv_checked : planRowResizeLog s6Step202ExitGvBefore s6Step202ExitGvRow 117 []=
    some (s6Step202ExitGvAfter,s6Step202ExitGvOut,shrinkRow 775 s6Step202ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step202ExitGvBefore s6Step202ExitGvRow 117 s6Step202ExitGv_distinct s6Step202ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step202ExitGvRow.payload.take 117) s6Step202ExitGvRow.sign=s6Step202ExitGvOut := by decide +kernel
  have hi : s6Step202ExitGvRow.payload.drop 117=s6Step202ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step202ExitGv_retired] at result
  exact result

private theorem s6Step202ExitBank_rows : planWindowRowsLog s6Step202ExitGBefore [(s6Step202ExitGRow,168),(s6Step202ExitFRow,168),(s6Step202ExitFvRow,116),(s6Step202ExitGvRow,117)] [[],[],[],[]]=
    some (s6Step202ExitGvAfter,[s6Step202ExitGOut,s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut],(shrinkRow 777 s6Step202ExitGExtra ++ (shrinkRow 795 s6Step202ExitFExtra ++ (shrinkRow 776 s6Step202ExitFvExtra ++ (shrinkRow 775 s6Step202ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step202ExitGvAfter [] []=some (s6Step202ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step202ExitGvBefore s6Step202ExitGvAfter s6Step202ExitGvAfter
    s6Step202ExitGvRow s6Step202ExitGvOut 117 [] [] [] []
    (shrinkRow 775 s6Step202ExitGvExtra) ([]) s6Step202ExitGv_Incoming s6Step202ExitGv_checked h4 s6Step202ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step202ExitFvBefore s6Step202ExitFvAfter s6Step202ExitGvAfter
    s6Step202ExitFvRow s6Step202ExitFvOut 116 [] [(s6Step202ExitGvRow,117)] [[]] [s6Step202ExitGvOut]
    (shrinkRow 776 s6Step202ExitFvExtra) ((shrinkRow 775 s6Step202ExitGvExtra ++ [])) s6Step202ExitFv_Incoming s6Step202ExitFv_checked h3 s6Step202ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step202ExitFBefore s6Step202ExitFAfter s6Step202ExitGvAfter
    s6Step202ExitFRow s6Step202ExitFOut 168 [] [(s6Step202ExitFvRow,116),(s6Step202ExitGvRow,117)] [[],[]] [s6Step202ExitFvOut,s6Step202ExitGvOut]
    (shrinkRow 795 s6Step202ExitFExtra) ((shrinkRow 776 s6Step202ExitFvExtra ++ (shrinkRow 775 s6Step202ExitGvExtra ++ []))) s6Step202ExitF_Incoming s6Step202ExitF_checked h2 s6Step202ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step202ExitGBefore s6Step202ExitGAfter s6Step202ExitGvAfter
    s6Step202ExitGRow s6Step202ExitGOut 168 [] [(s6Step202ExitFRow,168),(s6Step202ExitFvRow,116),(s6Step202ExitGvRow,117)] [[],[],[]] [s6Step202ExitFOut,s6Step202ExitFvOut,s6Step202ExitGvOut]
    (shrinkRow 777 s6Step202ExitGExtra) ((shrinkRow 795 s6Step202ExitFExtra ++ (shrinkRow 776 s6Step202ExitFvExtra ++ (shrinkRow 775 s6Step202ExitGvExtra ++ [])))) s6Step202ExitG_Incoming s6Step202ExitG_checked h1 s6Step202ExitG_Outgoing
  exact h0

private theorem s6Step202ExitBank_checked : compileHmrBankResizeLog .exit s6Step202ExitGBefore ⟨s6Step202ExitFRow,s6Step202ExitGRow,s6Step202ExitFvRow,s6Step202ExitGvRow⟩ ⟨168,168,116,117⟩ [[],[],[],[]]=
    some (s6Step202ExitGvAfter,⟨s6Step202ExitFOut,s6Step202ExitGOut,s6Step202ExitFvOut,s6Step202ExitGvOut⟩,(shrinkRow 777 s6Step202ExitGExtra ++ (shrinkRow 795 s6Step202ExitFExtra ++ (shrinkRow 776 s6Step202ExitFvExtra ++ (shrinkRow 775 s6Step202ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step202ExitBank_rows]
  rfl

private theorem s6Step202Add0_apart : Disjoint s6Step202Add0Arena.live s6Step202Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step202Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202Add0_card : s6Step202Add0Arena.live.card=893 := by
  decide +kernel

private theorem s6Step202Add0_borrowed : s6Step202Add0Arena.checkBorrow (hmrHybridCount s6Step202Add0Arena s6Step202Add0B.length) s6Step202Add0Work=some s6Step202Add0During := by
  have len : s6Step202Add0Work.length=hmrHybridCount s6Step202Add0Arena s6Step202Add0B.length := by
    rw [hmrHybridCount,s6Step202Add0_card]
    decide +kernel
  have nd : s6Step202Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step202Add0Arena s6Step202Add0During s6Step202Add0Work.toFinset s6Step202Add0_bounded s6Step202Add0_apart rfl

private theorem s6Step202Add0_distinct : (869::903::786::(s6Step202Add0A++s6Step202Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202Add0_owned : (869::903::786::(s6Step202Add0A++s6Step202Add0B)).toFinset⊆s6Step202Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step202Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202Add0_checked : compileHmrHybridCinLog s6Step202Add0Arena 903 869 786 s6Step202Add0A s6Step202Add0B s6Step202Add0Work=some s6Step202Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step202Add0Arena s6Step202Add0During 903 869 786 s6Step202Add0A s6Step202Add0B s6Step202Add0Work
    (by decide +kernel) (by decide +kernel) s6Step202Add0_distinct
    (fun q hq => s6Step202Add0_owned (List.mem_toFinset.mpr hq)) s6Step202Add0_borrowed

private theorem s6Step202Add1_apart : Disjoint s6Step202Add1Arena.live s6Step202Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step202Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202Add1_card : s6Step202Add1Arena.live.card=893 := by
  decide +kernel

private theorem s6Step202Add1_borrowed : s6Step202Add1Arena.checkBorrow (hmrHybridCount s6Step202Add1Arena s6Step202Add1B.length) s6Step202Add1Work=some s6Step202Add1During := by
  have len : s6Step202Add1Work.length=hmrHybridCount s6Step202Add1Arena s6Step202Add1B.length := by
    rw [hmrHybridCount,s6Step202Add1_card]
    decide +kernel
  have nd : s6Step202Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step202Add1Arena s6Step202Add1During s6Step202Add1Work.toFinset s6Step202Add1_bounded s6Step202Add1_apart rfl

private theorem s6Step202Add1_distinct : (869::903::786::(s6Step202Add1A++s6Step202Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202Add1_owned : (869::903::786::(s6Step202Add1A++s6Step202Add1B)).toFinset⊆s6Step202Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step202Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202Add1_checked : compileHmrHybridCinLog s6Step202Add1Arena 903 869 786 s6Step202Add1A s6Step202Add1B s6Step202Add1Work=some s6Step202Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step202Add1Arena s6Step202Add1During 903 869 786 s6Step202Add1A s6Step202Add1B s6Step202Add1Work
    (by decide +kernel) (by decide +kernel) s6Step202Add1_distinct
    (fun q hq => s6Step202Add1_owned (List.mem_toFinset.mpr hq)) s6Step202Add1_borrowed

private theorem s6Step202F4_apart : Disjoint (s6Step202Add0A++s6Step202Add0B).toFinset (s6Step202Add1A++s6Step202Add1B).toFinset := by
  have nd : ((s6Step202Add0A++s6Step202Add0B)++(s6Step202Add1A++s6Step202Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step202F4_carry : s6Step202F4FlagArena.checkBorrow 1 [786]=some s6Step202Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step202F4FlagArena,s6Step202HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step202F4FlagArena,s6Step202HeadFvAfter,s6Step202Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202F4_distinct : (791::903::869::786::((s6Step202Add0A++s6Step202Add1A)++(s6Step202Add0B++s6Step202Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202F4_flag : s6Step202HeadFvAfter.checkBorrow 1 [869]=some s6Step202F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step202HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step202F4_owned : (791::903::((s6Step202Add0A++s6Step202Add1A)++(s6Step202Add0B++s6Step202Add1B))).toFinset⊆s6Step202HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step202HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202F4_checked : compileHmrHybridF4Log s6Step202HeadFvAfter 791 903 s6Step202Add0A s6Step202Add0B s6Step202Add1A s6Step202Add1B [869] [786] s6Step202Add0Work s6Step202Add1Work=some s6Step202F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step202HeadFvAfter s6Step202F4FlagArena s6Step202Add0Arena s6Step202Add0During s6Step202Add1During 791 903
    s6Step202Add0A s6Step202Add0B s6Step202Add1A s6Step202Add1B [869] [786] s6Step202Add0Work s6Step202Add1Work
    (fun q hq => s6Step202F4_owned (List.mem_toFinset.mpr hq)) s6Step202F4_flag s6Step202F4_carry
    s6Step202F4_distinct s6Step202F4_apart s6Step202Add0_checked s6Step202Add1_checked

private theorem s6Step202Front_branch : s6Step202FrontSigmaArena.checkBorrow 1 [903]=some s6Step202HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step202FrontSigmaArena,s6Step202EntryGvAfter,s6Step202EntryFvAfter,arenaWires]
  · ext q
    simp only [s6Step202FrontSigmaArena,s6Step202EntryGvAfter,s6Step202EntryFvAfter,s6Step202HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202Front_entry : HmrFrontEntryValid s6Step202EntryFBefore s6Step202FrontBank 169 117 ⟨168,168,116,117⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step202FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step202EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step202EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step202FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step202Front_sigma : s6Step202EntryGvAfter.checkBorrow 1 [791]=some s6Step202FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step202EntryGvAfter,s6Step202EntryFvAfter,arenaWires]
  · rfl

private def s6Step202HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202HeadFBefore : Arena := s6Step202HeadGAfter

private def s6Step202HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩

private def s6Step202HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802],776⟩

private def s6Step202HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step202HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private theorem s6Step202HeadBank_incomingDistinct : ([s6Step202HeadGRow,s6Step202HeadFRow,s6Step202HeadGvRow,s6Step202HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202HeadF_Incoming : rowsOwned s6Step202HeadFBefore [s6Step202HeadFRow,s6Step202HeadGvRow,s6Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202HeadGRow,s6Step202HeadFRow,s6Step202HeadGvRow,s6Step202HeadFvRow] 1 s6Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202HeadBank_outgoingOwned : rowsOwned s6Step202HeadFvAfter [s6Step202HeadGOut,s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step202HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202HeadF_Outgoing : rowsOwned s6Step202HeadFvAfter [s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut] :=
  hmrRows_owned_drop s6Step202HeadFvAfter [s6Step202HeadGOut,s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut] 1 s6Step202HeadBank_outgoingOwned

private theorem s6Step202HeadF_distinct : (s6Step202HeadFRow.sign::s6Step202HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202HeadF_owned : (s6Step202HeadFRow.sign::s6Step202HeadFRow.payload).toFinset⊆s6Step202HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202HeadF_reserved : s6Step202HeadFBefore.reserve s6Step202HeadFFresh.toFinset=some s6Step202HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202HeadFFresh,arenaWires]
  · norm_num [s6Step202HeadFBefore,s6Step202HeadGAfter,s6Step202HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step202HeadFAfter,s6Step202HeadFBefore,s6Step202HeadGAfter,s6Step202HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202HeadF_checked : planRowResizeLog s6Step202HeadFBefore s6Step202HeadFRow 170 s6Step202HeadFFresh=
    some (s6Step202HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780, 822],795⟩,growRow 795 s6Step202HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step202HeadFBefore s6Step202HeadFAfter s6Step202HeadFRow 170 s6Step202HeadFFresh
    s6Step202HeadF_distinct s6Step202HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202HeadF_reserved
  have rowEq : WindowRow.mk (s6Step202HeadFRow.payload++s6Step202HeadFFresh) s6Step202HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step202HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step202HeadFvBefore : Arena := s6Step202HeadGvAfter

private theorem s6Step202HeadFv_Incoming : rowsOwned s6Step202HeadFvBefore [s6Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202HeadGRow,s6Step202HeadFRow,s6Step202HeadGvRow,s6Step202HeadFvRow] 3 s6Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202HeadFv_Outgoing : rowsOwned s6Step202HeadFvAfter [s6Step202HeadFvOut] :=
  hmrRows_owned_drop s6Step202HeadFvAfter [s6Step202HeadGOut,s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut] 3 s6Step202HeadBank_outgoingOwned

private theorem s6Step202HeadFv_distinct : (s6Step202HeadFvRow.sign::s6Step202HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202HeadFv_owned : (s6Step202HeadFvRow.sign::s6Step202HeadFvRow.payload).toFinset⊆s6Step202HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202HeadFv_reserved : s6Step202HeadFvBefore.reserve s6Step202HeadFvFresh.toFinset=some s6Step202HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202HeadFvFresh,arenaWires]
  · norm_num [s6Step202HeadFvBefore,s6Step202HeadGvAfter,s6Step202HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step202HeadFvAfter,s6Step202HeadFvBefore,s6Step202HeadGvAfter,s6Step202HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202HeadFv_checked : planRowResizeLog s6Step202HeadFvBefore s6Step202HeadFvRow 118 s6Step202HeadFvFresh=
    some (s6Step202HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802, 813],776⟩,growRow 776 s6Step202HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step202HeadFvBefore s6Step202HeadFvAfter s6Step202HeadFvRow 118 s6Step202HeadFvFresh
    s6Step202HeadFv_distinct s6Step202HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step202HeadFvRow.payload++s6Step202HeadFvFresh) s6Step202HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 802, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step202HeadG_Incoming : rowsOwned s6Step202HeadGBefore [s6Step202HeadGRow,s6Step202HeadFRow,s6Step202HeadGvRow,s6Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202HeadGRow,s6Step202HeadFRow,s6Step202HeadGvRow,s6Step202HeadFvRow] 0 s6Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202HeadG_Outgoing : rowsOwned s6Step202HeadFvAfter [s6Step202HeadGOut,s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut] :=
  hmrRows_owned_drop s6Step202HeadFvAfter [s6Step202HeadGOut,s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut] 0 s6Step202HeadBank_outgoingOwned

private theorem s6Step202HeadG_distinct : (s6Step202HeadGRow.sign::s6Step202HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202HeadG_owned : (s6Step202HeadGRow.sign::s6Step202HeadGRow.payload).toFinset⊆s6Step202HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202HeadG_reserved : s6Step202HeadGBefore.reserve s6Step202HeadGFresh.toFinset=some s6Step202HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202HeadGFresh,arenaWires]
  · norm_num [s6Step202HeadGBefore,s6Step202HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step202HeadGAfter,s6Step202HeadGBefore,s6Step202HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202HeadG_checked : planRowResizeLog s6Step202HeadGBefore s6Step202HeadGRow 170 s6Step202HeadGFresh=
    some (s6Step202HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 825],777⟩,growRow 777 s6Step202HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step202HeadGBefore s6Step202HeadGAfter s6Step202HeadGRow 170 s6Step202HeadGFresh
    s6Step202HeadG_distinct s6Step202HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202HeadG_reserved
  have rowEq : WindowRow.mk (s6Step202HeadGRow.payload++s6Step202HeadGFresh) s6Step202HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 825],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step202HeadGvBefore : Arena := s6Step202HeadFAfter

private theorem s6Step202HeadGv_Incoming : rowsOwned s6Step202HeadGvBefore [s6Step202HeadGvRow,s6Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step202HeadGRow,s6Step202HeadFRow,s6Step202HeadGvRow,s6Step202HeadFvRow] 2 s6Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step202HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step202HeadGv_Outgoing : rowsOwned s6Step202HeadFvAfter [s6Step202HeadGvOut,s6Step202HeadFvOut] :=
  hmrRows_owned_drop s6Step202HeadFvAfter [s6Step202HeadGOut,s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut] 2 s6Step202HeadBank_outgoingOwned

private theorem s6Step202HeadGv_distinct : (s6Step202HeadGvRow.sign::s6Step202HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step202HeadGv_owned : (s6Step202HeadGvRow.sign::s6Step202HeadGvRow.payload).toFinset⊆s6Step202HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step202HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step202HeadGv_reserved : s6Step202HeadGvBefore.reserve s6Step202HeadGvFresh.toFinset=some s6Step202HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step202HeadGvFresh,arenaWires]
  · norm_num [s6Step202HeadGvBefore,s6Step202HeadFAfter,s6Step202HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step202HeadGvAfter,s6Step202HeadGvBefore,s6Step202HeadFAfter,s6Step202HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step202HeadGv_checked : planRowResizeLog s6Step202HeadGvBefore s6Step202HeadGvRow 118 s6Step202HeadGvFresh=
    some (s6Step202HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 838],775⟩,growRow 775 s6Step202HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step202HeadGvBefore s6Step202HeadGvAfter s6Step202HeadGvRow 118 s6Step202HeadGvFresh
    s6Step202HeadGv_distinct s6Step202HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step202HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step202HeadGvRow.payload++s6Step202HeadGvFresh) s6Step202HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step202HeadBank_rows : planWindowRowsLog s6Step202HeadGBefore [(s6Step202HeadGRow,170),(s6Step202HeadFRow,170),(s6Step202HeadGvRow,118),(s6Step202HeadFvRow,118)] [s6Step202HeadGFresh,s6Step202HeadFFresh,s6Step202HeadGvFresh,s6Step202HeadFvFresh]=
    some (s6Step202HeadFvAfter,[s6Step202HeadGOut,s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut],(growRow 777 s6Step202HeadGFresh ++ (growRow 795 s6Step202HeadFFresh ++ (growRow 775 s6Step202HeadGvFresh ++ (growRow 776 s6Step202HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step202HeadFvAfter [] []=some (s6Step202HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step202HeadFvBefore s6Step202HeadFvAfter s6Step202HeadFvAfter
    s6Step202HeadFvRow s6Step202HeadFvOut 118 s6Step202HeadFvFresh [] [] []
    (growRow 776 s6Step202HeadFvFresh) ([]) s6Step202HeadFv_Incoming s6Step202HeadFv_checked h4 s6Step202HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step202HeadGvBefore s6Step202HeadGvAfter s6Step202HeadFvAfter
    s6Step202HeadGvRow s6Step202HeadGvOut 118 s6Step202HeadGvFresh [(s6Step202HeadFvRow,118)] [s6Step202HeadFvFresh] [s6Step202HeadFvOut]
    (growRow 775 s6Step202HeadGvFresh) ((growRow 776 s6Step202HeadFvFresh ++ [])) s6Step202HeadGv_Incoming s6Step202HeadGv_checked h3 s6Step202HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step202HeadFBefore s6Step202HeadFAfter s6Step202HeadFvAfter
    s6Step202HeadFRow s6Step202HeadFOut 170 s6Step202HeadFFresh [(s6Step202HeadGvRow,118),(s6Step202HeadFvRow,118)] [s6Step202HeadGvFresh,s6Step202HeadFvFresh] [s6Step202HeadGvOut,s6Step202HeadFvOut]
    (growRow 795 s6Step202HeadFFresh) ((growRow 775 s6Step202HeadGvFresh ++ (growRow 776 s6Step202HeadFvFresh ++ []))) s6Step202HeadF_Incoming s6Step202HeadF_checked h2 s6Step202HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step202HeadGBefore s6Step202HeadGAfter s6Step202HeadFvAfter
    s6Step202HeadGRow s6Step202HeadGOut 170 s6Step202HeadGFresh [(s6Step202HeadFRow,170),(s6Step202HeadGvRow,118),(s6Step202HeadFvRow,118)] [s6Step202HeadFFresh,s6Step202HeadGvFresh,s6Step202HeadFvFresh] [s6Step202HeadFOut,s6Step202HeadGvOut,s6Step202HeadFvOut]
    (growRow 777 s6Step202HeadGFresh) ((growRow 795 s6Step202HeadFFresh ++ (growRow 775 s6Step202HeadGvFresh ++ (growRow 776 s6Step202HeadFvFresh ++ [])))) s6Step202HeadG_Incoming s6Step202HeadG_checked h1 s6Step202HeadG_Outgoing
  exact h0

private theorem s6Step202HeadBank_checked : compileHmrBankResizeLog .headroom s6Step202HeadGBefore ⟨s6Step202HeadFRow,s6Step202HeadGRow,s6Step202HeadFvRow,s6Step202HeadGvRow⟩ ⟨170,170,118,118⟩ [s6Step202HeadGFresh,s6Step202HeadFFresh,s6Step202HeadGvFresh,s6Step202HeadFvFresh]=
    some (s6Step202HeadFvAfter,⟨s6Step202HeadFOut,s6Step202HeadGOut,s6Step202HeadFvOut,s6Step202HeadGvOut⟩,(growRow 777 s6Step202HeadGFresh ++ (growRow 795 s6Step202HeadFFresh ++ (growRow 775 s6Step202HeadGvFresh ++ (growRow 776 s6Step202HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step202HeadBank_rows]
  rfl

private theorem s6Step202Front_checked : compileHmrSourceFrontLog s6Step202EntryFBefore s6Step202FrontBank 169 117 ⟨168,168,116,117⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step202FrontLog=some s6Step202FrontPlan := by
  have pairEq : s6Step202FrontPair=⟨s6Step202HeadFRow,s6Step202HeadGRow,s6Step202HeadFvRow,s6Step202HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step202FrontHead=⟨s6Step202ExitFRow,s6Step202ExitGRow,s6Step202ExitFvRow,s6Step202ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step202Add0A=s6Step202FrontHead.f.wires := by decide +kernel
  have gEq : s6Step202Add0B=s6Step202FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step202Add1A=s6Step202FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step202Add1B=s6Step202FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step202EntryFBefore s6Step202FrontBank 169 117 ⟨168,168,116,117⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step202FrontLog s6Step202FrontPlan
  · exact s6Step202Front_entry
  · exact s6Step202EntryBank_checked
  · exact s6Step202Front_sigma
  · rfl
  · exact s6Step202Front_branch
  · rfl
  · simpa only [s6Step202FrontPlan,pairEq] using s6Step202HeadBank_checked
  · simpa only [s6Step202FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step202F4_checked
  · exact s6Step202Counter_checked
  · rfl
  · simpa only [s6Step202FrontPlan,headEq] using s6Step202ExitBank_checked

private theorem s6Step202Complete_explicit_checked : compileHmrEarlyStepLog s6Step202EntryFBefore s6Step202FrontBank 169 117 ⟨168,168,116,117⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step202CompleteLog=some s6Step202CompletePlan := by
  let Q := s6Step202EarlyControlPlan
  have hq := s6Step202EarlyControl_plan_checked
  have fv1 : s6Step202CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step202CompleteOut.fv.payload[2]?.getD s6Step202CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step202CompleteOut.fv.payload[3]?.getD s6Step202CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step202CompleteOut.fv.payload[4]?.getD s6Step202CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step202EntryFBefore s6Step202EarlyControlArena s6Step202FrontBank 169 117 ⟨168,168,116,117⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step202CompleteLog s6Step202FrontPlan Q
    s6Step202Front_checked s6Step202Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step202Complete_owned s6Step202Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step202EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 s6Step202CompleteOut.fv.second (s6Step202CompleteOut.fv.payload[2]?.getD s6Step202CompleteOut.fv.sign) (s6Step202CompleteOut.fv.payload[3]?.getD s6Step202CompleteOut.fv.sign) (s6Step202CompleteOut.fv.payload[4]?.getD s6Step202CompleteOut.fv.sign) 903 47 s6Step202EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep202Arena : Arena := s6Step202EntryFBefore
def s6PrivateStep202Bank : WindowBank := s6Step202FrontBank
def s6PrivateStep202Spec : HmrSourceWalkStepLog := ⟨169,117,⟨168,168,116,117⟩,47,.early s6Step202CompleteLog⟩
def s6PrivateStep202Plan : HmrSourceStepPlan := .early s6Step202CompletePlan
theorem s6PrivateStep202_source : s6PrivateStep202Spec=s6ObservedLogs192[10] := rfl
theorem s6PrivateStep202_checked : compileHmrSourceStepLog s6PrivateStep202Arena s6PrivateStep202Bank
    s6PrivateStep202Spec.fgWidth s6PrivateStep202Spec.vWidth s6PrivateStep202Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 202 s6PrivateStep202Spec.need none s6PrivateStep202Spec.log=some s6PrivateStep202Plan := by
  change compileHmrSourceStepLog s6Step202EntryFBefore s6Step202FrontBank 169 117 ⟨168,168,116,117⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 202 47 none (.early s6Step202CompleteLog)=some (.early s6Step202CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 202<498)]
  rw [s6Step202Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
