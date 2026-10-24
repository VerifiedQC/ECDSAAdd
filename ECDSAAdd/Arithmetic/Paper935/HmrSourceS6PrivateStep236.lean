import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep234
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

private def s6Step236CompleteMoves : List (Wire × Wire) := [(868,408)]

private def s6Step236EarlyControlLog : HmrEarlyControlLog := ⟨[868, 822, 818, 857, 888],[864],[869],[786, 810, 809, 817, 812, 909],[]⟩

private def s6Step236FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [857, 888], [], [876]],[[864], [818], [822], [825]],[[], [], [], []]⟩,[908],[805],[869],[786],[810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809]⟩

private def s6Step236CompleteLog : HmrEarlyStepLog := ⟨s6Step236FrontLog,s6Step236CompleteMoves,s6Step236EarlyControlLog⟩

private def s6Step236ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step236ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step236ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150],777⟩

private def s6Step236ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩

private def s6Step236FrontOut : WindowBank := ⟨s6Step236ExitFOut,s6Step236ExitGOut,s6Step236ExitFvOut,s6Step236ExitGvOut⟩

private def s6Step236CompleteOut : WindowBank := s6Step236FrontOut.repacked s6Step236CompleteMoves

private def s6Step236EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step236EarlyControlPositiveArena,[864],s6Step236EarlyControlEqualityArena,[869],⟨⟨908,false⟩,[⟨⟨864,false⟩,869⟩]⟩⟩

private def s6Step236EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,868⟩,⟨⟨772,false⟩,822⟩,⟨⟨771,false⟩,818⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,888⟩]⟩

private def s6Step236EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step236EarlyControlZeroArena,s6Step236EarlyControlZeroPlan,s6Step236EarlyControlClassPlan,s6Step236EarlyControlFlagArena,s6Step236EarlyControlFittedArena,s6Step236EarlyControlHistoryArena,s6Step236EarlyControlSigmaArena,s6Step236EarlyControlOutputArena,s6Step236EarlyControlLog⟩

private def s6Step236CounterWork : List Wire := [869, 786, 810, 809]

private theorem s6Step236Counter_bounded : s6Step236CounterWork.toFinset⊆arenaWires := by norm_num [s6Step236CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step236HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236CounterDuring : Arena := ⟨s6Step236HeadFvAfter.live∪s6Step236CounterWork.toFinset,Finset.union_subset s6Step236HeadFvAfter.bounded s6Step236Counter_bounded⟩

private def s6Step236EntryFFresh : List Wire := []

private def s6Step236EntryFvFresh : List Wire := []

private def s6Step236EntryGFresh : List Wire := [857, 888]

private def s6Step236EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EntryGvFresh : List Wire := [876]

private def s6Step236ExitFExtra : List Wire := [408, 818]

private def s6Step236ExitGExtra : List Wire := [857, 888, 864]

private def s6Step236ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<408) ∨ (409≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236ExitGvExtra : List Wire := [822]

private def s6Step236Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236Add0Work : List Wire := [810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step236Add0_bounded : s6Step236Add0Work.toFinset⊆arenaWires := by
  have h : s6Step236Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step236Add0During : Arena := ⟨s6Step236Add0Arena.live∪s6Step236Add0Work.toFinset,Finset.union_subset s6Step236Add0Arena.bounded s6Step236Add0_bounded⟩

private def s6Step236Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236Add1Work : List Wire := [810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step236Add1_bounded : s6Step236Add1Work.toFinset⊆arenaWires := by
  have h : s6Step236Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step236Add1During : Arena := ⟨s6Step236Add1Arena.live∪s6Step236Add1Work.toFinset,Finset.union_subset s6Step236Add1Arena.bounded s6Step236Add1_bounded⟩

private def s6Step236F4FlagArena : Arena := ⟨s6Step236HeadFvAfter.live∪{869},Finset.union_subset s6Step236HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step236F4Plan : HmrHybridF4Plan := ⟨s6Step236F4FlagArena,[869],s6Step236Add0Arena,[786],s6Step236Add0During,s6Step236Add0Work,s6Step236Add1During,s6Step236Add1Work⟩

private def s6Step236HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 818],795⟩

private def s6Step236HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step236HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888, 864],777⟩

private def s6Step236HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 822],775⟩

private def s6Step236FrontHead : WindowBank := ⟨s6Step236HeadFOut,s6Step236HeadGOut,s6Step236HeadFvOut,s6Step236HeadGvOut⟩

private def s6Step236EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step236EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793],776⟩

private def s6Step236EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888],777⟩

private def s6Step236EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩

private def s6Step236FrontPair : WindowBank := ⟨s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut⟩

private def s6Step236FrontSigmaArena : Arena := ⟨s6Step236EntryGvAfter.live∪{908},Finset.union_subset s6Step236EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step236HeadFFresh : List Wire := [818]

private def s6Step236HeadFvFresh : List Wire := [825]

private def s6Step236HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236HeadGFresh : List Wire := [864]

private def s6Step236HeadGvFresh : List Wire := [822]

private def s6Step236FrontPlan : HmrSourceFront := ⟨s6Step236EntryGvAfter,s6Step236FrontPair,(growRow 795 s6Step236EntryFFresh ++ (growRow 777 s6Step236EntryGFresh ++ (growRow 776 s6Step236EntryFvFresh ++ (growRow 775 s6Step236EntryGvFresh ++ [])))),s6Step236FrontSigmaArena,[908],s6Step236HeadGBefore,[805],
  s6Step236HeadFvAfter,s6Step236FrontHead,(growRow 777 s6Step236HeadGFresh ++ (growRow 795 s6Step236HeadFFresh ++ (growRow 775 s6Step236HeadGvFresh ++ (growRow 776 s6Step236HeadFvFresh ++ [])))),s6Step236F4Plan,s6Step236CounterDuring,s6Step236CounterWork,s6Step236ExitGvAfter,s6Step236FrontOut,(shrinkRow 777 s6Step236ExitGExtra ++ (shrinkRow 795 s6Step236ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step236ExitGvExtra ++ []))))⟩

private def s6Step236CompletePlan : HmrEarlyStepPlan := ⟨s6Step236FrontPlan,s6Step236EarlyControlArena,s6Step236EarlyControlPlan,s6Step236CompleteMoves⟩

private theorem s6Step236Complete_apart : List.Disjoint (s6Step236CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 805, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step236CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 805, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step236Complete_owned : (s6Step236CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step236CompleteMoveArena : Arena := ⟨s6Step236ExitGvAfter.live∪{408},Finset.union_subset s6Step236ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step236Complete_repack : s6Step236ExitGvAfter.checkRepack s6Step236CompleteMoves=some s6Step236EarlyControlArena := by
  have owned : 868∈s6Step236ExitGvAfter.live := by norm_num [s6Step236ExitGvAfter,arenaWires]
  have reserve : s6Step236ExitGvAfter.reserve {408}=some s6Step236CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step236ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step236CompleteMoveArena.retireSet {868}=s6Step236EarlyControlArena := by
    unfold Arena.retireSet s6Step236EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step236CompleteMoveArena,s6Step236ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step236CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step236CompleteMoveArena.retireSet {868}).checkRepack []=some s6Step236EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step236EarlyControl_branchOwned : ([805] : List Wire).toFinset⊆s6Step236EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_branch : compileHmrBranchRetirement s6Step236EarlyControlSigmaArena 805=some s6Step236EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step236EarlyControl_branchOwned
  · ext q
    simp [s6Step236EarlyControlOutputArena,s6Step236EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step236EarlyControl_classEqualityBorrow : s6Step236EarlyControlPositiveArena.checkBorrow (([908, 864] : List Wire).length-1) s6Step236EarlyControlLog.classWork=some s6Step236EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step236EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step236EarlyControlEqualityArena,s6Step236EarlyControlPositiveArena,s6Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step236EarlyControl_classEqualityOwned : ([908, 864] : List Wire).toFinset⊆s6Step236EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_classEquality : compileHmrEqualityLog s6Step236EarlyControlPositiveArena [908, 864] 0 s6Step236EarlyControlLog.classWork=some (s6Step236EarlyControlEqualityArena,s6Step236EarlyControlLog.classWork,s6Step236EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step236EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step236EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step236EarlyControl_classOwned : ([769, 888, 908] : List Wire).toFinset⊆s6Step236EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_positiveBorrow : s6Step236EarlyControlZeroArena.checkBorrow (1) s6Step236EarlyControlLog.positiveWork=some s6Step236EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step236EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step236EarlyControlPositiveArena,s6Step236EarlyControlZeroArena,s6Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step236EarlyControl_class : compileHmrSourceClassLog s6Step236EarlyControlZeroArena false 769 s6Step236EarlyControlZeroPlan.top 0 908 s6Step236EarlyControlLog.positiveWork s6Step236EarlyControlLog.classWork=some s6Step236EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step236EarlyControlClassPlan s6Step236EarlyControlZeroArena false 769 s6Step236EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step236EarlyControl_classOwned
  · exact s6Step236EarlyControl_positiveBorrow
  · exact s6Step236EarlyControl_classEquality

private theorem s6Step236EarlyControl_entryRecordOwned : ([805, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_fitBorrow : s6Step236EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step236EarlyControlLog.recordFresh=some s6Step236EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step236EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step236EarlyControlFittedArena,s6Step236EarlyControlFlagArena,s6Step236EarlyControlLog,arenaWires]

private theorem s6Step236EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step236EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_fit : compileHmrRecordGrowLog s6Step236EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step236EarlyControlLog.recordFresh=some s6Step236EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step236EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step236EarlyControl_fitBorrow

private theorem s6Step236EarlyControl_flagsBorrow : s6Step236EarlyControlEqualityArena.checkBorrow (6) s6Step236EarlyControlLog.flagWork=some s6Step236EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step236EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step236EarlyControlFlagArena,s6Step236EarlyControlEqualityArena,s6Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step236EarlyControl_flagsOwned : ([869, 253, 252, 251] : List Wire).toFinset⊆s6Step236EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_flags : compileHmrFlagsLog s6Step236EarlyControlClassPlan.equalityArena s6Step236EarlyControlClassPlan.equality.top 253 252 251 s6Step236EarlyControlLog.flagWork=some s6Step236EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step236EarlyControl_flagsOwned⟩
  · exact s6Step236EarlyControl_flagsBorrow

private theorem s6Step236EarlyControl_historyBorrow : s6Step236EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step236EarlyControlLog.recordFresh=some s6Step236EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step236EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step236EarlyControlHistoryArena,s6Step236EarlyControlArena,s6Step236EarlyControlLog,arenaWires]

private theorem s6Step236EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_history : compileHmrRecordGrowLog s6Step236EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step236EarlyControlLog.recordFresh=some s6Step236EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step236EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step236EarlyControl_historyBorrow

private theorem s6Step236EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step236EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step236EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_sigmaRelease : s6Step236EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step236EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step236EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step236EarlyControlSigmaArena,s6Step236EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step236EarlyControl_sigma : compileHmrSigmaDropLog s6Step236EarlyControlHistoryArena false 0 0 254 908 []=some s6Step236EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step236EarlyControl_sigmaOwned⟩
  · exact s6Step236EarlyControl_sigmaRelease

private theorem s6Step236EarlyControl_zeroBorrow : s6Step236EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step236EarlyControlLog.zeroWork=some s6Step236EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step236EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step236EarlyControlZeroArena,s6Step236EarlyControlArena,s6Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step236EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step236EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EarlyControl_zero : compileHmrEqualityLog s6Step236EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step236EarlyControlLog.zeroWork=some (s6Step236EarlyControlZeroArena,s6Step236EarlyControlLog.zeroWork,s6Step236EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step236EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step236EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step236EarlyControl_logged : s6Step236EarlyControlPlan.Logged s6Step236EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 908 254 253 252 251 805 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step236EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step236EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step236EarlyControl_zero
  · exact s6Step236EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step236EarlyControl_flags
  · exact s6Step236EarlyControl_fit
  · exact s6Step236EarlyControl_history
  · exact s6Step236EarlyControl_sigma
  · exact s6Step236EarlyControl_branch

private theorem s6Step236EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step236EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 908 254 253 252 251 805 49 s6Step236EarlyControlLog=some s6Step236EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step236EarlyControlPlan s6Step236EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 908 254 253 252 251 805 49 s6Step236EarlyControl_logged

private def s6Step236EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step236EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793],776⟩

private def s6Step236EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150],777⟩

private def s6Step236EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886],775⟩

private def s6Step236FrontBank : WindowBank := ⟨s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow⟩

private def s6Step236Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 818, 795]

private def s6Step236Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888, 864, 777]

private def s6Step236Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 776]

private def s6Step236Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 822, 775]

private theorem s6Step236Counter_apart : Disjoint s6Step236HeadFvAfter.live s6Step236CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step236HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236Counter_borrowed : s6Step236HeadFvAfter.checkBorrow 4 s6Step236CounterWork=some s6Step236CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step236HeadFvAfter s6Step236CounterDuring s6Step236CounterWork.toFinset s6Step236Counter_bounded s6Step236Counter_apart rfl

private theorem s6Step236Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step236HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step236HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236Counter_checked : compileHmrCounterStepLog s6Step236HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step236CounterWork=some s6Step236CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step236HeadFvAfter.live := fun q hq => s6Step236Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step236Counter_borrowed

private def s6Step236EntryFAfter : Arena := s6Step236EntryFBefore

private theorem s6Step236EntryBank_incomingDistinct : ([s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236EntryF_Incoming : rowsOwned s6Step236EntryFBefore [s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow] 0 s6Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236EntryBank_outgoingOwned : rowsOwned s6Step236EntryGvAfter [s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step236EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236EntryF_Outgoing : rowsOwned s6Step236EntryGvAfter [s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut] :=
  hmrRows_owned_drop s6Step236EntryGvAfter [s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut] 0 s6Step236EntryBank_outgoingOwned

private theorem s6Step236EntryF_distinct : (s6Step236EntryFRow.sign::s6Step236EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236EntryF_owned : (s6Step236EntryFRow.sign::s6Step236EntryFRow.payload).toFinset⊆s6Step236EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EntryF_reserved : s6Step236EntryFBefore.reserve s6Step236EntryFFresh.toFinset=some s6Step236EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236EntryFFresh,arenaWires]
  · norm_num [s6Step236EntryFBefore,s6Step236EntryFFresh,arenaWires]
  · simp only [s6Step236EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step236EntryF_checked : planRowResizeLog s6Step236EntryFBefore s6Step236EntryFRow 153 s6Step236EntryFFresh=
    some (s6Step236EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩,growRow 795 s6Step236EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step236EntryFBefore s6Step236EntryFAfter s6Step236EntryFRow 153 s6Step236EntryFFresh
    s6Step236EntryF_distinct s6Step236EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236EntryF_reserved
  have rowEq : WindowRow.mk (s6Step236EntryFRow.payload++s6Step236EntryFFresh) s6Step236EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step236EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236EntryFvAfter : Arena := s6Step236EntryGAfter

private def s6Step236EntryFvBefore : Arena := s6Step236EntryGAfter

private theorem s6Step236EntryFv_Incoming : rowsOwned s6Step236EntryFvBefore [s6Step236EntryFvRow,s6Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow] 2 s6Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236EntryFv_Outgoing : rowsOwned s6Step236EntryGvAfter [s6Step236EntryFvOut,s6Step236EntryGvOut] :=
  hmrRows_owned_drop s6Step236EntryGvAfter [s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut] 2 s6Step236EntryBank_outgoingOwned

private theorem s6Step236EntryFv_distinct : (s6Step236EntryFvRow.sign::s6Step236EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236EntryFv_owned : (s6Step236EntryFvRow.sign::s6Step236EntryFvRow.payload).toFinset⊆s6Step236EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EntryFv_reserved : s6Step236EntryFvBefore.reserve s6Step236EntryFvFresh.toFinset=some s6Step236EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236EntryFvFresh,arenaWires]
  · norm_num [s6Step236EntryFvBefore,s6Step236EntryGAfter,s6Step236EntryFvFresh,arenaWires]
  · simp only [s6Step236EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step236EntryFv_checked : planRowResizeLog s6Step236EntryFvBefore s6Step236EntryFvRow 133 s6Step236EntryFvFresh=
    some (s6Step236EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793],776⟩,growRow 776 s6Step236EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step236EntryFvBefore s6Step236EntryFvAfter s6Step236EntryFvRow 133 s6Step236EntryFvFresh
    s6Step236EntryFv_distinct s6Step236EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step236EntryFvRow.payload++s6Step236EntryFvFresh) s6Step236EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step236EntryGBefore : Arena := s6Step236EntryFBefore

private theorem s6Step236EntryG_Incoming : rowsOwned s6Step236EntryGBefore [s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow] 1 s6Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236EntryG_Outgoing : rowsOwned s6Step236EntryGvAfter [s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut] :=
  hmrRows_owned_drop s6Step236EntryGvAfter [s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut] 1 s6Step236EntryBank_outgoingOwned

private theorem s6Step236EntryG_distinct : (s6Step236EntryGRow.sign::s6Step236EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236EntryG_owned : (s6Step236EntryGRow.sign::s6Step236EntryGRow.payload).toFinset⊆s6Step236EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EntryG_reserved : s6Step236EntryGBefore.reserve s6Step236EntryGFresh.toFinset=some s6Step236EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step236EntryGBefore,s6Step236EntryFBefore,s6Step236EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step236EntryGAfter,s6Step236EntryGBefore,s6Step236EntryFBefore,s6Step236EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236EntryG_checked : planRowResizeLog s6Step236EntryGBefore s6Step236EntryGRow 153 s6Step236EntryGFresh=
    some (s6Step236EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888],777⟩,growRow 777 s6Step236EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step236EntryGBefore s6Step236EntryGAfter s6Step236EntryGRow 153 s6Step236EntryGFresh
    s6Step236EntryG_distinct s6Step236EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236EntryG_reserved
  have rowEq : WindowRow.mk (s6Step236EntryGRow.payload++s6Step236EntryGFresh) s6Step236EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step236EntryGvBefore : Arena := s6Step236EntryGAfter

private theorem s6Step236EntryGv_Incoming : rowsOwned s6Step236EntryGvBefore [s6Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow] 3 s6Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236EntryGv_Outgoing : rowsOwned s6Step236EntryGvAfter [s6Step236EntryGvOut] :=
  hmrRows_owned_drop s6Step236EntryGvAfter [s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut] 3 s6Step236EntryBank_outgoingOwned

private theorem s6Step236EntryGv_distinct : (s6Step236EntryGvRow.sign::s6Step236EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236EntryGv_owned : (s6Step236EntryGvRow.sign::s6Step236EntryGvRow.payload).toFinset⊆s6Step236EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236EntryGv_reserved : s6Step236EntryGvBefore.reserve s6Step236EntryGvFresh.toFinset=some s6Step236EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236EntryGvFresh,arenaWires]
  · norm_num [s6Step236EntryGvBefore,s6Step236EntryGAfter,s6Step236EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step236EntryGvAfter,s6Step236EntryGvBefore,s6Step236EntryGAfter,s6Step236EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236EntryGv_checked : planRowResizeLog s6Step236EntryGvBefore s6Step236EntryGvRow 133 s6Step236EntryGvFresh=
    some (s6Step236EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩,growRow 775 s6Step236EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step236EntryGvBefore s6Step236EntryGvAfter s6Step236EntryGvRow 133 s6Step236EntryGvFresh
    s6Step236EntryGv_distinct s6Step236EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step236EntryGvRow.payload++s6Step236EntryGvFresh) s6Step236EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step236EntryBank_rows : planWindowRowsLog s6Step236EntryFBefore [(s6Step236EntryFRow,153),(s6Step236EntryGRow,153),(s6Step236EntryFvRow,133),(s6Step236EntryGvRow,133)] [s6Step236EntryFFresh,s6Step236EntryGFresh,s6Step236EntryFvFresh,s6Step236EntryGvFresh]=
    some (s6Step236EntryGvAfter,[s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut],(growRow 795 s6Step236EntryFFresh ++ (growRow 777 s6Step236EntryGFresh ++ (growRow 776 s6Step236EntryFvFresh ++ (growRow 775 s6Step236EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step236EntryGvAfter [] []=some (s6Step236EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step236EntryGvBefore s6Step236EntryGvAfter s6Step236EntryGvAfter
    s6Step236EntryGvRow s6Step236EntryGvOut 133 s6Step236EntryGvFresh [] [] []
    (growRow 775 s6Step236EntryGvFresh) ([]) s6Step236EntryGv_Incoming s6Step236EntryGv_checked h4 s6Step236EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step236EntryFvBefore s6Step236EntryFvAfter s6Step236EntryGvAfter
    s6Step236EntryFvRow s6Step236EntryFvOut 133 s6Step236EntryFvFresh [(s6Step236EntryGvRow,133)] [s6Step236EntryGvFresh] [s6Step236EntryGvOut]
    (growRow 776 s6Step236EntryFvFresh) ((growRow 775 s6Step236EntryGvFresh ++ [])) s6Step236EntryFv_Incoming s6Step236EntryFv_checked h3 s6Step236EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step236EntryGBefore s6Step236EntryGAfter s6Step236EntryGvAfter
    s6Step236EntryGRow s6Step236EntryGOut 153 s6Step236EntryGFresh [(s6Step236EntryFvRow,133),(s6Step236EntryGvRow,133)] [s6Step236EntryFvFresh,s6Step236EntryGvFresh] [s6Step236EntryFvOut,s6Step236EntryGvOut]
    (growRow 777 s6Step236EntryGFresh) ((growRow 776 s6Step236EntryFvFresh ++ (growRow 775 s6Step236EntryGvFresh ++ []))) s6Step236EntryG_Incoming s6Step236EntryG_checked h2 s6Step236EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step236EntryFBefore s6Step236EntryFAfter s6Step236EntryGvAfter
    s6Step236EntryFRow s6Step236EntryFOut 153 s6Step236EntryFFresh [(s6Step236EntryGRow,153),(s6Step236EntryFvRow,133),(s6Step236EntryGvRow,133)] [s6Step236EntryGFresh,s6Step236EntryFvFresh,s6Step236EntryGvFresh] [s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut]
    (growRow 795 s6Step236EntryFFresh) ((growRow 777 s6Step236EntryGFresh ++ (growRow 776 s6Step236EntryFvFresh ++ (growRow 775 s6Step236EntryGvFresh ++ [])))) s6Step236EntryF_Incoming s6Step236EntryF_checked h1 s6Step236EntryF_Outgoing
  exact h0

private theorem s6Step236EntryBank_checked : compileHmrBankResizeLog .entry s6Step236EntryFBefore ⟨s6Step236EntryFRow,s6Step236EntryGRow,s6Step236EntryFvRow,s6Step236EntryGvRow⟩ ⟨153,153,133,133⟩ [s6Step236EntryFFresh,s6Step236EntryGFresh,s6Step236EntryFvFresh,s6Step236EntryGvFresh]=
    some (s6Step236EntryGvAfter,⟨s6Step236EntryFOut,s6Step236EntryGOut,s6Step236EntryFvOut,s6Step236EntryGvOut⟩,(growRow 795 s6Step236EntryFFresh ++ (growRow 777 s6Step236EntryGFresh ++ (growRow 776 s6Step236EntryFvFresh ++ (growRow 775 s6Step236EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step236EntryBank_rows]
  rfl

private def s6Step236ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<408) ∨ (409≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236ExitFBefore : Arena := s6Step236ExitGAfter

private def s6Step236ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 818],795⟩

private def s6Step236ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step236ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888, 864],777⟩

private def s6Step236ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 822],775⟩

private theorem s6Step236ExitBank_incomingDistinct : ([s6Step236ExitGRow,s6Step236ExitFRow,s6Step236ExitFvRow,s6Step236ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236ExitF_Incoming : rowsOwned s6Step236ExitFBefore [s6Step236ExitFRow,s6Step236ExitFvRow,s6Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236ExitGRow,s6Step236ExitFRow,s6Step236ExitFvRow,s6Step236ExitGvRow] 1 s6Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236ExitBank_outgoingOwned : rowsOwned s6Step236ExitGvAfter [s6Step236ExitGOut,s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step236ExitGvAfter (fun q => (0≤q ∧ q<408) ∨ (409≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236ExitF_Outgoing : rowsOwned s6Step236ExitGvAfter [s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut] :=
  hmrRows_owned_drop s6Step236ExitGvAfter [s6Step236ExitGOut,s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut] 1 s6Step236ExitBank_outgoingOwned

private theorem s6Step236ExitF_distinct : (s6Step236ExitFRow.sign::s6Step236ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236ExitF_owned : (s6Step236ExitFRow.sign::s6Step236ExitFRow.payload).toFinset⊆s6Step236ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236ExitF_retired : s6Step236ExitFBefore.retireSet s6Step236ExitFExtra.toFinset=s6Step236ExitFAfter := by
  unfold Arena.retireSet s6Step236ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step236ExitFBefore,s6Step236ExitGAfter,s6Step236ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step236ExitF_checked : planRowResizeLog s6Step236ExitFBefore s6Step236ExitFRow 152 []=
    some (s6Step236ExitFAfter,s6Step236ExitFOut,shrinkRow 795 s6Step236ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step236ExitFBefore s6Step236ExitFRow 152 s6Step236ExitF_distinct s6Step236ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step236ExitFRow.payload.take 152) s6Step236ExitFRow.sign=s6Step236ExitFOut := by decide +kernel
  have hi : s6Step236ExitFRow.payload.drop 152=s6Step236ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step236ExitF_retired] at result
  exact result

private def s6Step236ExitFvAfter : Arena := s6Step236ExitFAfter

private def s6Step236ExitFvBefore : Arena := s6Step236ExitFAfter

private theorem s6Step236ExitFv_Incoming : rowsOwned s6Step236ExitFvBefore [s6Step236ExitFvRow,s6Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236ExitGRow,s6Step236ExitFRow,s6Step236ExitFvRow,s6Step236ExitGvRow] 2 s6Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236ExitFvBefore (fun q => (0≤q ∧ q<408) ∨ (409≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236ExitFv_Outgoing : rowsOwned s6Step236ExitGvAfter [s6Step236ExitFvOut,s6Step236ExitGvOut] :=
  hmrRows_owned_drop s6Step236ExitGvAfter [s6Step236ExitGOut,s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut] 2 s6Step236ExitBank_outgoingOwned

private theorem s6Step236ExitFv_distinct : (s6Step236ExitFvRow.sign::s6Step236ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236ExitFv_owned : (s6Step236ExitFvRow.sign::s6Step236ExitFvRow.payload).toFinset⊆s6Step236ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236ExitFvBefore (fun q => (0≤q ∧ q<408) ∨ (409≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236ExitFv_reserved : s6Step236ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step236ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step236ExitFv_checked : planRowResizeLog s6Step236ExitFvBefore s6Step236ExitFvRow 134 []=
    some (s6Step236ExitFvAfter,s6Step236ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step236ExitFvBefore s6Step236ExitFvAfter s6Step236ExitFvRow 134 []
    s6Step236ExitFv_distinct s6Step236ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step236ExitFvRow.payload++[]) s6Step236ExitFvRow.sign=s6Step236ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step236ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step236ExitG_Incoming : rowsOwned s6Step236ExitGBefore [s6Step236ExitGRow,s6Step236ExitFRow,s6Step236ExitFvRow,s6Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236ExitGRow,s6Step236ExitFRow,s6Step236ExitFvRow,s6Step236ExitGvRow] 0 s6Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236ExitG_Outgoing : rowsOwned s6Step236ExitGvAfter [s6Step236ExitGOut,s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut] :=
  hmrRows_owned_drop s6Step236ExitGvAfter [s6Step236ExitGOut,s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut] 0 s6Step236ExitBank_outgoingOwned

private theorem s6Step236ExitG_distinct : (s6Step236ExitGRow.sign::s6Step236ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236ExitG_owned : (s6Step236ExitGRow.sign::s6Step236ExitGRow.payload).toFinset⊆s6Step236ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236ExitG_retired : s6Step236ExitGBefore.retireSet s6Step236ExitGExtra.toFinset=s6Step236ExitGAfter := by
  unfold Arena.retireSet s6Step236ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step236ExitGBefore,s6Step236ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step236ExitG_checked : planRowResizeLog s6Step236ExitGBefore s6Step236ExitGRow 151 []=
    some (s6Step236ExitGAfter,s6Step236ExitGOut,shrinkRow 777 s6Step236ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step236ExitGBefore s6Step236ExitGRow 151 s6Step236ExitG_distinct s6Step236ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step236ExitGRow.payload.take 151) s6Step236ExitGRow.sign=s6Step236ExitGOut := by decide +kernel
  have hi : s6Step236ExitGRow.payload.drop 151=s6Step236ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step236ExitG_retired] at result
  exact result

private def s6Step236ExitGvBefore : Arena := s6Step236ExitFAfter

private theorem s6Step236ExitGv_Incoming : rowsOwned s6Step236ExitGvBefore [s6Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236ExitGRow,s6Step236ExitFRow,s6Step236ExitFvRow,s6Step236ExitGvRow] 3 s6Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236ExitGvBefore (fun q => (0≤q ∧ q<408) ∨ (409≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236ExitGv_Outgoing : rowsOwned s6Step236ExitGvAfter [s6Step236ExitGvOut] :=
  hmrRows_owned_drop s6Step236ExitGvAfter [s6Step236ExitGOut,s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut] 3 s6Step236ExitBank_outgoingOwned

private theorem s6Step236ExitGv_distinct : (s6Step236ExitGvRow.sign::s6Step236ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236ExitGv_owned : (s6Step236ExitGvRow.sign::s6Step236ExitGvRow.payload).toFinset⊆s6Step236ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236ExitGvBefore (fun q => (0≤q ∧ q<408) ∨ (409≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236ExitGv_retired : s6Step236ExitGvBefore.retireSet s6Step236ExitGvExtra.toFinset=s6Step236ExitGvAfter := by
  unfold Arena.retireSet s6Step236ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step236ExitGvBefore,s6Step236ExitFAfter,s6Step236ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step236ExitGv_checked : planRowResizeLog s6Step236ExitGvBefore s6Step236ExitGvRow 133 []=
    some (s6Step236ExitGvAfter,s6Step236ExitGvOut,shrinkRow 775 s6Step236ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step236ExitGvBefore s6Step236ExitGvRow 133 s6Step236ExitGv_distinct s6Step236ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step236ExitGvRow.payload.take 133) s6Step236ExitGvRow.sign=s6Step236ExitGvOut := by decide +kernel
  have hi : s6Step236ExitGvRow.payload.drop 133=s6Step236ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step236ExitGv_retired] at result
  exact result

private theorem s6Step236ExitBank_rows : planWindowRowsLog s6Step236ExitGBefore [(s6Step236ExitGRow,151),(s6Step236ExitFRow,152),(s6Step236ExitFvRow,134),(s6Step236ExitGvRow,133)] [[],[],[],[]]=
    some (s6Step236ExitGvAfter,[s6Step236ExitGOut,s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut],(shrinkRow 777 s6Step236ExitGExtra ++ (shrinkRow 795 s6Step236ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step236ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step236ExitGvAfter [] []=some (s6Step236ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step236ExitGvBefore s6Step236ExitGvAfter s6Step236ExitGvAfter
    s6Step236ExitGvRow s6Step236ExitGvOut 133 [] [] [] []
    (shrinkRow 775 s6Step236ExitGvExtra) ([]) s6Step236ExitGv_Incoming s6Step236ExitGv_checked h4 s6Step236ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step236ExitFvBefore s6Step236ExitFvAfter s6Step236ExitGvAfter
    s6Step236ExitFvRow s6Step236ExitFvOut 134 [] [(s6Step236ExitGvRow,133)] [[]] [s6Step236ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step236ExitGvExtra ++ [])) s6Step236ExitFv_Incoming s6Step236ExitFv_checked h3 s6Step236ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step236ExitFBefore s6Step236ExitFAfter s6Step236ExitGvAfter
    s6Step236ExitFRow s6Step236ExitFOut 152 [] [(s6Step236ExitFvRow,134),(s6Step236ExitGvRow,133)] [[],[]] [s6Step236ExitFvOut,s6Step236ExitGvOut]
    (shrinkRow 795 s6Step236ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step236ExitGvExtra ++ []))) s6Step236ExitF_Incoming s6Step236ExitF_checked h2 s6Step236ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step236ExitGBefore s6Step236ExitGAfter s6Step236ExitGvAfter
    s6Step236ExitGRow s6Step236ExitGOut 151 [] [(s6Step236ExitFRow,152),(s6Step236ExitFvRow,134),(s6Step236ExitGvRow,133)] [[],[],[]] [s6Step236ExitFOut,s6Step236ExitFvOut,s6Step236ExitGvOut]
    (shrinkRow 777 s6Step236ExitGExtra) ((shrinkRow 795 s6Step236ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step236ExitGvExtra ++ [])))) s6Step236ExitG_Incoming s6Step236ExitG_checked h1 s6Step236ExitG_Outgoing
  exact h0

private theorem s6Step236ExitBank_checked : compileHmrBankResizeLog .exit s6Step236ExitGBefore ⟨s6Step236ExitFRow,s6Step236ExitGRow,s6Step236ExitFvRow,s6Step236ExitGvRow⟩ ⟨152,151,134,133⟩ [[],[],[],[]]=
    some (s6Step236ExitGvAfter,⟨s6Step236ExitFOut,s6Step236ExitGOut,s6Step236ExitFvOut,s6Step236ExitGvOut⟩,(shrinkRow 777 s6Step236ExitGExtra ++ (shrinkRow 795 s6Step236ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step236ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step236ExitBank_rows]
  rfl

private theorem s6Step236Add0_apart : Disjoint s6Step236Add0Arena.live s6Step236Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step236Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236Add0_card : s6Step236Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step236Add0_borrowed : s6Step236Add0Arena.checkBorrow (hmrHybridCount s6Step236Add0Arena s6Step236Add0B.length) s6Step236Add0Work=some s6Step236Add0During := by
  have len : s6Step236Add0Work.length=hmrHybridCount s6Step236Add0Arena s6Step236Add0B.length := by
    rw [hmrHybridCount,s6Step236Add0_card]
    decide +kernel
  have nd : s6Step236Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step236Add0Arena s6Step236Add0During s6Step236Add0Work.toFinset s6Step236Add0_bounded s6Step236Add0_apart rfl

private theorem s6Step236Add0_distinct : (869::805::786::(s6Step236Add0A++s6Step236Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236Add0_owned : (869::805::786::(s6Step236Add0A++s6Step236Add0B)).toFinset⊆s6Step236Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step236Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236Add0_checked : compileHmrHybridCinLog s6Step236Add0Arena 805 869 786 s6Step236Add0A s6Step236Add0B s6Step236Add0Work=some s6Step236Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step236Add0Arena s6Step236Add0During 805 869 786 s6Step236Add0A s6Step236Add0B s6Step236Add0Work
    (by decide +kernel) (by decide +kernel) s6Step236Add0_distinct
    (fun q hq => s6Step236Add0_owned (List.mem_toFinset.mpr hq)) s6Step236Add0_borrowed

private theorem s6Step236Add1_apart : Disjoint s6Step236Add1Arena.live s6Step236Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step236Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236Add1_card : s6Step236Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step236Add1_borrowed : s6Step236Add1Arena.checkBorrow (hmrHybridCount s6Step236Add1Arena s6Step236Add1B.length) s6Step236Add1Work=some s6Step236Add1During := by
  have len : s6Step236Add1Work.length=hmrHybridCount s6Step236Add1Arena s6Step236Add1B.length := by
    rw [hmrHybridCount,s6Step236Add1_card]
    decide +kernel
  have nd : s6Step236Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step236Add1Arena s6Step236Add1During s6Step236Add1Work.toFinset s6Step236Add1_bounded s6Step236Add1_apart rfl

private theorem s6Step236Add1_distinct : (869::805::786::(s6Step236Add1A++s6Step236Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236Add1_owned : (869::805::786::(s6Step236Add1A++s6Step236Add1B)).toFinset⊆s6Step236Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step236Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236Add1_checked : compileHmrHybridCinLog s6Step236Add1Arena 805 869 786 s6Step236Add1A s6Step236Add1B s6Step236Add1Work=some s6Step236Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step236Add1Arena s6Step236Add1During 805 869 786 s6Step236Add1A s6Step236Add1B s6Step236Add1Work
    (by decide +kernel) (by decide +kernel) s6Step236Add1_distinct
    (fun q hq => s6Step236Add1_owned (List.mem_toFinset.mpr hq)) s6Step236Add1_borrowed

private theorem s6Step236F4_apart : Disjoint (s6Step236Add0A++s6Step236Add0B).toFinset (s6Step236Add1A++s6Step236Add1B).toFinset := by
  have nd : ((s6Step236Add0A++s6Step236Add0B)++(s6Step236Add1A++s6Step236Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step236F4_carry : s6Step236F4FlagArena.checkBorrow 1 [786]=some s6Step236Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step236F4FlagArena,s6Step236HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step236F4FlagArena,s6Step236HeadFvAfter,s6Step236Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236F4_distinct : (908::805::869::786::((s6Step236Add0A++s6Step236Add1A)++(s6Step236Add0B++s6Step236Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236F4_flag : s6Step236HeadFvAfter.checkBorrow 1 [869]=some s6Step236F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step236HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step236F4_owned : (908::805::((s6Step236Add0A++s6Step236Add1A)++(s6Step236Add0B++s6Step236Add1B))).toFinset⊆s6Step236HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step236HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236F4_checked : compileHmrHybridF4Log s6Step236HeadFvAfter 908 805 s6Step236Add0A s6Step236Add0B s6Step236Add1A s6Step236Add1B [869] [786] s6Step236Add0Work s6Step236Add1Work=some s6Step236F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step236HeadFvAfter s6Step236F4FlagArena s6Step236Add0Arena s6Step236Add0During s6Step236Add1During 908 805
    s6Step236Add0A s6Step236Add0B s6Step236Add1A s6Step236Add1B [869] [786] s6Step236Add0Work s6Step236Add1Work
    (fun q hq => s6Step236F4_owned (List.mem_toFinset.mpr hq)) s6Step236F4_flag s6Step236F4_carry
    s6Step236F4_distinct s6Step236F4_apart s6Step236Add0_checked s6Step236Add1_checked

private theorem s6Step236Front_branch : s6Step236FrontSigmaArena.checkBorrow 1 [805]=some s6Step236HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step236FrontSigmaArena,s6Step236EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step236FrontSigmaArena,s6Step236EntryGvAfter,s6Step236HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236Front_entry : HmrFrontEntryValid s6Step236EntryFBefore s6Step236FrontBank 153 133 ⟨152,151,134,133⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step236FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step236EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step236EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (877≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step236FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step236Front_sigma : s6Step236EntryGvAfter.checkBorrow 1 [908]=some s6Step236FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step236EntryGvAfter,arenaWires]
  · rfl

private def s6Step236HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236HeadFBefore : Arena := s6Step236HeadGAfter

private def s6Step236HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step236HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793],776⟩

private def s6Step236HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888],777⟩

private def s6Step236HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩

private theorem s6Step236HeadBank_incomingDistinct : ([s6Step236HeadGRow,s6Step236HeadFRow,s6Step236HeadGvRow,s6Step236HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236HeadF_Incoming : rowsOwned s6Step236HeadFBefore [s6Step236HeadFRow,s6Step236HeadGvRow,s6Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236HeadGRow,s6Step236HeadFRow,s6Step236HeadGvRow,s6Step236HeadFvRow] 1 s6Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236HeadBank_outgoingOwned : rowsOwned s6Step236HeadFvAfter [s6Step236HeadGOut,s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step236HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236HeadF_Outgoing : rowsOwned s6Step236HeadFvAfter [s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut] :=
  hmrRows_owned_drop s6Step236HeadFvAfter [s6Step236HeadGOut,s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut] 1 s6Step236HeadBank_outgoingOwned

private theorem s6Step236HeadF_distinct : (s6Step236HeadFRow.sign::s6Step236HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236HeadF_owned : (s6Step236HeadFRow.sign::s6Step236HeadFRow.payload).toFinset⊆s6Step236HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236HeadF_reserved : s6Step236HeadFBefore.reserve s6Step236HeadFFresh.toFinset=some s6Step236HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236HeadFFresh,arenaWires]
  · norm_num [s6Step236HeadFBefore,s6Step236HeadGAfter,s6Step236HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step236HeadFAfter,s6Step236HeadFBefore,s6Step236HeadGAfter,s6Step236HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236HeadF_checked : planRowResizeLog s6Step236HeadFBefore s6Step236HeadFRow 154 s6Step236HeadFFresh=
    some (s6Step236HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 818],795⟩,growRow 795 s6Step236HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step236HeadFBefore s6Step236HeadFAfter s6Step236HeadFRow 154 s6Step236HeadFFresh
    s6Step236HeadF_distinct s6Step236HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236HeadF_reserved
  have rowEq : WindowRow.mk (s6Step236HeadFRow.payload++s6Step236HeadFFresh) s6Step236HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 818],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step236HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step236HeadFvBefore : Arena := s6Step236HeadGvAfter

private theorem s6Step236HeadFv_Incoming : rowsOwned s6Step236HeadFvBefore [s6Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236HeadGRow,s6Step236HeadFRow,s6Step236HeadGvRow,s6Step236HeadFvRow] 3 s6Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236HeadFv_Outgoing : rowsOwned s6Step236HeadFvAfter [s6Step236HeadFvOut] :=
  hmrRows_owned_drop s6Step236HeadFvAfter [s6Step236HeadGOut,s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut] 3 s6Step236HeadBank_outgoingOwned

private theorem s6Step236HeadFv_distinct : (s6Step236HeadFvRow.sign::s6Step236HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236HeadFv_owned : (s6Step236HeadFvRow.sign::s6Step236HeadFvRow.payload).toFinset⊆s6Step236HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236HeadFv_reserved : s6Step236HeadFvBefore.reserve s6Step236HeadFvFresh.toFinset=some s6Step236HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236HeadFvFresh,arenaWires]
  · norm_num [s6Step236HeadFvBefore,s6Step236HeadGvAfter,s6Step236HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step236HeadFvAfter,s6Step236HeadFvBefore,s6Step236HeadGvAfter,s6Step236HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236HeadFv_checked : planRowResizeLog s6Step236HeadFvBefore s6Step236HeadFvRow 134 s6Step236HeadFvFresh=
    some (s6Step236HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩,growRow 776 s6Step236HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step236HeadFvBefore s6Step236HeadFvAfter s6Step236HeadFvRow 134 s6Step236HeadFvFresh
    s6Step236HeadFv_distinct s6Step236HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step236HeadFvRow.payload++s6Step236HeadFvFresh) s6Step236HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step236HeadG_Incoming : rowsOwned s6Step236HeadGBefore [s6Step236HeadGRow,s6Step236HeadFRow,s6Step236HeadGvRow,s6Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236HeadGRow,s6Step236HeadFRow,s6Step236HeadGvRow,s6Step236HeadFvRow] 0 s6Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236HeadG_Outgoing : rowsOwned s6Step236HeadFvAfter [s6Step236HeadGOut,s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut] :=
  hmrRows_owned_drop s6Step236HeadFvAfter [s6Step236HeadGOut,s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut] 0 s6Step236HeadBank_outgoingOwned

private theorem s6Step236HeadG_distinct : (s6Step236HeadGRow.sign::s6Step236HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236HeadG_owned : (s6Step236HeadGRow.sign::s6Step236HeadGRow.payload).toFinset⊆s6Step236HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236HeadG_reserved : s6Step236HeadGBefore.reserve s6Step236HeadGFresh.toFinset=some s6Step236HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236HeadGFresh,arenaWires]
  · norm_num [s6Step236HeadGBefore,s6Step236HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step236HeadGAfter,s6Step236HeadGBefore,s6Step236HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236HeadG_checked : planRowResizeLog s6Step236HeadGBefore s6Step236HeadGRow 154 s6Step236HeadGFresh=
    some (s6Step236HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888, 864],777⟩,growRow 777 s6Step236HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step236HeadGBefore s6Step236HeadGAfter s6Step236HeadGRow 154 s6Step236HeadGFresh
    s6Step236HeadG_distinct s6Step236HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236HeadG_reserved
  have rowEq : WindowRow.mk (s6Step236HeadGRow.payload++s6Step236HeadGFresh) s6Step236HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 857, 888, 864],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step236HeadGvBefore : Arena := s6Step236HeadFAfter

private theorem s6Step236HeadGv_Incoming : rowsOwned s6Step236HeadGvBefore [s6Step236HeadGvRow,s6Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step236HeadGRow,s6Step236HeadFRow,s6Step236HeadGvRow,s6Step236HeadFvRow] 2 s6Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step236HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step236HeadGv_Outgoing : rowsOwned s6Step236HeadFvAfter [s6Step236HeadGvOut,s6Step236HeadFvOut] :=
  hmrRows_owned_drop s6Step236HeadFvAfter [s6Step236HeadGOut,s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut] 2 s6Step236HeadBank_outgoingOwned

private theorem s6Step236HeadGv_distinct : (s6Step236HeadGvRow.sign::s6Step236HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step236HeadGv_owned : (s6Step236HeadGvRow.sign::s6Step236HeadGvRow.payload).toFinset⊆s6Step236HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step236HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step236HeadGv_reserved : s6Step236HeadGvBefore.reserve s6Step236HeadGvFresh.toFinset=some s6Step236HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step236HeadGvFresh,arenaWires]
  · norm_num [s6Step236HeadGvBefore,s6Step236HeadFAfter,s6Step236HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step236HeadGvAfter,s6Step236HeadGvBefore,s6Step236HeadFAfter,s6Step236HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step236HeadGv_checked : planRowResizeLog s6Step236HeadGvBefore s6Step236HeadGvRow 134 s6Step236HeadGvFresh=
    some (s6Step236HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 822],775⟩,growRow 775 s6Step236HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step236HeadGvBefore s6Step236HeadGvAfter s6Step236HeadGvRow 134 s6Step236HeadGvFresh
    s6Step236HeadGv_distinct s6Step236HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step236HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step236HeadGvRow.payload++s6Step236HeadGvFresh) s6Step236HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step236HeadBank_rows : planWindowRowsLog s6Step236HeadGBefore [(s6Step236HeadGRow,154),(s6Step236HeadFRow,154),(s6Step236HeadGvRow,134),(s6Step236HeadFvRow,134)] [s6Step236HeadGFresh,s6Step236HeadFFresh,s6Step236HeadGvFresh,s6Step236HeadFvFresh]=
    some (s6Step236HeadFvAfter,[s6Step236HeadGOut,s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut],(growRow 777 s6Step236HeadGFresh ++ (growRow 795 s6Step236HeadFFresh ++ (growRow 775 s6Step236HeadGvFresh ++ (growRow 776 s6Step236HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step236HeadFvAfter [] []=some (s6Step236HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step236HeadFvBefore s6Step236HeadFvAfter s6Step236HeadFvAfter
    s6Step236HeadFvRow s6Step236HeadFvOut 134 s6Step236HeadFvFresh [] [] []
    (growRow 776 s6Step236HeadFvFresh) ([]) s6Step236HeadFv_Incoming s6Step236HeadFv_checked h4 s6Step236HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step236HeadGvBefore s6Step236HeadGvAfter s6Step236HeadFvAfter
    s6Step236HeadGvRow s6Step236HeadGvOut 134 s6Step236HeadGvFresh [(s6Step236HeadFvRow,134)] [s6Step236HeadFvFresh] [s6Step236HeadFvOut]
    (growRow 775 s6Step236HeadGvFresh) ((growRow 776 s6Step236HeadFvFresh ++ [])) s6Step236HeadGv_Incoming s6Step236HeadGv_checked h3 s6Step236HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step236HeadFBefore s6Step236HeadFAfter s6Step236HeadFvAfter
    s6Step236HeadFRow s6Step236HeadFOut 154 s6Step236HeadFFresh [(s6Step236HeadGvRow,134),(s6Step236HeadFvRow,134)] [s6Step236HeadGvFresh,s6Step236HeadFvFresh] [s6Step236HeadGvOut,s6Step236HeadFvOut]
    (growRow 795 s6Step236HeadFFresh) ((growRow 775 s6Step236HeadGvFresh ++ (growRow 776 s6Step236HeadFvFresh ++ []))) s6Step236HeadF_Incoming s6Step236HeadF_checked h2 s6Step236HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step236HeadGBefore s6Step236HeadGAfter s6Step236HeadFvAfter
    s6Step236HeadGRow s6Step236HeadGOut 154 s6Step236HeadGFresh [(s6Step236HeadFRow,154),(s6Step236HeadGvRow,134),(s6Step236HeadFvRow,134)] [s6Step236HeadFFresh,s6Step236HeadGvFresh,s6Step236HeadFvFresh] [s6Step236HeadFOut,s6Step236HeadGvOut,s6Step236HeadFvOut]
    (growRow 777 s6Step236HeadGFresh) ((growRow 795 s6Step236HeadFFresh ++ (growRow 775 s6Step236HeadGvFresh ++ (growRow 776 s6Step236HeadFvFresh ++ [])))) s6Step236HeadG_Incoming s6Step236HeadG_checked h1 s6Step236HeadG_Outgoing
  exact h0

private theorem s6Step236HeadBank_checked : compileHmrBankResizeLog .headroom s6Step236HeadGBefore ⟨s6Step236HeadFRow,s6Step236HeadGRow,s6Step236HeadFvRow,s6Step236HeadGvRow⟩ ⟨154,154,134,134⟩ [s6Step236HeadGFresh,s6Step236HeadFFresh,s6Step236HeadGvFresh,s6Step236HeadFvFresh]=
    some (s6Step236HeadFvAfter,⟨s6Step236HeadFOut,s6Step236HeadGOut,s6Step236HeadFvOut,s6Step236HeadGvOut⟩,(growRow 777 s6Step236HeadGFresh ++ (growRow 795 s6Step236HeadFFresh ++ (growRow 775 s6Step236HeadGvFresh ++ (growRow 776 s6Step236HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step236HeadBank_rows]
  rfl

private theorem s6Step236Front_checked : compileHmrSourceFrontLog s6Step236EntryFBefore s6Step236FrontBank 153 133 ⟨152,151,134,133⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step236FrontLog=some s6Step236FrontPlan := by
  have pairEq : s6Step236FrontPair=⟨s6Step236HeadFRow,s6Step236HeadGRow,s6Step236HeadFvRow,s6Step236HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step236FrontHead=⟨s6Step236ExitFRow,s6Step236ExitGRow,s6Step236ExitFvRow,s6Step236ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step236Add0A=s6Step236FrontHead.f.wires := by decide +kernel
  have gEq : s6Step236Add0B=s6Step236FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step236Add1A=s6Step236FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step236Add1B=s6Step236FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step236EntryFBefore s6Step236FrontBank 153 133 ⟨152,151,134,133⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step236FrontLog s6Step236FrontPlan
  · exact s6Step236Front_entry
  · exact s6Step236EntryBank_checked
  · exact s6Step236Front_sigma
  · rfl
  · exact s6Step236Front_branch
  · rfl
  · simpa only [s6Step236FrontPlan,pairEq] using s6Step236HeadBank_checked
  · simpa only [s6Step236FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step236F4_checked
  · exact s6Step236Counter_checked
  · rfl
  · simpa only [s6Step236FrontPlan,headEq] using s6Step236ExitBank_checked

private theorem s6Step236Complete_explicit_checked : compileHmrEarlyStepLog s6Step236EntryFBefore s6Step236FrontBank 153 133 ⟨152,151,134,133⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step236CompleteLog=some s6Step236CompletePlan := by
  let Q := s6Step236EarlyControlPlan
  have hq := s6Step236EarlyControl_plan_checked
  have fv1 : s6Step236CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step236CompleteOut.fv.payload[2]?.getD s6Step236CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step236CompleteOut.fv.payload[3]?.getD s6Step236CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step236CompleteOut.fv.payload[4]?.getD s6Step236CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step236EntryFBefore s6Step236EarlyControlArena s6Step236FrontBank 153 133 ⟨152,151,134,133⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step236CompleteLog s6Step236FrontPlan Q
    s6Step236Front_checked s6Step236Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step236Complete_owned s6Step236Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step236EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 908 s6Step236CompleteOut.fv.second (s6Step236CompleteOut.fv.payload[2]?.getD s6Step236CompleteOut.fv.sign) (s6Step236CompleteOut.fv.payload[3]?.getD s6Step236CompleteOut.fv.sign) (s6Step236CompleteOut.fv.payload[4]?.getD s6Step236CompleteOut.fv.sign) 805 49 s6Step236EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep236Arena : Arena := s6Step236EntryFBefore
def s6PrivateStep236Bank : WindowBank := s6Step236FrontBank
def s6PrivateStep236Spec : HmrSourceWalkStepLog := ⟨153,133,⟨152,151,134,133⟩,49,.early s6Step236CompleteLog⟩
def s6PrivateStep236Plan : HmrSourceStepPlan := .early s6Step236CompletePlan
theorem s6PrivateStep236_source : s6PrivateStep236Spec=s6ObservedLogs224[12] := rfl
theorem s6PrivateStep236_checked : compileHmrSourceStepLog s6PrivateStep236Arena s6PrivateStep236Bank
    s6PrivateStep236Spec.fgWidth s6PrivateStep236Spec.vWidth s6PrivateStep236Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 236 s6PrivateStep236Spec.need none s6PrivateStep236Spec.log=some s6PrivateStep236Plan := by
  change compileHmrSourceStepLog s6Step236EntryFBefore s6Step236FrontBank 153 133 ⟨152,151,134,133⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 236 49 none (.early s6Step236CompleteLog)=some (.early s6Step236CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 236<498)]
  rw [s6Step236Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
