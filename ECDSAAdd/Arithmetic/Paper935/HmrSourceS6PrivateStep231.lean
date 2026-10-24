import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep229
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

private def s6Step231CompleteMoves : List (Wire × Wire) := [(778,409),(922,410)]

private def s6Step231EarlyControlLog : HmrEarlyControlLog := ⟨[922, 778, 864, 908, 823],[818],[805],[822, 825, 869, 786, 810, 809],[]⟩

private def s6Step231FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [818], [], []],[[805], [823], [864], [908]],[[], [], [], []]⟩,[886],[793],[822],[825],[869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step231CompleteLog : HmrEarlyStepLog := ⟨s6Step231FrontLog,s6Step231CompleteMoves,s6Step231EarlyControlLog⟩

private def s6Step231ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step231ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step231ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],777⟩

private def s6Step231ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private def s6Step231FrontOut : WindowBank := ⟨s6Step231ExitFOut,s6Step231ExitGOut,s6Step231ExitFvOut,s6Step231ExitGvOut⟩

private def s6Step231CompleteOut : WindowBank := s6Step231FrontOut.repacked s6Step231CompleteMoves

private def s6Step231EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step231EarlyControlPositiveArena,[818],s6Step231EarlyControlEqualityArena,[805],⟨⟨886,false⟩,[⟨⟨818,false⟩,805⟩]⟩⟩

private def s6Step231EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,922⟩,⟨⟨772,false⟩,778⟩,⟨⟨771,false⟩,864⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,823⟩]⟩

private def s6Step231EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step231EarlyControlZeroArena,s6Step231EarlyControlZeroPlan,s6Step231EarlyControlClassPlan,s6Step231EarlyControlFlagArena,s6Step231EarlyControlFittedArena,s6Step231EarlyControlHistoryArena,s6Step231EarlyControlSigmaArena,s6Step231EarlyControlOutputArena,s6Step231EarlyControlLog⟩

private def s6Step231CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step231Counter_bounded : s6Step231CounterWork.toFinset⊆arenaWires := by norm_num [s6Step231CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step231HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231CounterDuring : Arena := ⟨s6Step231HeadFvAfter.live∪s6Step231CounterWork.toFinset,Finset.union_subset s6Step231HeadFvAfter.bounded s6Step231Counter_bounded⟩

private def s6Step231EntryFFresh : List Wire := []

private def s6Step231EntryFvFresh : List Wire := []

private def s6Step231EntryGFresh : List Wire := [818]

private def s6Step231EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EntryGvAfter : Arena := s6Step231EntryGAfter

private def s6Step231EntryGvFresh : List Wire := []

private def s6Step231ExitFExtra : List Wire := [409, 410, 823]

private def s6Step231ExitFvExtra : List Wire := [908]

private def s6Step231ExitGExtra : List Wire := [818, 805]

private def s6Step231ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231ExitGvExtra : List Wire := [864]

private def s6Step231Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231Add0Work : List Wire := [869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step231Add0_bounded : s6Step231Add0Work.toFinset⊆arenaWires := by
  have h : s6Step231Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step231Add0During : Arena := ⟨s6Step231Add0Arena.live∪s6Step231Add0Work.toFinset,Finset.union_subset s6Step231Add0Arena.bounded s6Step231Add0_bounded⟩

private def s6Step231Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231Add1Work : List Wire := [869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step231Add1_bounded : s6Step231Add1Work.toFinset⊆arenaWires := by
  have h : s6Step231Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step231Add1During : Arena := ⟨s6Step231Add1Arena.live∪s6Step231Add1Work.toFinset,Finset.union_subset s6Step231Add1Arena.bounded s6Step231Add1_bounded⟩

private def s6Step231F4FlagArena : Arena := ⟨s6Step231HeadFvAfter.live∪{822},Finset.union_subset s6Step231HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step231F4Plan : HmrHybridF4Plan := ⟨s6Step231F4FlagArena,[822],s6Step231Add0Arena,[825],s6Step231Add0During,s6Step231Add0Work,s6Step231Add1During,s6Step231Add1Work⟩

private def s6Step231HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 823],795⟩

private def s6Step231HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 908],776⟩

private def s6Step231HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818, 805],777⟩

private def s6Step231HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 864],775⟩

private def s6Step231FrontHead : WindowBank := ⟨s6Step231HeadFOut,s6Step231HeadGOut,s6Step231HeadFvOut,s6Step231HeadGvOut⟩

private def s6Step231EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩

private def s6Step231EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step231EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818],777⟩

private def s6Step231EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private def s6Step231FrontPair : WindowBank := ⟨s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut⟩

private def s6Step231FrontSigmaArena : Arena := ⟨s6Step231EntryGvAfter.live∪{886},Finset.union_subset s6Step231EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step231HeadFFresh : List Wire := [823]

private def s6Step231HeadFvFresh : List Wire := [908]

private def s6Step231HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231HeadGFresh : List Wire := [805]

private def s6Step231HeadGvFresh : List Wire := [864]

private def s6Step231FrontPlan : HmrSourceFront := ⟨s6Step231EntryGvAfter,s6Step231FrontPair,(growRow 795 s6Step231EntryFFresh ++ (growRow 777 s6Step231EntryGFresh ++ (growRow 776 s6Step231EntryFvFresh ++ (growRow 775 s6Step231EntryGvFresh ++ [])))),s6Step231FrontSigmaArena,[886],s6Step231HeadGBefore,[793],
  s6Step231HeadFvAfter,s6Step231FrontHead,(growRow 777 s6Step231HeadGFresh ++ (growRow 795 s6Step231HeadFFresh ++ (growRow 775 s6Step231HeadGvFresh ++ (growRow 776 s6Step231HeadFvFresh ++ [])))),s6Step231F4Plan,s6Step231CounterDuring,s6Step231CounterWork,s6Step231ExitGvAfter,s6Step231FrontOut,(shrinkRow 777 s6Step231ExitGExtra ++ (shrinkRow 795 s6Step231ExitFExtra ++ (shrinkRow 776 s6Step231ExitFvExtra ++ (shrinkRow 775 s6Step231ExitGvExtra ++ []))))⟩

private def s6Step231CompletePlan : HmrEarlyStepPlan := ⟨s6Step231FrontPlan,s6Step231EarlyControlArena,s6Step231EarlyControlPlan,s6Step231CompleteMoves⟩

private theorem s6Step231Complete_apart : List.Disjoint (s6Step231CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [886, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step231CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[886, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step231Complete_owned : (s6Step231CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step231CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,410),(411,778),(779,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,805),(806,808),(813,815),(821,822),(824,825),(826,832),(833,842),(843,849),(850,864),(865,869),(870,896),(897,899),(900,905),(907,908),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step231CompleteRelocationMove0Borrowed : Arena := ⟨s6Step231ExitGvAfter.live∪{409},Finset.union_subset s6Step231ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step231CompleteRelocationMove1Borrowed : Arena := ⟨s6Step231CompleteRelocationMove0After.live∪{410},Finset.union_subset s6Step231CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step231CompleteRelocation_move0_owned : 778∈s6Step231ExitGvAfter.live := by norm_num [s6Step231ExitGvAfter,arenaWires]

private theorem s6Step231CompleteRelocation_move0_reserve : s6Step231ExitGvAfter.reserve {409}=some s6Step231CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step231ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step231CompleteRelocation_move0_retire : s6Step231CompleteRelocationMove0Borrowed.retireSet {778}=s6Step231CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step231CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step231CompleteRelocationMove0Borrowed,s6Step231ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step231CompleteRelocation_move1_owned : 922∈s6Step231CompleteRelocationMove0After.live := by norm_num [s6Step231CompleteRelocationMove0After,arenaWires]

private theorem s6Step231CompleteRelocation_move1_reserve : s6Step231CompleteRelocationMove0After.reserve {410}=some s6Step231CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step231CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step231CompleteRelocation_move1_retire : s6Step231CompleteRelocationMove1Borrowed.retireSet {922}=s6Step231EarlyControlArena := by
  unfold Arena.retireSet s6Step231EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step231CompleteRelocationMove1Borrowed,s6Step231CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step231CompleteRelocation_checked : s6Step231ExitGvAfter.checkRepack [(778,409),(922,410)]=some s6Step231EarlyControlArena := by
  have tail2 : s6Step231EarlyControlArena.checkRepack []=some s6Step231EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step231CompleteRelocationMove0After s6Step231CompleteRelocationMove1Borrowed s6Step231EarlyControlArena s6Step231EarlyControlArena 922 410 []
    s6Step231CompleteRelocation_move1_owned s6Step231CompleteRelocation_move1_reserve s6Step231CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step231ExitGvAfter s6Step231CompleteRelocationMove0Borrowed s6Step231CompleteRelocationMove0After s6Step231EarlyControlArena 778 409 [(922,410)]
    s6Step231CompleteRelocation_move0_owned s6Step231CompleteRelocation_move0_reserve s6Step231CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step231Complete_repack : s6Step231ExitGvAfter.checkRepack s6Step231CompleteMoves=some s6Step231EarlyControlArena := by
  simpa only [s6Step231CompleteMoves] using s6Step231CompleteRelocation_checked

private theorem s6Step231EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step231EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_branch : compileHmrBranchRetirement s6Step231EarlyControlSigmaArena 793=some s6Step231EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step231EarlyControl_branchOwned
  · ext q
    simp [s6Step231EarlyControlOutputArena,s6Step231EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step231EarlyControl_classEqualityBorrow : s6Step231EarlyControlPositiveArena.checkBorrow (([886, 818] : List Wire).length-1) s6Step231EarlyControlLog.classWork=some s6Step231EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step231EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step231EarlyControlEqualityArena,s6Step231EarlyControlPositiveArena,s6Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step231EarlyControl_classEqualityOwned : ([886, 818] : List Wire).toFinset⊆s6Step231EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_classEquality : compileHmrEqualityLog s6Step231EarlyControlPositiveArena [886, 818] 0 s6Step231EarlyControlLog.classWork=some (s6Step231EarlyControlEqualityArena,s6Step231EarlyControlLog.classWork,s6Step231EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step231EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step231EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step231EarlyControl_classOwned : ([769, 823, 886] : List Wire).toFinset⊆s6Step231EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_positiveBorrow : s6Step231EarlyControlZeroArena.checkBorrow (1) s6Step231EarlyControlLog.positiveWork=some s6Step231EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step231EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step231EarlyControlPositiveArena,s6Step231EarlyControlZeroArena,s6Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step231EarlyControl_class : compileHmrSourceClassLog s6Step231EarlyControlZeroArena false 769 s6Step231EarlyControlZeroPlan.top 0 886 s6Step231EarlyControlLog.positiveWork s6Step231EarlyControlLog.classWork=some s6Step231EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step231EarlyControlClassPlan s6Step231EarlyControlZeroArena false 769 s6Step231EarlyControlZeroPlan.top 0 886
  constructor
  · decide +kernel
  · exact s6Step231EarlyControl_classOwned
  · exact s6Step231EarlyControl_positiveBorrow
  · exact s6Step231EarlyControl_classEquality

private theorem s6Step231EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_entrySigmaOwned : ([886, 254] : List Wire).toFinset⊆s6Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_fitBorrow : s6Step231EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step231EarlyControlLog.recordFresh=some s6Step231EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step231EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step231EarlyControlFittedArena,s6Step231EarlyControlFlagArena,s6Step231EarlyControlLog,arenaWires]

private theorem s6Step231EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step231EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_fit : compileHmrRecordGrowLog s6Step231EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step231EarlyControlLog.recordFresh=some s6Step231EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step231EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step231EarlyControl_fitBorrow

private theorem s6Step231EarlyControl_flagsBorrow : s6Step231EarlyControlEqualityArena.checkBorrow (6) s6Step231EarlyControlLog.flagWork=some s6Step231EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step231EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step231EarlyControlFlagArena,s6Step231EarlyControlEqualityArena,s6Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step231EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step231EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_flags : compileHmrFlagsLog s6Step231EarlyControlClassPlan.equalityArena s6Step231EarlyControlClassPlan.equality.top 253 252 251 s6Step231EarlyControlLog.flagWork=some s6Step231EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step231EarlyControl_flagsOwned⟩
  · exact s6Step231EarlyControl_flagsBorrow

private theorem s6Step231EarlyControl_historyBorrow : s6Step231EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step231EarlyControlLog.recordFresh=some s6Step231EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step231EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step231EarlyControlHistoryArena,s6Step231EarlyControlArena,s6Step231EarlyControlLog,arenaWires]

private theorem s6Step231EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_history : compileHmrRecordGrowLog s6Step231EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step231EarlyControlLog.recordFresh=some s6Step231EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step231EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step231EarlyControl_historyBorrow

private theorem s6Step231EarlyControl_sigmaOwned : ([254, 886] : List Wire).toFinset⊆s6Step231EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_sigmaReleaseOwned : ([886] : List Wire).toFinset⊆s6Step231EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_sigmaRelease : s6Step231EarlyControlHistoryArena.release {886} (fun _ => false)=some s6Step231EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step231EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step231EarlyControlSigmaArena,s6Step231EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step231EarlyControl_sigma : compileHmrSigmaDropLog s6Step231EarlyControlHistoryArena false 0 0 254 886 []=some s6Step231EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step231EarlyControl_sigmaOwned⟩
  · exact s6Step231EarlyControl_sigmaRelease

private theorem s6Step231EarlyControl_zeroBorrow : s6Step231EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step231EarlyControlLog.zeroWork=some s6Step231EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step231EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step231EarlyControlZeroArena,s6Step231EarlyControlArena,s6Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step231EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step231EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EarlyControl_zero : compileHmrEqualityLog s6Step231EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step231EarlyControlLog.zeroWork=some (s6Step231EarlyControlZeroArena,s6Step231EarlyControlLog.zeroWork,s6Step231EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step231EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step231EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step231EarlyControl_logged : s6Step231EarlyControlPlan.Logged s6Step231EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 793 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step231EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step231EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step231EarlyControl_zero
  · exact s6Step231EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step231EarlyControl_flags
  · exact s6Step231EarlyControl_fit
  · exact s6Step231EarlyControl_history
  · exact s6Step231EarlyControl_sigma
  · exact s6Step231EarlyControl_branch

private theorem s6Step231EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step231EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 793 49 s6Step231EarlyControlLog=some s6Step231EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step231EarlyControlPlan s6Step231EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 793 49 s6Step231EarlyControl_logged

private def s6Step231EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩

private def s6Step231EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step231EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],777⟩

private def s6Step231EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private def s6Step231FrontBank : WindowBank := ⟨s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow⟩

private def s6Step231Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 823, 795]

private def s6Step231Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818, 805, 777]

private def s6Step231Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 908, 776]

private def s6Step231Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 864, 775]

private theorem s6Step231Counter_apart : Disjoint s6Step231HeadFvAfter.live s6Step231CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step231HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231Counter_borrowed : s6Step231HeadFvAfter.checkBorrow 4 s6Step231CounterWork=some s6Step231CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step231HeadFvAfter s6Step231CounterDuring s6Step231CounterWork.toFinset s6Step231Counter_bounded s6Step231Counter_apart rfl

private theorem s6Step231Counter_owned : (886::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step231HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step231HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231Counter_checked : compileHmrCounterStepLog s6Step231HeadFvAfter true 886 [774, 773, 772, 771, 770, 769] s6Step231CounterWork=some s6Step231CounterDuring := by
  have owned : ∀q∈886::[774, 773, 772, 771, 770, 769],q∈s6Step231HeadFvAfter.live := fun q hq => s6Step231Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step231Counter_borrowed

private def s6Step231EntryFAfter : Arena := s6Step231EntryFBefore

private theorem s6Step231EntryBank_incomingDistinct : ([s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231EntryF_Incoming : rowsOwned s6Step231EntryFBefore [s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow] 0 s6Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231EntryBank_outgoingOwned : rowsOwned s6Step231EntryGvAfter [s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step231EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231EntryF_Outgoing : rowsOwned s6Step231EntryGvAfter [s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut] :=
  hmrRows_owned_drop s6Step231EntryGvAfter [s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut] 0 s6Step231EntryBank_outgoingOwned

private theorem s6Step231EntryF_distinct : (s6Step231EntryFRow.sign::s6Step231EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231EntryF_owned : (s6Step231EntryFRow.sign::s6Step231EntryFRow.payload).toFinset⊆s6Step231EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EntryF_reserved : s6Step231EntryFBefore.reserve s6Step231EntryFFresh.toFinset=some s6Step231EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231EntryFFresh,arenaWires]
  · norm_num [s6Step231EntryFBefore,s6Step231EntryFFresh,arenaWires]
  · simp only [s6Step231EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step231EntryF_checked : planRowResizeLog s6Step231EntryFBefore s6Step231EntryFRow 155 s6Step231EntryFFresh=
    some (s6Step231EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩,growRow 795 s6Step231EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step231EntryFBefore s6Step231EntryFAfter s6Step231EntryFRow 155 s6Step231EntryFFresh
    s6Step231EntryF_distinct s6Step231EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231EntryF_reserved
  have rowEq : WindowRow.mk (s6Step231EntryFRow.payload++s6Step231EntryFFresh) s6Step231EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step231EntryFvAfter : Arena := s6Step231EntryGAfter

private def s6Step231EntryFvBefore : Arena := s6Step231EntryGAfter

private theorem s6Step231EntryFv_Incoming : rowsOwned s6Step231EntryFvBefore [s6Step231EntryFvRow,s6Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow] 2 s6Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231EntryFv_Outgoing : rowsOwned s6Step231EntryGvAfter [s6Step231EntryFvOut,s6Step231EntryGvOut] :=
  hmrRows_owned_drop s6Step231EntryGvAfter [s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut] 2 s6Step231EntryBank_outgoingOwned

private theorem s6Step231EntryFv_distinct : (s6Step231EntryFvRow.sign::s6Step231EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231EntryFv_owned : (s6Step231EntryFvRow.sign::s6Step231EntryFvRow.payload).toFinset⊆s6Step231EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EntryFv_reserved : s6Step231EntryFvBefore.reserve s6Step231EntryFvFresh.toFinset=some s6Step231EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231EntryFvFresh,arenaWires]
  · norm_num [s6Step231EntryFvBefore,s6Step231EntryGAfter,s6Step231EntryFvFresh,arenaWires]
  · simp only [s6Step231EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step231EntryFv_checked : planRowResizeLog s6Step231EntryFvBefore s6Step231EntryFvRow 130 s6Step231EntryFvFresh=
    some (s6Step231EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩,growRow 776 s6Step231EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step231EntryFvBefore s6Step231EntryFvAfter s6Step231EntryFvRow 130 s6Step231EntryFvFresh
    s6Step231EntryFv_distinct s6Step231EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step231EntryFvRow.payload++s6Step231EntryFvFresh) s6Step231EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step231EntryGBefore : Arena := s6Step231EntryFBefore

private theorem s6Step231EntryG_Incoming : rowsOwned s6Step231EntryGBefore [s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow] 1 s6Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231EntryG_Outgoing : rowsOwned s6Step231EntryGvAfter [s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut] :=
  hmrRows_owned_drop s6Step231EntryGvAfter [s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut] 1 s6Step231EntryBank_outgoingOwned

private theorem s6Step231EntryG_distinct : (s6Step231EntryGRow.sign::s6Step231EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231EntryG_owned : (s6Step231EntryGRow.sign::s6Step231EntryGRow.payload).toFinset⊆s6Step231EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EntryG_reserved : s6Step231EntryGBefore.reserve s6Step231EntryGFresh.toFinset=some s6Step231EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231EntryGFresh,arenaWires]
  · norm_num [s6Step231EntryGBefore,s6Step231EntryFBefore,s6Step231EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step231EntryGAfter,s6Step231EntryGBefore,s6Step231EntryFBefore,s6Step231EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step231EntryG_checked : planRowResizeLog s6Step231EntryGBefore s6Step231EntryGRow 155 s6Step231EntryGFresh=
    some (s6Step231EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818],777⟩,growRow 777 s6Step231EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step231EntryGBefore s6Step231EntryGAfter s6Step231EntryGRow 155 s6Step231EntryGFresh
    s6Step231EntryG_distinct s6Step231EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231EntryG_reserved
  have rowEq : WindowRow.mk (s6Step231EntryGRow.payload++s6Step231EntryGFresh) s6Step231EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step231EntryGvBefore : Arena := s6Step231EntryGAfter

private theorem s6Step231EntryGv_Incoming : rowsOwned s6Step231EntryGvBefore [s6Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow] 3 s6Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231EntryGv_Outgoing : rowsOwned s6Step231EntryGvAfter [s6Step231EntryGvOut] :=
  hmrRows_owned_drop s6Step231EntryGvAfter [s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut] 3 s6Step231EntryBank_outgoingOwned

private theorem s6Step231EntryGv_distinct : (s6Step231EntryGvRow.sign::s6Step231EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231EntryGv_owned : (s6Step231EntryGvRow.sign::s6Step231EntryGvRow.payload).toFinset⊆s6Step231EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231EntryGv_reserved : s6Step231EntryGvBefore.reserve s6Step231EntryGvFresh.toFinset=some s6Step231EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231EntryGvFresh,arenaWires]
  · norm_num [s6Step231EntryGvBefore,s6Step231EntryGAfter,s6Step231EntryGvFresh,arenaWires]
  · simp only [s6Step231EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step231EntryGv_checked : planRowResizeLog s6Step231EntryGvBefore s6Step231EntryGvRow 130 s6Step231EntryGvFresh=
    some (s6Step231EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩,growRow 775 s6Step231EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step231EntryGvBefore s6Step231EntryGvAfter s6Step231EntryGvRow 130 s6Step231EntryGvFresh
    s6Step231EntryGv_distinct s6Step231EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step231EntryGvRow.payload++s6Step231EntryGvFresh) s6Step231EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step231EntryBank_rows : planWindowRowsLog s6Step231EntryFBefore [(s6Step231EntryFRow,155),(s6Step231EntryGRow,155),(s6Step231EntryFvRow,130),(s6Step231EntryGvRow,130)] [s6Step231EntryFFresh,s6Step231EntryGFresh,s6Step231EntryFvFresh,s6Step231EntryGvFresh]=
    some (s6Step231EntryGvAfter,[s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut],(growRow 795 s6Step231EntryFFresh ++ (growRow 777 s6Step231EntryGFresh ++ (growRow 776 s6Step231EntryFvFresh ++ (growRow 775 s6Step231EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step231EntryGvAfter [] []=some (s6Step231EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step231EntryGvBefore s6Step231EntryGvAfter s6Step231EntryGvAfter
    s6Step231EntryGvRow s6Step231EntryGvOut 130 s6Step231EntryGvFresh [] [] []
    (growRow 775 s6Step231EntryGvFresh) ([]) s6Step231EntryGv_Incoming s6Step231EntryGv_checked h4 s6Step231EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step231EntryFvBefore s6Step231EntryFvAfter s6Step231EntryGvAfter
    s6Step231EntryFvRow s6Step231EntryFvOut 130 s6Step231EntryFvFresh [(s6Step231EntryGvRow,130)] [s6Step231EntryGvFresh] [s6Step231EntryGvOut]
    (growRow 776 s6Step231EntryFvFresh) ((growRow 775 s6Step231EntryGvFresh ++ [])) s6Step231EntryFv_Incoming s6Step231EntryFv_checked h3 s6Step231EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step231EntryGBefore s6Step231EntryGAfter s6Step231EntryGvAfter
    s6Step231EntryGRow s6Step231EntryGOut 155 s6Step231EntryGFresh [(s6Step231EntryFvRow,130),(s6Step231EntryGvRow,130)] [s6Step231EntryFvFresh,s6Step231EntryGvFresh] [s6Step231EntryFvOut,s6Step231EntryGvOut]
    (growRow 777 s6Step231EntryGFresh) ((growRow 776 s6Step231EntryFvFresh ++ (growRow 775 s6Step231EntryGvFresh ++ []))) s6Step231EntryG_Incoming s6Step231EntryG_checked h2 s6Step231EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step231EntryFBefore s6Step231EntryFAfter s6Step231EntryGvAfter
    s6Step231EntryFRow s6Step231EntryFOut 155 s6Step231EntryFFresh [(s6Step231EntryGRow,155),(s6Step231EntryFvRow,130),(s6Step231EntryGvRow,130)] [s6Step231EntryGFresh,s6Step231EntryFvFresh,s6Step231EntryGvFresh] [s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut]
    (growRow 795 s6Step231EntryFFresh) ((growRow 777 s6Step231EntryGFresh ++ (growRow 776 s6Step231EntryFvFresh ++ (growRow 775 s6Step231EntryGvFresh ++ [])))) s6Step231EntryF_Incoming s6Step231EntryF_checked h1 s6Step231EntryF_Outgoing
  exact h0

private theorem s6Step231EntryBank_checked : compileHmrBankResizeLog .entry s6Step231EntryFBefore ⟨s6Step231EntryFRow,s6Step231EntryGRow,s6Step231EntryFvRow,s6Step231EntryGvRow⟩ ⟨155,155,130,130⟩ [s6Step231EntryFFresh,s6Step231EntryGFresh,s6Step231EntryFvFresh,s6Step231EntryGvFresh]=
    some (s6Step231EntryGvAfter,⟨s6Step231EntryFOut,s6Step231EntryGOut,s6Step231EntryFvOut,s6Step231EntryGvOut⟩,(growRow 795 s6Step231EntryFFresh ++ (growRow 777 s6Step231EntryGFresh ++ (growRow 776 s6Step231EntryFvFresh ++ (growRow 775 s6Step231EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step231EntryBank_rows]
  rfl

private def s6Step231ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231ExitFBefore : Arena := s6Step231ExitGAfter

private def s6Step231ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 823],795⟩

private def s6Step231ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 908],776⟩

private def s6Step231ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818, 805],777⟩

private def s6Step231ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 864],775⟩

private theorem s6Step231ExitBank_incomingDistinct : ([s6Step231ExitGRow,s6Step231ExitFRow,s6Step231ExitFvRow,s6Step231ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231ExitF_Incoming : rowsOwned s6Step231ExitFBefore [s6Step231ExitFRow,s6Step231ExitFvRow,s6Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231ExitGRow,s6Step231ExitFRow,s6Step231ExitFvRow,s6Step231ExitGvRow] 1 s6Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231ExitBank_outgoingOwned : rowsOwned s6Step231ExitGvAfter [s6Step231ExitGOut,s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step231ExitGvAfter (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231ExitF_Outgoing : rowsOwned s6Step231ExitGvAfter [s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut] :=
  hmrRows_owned_drop s6Step231ExitGvAfter [s6Step231ExitGOut,s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut] 1 s6Step231ExitBank_outgoingOwned

private theorem s6Step231ExitF_distinct : (s6Step231ExitFRow.sign::s6Step231ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231ExitF_owned : (s6Step231ExitFRow.sign::s6Step231ExitFRow.payload).toFinset⊆s6Step231ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231ExitF_retired : s6Step231ExitFBefore.retireSet s6Step231ExitFExtra.toFinset=s6Step231ExitFAfter := by
  unfold Arena.retireSet s6Step231ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step231ExitFBefore,s6Step231ExitGAfter,s6Step231ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step231ExitF_checked : planRowResizeLog s6Step231ExitFBefore s6Step231ExitFRow 153 []=
    some (s6Step231ExitFAfter,s6Step231ExitFOut,shrinkRow 795 s6Step231ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step231ExitFBefore s6Step231ExitFRow 153 s6Step231ExitF_distinct s6Step231ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step231ExitFRow.payload.take 153) s6Step231ExitFRow.sign=s6Step231ExitFOut := by decide +kernel
  have hi : s6Step231ExitFRow.payload.drop 153=s6Step231ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step231ExitF_retired] at result
  exact result

private def s6Step231ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231ExitFvBefore : Arena := s6Step231ExitFAfter

private theorem s6Step231ExitFv_Incoming : rowsOwned s6Step231ExitFvBefore [s6Step231ExitFvRow,s6Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231ExitGRow,s6Step231ExitFRow,s6Step231ExitFvRow,s6Step231ExitGvRow] 2 s6Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231ExitFvBefore (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231ExitFv_Outgoing : rowsOwned s6Step231ExitGvAfter [s6Step231ExitFvOut,s6Step231ExitGvOut] :=
  hmrRows_owned_drop s6Step231ExitGvAfter [s6Step231ExitGOut,s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut] 2 s6Step231ExitBank_outgoingOwned

private theorem s6Step231ExitFv_distinct : (s6Step231ExitFvRow.sign::s6Step231ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231ExitFv_owned : (s6Step231ExitFvRow.sign::s6Step231ExitFvRow.payload).toFinset⊆s6Step231ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231ExitFvBefore (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231ExitFv_retired : s6Step231ExitFvBefore.retireSet s6Step231ExitFvExtra.toFinset=s6Step231ExitFvAfter := by
  unfold Arena.retireSet s6Step231ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step231ExitFvBefore,s6Step231ExitFAfter,s6Step231ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step231ExitFv_checked : planRowResizeLog s6Step231ExitFvBefore s6Step231ExitFvRow 130 []=
    some (s6Step231ExitFvAfter,s6Step231ExitFvOut,shrinkRow 776 s6Step231ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step231ExitFvBefore s6Step231ExitFvRow 130 s6Step231ExitFv_distinct s6Step231ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step231ExitFvRow.payload.take 130) s6Step231ExitFvRow.sign=s6Step231ExitFvOut := by decide +kernel
  have hi : s6Step231ExitFvRow.payload.drop 130=s6Step231ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step231ExitFv_retired] at result
  exact result

private def s6Step231ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step231ExitG_Incoming : rowsOwned s6Step231ExitGBefore [s6Step231ExitGRow,s6Step231ExitFRow,s6Step231ExitFvRow,s6Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231ExitGRow,s6Step231ExitFRow,s6Step231ExitFvRow,s6Step231ExitGvRow] 0 s6Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231ExitG_Outgoing : rowsOwned s6Step231ExitGvAfter [s6Step231ExitGOut,s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut] :=
  hmrRows_owned_drop s6Step231ExitGvAfter [s6Step231ExitGOut,s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut] 0 s6Step231ExitBank_outgoingOwned

private theorem s6Step231ExitG_distinct : (s6Step231ExitGRow.sign::s6Step231ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231ExitG_owned : (s6Step231ExitGRow.sign::s6Step231ExitGRow.payload).toFinset⊆s6Step231ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231ExitG_retired : s6Step231ExitGBefore.retireSet s6Step231ExitGExtra.toFinset=s6Step231ExitGAfter := by
  unfold Arena.retireSet s6Step231ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step231ExitGBefore,s6Step231ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step231ExitG_checked : planRowResizeLog s6Step231ExitGBefore s6Step231ExitGRow 154 []=
    some (s6Step231ExitGAfter,s6Step231ExitGOut,shrinkRow 777 s6Step231ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step231ExitGBefore s6Step231ExitGRow 154 s6Step231ExitG_distinct s6Step231ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step231ExitGRow.payload.take 154) s6Step231ExitGRow.sign=s6Step231ExitGOut := by decide +kernel
  have hi : s6Step231ExitGRow.payload.drop 154=s6Step231ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step231ExitG_retired] at result
  exact result

private def s6Step231ExitGvBefore : Arena := s6Step231ExitFvAfter

private theorem s6Step231ExitGv_Incoming : rowsOwned s6Step231ExitGvBefore [s6Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231ExitGRow,s6Step231ExitFRow,s6Step231ExitFvRow,s6Step231ExitGvRow] 3 s6Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231ExitGvBefore (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231ExitGv_Outgoing : rowsOwned s6Step231ExitGvAfter [s6Step231ExitGvOut] :=
  hmrRows_owned_drop s6Step231ExitGvAfter [s6Step231ExitGOut,s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut] 3 s6Step231ExitBank_outgoingOwned

private theorem s6Step231ExitGv_distinct : (s6Step231ExitGvRow.sign::s6Step231ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231ExitGv_owned : (s6Step231ExitGvRow.sign::s6Step231ExitGvRow.payload).toFinset⊆s6Step231ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231ExitGvBefore (fun q => (0≤q ∧ q<409) ∨ (411≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231ExitGv_retired : s6Step231ExitGvBefore.retireSet s6Step231ExitGvExtra.toFinset=s6Step231ExitGvAfter := by
  unfold Arena.retireSet s6Step231ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step231ExitGvBefore,s6Step231ExitFvAfter,s6Step231ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step231ExitGv_checked : planRowResizeLog s6Step231ExitGvBefore s6Step231ExitGvRow 130 []=
    some (s6Step231ExitGvAfter,s6Step231ExitGvOut,shrinkRow 775 s6Step231ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step231ExitGvBefore s6Step231ExitGvRow 130 s6Step231ExitGv_distinct s6Step231ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step231ExitGvRow.payload.take 130) s6Step231ExitGvRow.sign=s6Step231ExitGvOut := by decide +kernel
  have hi : s6Step231ExitGvRow.payload.drop 130=s6Step231ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step231ExitGv_retired] at result
  exact result

private theorem s6Step231ExitBank_rows : planWindowRowsLog s6Step231ExitGBefore [(s6Step231ExitGRow,154),(s6Step231ExitFRow,153),(s6Step231ExitFvRow,130),(s6Step231ExitGvRow,130)] [[],[],[],[]]=
    some (s6Step231ExitGvAfter,[s6Step231ExitGOut,s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut],(shrinkRow 777 s6Step231ExitGExtra ++ (shrinkRow 795 s6Step231ExitFExtra ++ (shrinkRow 776 s6Step231ExitFvExtra ++ (shrinkRow 775 s6Step231ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step231ExitGvAfter [] []=some (s6Step231ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step231ExitGvBefore s6Step231ExitGvAfter s6Step231ExitGvAfter
    s6Step231ExitGvRow s6Step231ExitGvOut 130 [] [] [] []
    (shrinkRow 775 s6Step231ExitGvExtra) ([]) s6Step231ExitGv_Incoming s6Step231ExitGv_checked h4 s6Step231ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step231ExitFvBefore s6Step231ExitFvAfter s6Step231ExitGvAfter
    s6Step231ExitFvRow s6Step231ExitFvOut 130 [] [(s6Step231ExitGvRow,130)] [[]] [s6Step231ExitGvOut]
    (shrinkRow 776 s6Step231ExitFvExtra) ((shrinkRow 775 s6Step231ExitGvExtra ++ [])) s6Step231ExitFv_Incoming s6Step231ExitFv_checked h3 s6Step231ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step231ExitFBefore s6Step231ExitFAfter s6Step231ExitGvAfter
    s6Step231ExitFRow s6Step231ExitFOut 153 [] [(s6Step231ExitFvRow,130),(s6Step231ExitGvRow,130)] [[],[]] [s6Step231ExitFvOut,s6Step231ExitGvOut]
    (shrinkRow 795 s6Step231ExitFExtra) ((shrinkRow 776 s6Step231ExitFvExtra ++ (shrinkRow 775 s6Step231ExitGvExtra ++ []))) s6Step231ExitF_Incoming s6Step231ExitF_checked h2 s6Step231ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step231ExitGBefore s6Step231ExitGAfter s6Step231ExitGvAfter
    s6Step231ExitGRow s6Step231ExitGOut 154 [] [(s6Step231ExitFRow,153),(s6Step231ExitFvRow,130),(s6Step231ExitGvRow,130)] [[],[],[]] [s6Step231ExitFOut,s6Step231ExitFvOut,s6Step231ExitGvOut]
    (shrinkRow 777 s6Step231ExitGExtra) ((shrinkRow 795 s6Step231ExitFExtra ++ (shrinkRow 776 s6Step231ExitFvExtra ++ (shrinkRow 775 s6Step231ExitGvExtra ++ [])))) s6Step231ExitG_Incoming s6Step231ExitG_checked h1 s6Step231ExitG_Outgoing
  exact h0

private theorem s6Step231ExitBank_checked : compileHmrBankResizeLog .exit s6Step231ExitGBefore ⟨s6Step231ExitFRow,s6Step231ExitGRow,s6Step231ExitFvRow,s6Step231ExitGvRow⟩ ⟨153,154,130,130⟩ [[],[],[],[]]=
    some (s6Step231ExitGvAfter,⟨s6Step231ExitFOut,s6Step231ExitGOut,s6Step231ExitFvOut,s6Step231ExitGvOut⟩,(shrinkRow 777 s6Step231ExitGExtra ++ (shrinkRow 795 s6Step231ExitFExtra ++ (shrinkRow 776 s6Step231ExitFvExtra ++ (shrinkRow 775 s6Step231ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step231ExitBank_rows]
  rfl

private theorem s6Step231Add0_apart : Disjoint s6Step231Add0Arena.live s6Step231Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step231Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231Add0_card : s6Step231Add0Arena.live.card=893 := by
  decide +kernel

private theorem s6Step231Add0_borrowed : s6Step231Add0Arena.checkBorrow (hmrHybridCount s6Step231Add0Arena s6Step231Add0B.length) s6Step231Add0Work=some s6Step231Add0During := by
  have len : s6Step231Add0Work.length=hmrHybridCount s6Step231Add0Arena s6Step231Add0B.length := by
    rw [hmrHybridCount,s6Step231Add0_card]
    decide +kernel
  have nd : s6Step231Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step231Add0Arena s6Step231Add0During s6Step231Add0Work.toFinset s6Step231Add0_bounded s6Step231Add0_apart rfl

private theorem s6Step231Add0_distinct : (822::793::825::(s6Step231Add0A++s6Step231Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231Add0_owned : (822::793::825::(s6Step231Add0A++s6Step231Add0B)).toFinset⊆s6Step231Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step231Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231Add0_checked : compileHmrHybridCinLog s6Step231Add0Arena 793 822 825 s6Step231Add0A s6Step231Add0B s6Step231Add0Work=some s6Step231Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step231Add0Arena s6Step231Add0During 793 822 825 s6Step231Add0A s6Step231Add0B s6Step231Add0Work
    (by decide +kernel) (by decide +kernel) s6Step231Add0_distinct
    (fun q hq => s6Step231Add0_owned (List.mem_toFinset.mpr hq)) s6Step231Add0_borrowed

private theorem s6Step231Add1_apart : Disjoint s6Step231Add1Arena.live s6Step231Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step231Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231Add1_card : s6Step231Add1Arena.live.card=893 := by
  decide +kernel

private theorem s6Step231Add1_borrowed : s6Step231Add1Arena.checkBorrow (hmrHybridCount s6Step231Add1Arena s6Step231Add1B.length) s6Step231Add1Work=some s6Step231Add1During := by
  have len : s6Step231Add1Work.length=hmrHybridCount s6Step231Add1Arena s6Step231Add1B.length := by
    rw [hmrHybridCount,s6Step231Add1_card]
    decide +kernel
  have nd : s6Step231Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step231Add1Arena s6Step231Add1During s6Step231Add1Work.toFinset s6Step231Add1_bounded s6Step231Add1_apart rfl

private theorem s6Step231Add1_distinct : (822::793::825::(s6Step231Add1A++s6Step231Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231Add1_owned : (822::793::825::(s6Step231Add1A++s6Step231Add1B)).toFinset⊆s6Step231Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step231Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231Add1_checked : compileHmrHybridCinLog s6Step231Add1Arena 793 822 825 s6Step231Add1A s6Step231Add1B s6Step231Add1Work=some s6Step231Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step231Add1Arena s6Step231Add1During 793 822 825 s6Step231Add1A s6Step231Add1B s6Step231Add1Work
    (by decide +kernel) (by decide +kernel) s6Step231Add1_distinct
    (fun q hq => s6Step231Add1_owned (List.mem_toFinset.mpr hq)) s6Step231Add1_borrowed

private theorem s6Step231F4_apart : Disjoint (s6Step231Add0A++s6Step231Add0B).toFinset (s6Step231Add1A++s6Step231Add1B).toFinset := by
  have nd : ((s6Step231Add0A++s6Step231Add0B)++(s6Step231Add1A++s6Step231Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step231F4_carry : s6Step231F4FlagArena.checkBorrow 1 [825]=some s6Step231Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step231F4FlagArena,s6Step231HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step231F4FlagArena,s6Step231HeadFvAfter,s6Step231Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step231F4_distinct : (886::793::822::825::((s6Step231Add0A++s6Step231Add1A)++(s6Step231Add0B++s6Step231Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231F4_flag : s6Step231HeadFvAfter.checkBorrow 1 [822]=some s6Step231F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step231HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step231F4_owned : (886::793::((s6Step231Add0A++s6Step231Add1A)++(s6Step231Add0B++s6Step231Add1B))).toFinset⊆s6Step231HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step231HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231F4_checked : compileHmrHybridF4Log s6Step231HeadFvAfter 886 793 s6Step231Add0A s6Step231Add0B s6Step231Add1A s6Step231Add1B [822] [825] s6Step231Add0Work s6Step231Add1Work=some s6Step231F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step231HeadFvAfter s6Step231F4FlagArena s6Step231Add0Arena s6Step231Add0During s6Step231Add1During 886 793
    s6Step231Add0A s6Step231Add0B s6Step231Add1A s6Step231Add1B [822] [825] s6Step231Add0Work s6Step231Add1Work
    (fun q hq => s6Step231F4_owned (List.mem_toFinset.mpr hq)) s6Step231F4_flag s6Step231F4_carry
    s6Step231F4_distinct s6Step231F4_apart s6Step231Add0_checked s6Step231Add1_checked

private theorem s6Step231Front_branch : s6Step231FrontSigmaArena.checkBorrow 1 [793]=some s6Step231HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step231FrontSigmaArena,s6Step231EntryGvAfter,s6Step231EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step231FrontSigmaArena,s6Step231EntryGvAfter,s6Step231EntryGAfter,s6Step231HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step231Front_entry : HmrFrontEntryValid s6Step231EntryFBefore s6Step231FrontBank 155 130 ⟨153,154,130,130⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step231FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step231EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step231EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step231FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step231Front_sigma : s6Step231EntryGvAfter.checkBorrow 1 [886]=some s6Step231FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step231EntryGvAfter,s6Step231EntryGAfter,arenaWires]
  · rfl

private def s6Step231HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231HeadFBefore : Arena := s6Step231HeadGAfter

private def s6Step231HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410],795⟩

private def s6Step231HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856],776⟩

private def s6Step231HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818],777⟩

private def s6Step231HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private theorem s6Step231HeadBank_incomingDistinct : ([s6Step231HeadGRow,s6Step231HeadFRow,s6Step231HeadGvRow,s6Step231HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231HeadF_Incoming : rowsOwned s6Step231HeadFBefore [s6Step231HeadFRow,s6Step231HeadGvRow,s6Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231HeadGRow,s6Step231HeadFRow,s6Step231HeadGvRow,s6Step231HeadFvRow] 1 s6Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231HeadBank_outgoingOwned : rowsOwned s6Step231HeadFvAfter [s6Step231HeadGOut,s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step231HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231HeadF_Outgoing : rowsOwned s6Step231HeadFvAfter [s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut] :=
  hmrRows_owned_drop s6Step231HeadFvAfter [s6Step231HeadGOut,s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut] 1 s6Step231HeadBank_outgoingOwned

private theorem s6Step231HeadF_distinct : (s6Step231HeadFRow.sign::s6Step231HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231HeadF_owned : (s6Step231HeadFRow.sign::s6Step231HeadFRow.payload).toFinset⊆s6Step231HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231HeadF_reserved : s6Step231HeadFBefore.reserve s6Step231HeadFFresh.toFinset=some s6Step231HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231HeadFFresh,arenaWires]
  · norm_num [s6Step231HeadFBefore,s6Step231HeadGAfter,s6Step231HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step231HeadFAfter,s6Step231HeadFBefore,s6Step231HeadGAfter,s6Step231HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step231HeadF_checked : planRowResizeLog s6Step231HeadFBefore s6Step231HeadFRow 156 s6Step231HeadFFresh=
    some (s6Step231HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 823],795⟩,growRow 795 s6Step231HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step231HeadFBefore s6Step231HeadFAfter s6Step231HeadFRow 156 s6Step231HeadFFresh
    s6Step231HeadF_distinct s6Step231HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231HeadF_reserved
  have rowEq : WindowRow.mk (s6Step231HeadFRow.payload++s6Step231HeadFFresh) s6Step231HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 823],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step231HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step231HeadFvBefore : Arena := s6Step231HeadGvAfter

private theorem s6Step231HeadFv_Incoming : rowsOwned s6Step231HeadFvBefore [s6Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231HeadGRow,s6Step231HeadFRow,s6Step231HeadGvRow,s6Step231HeadFvRow] 3 s6Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231HeadFv_Outgoing : rowsOwned s6Step231HeadFvAfter [s6Step231HeadFvOut] :=
  hmrRows_owned_drop s6Step231HeadFvAfter [s6Step231HeadGOut,s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut] 3 s6Step231HeadBank_outgoingOwned

private theorem s6Step231HeadFv_distinct : (s6Step231HeadFvRow.sign::s6Step231HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231HeadFv_owned : (s6Step231HeadFvRow.sign::s6Step231HeadFvRow.payload).toFinset⊆s6Step231HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231HeadFv_reserved : s6Step231HeadFvBefore.reserve s6Step231HeadFvFresh.toFinset=some s6Step231HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231HeadFvFresh,arenaWires]
  · norm_num [s6Step231HeadFvBefore,s6Step231HeadGvAfter,s6Step231HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step231HeadFvAfter,s6Step231HeadFvBefore,s6Step231HeadGvAfter,s6Step231HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step231HeadFv_checked : planRowResizeLog s6Step231HeadFvBefore s6Step231HeadFvRow 131 s6Step231HeadFvFresh=
    some (s6Step231HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 908],776⟩,growRow 776 s6Step231HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step231HeadFvBefore s6Step231HeadFvAfter s6Step231HeadFvRow 131 s6Step231HeadFvFresh
    s6Step231HeadFv_distinct s6Step231HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step231HeadFvRow.payload++s6Step231HeadFvFresh) s6Step231HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step231HeadG_Incoming : rowsOwned s6Step231HeadGBefore [s6Step231HeadGRow,s6Step231HeadFRow,s6Step231HeadGvRow,s6Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231HeadGRow,s6Step231HeadFRow,s6Step231HeadGvRow,s6Step231HeadFvRow] 0 s6Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231HeadG_Outgoing : rowsOwned s6Step231HeadFvAfter [s6Step231HeadGOut,s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut] :=
  hmrRows_owned_drop s6Step231HeadFvAfter [s6Step231HeadGOut,s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut] 0 s6Step231HeadBank_outgoingOwned

private theorem s6Step231HeadG_distinct : (s6Step231HeadGRow.sign::s6Step231HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231HeadG_owned : (s6Step231HeadGRow.sign::s6Step231HeadGRow.payload).toFinset⊆s6Step231HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231HeadG_reserved : s6Step231HeadGBefore.reserve s6Step231HeadGFresh.toFinset=some s6Step231HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231HeadGFresh,arenaWires]
  · norm_num [s6Step231HeadGBefore,s6Step231HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step231HeadGAfter,s6Step231HeadGBefore,s6Step231HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step231HeadG_checked : planRowResizeLog s6Step231HeadGBefore s6Step231HeadGRow 156 s6Step231HeadGFresh=
    some (s6Step231HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818, 805],777⟩,growRow 777 s6Step231HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step231HeadGBefore s6Step231HeadGAfter s6Step231HeadGRow 156 s6Step231HeadGFresh
    s6Step231HeadG_distinct s6Step231HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231HeadG_reserved
  have rowEq : WindowRow.mk (s6Step231HeadGRow.payload++s6Step231HeadGFresh) s6Step231HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 818, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step231HeadGvBefore : Arena := s6Step231HeadFAfter

private theorem s6Step231HeadGv_Incoming : rowsOwned s6Step231HeadGvBefore [s6Step231HeadGvRow,s6Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step231HeadGRow,s6Step231HeadFRow,s6Step231HeadGvRow,s6Step231HeadFvRow] 2 s6Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step231HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step231HeadGv_Outgoing : rowsOwned s6Step231HeadFvAfter [s6Step231HeadGvOut,s6Step231HeadFvOut] :=
  hmrRows_owned_drop s6Step231HeadFvAfter [s6Step231HeadGOut,s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut] 2 s6Step231HeadBank_outgoingOwned

private theorem s6Step231HeadGv_distinct : (s6Step231HeadGvRow.sign::s6Step231HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step231HeadGv_owned : (s6Step231HeadGvRow.sign::s6Step231HeadGvRow.payload).toFinset⊆s6Step231HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step231HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step231HeadGv_reserved : s6Step231HeadGvBefore.reserve s6Step231HeadGvFresh.toFinset=some s6Step231HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step231HeadGvFresh,arenaWires]
  · norm_num [s6Step231HeadGvBefore,s6Step231HeadFAfter,s6Step231HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step231HeadGvAfter,s6Step231HeadGvBefore,s6Step231HeadFAfter,s6Step231HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step231HeadGv_checked : planRowResizeLog s6Step231HeadGvBefore s6Step231HeadGvRow 131 s6Step231HeadGvFresh=
    some (s6Step231HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 864],775⟩,growRow 775 s6Step231HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step231HeadGvBefore s6Step231HeadGvAfter s6Step231HeadGvRow 131 s6Step231HeadGvFresh
    s6Step231HeadGv_distinct s6Step231HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step231HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step231HeadGvRow.payload++s6Step231HeadGvFresh) s6Step231HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 864],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step231HeadBank_rows : planWindowRowsLog s6Step231HeadGBefore [(s6Step231HeadGRow,156),(s6Step231HeadFRow,156),(s6Step231HeadGvRow,131),(s6Step231HeadFvRow,131)] [s6Step231HeadGFresh,s6Step231HeadFFresh,s6Step231HeadGvFresh,s6Step231HeadFvFresh]=
    some (s6Step231HeadFvAfter,[s6Step231HeadGOut,s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut],(growRow 777 s6Step231HeadGFresh ++ (growRow 795 s6Step231HeadFFresh ++ (growRow 775 s6Step231HeadGvFresh ++ (growRow 776 s6Step231HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step231HeadFvAfter [] []=some (s6Step231HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step231HeadFvBefore s6Step231HeadFvAfter s6Step231HeadFvAfter
    s6Step231HeadFvRow s6Step231HeadFvOut 131 s6Step231HeadFvFresh [] [] []
    (growRow 776 s6Step231HeadFvFresh) ([]) s6Step231HeadFv_Incoming s6Step231HeadFv_checked h4 s6Step231HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step231HeadGvBefore s6Step231HeadGvAfter s6Step231HeadFvAfter
    s6Step231HeadGvRow s6Step231HeadGvOut 131 s6Step231HeadGvFresh [(s6Step231HeadFvRow,131)] [s6Step231HeadFvFresh] [s6Step231HeadFvOut]
    (growRow 775 s6Step231HeadGvFresh) ((growRow 776 s6Step231HeadFvFresh ++ [])) s6Step231HeadGv_Incoming s6Step231HeadGv_checked h3 s6Step231HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step231HeadFBefore s6Step231HeadFAfter s6Step231HeadFvAfter
    s6Step231HeadFRow s6Step231HeadFOut 156 s6Step231HeadFFresh [(s6Step231HeadGvRow,131),(s6Step231HeadFvRow,131)] [s6Step231HeadGvFresh,s6Step231HeadFvFresh] [s6Step231HeadGvOut,s6Step231HeadFvOut]
    (growRow 795 s6Step231HeadFFresh) ((growRow 775 s6Step231HeadGvFresh ++ (growRow 776 s6Step231HeadFvFresh ++ []))) s6Step231HeadF_Incoming s6Step231HeadF_checked h2 s6Step231HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step231HeadGBefore s6Step231HeadGAfter s6Step231HeadFvAfter
    s6Step231HeadGRow s6Step231HeadGOut 156 s6Step231HeadGFresh [(s6Step231HeadFRow,156),(s6Step231HeadGvRow,131),(s6Step231HeadFvRow,131)] [s6Step231HeadFFresh,s6Step231HeadGvFresh,s6Step231HeadFvFresh] [s6Step231HeadFOut,s6Step231HeadGvOut,s6Step231HeadFvOut]
    (growRow 777 s6Step231HeadGFresh) ((growRow 795 s6Step231HeadFFresh ++ (growRow 775 s6Step231HeadGvFresh ++ (growRow 776 s6Step231HeadFvFresh ++ [])))) s6Step231HeadG_Incoming s6Step231HeadG_checked h1 s6Step231HeadG_Outgoing
  exact h0

private theorem s6Step231HeadBank_checked : compileHmrBankResizeLog .headroom s6Step231HeadGBefore ⟨s6Step231HeadFRow,s6Step231HeadGRow,s6Step231HeadFvRow,s6Step231HeadGvRow⟩ ⟨156,156,131,131⟩ [s6Step231HeadGFresh,s6Step231HeadFFresh,s6Step231HeadGvFresh,s6Step231HeadFvFresh]=
    some (s6Step231HeadFvAfter,⟨s6Step231HeadFOut,s6Step231HeadGOut,s6Step231HeadFvOut,s6Step231HeadGvOut⟩,(growRow 777 s6Step231HeadGFresh ++ (growRow 795 s6Step231HeadFFresh ++ (growRow 775 s6Step231HeadGvFresh ++ (growRow 776 s6Step231HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step231HeadBank_rows]
  rfl

private theorem s6Step231Front_checked : compileHmrSourceFrontLog s6Step231EntryFBefore s6Step231FrontBank 155 130 ⟨153,154,130,130⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step231FrontLog=some s6Step231FrontPlan := by
  have pairEq : s6Step231FrontPair=⟨s6Step231HeadFRow,s6Step231HeadGRow,s6Step231HeadFvRow,s6Step231HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step231FrontHead=⟨s6Step231ExitFRow,s6Step231ExitGRow,s6Step231ExitFvRow,s6Step231ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step231Add0A=s6Step231FrontHead.f.wires := by decide +kernel
  have gEq : s6Step231Add0B=s6Step231FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step231Add1A=s6Step231FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step231Add1B=s6Step231FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step231EntryFBefore s6Step231FrontBank 155 130 ⟨153,154,130,130⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step231FrontLog s6Step231FrontPlan
  · exact s6Step231Front_entry
  · exact s6Step231EntryBank_checked
  · exact s6Step231Front_sigma
  · rfl
  · exact s6Step231Front_branch
  · rfl
  · simpa only [s6Step231FrontPlan,pairEq] using s6Step231HeadBank_checked
  · simpa only [s6Step231FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step231F4_checked
  · exact s6Step231Counter_checked
  · rfl
  · simpa only [s6Step231FrontPlan,headEq] using s6Step231ExitBank_checked

private theorem s6Step231Complete_explicit_checked : compileHmrEarlyStepLog s6Step231EntryFBefore s6Step231FrontBank 155 130 ⟨153,154,130,130⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step231CompleteLog=some s6Step231CompletePlan := by
  let Q := s6Step231EarlyControlPlan
  have hq := s6Step231EarlyControl_plan_checked
  have fv1 : s6Step231CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step231CompleteOut.fv.payload[2]?.getD s6Step231CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step231CompleteOut.fv.payload[3]?.getD s6Step231CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step231CompleteOut.fv.payload[4]?.getD s6Step231CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step231EntryFBefore s6Step231EarlyControlArena s6Step231FrontBank 155 130 ⟨153,154,130,130⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step231CompleteLog s6Step231FrontPlan Q
    s6Step231Front_checked s6Step231Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step231Complete_owned s6Step231Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step231EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 s6Step231CompleteOut.fv.second (s6Step231CompleteOut.fv.payload[2]?.getD s6Step231CompleteOut.fv.sign) (s6Step231CompleteOut.fv.payload[3]?.getD s6Step231CompleteOut.fv.sign) (s6Step231CompleteOut.fv.payload[4]?.getD s6Step231CompleteOut.fv.sign) 793 49 s6Step231EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep231Arena : Arena := s6Step231EntryFBefore
def s6PrivateStep231Bank : WindowBank := s6Step231FrontBank
def s6PrivateStep231Spec : HmrSourceWalkStepLog := ⟨155,130,⟨153,154,130,130⟩,49,.early s6Step231CompleteLog⟩
def s6PrivateStep231Plan : HmrSourceStepPlan := .early s6Step231CompletePlan
theorem s6PrivateStep231_source : s6PrivateStep231Spec=s6ObservedLogs224[7] := rfl
theorem s6PrivateStep231_checked : compileHmrSourceStepLog s6PrivateStep231Arena s6PrivateStep231Bank
    s6PrivateStep231Spec.fgWidth s6PrivateStep231Spec.vWidth s6PrivateStep231Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 231 s6PrivateStep231Spec.need none s6PrivateStep231Spec.log=some s6PrivateStep231Plan := by
  change compileHmrSourceStepLog s6Step231EntryFBefore s6Step231FrontBank 155 130 ⟨153,154,130,130⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 231 49 none (.early s6Step231CompleteLog)=some (.early s6Step231CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 231<498)]
  rw [s6Step231Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
